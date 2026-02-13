local helper = wesnoth.require "lua/helper.lua"
local T = wml.tag

local gui = {}

-- HELPER: Bild sicher holen (Fix für den nil error)
local function get_unit_base_image(unit)
    -- 1. Hat die Unit ein custom image?
    if unit.__cfg.image then return unit.__cfg.image end
    -- 2. Wenn nein, nimm das Bild vom Unit Type
    local ut = wesnoth.unit_types[unit.type]
    if ut and ut.__cfg.image then return ut.__cfg.image end
    -- 3. Fallback
    return "misc/missing-image.png"
end

function gui.show_picker(unit, race_data)
    local selections = {} 
    local active_variants_cache = {} 
    local whole_faction_check = false
    
    -- Bild sicher laden
    local base_image = get_unit_base_image(unit)

    -- 1. Helper: Vorschau Bild generieren
    local function get_preview_image()
        local img_mod = ""
        
        for part_name, var_name in pairs(selections) do
            for _, part in ipairs(race_data.body_parts) do
                if part.name == part_name then
                    for _, arch in pairs(part.data) do
                         local match = false
                         for _, ut in ipairs(arch.unit_types or {}) do
                             if ut == unit.type then match = true; break end
                         end
                         
                         if match then
                             for _, v in ipairs(arch.variants) do
                                 if v.name == var_name then
                                     -- Hier nutzen wir base_image statt unit.__cfg.image
                                     img_mod = img_mod .. "~PAL(" .. arch.base .. ">" .. v.colors .. ")"
                                 end
                             end
                         end
                    end
                end
            end
        end
        return base_image .. img_mod .. "~SCALE(144,144)"
    end

    -- 2. GUI Definition
	local definition = {
        T.tooltip { id = "tooltip_large" },
        T.helptip { id = "helptip_large" },
        maximum_height = 700,
        maximum_width = 900,
        
        -- DAS HAUPT-GRID (Hat immer nur 1 Spalte pro Zeile!)
        T.grid {
            -- ZEILE 1: Der Inhaltsbereich
            T.row {
                T.column {
                    horizontal_grow = true,
                    T.grid { -- UNTER-GRID FÜR DEN INHALT (4 Spalten)
                        T.row {
                            -- Spalte 1: Parts
                            T.column { 
								T.listbox { 
									id = "list_parts", 
									height = 400, 
									width = 150,
									T.list_definition { 
										T.row { 
											T.column { 
												horizontal_grow = true,
												-- Das toggle_panel ist der "Anker" für die Zeile
												T.toggle_panel { 
													T.grid {
														T.row {
															T.column {
																horizontal_alignment = "left",
																T.label { 
																	id = "lbl_part",
																	definition = "default" -- Explizite Definition hilft oft
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
                            -- Spalte 2: Variants
                            T.column { T.listbox { id = "list_variants", height = 400, width = 250,
                                T.list_definition { T.row { T.column { T.toggle_button { id = "btn_variant" } } } }
                            }},
                            -- Spalte 3: Preview
                            T.column { vertical_alignment = "center", border = "all", border_size = 5,
                                T.image { id = "img_preview", label = base_image .. "~SCALE(144,144)" }
                            },
                            -- Spalte 4: Cart
                            T.column { T.grid {
                                T.row { T.column { T.label { label = "Selected:" } } },
                                T.row { T.column { T.listbox { id = "list_cart", height = 300, width = 200,
                                    T.list_definition { T.row { T.column { T.label { id = "lbl_cart" } } } }
                                }}},
                                T.row { T.column { T.toggle_button { id = "chk_faction", label = "Whole Faction" } } }
                            }}
                        }
                    }
                }
            },
            
            -- ZEILE 2: Abstandshalter (Optional, wie in SotA)
            T.row { T.column { T.spacer { height = 10 } } },

            -- ZEILE 3: Die Buttons
            T.row {
                T.column {
                    horizontal_alignment = "right",
                    T.grid { -- UNTER-GRID FÜR DIE BUTTONS
                        T.row {
                            T.column { T.button { id = "cancel", label = "Cancel" } },
                            T.column { T.spacer { width = 10 } },
                            T.column { T.button { id = "ok", label = "Apply" } }
                        }
                    }
                }
            }
        }
    }

    -- 3. Logic Hook
    local function preshow(dialog)
        
        local function update_cart()
            local items = {}
            for k, v in pairs(selections) do
				table.insert(items, { 
					lbl_part = { label = tostring(k) .. ":" .. tostring(v) } 
				})
            end
			dialog.list_cart:remove_items_at(0, -1) -- Erstmal alles löschen
			for i, item in ipairs(items) do
				dialog.list_cart:set_items(items)
			end
            dialog.img_preview.label = get_preview_image()
        end

        local part_items = {}
		for _, p in ipairs(race_data.body_parts) do
			-- Wir stellen sicher, dass es ein String ist (oder ein translatable object)
			table.insert(part_items, { 
				lbl_part = { label = tostring(p.name) } 
			})
		end
		dialog.list_parts:remove_items_at(0, -1) -- Erstmal alles löschen
		for i, item in ipairs(part_items) do
			dialog.list_parts:add_item(item)
		end

        dialog.list_parts.on_modified = function()
            local idx = dialog.list_parts.selected_index
            if idx == 0 then return end
            
            local part = race_data.body_parts[idx]
            local variants = {}
            
            for _, arch in pairs(part.data) do
                 local match = false
                 for _, ut in ipairs(arch.unit_types or {}) do
                     if ut == unit.type then match = true; break end
                 end
                 if match then
                     variants = arch.variants
                     break
                 end
            end
            
            active_variants_cache = variants 
            
            local v_items = {}
            for _, v in ipairs(variants) do
                local is_sel = (selections[part.name] == v.name)
                table.insert(v_items, { btn_variant = { label = v.name, selected = is_sel } })
            end
            dialog.list_variants.set_items(v_items)
        end

        dialog.list_variants.on_modified = function()
            local p_idx = dialog.list_parts.selected_index
            local v_idx = dialog.list_variants.selected_index
            
            if p_idx > 0 and v_idx > 0 and active_variants_cache[v_idx] then
                local part_name = race_data.body_parts[p_idx].name
                local variant_name = active_variants_cache[v_idx].name
                selections[part_name] = variant_name
                update_cart()
                
                -- GUI Hack: Liste neu laden, um Checkbox-Status visuell zu updaten
                -- (Optional, macht es aber schöner)
                -- dialog.list_parts.on_modified() 
            end
        end
        
        dialog.chk_faction.on_modified = function()
             whole_faction_check = dialog.chk_faction.selected
        end
        
        -- WICHTIG: update_cart hier sicherheitshalber erst am Ende aufrufen
        update_cart()
    end

	local res = wesnoth.show_dialog(definition, preshow)
    
    -- WICHTIG: Prüfen auf Standard-OK-Codes (1, -1, oder andere)
    -- Wenn nicht gecancelt wurde, geben wir was zurück.
    -- In Standard-Lua-Dialogen ist Cancel meist 2 oder -2. OK ist 1 oder -1.
    -- Wir prüfen einfach, ob es NICHT Cancel ist.
    
    -- Wenn "Cancel" gedrückt wird, ist res meist 2 oder -2.
    -- Wir nehmen an: Alles außer Cancel ist OK.
    
    -- Debugging Hilfe:
    -- wesnoth.interface.add_chat_message("Dialog Result: " .. tostring(res))

    if res == -2 or res == 2 or res == "cancel" then
        return nil, nil
    else
        return selections, whole_faction_check
    end
end

return gui