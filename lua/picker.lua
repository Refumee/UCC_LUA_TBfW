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

_G.ucc_open_picker = function(target_unit, ucc_data, whole_faction)
    -- 1. Bildpfad säubern (Proxy zu String)
	local unit_type = target_unit.__cfg["type"]
    local unit_side = target_unit.__cfg["side"]
	local unit_image = target_unit.__cfg["image"]
	local unit_portraits = target_unit.__cfg["profile"]
	local ucc_whole_side = whole_faction
	
    local final_selections = {}

	-- 2. Wir gehen die Körperteile durch und filtern nach Unit-Type
    for i, body_part_entry in pairs(ucc_data.body_parts) do

		-- Inner Loop: Iterate through archetypes (e.g., "glider, fighter ..")
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
				
				-- WML-Optionen für dieses Körperteil bauen
				for j, var in ipairs(archetype_data.variants) do
					-- Wir bauen den Pfad Stück für Stück zusammen, um Fehler zu vermeiden
					local preview_mod = "~PAL(" .. archetype_data.base .. ">" .. var.colors .. ")"
					local team_mod = "~RC(magenta>" .. unit_side .. ")"
					local final_image = unit_image .. preview_mod .. team_mod

					table.insert(options, { "option", {
						-- In [option] heißt der Text "message", nicht "description"
						message = var.name,
						image = final_image,
						{ "command", {
							{ "set_variable", { name = "ucc_choice", value = j } }
						} }
					} })
				end

				-- Das Menü für dieses Körperteil anzeigen
				wesnoth.wml_actions.message({
					speaker = "narrator",
					caption = "UCC: " .. (archetype_data.name or "Teil " .. i),
					message = "Wähle eine Farbe für " .. (archetype_data.name or "dieses Element"),
					--image = unit_portraits,
					table.unpack(options)
				})

				-- Ergebnis auslesen
				local choice = wml.get_variable("ucc_choice")
				if choice and choice > 0 then
					local selected_variant = archetype_data.variants[choice]
						
						table.insert(final_selections, {
							base = archetype_data.base,
							color = selected_variant.colors,
							-- HIER befüllst du die Namen für die spätere ID:
							part_name = body_part_entry.name or "unknown_part",
							variant_name = selected_variant.name or "unknown_var"
						})
						
						wml.variables["ucc_choice"] = 0 -- Zurücksetzen für den nächsten Part
				else
					-- Falls der Spieler Esc drückt, brechen wir komplett ab
					return 
				end
			end
		end
	end
	
	-- 3. Finale Anwendung (wie im UCV-Skript)
    if #final_selections > 0 then
        local sources, targets, id_parts = {}, {}, {}
        
        for _, sel in ipairs(final_selections) do
            table.insert(sources, sel.base)
            table.insert(targets, sel.color)
            -- Wir bauen die ID-Segmente: "Körperteil:Archetyp:Farbe"
            -- Da wir manuell wählen, setzen wir den Archetyp auf "manual" oder lassen ihn weg
            table.insert(id_parts, string.format("%s:%s:%s", sel.part_name, unit_type, sel.variant_name))
        end
        
        local full_mod = string.format("PAL(%s>%s)", table.concat(sources, ","), table.concat(targets, ","))
        local combined_id = table.concat(id_parts, "--")
		
		local target_unit_mod = wml.get_child(target_unit.__cfg, "modifications")
		local old_color_id = nil
		if target_unit_mod then
			for adv in wml.child_range(target_unit_mod, "object") do
				if adv.ucv_color_id then 
					old_color_id = adv.ucv_color_id
					break
				elseif adv.ucc_color_id then
					old_color_id = adv.ucc_color_id
				end
			end
		end
		
        -- Wir müssen sicherstellen, dass wir das alte Objekt entfernen, 
        -- falls der Spieler die Farbe erneut ändert (wie in apply_ucc_to_unit)
		target_unit:remove_modifications({ ucv_color_id = old_color_id }, "object") -- UCV
		target_unit:remove_modifications({ ucc_color_id = old_color_id }, "object") -- UCC

        wesnoth.wml_actions.object({
            ucc_color_id = combined_id,
            { "effect", { 
                apply_to = "image_mod", 
                replace = full_mod 
            } }
        })
    end
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
                    local affinity_mod = affinity_modifiers[body_part] or {}
                    chosen = { id = target_variant_id, data = variants[target_variant_id] } --ToDo
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
	
	local mod = { ucc_color_id = data.id }
	
	table.insert(mod, { "effect", {
		apply_to = "image_mod",
		replace = string.format("~PAL(%s>%s)", data.base_colors, data.new_colors)
	}})
	
	unit:add_modification("object", mod)
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

-- on_event("unit placed", function(ctx)
	-- if wml.variables["color_changer_ingame_side"] == yes then
		-- local unit = wesnoth.units.get(ctx.x1, ctx.y1)
		
		-- -- Skip if it already has a color shift from UCC
		-- local modifications = wml.get_child(unit.__cfg, "modifications")
		-- local old_color_id = nil
		
		-- if modifications then
			-- for adv in wml.child_range(modifications, "object") do
				-- if adv.ucv_color_id then 
					-- old_color_id = adv.ucv_color_id
					-- break
				-- elseif adv.ucc_color_id then
					-- return
				-- end
			-- end
		-- end
		
		-- -- Remove existing UCV object if specified
		-- if old_color_id then
			-- target_unit:remove_modifications({ ucv_color_id = old_color_id }, "object") -- UCV
		-- end
		
		-- local race_data = _G.ucc_race_registry[unit.race]
        -- local found_race_data = nil
		
		-- for _, body_part_entry in pairs(race_data.body_parts) do
			
			-- -- Inner Loop: Iterate through archetypes (e.g., "glider, fighter ..")
			-- for archetype, archetype_data in pairs(body_part_entry.data) do
				
				 -- -- Check if this sub-group applies to this unit type
				-- for _, utype in ipairs(archetype_data.unit_types or {}) do
					-- if utype == unit.type then 
						-- found_race_data = race_data; 
						-- break 
					-- end
					-- if found_race_data then break end
				-- end
				-- if found_race_data then break end
			-- end
			-- if found_race_data then break end
		-- end
		
        -- if found_race_data then
			-- local data = generate_ucc_data(unit, nil, found_race_data)
			-- if data then
				-- apply_ucc_to_unit(unit, data)
			-- end
        -- end
	-- end
-- end)