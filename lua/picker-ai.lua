local on_event = wesnoth.require("on_event")
local gui = wesnoth.require("~add-ons/UCC_LUA/lua/gui.lua")

-- local function color_changer_ingame_boolean()
	-- return wml.variables.color_changer_ingame
-- end
-- local function color_changer_ingame_side_boolean()
	-- return wml.variables.color_changer_ingame_side
-- end
local function color_changer_ingame_allsides_boolean()
	return wml.variables.color_changer_ingame_allsides
end

-- Hilfsfunktion: Prüft, ob die Einheit schon visuell verändert wurde
local function has_visual_mods(unit)
    local modifications = wml.get_child(unit.__cfg, "modifications")
    if not modifications then return false end

    for obj in wml.child_range(modifications, "object") do
        for eff in wml.child_range(obj, "effect") do
            if eff.apply_to == "image_mod" then
                return true
            end
        end
    end
    return false
end

-- Split function for multi-character separators (like "--")
local function split(str, sep)
    local result = {}
    if sep == "" then return {str} end
    local start = 1
	
    while true do
        local pos = string.find(str, sep, start, true)
        if not pos then
            table.insert(result, string.sub(str, start))
            break
        end
        table.insert(result, string.sub(str, start, pos - 1))
        start = pos + string.len(sep)
    end
	
    return result
end

-- Parses "body_part:archetype:color_variant" ID segments into a table/map
local function parse_composite_id(old_combined_id)
    local map = {}
    local segments = split(old_combined_id, "--")
    for _, segment in ipairs(segments) do
        local parts = split(segment, ":")
        if #parts == 3 then
            map[parts[1]] = parts[3] -- map[body_part] = color_variant
        end
    end
    return map
end

local function generate_ucc_data(unit, selection_map, race_data)
    local id_parts = {}
    local final_base_table = {}
    local final_color_table = {}

    for part_name, variant_name in pairs(selection_map) do
        -- 1. Archetype finden
        local found_arch_data = nil
        local found_arch_name = nil
        
        for _, part in ipairs(race_data.body_parts) do
            if part.name == part_name then
                for arch_name, arch_data in pairs(part.data) do
                     for _, ut in ipairs(arch_data.unit_types or {}) do
                         if ut == unit.type then 
                            found_arch_data = arch_data
                            found_arch_name = arch_name
                            break 
                         end
                     end
                     if found_arch_data then break end
                end
            end
            if found_arch_data then break end
        end

        -- 2. Farben mappen
        if found_arch_data then
            local found_colors = nil
            for _, v in ipairs(found_arch_data.variants) do
                if v.name == variant_name then
                    found_colors = v.colors
                    break
                end
            end
            
            if found_colors then
                table.insert(id_parts, part_name .. ":" .. found_arch_name .. ":" .. variant_name)
                table.insert(final_base_table, found_arch_data.base)
                table.insert(final_color_table, found_colors)
            end
        end
    end

    table.sort(id_parts)
    
    -- WICHTIG: Tabelle zurückgeben, keinen String!
    return {
        id = table.concat(id_parts, "--"),
        base_colors = table.concat(final_base_table, ","),
        new_colors = table.concat(final_color_table, ",")
    }
end

local function apply_ucc_to_unit(unit, data, old_combined_id)

    -- Remove existing UCC object if specified
    if old_combined_id then
        unit:remove_modifications({ ucc_color_id = old_combined_id }, "object")
    end
	
	local mod_cfg = {
        ucc_color_id = data.id,
        { "effect", {
            apply_to = "image_mod",
            -- Wir nutzen String-Concatenation für Sicherheit
            replace = "~PAL(" .. data.base_colors .. ">" .. data.new_colors .. ")"
        }}
    }
    
    -- 3. Anwenden
    unit:add_modification("object", mod_cfg)
end

_G.ucc_open_picker = function(unit)
    -- 1. Daten holen
    local race_data = _G.ucc_race_registry[unit.race]
    if not race_data then 
        wesnoth.interface.add_chat_message("Keine Daten für diese Rasse gefunden.")
        return 
    end

    -- 2. GUI öffnen und auf Ergebnis warten
    local final_selections, whole_faction = gui.show_picker(unit, race_data)

    -- 3. Wenn "Apply" geklickt wurde
    if final_selections then
        
        -- A) Liste der zu bearbeitenden Einheiten erstellen
        local units_to_process = {}
        
        if whole_faction then
             -- Variable speichern
             for part, variant in pairs(final_selections) do
                 local var_name = "ucc_pref_side_" .. unit.side .. "_" .. part
                 wml.variables[var_name] = variant
             end
             
             -- Alle Einheiten der Seite finden
             units_to_process = wesnoth.units.find_on_map({ side = unit.side })
        else
             -- Nur die eine Einheit
             units_to_process = { unit }
        end

        -- B) Schleife über alle betroffenen Einheiten
        for _, u in ipairs(units_to_process) do
            
            -- Alte ID der jeweiligen Einheit holen
            local u_modifications = wml.get_child(u.__cfg, "modifications")
            local u_old_id = nil
            
            if u_modifications then
                for obj in wml.child_range(u_modifications, "object") do
                    if obj.ucc_color_id then 
                        u_old_id = obj.ucc_color_id
                        break 
                    elseif obj.ucv_color_id then 
                        -- Fremde UCV Mods entfernen wir direkt
                        u:remove_modifications({ ucv_color_id = obj.ucv_color_id }, "object")
                        -- u_old_id bleibt nil, damit wir sauber neu aufsetzen
                        break 
                    end
                end
            end

            -- Bestimmen, welche Varianten diese Einheit bekommen soll
            -- (Mix aus alten Werten und neuer Auswahl)
            local current_map = {}
            if u_old_id then
                current_map = parse_composite_id(u_old_id)
            end
            
            -- Neue Auswahl drüberlegen
            for part, variant in pairs(final_selections) do
                current_map[part] = variant
            end

            -- WICHTIG: Die Race-Data der jeweiligen Einheit holen (nicht zwingend die vom Picker-Start!)
            -- Falls z.B. ein Wolf Rider und ein Troll in der gleichen Fraktion sind.
            local u_race_data = _G.ucc_race_registry[u.race]
            
            -- Nur anwenden, wenn die Einheit zur Rasse passt (oder wir erzwingen wollen)
            -- Hier nutzen wir u_race_data, damit generate_ucc_data funktioniert
            if u_race_data then
                local new_data = generate_ucc_data(u, current_map, u_race_data)
                
                -- Nur anwenden wenn valide Daten rauskamen
                if new_data and new_data ~= "" then -- generate_ucc_data gibt String zurück in deiner Version? 
                    apply_ucc_to_unit(u, new_data, u_old_id)
                end
            end
        end
        
        -- Da oben ein logisches Loch war (generate vs apply), hier die saubere Lösung für den Loop:
        -- Ich schreibe dir unten die KORRIGIERTE generate_ucc_data Funktion, die du ersetzen musst.
    end
end

-- 4. Das Preload Event (Sicher verpackt)
on_event("turn refresh", function()
	--local allsides = 
	if color_changer_ingame_allsides_boolean() then
		wesnoth.wml_actions.set_menu_item({
			id = "ucc_custom_picker",
			description = "Color changer",
			{ "filter_location", {
				{ "filter", {} }
			} },
			{ "command", {
				{ "lua", {
					code = [[
						local unit = wesnoth.units.get(wesnoth.current.event_context.x1, wesnoth.current.event_context.y1)
						if not unit or not _G.ucc_race_registry then return end

						-- Suche nach passenden Daten
						local race_data = _G.ucc_race_registry[unit.race]
						local found_race_data = nil
						
						if not race_data or not race_data.body_parts then
							wesnoth.interface.add_chat_message("UCC", "Diese Einheit (" .. unit.type .. ") hat noch keine UCC-Daten.")
							return nil
						end
						
						for _, body_part_entry in pairs(race_data.body_parts) do
							
							-- Inner Loop: Iterate through archetypes (e.g., "glider, fighter ..")
							for archetype, archetype_data in pairs(body_part_entry.data) do
								
								 -- Check if this sub-group applies to this unit type
								for _, utype in ipairs(archetype_data.unit_types or {}) do
									if utype == unit.type then 
										found_race_data = race_data; 
										break 
									end
									if found_race_data then break end
								end
								if found_race_data then break end
							end
							if found_race_data then break end
						end

						if found_race_data then
							_G.ucc_open_picker(unit, found_race_data, nil)
						else
							wesnoth.interface.add_chat_message("UCC", "Diese Einheit (" .. unit.type .. ") hat noch keine UCC-Daten.")
						end
					]]
				} }
			} }
		})
	else
		wesnoth.wml_actions.set_menu_item({
			id = "ucc_custom_picker",
			description = "Color changer",
			{ "filter_location", {
				{ "filter", { side = wesnoth.current.side} }
			} },
			{ "command", {
				{ "lua", {
					code = [[
						local unit = wesnoth.units.get(wesnoth.current.event_context.x1, wesnoth.current.event_context.y1)
						if not unit or not _G.ucc_race_registry then return end

						-- Suche nach passenden Daten
						local race_data = _G.ucc_race_registry[unit.race]
						local found_race_data = nil
						
						if not race_data or not race_data.body_parts then
							wesnoth.interface.add_chat_message("UCC", "Diese Einheit (" .. unit.type .. ") hat noch keine UCC-Daten.")
							return nil
						end
						
						for _, body_part_entry in pairs(race_data.body_parts) do
							
							-- Inner Loop: Iterate through archetypes (e.g., "glider, fighter ..")
							for archetype, archetype_data in pairs(body_part_entry.data) do
								
								 -- Check if this sub-group applies to this unit type
								for _, utype in ipairs(archetype_data.unit_types or {}) do
									if utype == unit.type then 
										found_race_data = race_data; 
										break 
									end
									if found_race_data then break end
								end
								if found_race_data then break end
							end
							if found_race_data then break end
						end
								
						if found_race_data then
							_G.ucc_open_picker(unit, found_race_data, nil)
						else
							wesnoth.interface.add_chat_message("UCC", "Diese Einheit (" .. unit.type .. ") hat noch keine UCC-Daten.")
						end
					]]
				} }
			} }
		})
	end
end)

on_event("post advance", function(ctx)
    local unit = wesnoth.units.get(ctx.x1, ctx.y1)

    -- 1. Suche nach der gespeicherten UCC-ID in den Modifikationen der Einheit
    local old_combined_id = nil
    local modifications = wml.get_child(unit.__cfg, "modifications")
    
    if modifications then
        for obj in wml.child_range(modifications, "object") do
            -- Wir suchen nach unserer speziellen UCC-ID
            if obj.ucc_color_id then
                old_combined_id = obj.ucc_color_id
                break
            end
        end
    end
	
	
    -- 2. Wenn wir eine ID gefunden haben, wenden wir sie auf die neue Form an
    if old_combined_id then
        -- Wir suchen die passende Race-Data für den NEUEN Unit-Typ
		local race_data = _G.ucc_race_registry[unit.race]
        local found_race_data = nil
		
		for _, body_part_entry in pairs(race_data.body_parts) do
			
			-- Inner Loop: Iterate through archetypes (e.g., "glider, fighter ..")
			for archetype, archetype_data in pairs(body_part_entry.data) do
				
				 -- Check if this sub-group applies to this unit type
				for _, utype in ipairs(archetype_data.unit_types or {}) do
					if utype == unit.type then 
						found_race_data = race_data; 
						break 
					end
					if found_race_data then break end
				end
				if found_race_data then break end
			end
			if found_race_data then break end
		end
		

        -- Wenn der neue Typ auch UCC unterstützt, wenden wir die alten Farben an
        if found_race_data and old_combined_id then
            -- Hier nutzen wir die Logik deiner apply-Funktion
			local old_variants = parse_composite_id(old_combined_id)
			local data = generate_ucc_data(unit, old_variants, found_race_data)
            apply_ucc_to_unit(unit, data, old_combined_id)
        end
    end
end)

on_event("unit placed", function(ctx)
    -- 1. Basics prüfen
    -- WICHTIG: Wir prüfen nur, ob das Feature an ist. NICHT auf ucc_choice prüfen!
    -- Wir vergleichen mit "yes", da WML-Variablen Strings sind.
    if not wml.variables.color_changer_ingame_side == "yes" then return end

    local unit = wesnoth.units.get(ctx.x1, ctx.y1)
    if not unit then return end
    
    -- 2. Sicherheits-Check: Hat die Einheit schon Mods?
	if has_visual_mods(unit) then return end
			
    -- 3. Daten für die Rasse holen
    local race_data = _G.ucc_race_registry[unit.race]
    if not race_data then return end

    -- 4. Prüfen, ob für diese Seite gespeicherte Präferenzen existieren
    local target_map = {}
    local found_preference = false

    for _, part in ipairs(race_data.body_parts) do
        local var_name = "ucc_pref_side_" .. unit.side .. "_" .. part.name
        local saved_variant = wml.variables[var_name]
        
        if saved_variant then
            target_map[part.name] = saved_variant
            -- Debug Nachricht ist okay, aber nur zum Testen drin lassen
            -- wesnoth.interface.add_chat_message("Lade Pref: " .. part.name .. "=" .. saved_variant)
            found_preference = true
        end
    end

    -- 5. Wenn wir Präferenzen gefunden haben, anwenden!
    if found_preference then
        local new_data = generate_ucc_data(unit, target_map, race_data)

        -- Checken ob Daten da sind
        if new_data and new_data.id ~= "" then
            -- WICHTIG: Wir übergeben 'new_data' (die Tabelle), NICHT 'new_data.id'!
            apply_ucc_to_unit(unit, new_data, nil)
        end
    end
end)