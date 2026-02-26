--local helper = wesnoth.require "lua/helper.lua"
local T = wml.tag

local gui = {}

-- HELPER: Safely retrieve the base image of a unit
local function get_unit_base_image(unit)
    if unit.__cfg.image then return unit.__cfg.image end
    local ut = wesnoth.unit_types[unit.type]
    if ut and ut.__cfg.image then return ut.__cfg.image end
    return "misc/missing-image.png"
end

local function GUI_FORCE_WIDGET_MINIMUM_SIZE(w, h, content)
	return T.stacked_widget {
		definition = "default",
		T.layer {
			T.row {
				T.column {
					T.spacer {
						definition = "default",
						width = w,
						height = h
					}
				}
			} 
		},
		T.layer {
			T.row {
				grow_factor = 1,
				T.column {
					grow_factor = 1,
					horizontal_grow = "true",
					vertical_grow = "true",
					content
				}
			} 
		}
	}
end

function gui.show_picker(unit, race_data)
    
    if not race_data then
        wesnoth.interface.add_chat_message("UCC", "Error: No race data found.")
        return
    end

	-- State variables
    local selections = {} 
    local active_variants_cache = {} 
    local whole_faction_check = false
    local base_image = get_unit_base_image(unit)
	local unit_side = unit.__cfg["side"]
	local team_mod = "~RC(magenta>" .. unit_side .. ")"
	
    -- 1. Image Preview Logic
    local function get_preview_image()
        local img_mod = ""
		-- Iterate through all currently selected variations
        for part_name, var_name in pairs(selections) do
            for _, part in ipairs(race_data.body_parts) do
                if part.name == part_name then
                    for _, arch in pairs(part.data) do
                         local match = false
                         -- Check if this archetype applies to the current unit type
                         for _, ut in ipairs(arch.unit_types or {}) do
                             if ut == unit.type then match = true; break end
                         end
                         
                         if match then
                             for _, v in ipairs(arch.variants) do
                                 if v.name == var_name then
                                     -- Append the color shift to the image modification string
                                     img_mod = img_mod .. "~PAL(" .. arch.base .. ">" .. v.colors .. ")"
                                 end
                             end
                         end
                    end
                end
            end
        end
        return base_image .. img_mod .. team_mod .. "~SCALE_SHARP(216,216)"
    end

    -- 2. GUI Definition (WML Table)
    local definition = {
		maximum_height = 700,
		maximum_width = 900,
		
		T.tooltip { id = "tooltip_large" },
        T.helptip { id = "tooltip_large" },
		
        T.grid {
            T.row {
                T.column {
                    vertical_alignment = "top",
                    border = "right", border_size = 10,
                    horizontal_grow = true,
                    T.grid {
                        T.row { T.column { T.label { label = "<b>Preview</b>", use_markup = true } } },
                        T.row { T.column { T.image { id = "the_image", label = base_image } } },
                        T.row { T.column { T.spacer { height = 20 } } },
                        T.row { T.column { 
                            T.toggle_button { 
                                id = "chk_faction", 
                                label = "Whole Faction",
                                tooltip = "Apply to all units of this race"
                            } 
                        }},
                        T.row { T.column { T.spacer { height = 20 } } },
						T.row {
							T.column {
								grid_width = 3, 
								horizontal_alignment = "right",
								border = "top", border_size = 10,
								T.grid {
									T.row {
										T.column { T.button { id = "cancel", label = "Cancel" } },
										T.column { T.spacer { width = 10 } },
										T.column { T.button { id = "ok", label = "Apply", return_value = 1 } }
									}
								}
							}
						}
                    }
                },
                
                T.column {
                    vertical_alignment = "top",
                    horizontal_alignment = "left",
                    grow_factor = 1,
                    horizontal_grow = true, vertical_grow = true,
                    T.grid {
                        T.row { 
							T.column{
								vertical_alignment = "top", 
								T.label { label = "<b>Body Parts</b>", use_markup = true } } },
                        T.row {
                            T.column {
								border = "all",
								border_size = 5,
								horizontal_grow = true,
								vertical_grow = true,
                                T.listbox {
                                    id = "list_parts",
                                    T.list_definition {
                                        T.row {
                                            T.column {
												grow_factor = 1,
												horizontal_grow = true,
												vertical_grow = true,
                                                T.toggle_panel {
                                                    T.grid {
                                                        T.row {
															grow_factor = 1,
                                                            T.column {
                                                                horizontal_alignment = "left",
                                                                border = "all", border_size = 5,
                                                                T.label { id = "lbl_part" }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                },

                T.column {
                    vertical_alignment = "top",
                    horizontal_alignment = "left",
                    grow_factor = 1,
                    horizontal_grow = true, vertical_grow = true,
                    T.grid {
                        T.row { T.column { T.label { label = "<b>Colors</b>", use_markup = true } } },
                        T.row {
                            T.column {
								border = "all",
								border_size = 5,
								horizontal_grow = true,
								vertical_grow = true,
                                T.listbox {
                                    id = "list_variants",
									vertical_scrollbar_mode = "always",
                                    T.list_definition {
                                        T.row {
                                            T.column {
												grow_factor = 1,
												horizontal_grow = true,
												vertical_grow = true,
                                                T.toggle_panel {
                                                    T.grid {
                                                        T.row {
															grow_factor = 1,
                                                            T.column { 
																border = "all",
																border_size = 5,
																horizontal_alignment = "left",
                                                                T.image { id = "lbl_image"} 
                                                            },
                                                            T.column {
																border = "all",
																border_size = 5,
																horizontal_alignment = "left",
																GUI_FORCE_WIDGET_MINIMUM_SIZE(150,5,
																	T.label {
																		id = "lbl_variant"
																	}
																)
                                                            },
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    -- 3. Preshow Logic (Dynamic data loading)
    local function preshow(dialog)
        local function update_preview()
            dialog.the_image.label = get_preview_image()
        end

		local part_items = {}
        local visible_part_map = {} -- Mapping GUI index to actual data index
		local part_map_counter = 0
		
		-- A. LOAD BODY PARTS
        for i, part_data in ipairs(race_data.body_parts) do
            local is_relevant = false
            
            for k, archetype_data in pairs(part_data.data) do
                if archetype_data.unit_types then
                    for j, u_type in ipairs(archetype_data.unit_types) do
                        if u_type == unit.type then
                            is_relevant = true
                            break
                        end
                    end
                end
                if is_relevant then break end
            end

            if is_relevant then
				part_map_counter = part_map_counter + 1
				dialog.list_parts:find(part_map_counter, "lbl_part").label = part_data.name
                table.insert(visible_part_map, i) -- Stores for example: GUI Item 2 corresponds to Data Item 4 (Skin)
            end
        end

        if #visible_part_map > 0 then
            dialog.list_parts.selected_index = 1
        end
		
		local biggest_number = 0
		
		-- B. IF PART SELECTED -> LOAD VARIANTS
        local function load_variants_for_selected_part()
            local selected_idx = dialog.list_parts.selected_index
            if selected_idx < 1 then return end
            
			local real_idx = visible_part_map[selected_idx]
            local part_data = race_data.body_parts[real_idx]

            active_variants_cache = {} 
            local variant_items = {}
            
            for archetype_name, archetype_data in pairs(part_data.data) do
                local is_match = false
                if archetype_data.unit_types then
                    for _, u_type in ipairs(archetype_data.unit_types) do
                        if u_type == unit.type then is_match = true; break end
                    end
                end
				
                if is_match then
                    for _, variant in ipairs(archetype_data.variants) do
                        table.insert(variant_items, { lbl_variant = variant.name , lbl_image=base_image  })
                        table.insert(active_variants_cache, variant)
                    end
					
					-- makes everything blank
					local index = 1
					while index <= biggest_number do
						dialog.list_variants:find(index, "lbl_image").label = "misc/blank-hex.png"
						dialog.list_variants:find(index, "lbl_variant").label = " \n "
						index = index + 1			
					end
					for j, variant in ipairs(archetype_data.variants) do
						dialog.list_variants:find(j, "lbl_image").label = base_image .. "~PAL(" .. archetype_data.base .. ">" .. variant.colors .. ")" .. team_mod
						dialog.list_variants:find(j, "lbl_variant").label = variant.description
					end
					
                end
				
				-- first reset the biggest_number then counts the current size of variant list, for later removable
				biggest_number = 0
				for _, variant in ipairs(archetype_data.variants) do
					biggest_number = biggest_number + 1
				end
            end
            
            -- Selection restoration 
            local current_selection = selections[part_data.name]
            if current_selection then
                for i, v in ipairs(active_variants_cache) do
                    if v.name == current_selection then
                        dialog.list_variants.selected_index = i
                        break
                    end
                end
            end
        end

        -- Callbacks
        dialog.list_parts.on_modified = function()
            load_variants_for_selected_part()
        end

        dialog.list_variants.on_modified = function()
            local p_idx = dialog.list_parts.selected_index
            local v_idx = dialog.list_variants.selected_index
            
            if p_idx > 0 and v_idx > 0 and active_variants_cache[v_idx] then
				local real_idx = visible_part_map[p_idx]
                local part_name = race_data.body_parts[real_idx].name
                local variant_name = active_variants_cache[v_idx].name
                selections[part_name] = variant_name
                update_preview()
            end
        end
        
        dialog.chk_faction.on_modified = function()
             whole_faction_check = dialog.chk_faction.selected
        end

        load_variants_for_selected_part()
        update_preview()
    end

    -- 4. Display Dialog (Safe Wrapper)
    local show_dialog_func = wesnoth.show_dialog
    if wesnoth.gui and wesnoth.gui.show_dialog then
        show_dialog_func = wesnoth.gui.show_dialog
    end

    if not show_dialog_func then
        wesnoth.interface.add_chat_message("UCC", "CRITICAL ERROR!")
        return
    end

    local res = show_dialog_func(definition, preshow)

    -- 5. return picked data
    if res == 1 or res == -1 then -- Standard OK Buttons
		selections["boolean"]=whole_faction_check
		return selections
    else
        return {}
    end
end

return gui