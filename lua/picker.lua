local on_event = wesnoth.require("on_event")
local gui = wesnoth.require("~add-ons/UCC_LUA/lua/gui.lua")

local function color_changer_ingame_allsides_boolean()
	return wml.variables.color_changer_ingame_allsides
end

-- Helper function: Checks if the unit has already been visually modified
local function has_visual_mods(unit)
    local modifications = wml.get_child(unit.__cfg, "modifications")
    if not modifications then return false end

    for obj in wml.child_range(modifications, "object") do
		if obj.ucv_color_id then
			return false
		else
			for eff in wml.child_range(obj, "effect") do
				if eff.apply_to == "image_mod" then
					return true
				end
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
        -- 1. find archetype
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

        -- 2. color mapping
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
    
    -- Return table
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
            replace = "~PAL(" .. data.base_colors .. ">" .. data.new_colors .. ")"
        }}
    }
    
    unit:add_modification("object", mod_cfg)
end

_G.ucc_open_picker = function(unit)
    -- 1. get data
    local race_data = _G.ucc_race_registry[unit.race]
    if not race_data then 
        wesnoth.interface.add_chat_message("UCC", "Error: No race data found.")
        return 
    end
	
	local final_selections = nil
	local whole_faction = false
	
    -- 2. open gui and mp.sync
	local dialog_result = wesnoth.sync.evaluate_single("unit color selection",function()
        -- only availabe to the active player
        local final_selections = gui.show_picker(unit, race_data)
        -- sends data to all players
		return final_selections
    end)
	
	local whole_faction = dialog_result.boolean
	-- removes the boolean value from the table
	dialog_result.boolean = nil
	local final_selections = dialog_result

    -- 3. If the player chose a color, continue here
    if final_selections then
        
        local units_to_process = {}
        
		-- checks if all units should be changed
        if whole_faction then
             for part, variant in pairs(final_selections) do
                 local var_name = "ucc_pref_side_" .. unit.side .. "_" .. part
                 wml.variables[var_name] = variant
             end
             
             units_to_process = wesnoth.units.find_on_map({ side = unit.side })
        else
             units_to_process = { unit }
        end

        -- looping through all affected units
        for _, u in ipairs(units_to_process) do
            
            -- get old image_mods, so we can delete them
            local u_modifications = wml.get_child(u.__cfg, "modifications")
            local u_old_id = nil
            
            if u_modifications then
                for obj in wml.child_range(u_modifications, "object") do
                    if obj.ucc_color_id then 
                        u_old_id = obj.ucc_color_id
                        break 
                    elseif obj.ucv_color_id then 
                        u:remove_modifications({ ucv_color_id = obj.ucv_color_id }, "object")
                        break 
                    end
                end
            end

            local current_map = {}
            if u_old_id then
                current_map = parse_composite_id(u_old_id)
            end
            
            for part, variant in pairs(final_selections) do
                current_map[part] = variant
            end

            local u_race_data = _G.ucc_race_registry[u.race]
            
            if u_race_data then
                local new_data = generate_ucc_data(u, current_map, u_race_data)
                
                if new_data and new_data ~= "" then
                    apply_ucc_to_unit(u, new_data, u_old_id)
                end
            end
			wesnoth.wml_actions.redraw {}
        end
        
    end
end

-- relevant events for the color changer
-- turn refresh for menu_item
-- post advance if a unit advances and needs new colors
-- unit placed  if a new unit is generated
on_event("turn refresh", function()
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
							wesnoth.interface.add_chat_message("UCC", "This Unit (" .. unit.type .. ") isnt supported, yet.")
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
							wesnoth.interface.add_chat_message("UCC", "This Unit (" .. unit.type .. ") isnt supported, yet.")
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
							wesnoth.interface.add_chat_message("UCC", "This Unit (" .. unit.type .. ") isnt supported, yet.")
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
							wesnoth.interface.add_chat_message("UCC", "This Unit (" .. unit.type .. ") isnt supported, yet.")
						end
					]]
				} }
			} }
		})
	end
end)

on_event("post advance", function(ctx)
    local unit = wesnoth.units.get(ctx.x1, ctx.y1)

    local old_combined_id = nil
    local modifications = wml.get_child(unit.__cfg, "modifications")
    
    if modifications then
        for obj in wml.child_range(modifications, "object") do
            if obj.ucc_color_id then
                old_combined_id = obj.ucc_color_id
                break
            end
        end
    end
	
	
    if old_combined_id then
		local race_data = _G.ucc_race_registry[unit.race]
        local found_race_data = nil
		
		for _, body_part_entry in pairs(race_data.body_parts) do
			for archetype, archetype_data in pairs(body_part_entry.data) do
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

        if found_race_data and old_combined_id then
			local old_variants = parse_composite_id(old_combined_id)
			local data = generate_ucc_data(unit, old_variants, found_race_data)
            apply_ucc_to_unit(unit, data, old_combined_id)
        end
    end
end)

on_event("unit placed", function(ctx)
    if not wml.variables.color_changer_ingame_side == "yes" then return end

    local unit = wesnoth.units.get(ctx.x1, ctx.y1)
    if not unit then return end
    
	if has_visual_mods(unit) then return end
			
    local race_data = _G.ucc_race_registry[unit.race]
    if not race_data then return end

    local target_map = {}
    local found_preference = false

    for _, part in ipairs(race_data.body_parts) do
        local var_name = "ucc_pref_side_" .. unit.side .. "_" .. part.name
        local saved_variant = wml.variables[var_name]
        
        if saved_variant then
            target_map[part.name] = saved_variant
            found_preference = true
        end
    end

    if found_preference then
        local new_data = generate_ucc_data(unit, target_map, race_data)

        if new_data and new_data.id ~= "" then
            apply_ucc_to_unit(unit, new_data, nil)
        end
    end
end)