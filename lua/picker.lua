local on_event = wesnoth.require("on_event")

local function color_changer_ingame_boolean()
	return wml.variables.color_changer_ingame
end
local function color_changer_ingame_side_boolean()
	return wml.variables.color_changer_ingame_side
end
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

local function generate_ucc_data(unit, map, found_race_data)
	
	map = map or {}
	local unit_type = unit.__cfg["type"]
    local race_data = found_race_data
    if not race_data or not race_data.body_parts then 
		return nil
	end

    local final_base_table = {}
    local final_color_table = {}
    local id_parts = {}

    for _, body_part_entry in pairs(race_data.body_parts) do
		local body_part = body_part_entry.name
		
		-- Inner Loop: Iterate through archetypes (e.g., "glider, fighter ..")
        for archetype, archetype_data in pairs(body_part_entry.data) do
            
			 -- Check if this sub-group applies to this unit type
			local is_supported = false
			local current_unit_type = ""
            for _, utype in ipairs(archetype_data.unit_types or {}) do
                if utype == unit_type then
					current_unit_type = utype
					is_supported = true; 
					break 
				end
            end
			
            if is_supported then
			
				-- Extract variants (k for the name of the color and variants[k] saves the color")
                local variants = {}
                for k, v in pairs(archetype_data.variants) do
					k = v.name
					variants[k] = v.colors
                end

                local chosen = nil
                local target_variant_id = map[body_part]
				
				-- Pick variant. Keep old variant when leveling up if it exists in the new part, else take group coloring.
                if target_variant_id and variants[target_variant_id] then
                    chosen = { id = target_variant_id, data = variants[target_variant_id] }
                else
					-- wesnoth.interface.add_chat_message("UCC", "Check if the bodyparts got similar names between all bodyparts.")
                    --local affinity_mod = affinity_modifiers[body_part] or {}
                    --chosen = { id = target_variant_id, data = variants[target_variant_id] } --ToDo
                end

                if chosen then
                    table.insert(id_parts, string.format("%s:%s:%s", body_part, current_unit_type, chosen.id))
                    
                    -- Compile palettes. Add to the base and target color, but only if the new color isn't same as base color.
                    local source_pal = archetype_data.base
                    local target_pal = chosen.data
                    if source_pal and target_pal then
                        table.insert(final_base_table, source_pal)
                        table.insert(final_color_table, target_pal)
                    end
                    break -- move to next body_part
                end
            end
        end
    end

    return {
		-- Combine the tables into strings and return them
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

_G.ucc_open_picker = function(target_unit, ucc_data, whole_faction)
    -- 1. Bildpfad säubern
    local unit_type = target_unit.__cfg["type"]
    local unit_side = target_unit.__cfg["side"]
    local unit_image = target_unit.__cfg["image"]
    
    local final_selections = {}

    -- 2. Das Menü anzeigen (Dein bestehender Code)
    for i, body_part_entry in pairs(ucc_data.body_parts) do
        -- Inner Loop: Iterate through archetypes
        for archetype, archetype_data in pairs(body_part_entry.data) do
            
             -- Check if this sub-group applies to this unit type
            local is_supported = false
            for _, utype in ipairs(archetype_data.unit_types or {}) do
                if utype == unit_type then 
                    is_supported = true; 
                    break 
                end
            end

            if is_supported then
                local options = {}
                
                -- WML-Optionen bauen
                for j, var in ipairs(archetype_data.variants) do
                    local preview_mod = "~PAL(" .. archetype_data.base .. ">" .. var.colors .. ")"
                    local team_mod = "~RC(magenta>" .. unit_side .. ")"
                    local final_image = unit_image .. preview_mod .. team_mod

                    table.insert(options, { "option", {
                        message = var.name, -- Name der Variante (z.B. "WYVERN_DRAKE")
                        image = final_image,
                        { "command", {
                            { "set_variable", { name = "ucc_choice", value = j } }
                        } }
                    } })
                end

                -- Menü anzeigen
                wesnoth.wml_actions.message({
                    speaker = "narrator",
                    caption = "UCC: " .. (body_part_entry.name or "Teil " .. i),
                    message = "Wähle eine Farbe für " .. (body_part_entry.name or "dieses Element"),
                    table.unpack(options)
                })

                -- Auswahl speichern
                local choice = wml.get_variable("ucc_choice")
                if choice and choice > 0 then
                    local selected_variant = archetype_data.variants[choice]
                    
                    table.insert(final_selections, {
                        -- WICHTIG: Wir speichern hier nur die abstrakten Namen!
                        part_name = body_part_entry.name,       -- z.B. "scales"
                        variant_name = selected_variant.name    -- z.B. "WYVERN_DRAKE"
                    })
                    
                    wml.variables["ucc_choice"] = 0 
                else
                    return -- Abbruch bei Cancel
                end
            end
        end
    end
    
    -- 3. Finale Anwendung: Einzeln oder Fraktionsweit?
    if #final_selections > 0 then
        
        -- A) Wir bauen eine "Blaupause" der Änderungen
        -- Das Format ist: Map[Körperteil] = "VariantenName"
        -- z.B. { ["scales"] = "WYVERN_DRAKE", ["eyes"] = "ALBINO" }
		local blueprint_map = {}
		for _, sel in ipairs(final_selections) do
			blueprint_map[sel.part_name] = sel.variant_name
			
			-- NEU: Wenn "Whole Faction" aktiv ist, speichern wir das dauerhaft für die Seite
			if whole_faction then
				-- Variable-Name z.B.: "ucc_pref_side_1_scales"
				local var_name = "ucc_pref_side_" .. unit_side .. "_" .. sel.part_name
				wml.variables[var_name] = sel.variant_name
			end
		end
		
        -- B) Welche Einheiten sind betroffen?
        local units_to_process = {}
        if whole_faction then
            -- Suche alle Einheiten der Seite auf der Karte
            units_to_process = wesnoth.units.find_on_map({ side = unit_side })
        else
            -- Nur die angeklickte Einheit
            units_to_process = { target_unit }
        end

        -- C) Schleife über alle betroffenen Einheiten
        for o, u in ipairs(units_to_process) do
            
            -- 1. Alte Farben der jeweiligen Einheit auslesen
            -- (Damit wir z.B. die Augenfarbe behalten, wenn wir nur die Schuppen ändern)
            local u_modifications = wml.get_child(u.__cfg, "modifications")
            local u_old_id = nil
            if u_modifications then
                for obj in wml.child_range(u_modifications, "object") do
                    if obj.ucv_color_id then 
                        u_old_id = obj.ucv_color_id
						units_to_process[o]:remove_modifications({ ucv_color_id = u_old_id }, "object"); break 
                    elseif obj.ucc_color_id then -- Fallback für altes System
                        u_old_id = obj.ucc_color_id; break 
                    end
                end
            end

            -- 2. Bestehende Varianten parsen
            local current_map = {}
            if u_old_id then
                current_map = parse_composite_id(u_old_id)
            end

            -- 3. Blaupause drüberlegen (Update)
            -- Wir überschreiben die alten Werte mit den neuen Selektionen
            for part, variant_name in pairs(blueprint_map) do
                current_map[part] = variant_name
            end

            -- 4. Race Data für DIESE Einheit holen
            -- (Ein Wolf Rider braucht wolf_data, ein Drake braucht drake_data)
            local u_race_data = _G.ucc_race_registry[u.race]

            if u_race_data then
                -- 5. Neue Daten generieren
                -- Hier passiert die Magie: generate_ucc_data sucht für den "Fighter"
                -- automatisch die "WYVERN_DRAKE" Variante im "fighter"-Archetyp,
                -- auch wenn wir sie ursprünglich bei einem "Glider" ausgewählt haben.
                local new_data = generate_ucc_data(u, current_map, u_race_data)

                -- 6. Anwenden (nur wenn valide Daten rauskamen)
                if new_data and new_data.id ~= "" then
                    apply_ucc_to_unit(u, new_data, u_old_id)
                end
            end
        end

        wesnoth.wml_actions.redraw {}
    end
end

-- 4. Das Preload Event (Sicher verpackt)
on_event("turn refresh", function()
	--local allsides = 
	if color_changer_ingame_allsides_boolean() then
		wesnoth.wml_actions.set_menu_item({
			id = "ucc_custom_picker",
			description = "Color changer: single unit",
			{ "show_if", {
				{ "variable", {name="color_changer_ingame", equals=color_changer_ingame_boolean()} }
			} },
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
		wesnoth.wml_actions.set_menu_item({
			id = "ucc_custom_picker2",
			description = "Color changer: whole faction",
			{ "show_if", {
				{ "variable", {name="color_changer_ingame_side", equals=color_changer_ingame_side_boolean()} }
			} },
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
						local whole_faction = wml.variables.color_changer_ingame_side
						
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
							_G.ucc_open_picker(unit, found_race_data, whole_faction)
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
			description = "Color changer: single unit",
			{ "show_if", {
				{ "variable", {name="color_changer_ingame", equals=color_changer_ingame_boolean()} }
			} },
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
		wesnoth.wml_actions.set_menu_item({
			id = "ucc_custom_picker2",
			description = "Color changer: whole faction",
			{ "show_if", {
				{ "variable", {name="color_changer_ingame_side", equals=color_changer_ingame_side_boolean()} }
			} },
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
						local whole_faction = wml.variables.color_changer_ingame_side
						
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
							_G.ucc_open_picker(unit, found_race_data, whole_faction)
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