local T = wml.tag

local gui = {}

-- HELPER: Bild sicher holen
local function get_unit_base_image(unit)
    if unit.__cfg.image then return unit.__cfg.image end
    local ut = wesnoth.unit_types[unit.type]
    if ut and ut.__cfg.image then return ut.__cfg.image end
    return "misc/missing-image.png"
end

function gui.show_picker(unit, race_data)
    wesnoth.interface.add_chat_message("UCC", "Starte GUI für: " .. unit.name)

    -- Status-Variablen
    local selections = {} 
    local active_variants_cache = {} 
    local whole_faction_check = false
    local base_image = get_unit_base_image(unit)

    -- 1. Bild-Vorschau Logik
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
                                     img_mod = img_mod .. "~PAL(" .. arch.base .. ">" .. v.colors .. ")"
                                 end
                             end
                         end
                    end
                end
            end
        end
        return base_image .. img_mod
    end

    -- 2. GUI Definition (WML Struktur)
    -- Wir bauen das Grid ähnlich wie in unit_selection auf.
    local definition = {
-- Wichtige Pflichtfelder für GUI2
		T.tooltip { id = "tooltip_large" }, -- HIER: id muss explizit benannt sein
		T.helptip { id = "helptip_large" }, -- HIER: id muss explizit benannt sein
		
        T.grid {
            T.row {
                -- SPALTE 1: VORSCHAU & OPTIONEN
                T.column {
                    vertical_alignment = "top",
                    border = "right", border_size = 10,
                    T.grid {
                        T.row { T.column { T.label { label = "Preview", use_markup = true } } },
                        T.row { T.column { T.image { id = "the_image", label = base_image } } },
                        T.row { T.column { T.spacer { height = 20 } } },
                        T.row { T.column { 
                            T.toggle_button { 
                                id = "chk_faction", 
                                label = "Whole Faction",
                                tooltip = "Apply to all units of this race for your side"
                            } 
                        }},
                        T.row { T.column { T.spacer { height = 20 } } },
                        T.row { T.column { 
                            T.button { id = "ok", label = "Apply" } 
                        }},
                        T.row { T.column { 
                            T.button { id = "cancel", label = "Cancel" } 
                        }}
                    }
                },
                
                -- SPALTE 2: BODY PARTS (LISTE)
                T.column {
                    vertical_alignment = "top",
                    horizontal_alignment = "left",
                    grow_factor = 1,
                    border = "right", border_size = 10,
                    T.grid {
                        T.row { T.column { T.label { label = "Body Parts", use_markup = true } } },
                        T.row {
                            T.column {
                                horizontal_grow = true, vertical_grow = true,
                                T.listbox {
                                    id = "list_parts",
                                    height = 300, width = 150,
                                    -- Hier definieren wir, wie EINE Zeile aussieht
                                    T.list_definition {
                                        T.row {
                                            T.column {
                                                horizontal_grow = true,
                                                T.toggle_panel {
                                                    T.grid {
                                                        T.row {
                                                            T.column {
                                                                horizontal_alignment = "left",
                                                                -- WICHTIG: Die ID 'lbl_part' muss im Lua Code angesprochen werden
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

                -- SPALTE 3: COLORS / VARIANTS (LISTE)
                T.column {
                    vertical_alignment = "top",
                    horizontal_alignment = "left",
                    grow_factor = 1,
                    T.grid {
                        T.row { T.column { T.label { label = "Colors", use_markup = true } } },
                        T.row {
                            T.column {
                                horizontal_grow = true, vertical_grow = true,
                                T.listbox {
                                    id = "list_variants",
                                    height = 300, width = 150,
                                    T.list_definition {
                                        T.row {
                                            T.column {
                                                horizontal_grow = true,
                                                T.toggle_panel {
                                                    T.grid {
                                                        T.row {
                                                            T.column {
                                                                horizontal_alignment = "left",
                                                                -- WICHTIG: ID 'lbl_variant'
                                                                T.label { id = "lbl_variant" }
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
    }

	local function preshow(dialog)
        local function update_preview()
            dialog.img_preview.label = get_preview_image() .. "~SCALE(144,144)"
        end
        
        -- Mapping für Indizes
        local visible_part_map = {} 
        
        -------------------------------------------------------------
        -- A. PARTS LIST BEFÜLLEN (Manuell statt .items = ...)
        -------------------------------------------------------------
        -- 1. Erstmal alles löschen (falls reload)
        -- Wir nutzen remove_items_at(index, count). Wir löschen sicherheitshalber viele.
        if dialog.list_parts.item_count then -- Neuere API
             dialog.list_parts:remove_items_at(1, dialog.list_parts.item_count)
        else -- Ältere API fallback, try/catch Logik in Lua
             pcall(function() dialog.list_parts:remove_items_at(1, 100) end)
        end

        local counter = 1
        for i, part in ipairs(race_data.body_parts) do
            local is_supported = false
            for _, arch in pairs(part.data) do
                 for _, ut in ipairs(arch.unit_types or {}) do
                     if ut == unit.type then is_supported = true; break end
                 end
                 if is_supported then break end
            end
            
            if is_supported then
                -- Hier fügen wir das Item EINZELN hinzu
                local item_data = {
                    btn_part = { selected = (counter == 1) },
                    lbl_part = { label = part.name }
                }
                dialog.list_parts:add_item(item_data)
                
                visible_part_map[counter] = i
                counter = counter + 1
            end
        end
        
        -------------------------------------------------------------
        -- B. VARIANTS LIST BEFÜLLEN (Manuell statt .items = ...)
        -------------------------------------------------------------
        local function update_variants_list()
            local selected_gui_idx = dialog.list_parts.selected_index
            if selected_gui_idx < 1 then return end
            
            local real_idx = visible_part_map[selected_gui_idx]
            if not real_idx then return end
            
            local part = race_data.body_parts[real_idx]
            
            -- Archetype finden
            local active_archetype = nil
            for _, arch in pairs(part.data) do
                 for _, ut in ipairs(arch.unit_types or {}) do
                     if ut == unit.type then active_archetype = arch; break end
                 end
                 if active_archetype then break end
            end
            
            -- ALTE ITEMS LÖSCHEN
            if dialog.list_variants.item_count then
                dialog.list_variants:remove_items_at(1, dialog.list_variants.item_count)
            else
                pcall(function() dialog.list_variants:remove_items_at(1, 100) end)
            end
            
            active_variants_cache = {} 
            
            if active_archetype then
                local current_selection = selections[part.name]
                
                for k, v in ipairs(active_archetype.variants) do
                    table.insert(active_variants_cache, v)
                    
                    local is_sel = (current_selection == v.name)
                    if current_selection == nil and k == 1 then is_sel = true end
                    
                    -- NEUE ITEMS EINZELN HINZUFÜGEN
                    local item_data = {
                        btn_variant = { selected = is_sel },
                        lbl_variant = { label = v.name }
                    }
                    dialog.list_variants:add_item(item_data)
                end
            end
        end
        
        -- Initialer Aufruf
        if counter > 1 then
            update_variants_list()
        end

        -- CALLBACKS
        dialog.list_parts.on_modified = function()
            update_variants_list()
        end
        
        dialog.list_variants.on_modified = function()
            local part_gui_idx = dialog.list_parts.selected_index
            local var_gui_idx = dialog.list_variants.selected_index
            
            if part_gui_idx > 0 and var_gui_idx > 0 then
                local real_part_idx = visible_part_map[part_gui_idx]
                if real_part_idx then
                    local part_name = race_data.body_parts[real_part_idx].name
                    local variant_obj = active_variants_cache[var_gui_idx]
                    
                    if variant_obj then
                        selections[part_name] = variant_obj.name
                        update_preview()
                    end
                end
            end
        end
        
        dialog.chk_faction.on_modified = function()
             whole_faction_check = dialog.chk_faction.selected
        end
    end

	-- Sicherstellen, dass wir die richtige Funktion finden (Kompatibilität)
	local show_dialog_func = wesnoth.show_dialog
	if wesnoth.gui and wesnoth.gui.show_dialog then
		show_dialog_func = wesnoth.gui.show_dialog
	end
	
	local res = nil
	
	-- Jetzt die Funktion aufrufen
	if show_dialog_func then
		local res = show_dialog_func(definition, preshow)
	else
		wesnoth.interface.add_chat_message("Fehler", "Keine gültige show_dialog Funktion gefunden!")
	end
		
    -- 5. Rückgabe
    -- Wenn "Apply" (Standard OK) gedrückt wurde
    if res == 1 or res == -1 then -- -1 ist oft der Default für den ersten Button
        wesnoth.interface.add_chat_message("UCC", "Dialog mit OK beendet.")
        
        -- Wenn 'Whole Faction' gewählt ist, senden wir das zurück
        if whole_faction_check then
            wesnoth.interface.add_chat_message("UCC", "Whole Faction ausgewählt.")
            return selections, true 
        else
            return selections, false
        end
    else
        wesnoth.interface.add_chat_message("UCC", "Dialog abgebrochen.")
        return nil, false
    end
end

return gui