local helper = wesnoth.require "lua/helper.lua"
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
    local selections = {} 
    local active_variants_cache = {} 
    local whole_faction_check = false
    
    -- Debugging: Sehen, ob wir überhaupt hier ankommen
    wesnoth.interface.add_chat_message("UCC", "GUI Picker gestartet für: " .. unit.name .. " (" .. unit.type .. ")")

    local base_image = get_unit_base_image(unit)

    -- 1. Helper: Vorschau Bild generieren
    local function get_preview_image()
        local img_mod = ""
        
        for part_name, var_name in pairs(selections) do
            for _, part in ipairs(race_data.body_parts) do
                if part.name == part_name then
                    for _, arch in pairs(part.data) do
                         -- Prüfen ob Unit Type passt
                         local match = false
                         for _, ut in ipairs(arch.unit_types or {}) do
                             if ut == unit.type then match = true; break end
                         end
                         
                         if match then
                             for _, v in ipairs(arch.variants) do
                                 if v.name == var_name then
                                     -- ~PAL(Start>Ziel) Logik
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

    -- 2. GUI Definition
    local definition = {
        T.tooltip { id = "tooltip_large" },
        T.helptip { id = "tooltip_large" },
        T.grid {
            T.row {
                -- LINKE SPALTE: VORSCHAU & OPTIONS
                T.column {
                    vertical_alignment = "top",
                    T.grid {
                        T.row {
                            T.column { 
                                vertical_alignment = "center", 
                                border = "all", border_size = 5,
                                T.image { id = "img_preview", label = get_preview_image() .. "~SCALE(144,144)" }
                            }
                        },
                        T.row {
                            T.column {
                                T.toggle_button { id = "chk_faction", label = "Whole Faction" }
                            }
                        }
                    }
                },
                -- RECHTE SPALTE: LISTEN
                T.column {
                    border = "left", border_size = 10,
                    horizontal_alignment = "left", vertical_alignment = "top",
                    T.grid {
                        -- Header Parts
                        T.row { T.column { T.label { label = "Body Parts", use_markup = true } } },
                        -- List Parts
                        T.row {
                            T.column {
                                T.listbox {
                                    id = "list_parts",
                                    height = 150, width = 250,
                                    T.list_definition {
                                        T.row {
                                            T.column {
                                                T.toggle_panel {
                                                    id = "btn_part",
                                                    T.grid {
                                                        T.row {
                                                            T.column { T.label { id = "lbl_part" } }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        },
                        -- Spacer
                        T.row { T.column { T.spacer { height = 10 } } },
                        -- Header Variants
                        T.row { T.column { T.label { label = "Colors", use_markup = true } } },
                        -- List Variants
                        T.row {
                            T.column {
                                T.listbox {
                                    id = "list_variants",
                                    height = 150, width = 250,
                                    T.list_definition {
                                        T.row {
                                            T.column {
                                                T.toggle_panel {
                                                    id = "btn_variant",
                                                    T.grid {
                                                        T.row {
                                                            T.column { T.label { id = "lbl_variant" } }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        },
                        -- OK Button
                        T.row {
                             T.column {
                                 T.grid {
                                     T.row {
                                         T.column { T.spacer { width = 10 } },
                                         T.column { 
                                            T.button { id = "ok", label = "Apply" } 
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
        
        -- A. PARTS LIST BEFÜLLEN
        local p_items = {}
        local valid_parts_indices = {} -- Merken, welche Parts wirklichen Inhalt haben
        
        wesnoth.interface.add_chat_message("UCC", "Suche Parts in Registry...")
        
        for i, part in ipairs(race_data.body_parts) do
            -- Prüfen, ob dieser Part für diesen Unit-Type relevant ist
            local is_supported = false
            for _, arch in pairs(part.data) do
                 for _, ut in ipairs(arch.unit_types or {}) do
                     if ut == unit.type then 
                         is_supported = true 
                         break 
                     end
                 end
                 if is_supported then break end
            end

            if is_supported then
                wesnoth.interface.add_chat_message("UCC", "Part gefunden: " .. part.name)
                
                -- Hier ist der wichtige Fix: Wir müssen btn_part UND lbl_part ansprechen
                table.insert(p_items, {
                    btn_part = { selected = (i == 1) }, -- Standardmäßig ersten auswählen? Vorsicht, Logik unten beachten
                    lbl_part = { label = part.name }
                })
                table.insert(valid_parts_indices, i)
            else
                -- Leere Zeile einfügen oder überspringen? 
                -- Wir überspringen, müssen aber aufpassen mit den Indizes.
                -- Der Einfachheit halber: Wir zeigen nur unterstützte an, 
                -- aber dann stimmt der Index 'i' nicht mehr mit race_data überein.
                -- Lösung: Wir speichern eine Mapping-Tabelle.
            end
        end
        
        -- Da Listen in Wesnoth GUI oft schwer mit dynamischen Indizes sind, 
        -- bauen wir die Liste neu auf und speichern uns das Objekt.
        -- Vereinfachung: Wir nehmen an, alle Parts werden angezeigt, aber ausgegraut wenn nicht supported?
        -- Nein, besser nur supported anzeigen.
        
        -- REWRITE PARTS FILL LOOP FOR SAFETY
        p_items = {}
        local visible_part_map = {} -- Map GUI Index -> Race Data Index
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
                table.insert(p_items, {
                    btn_part = { selected = (counter == 1) },
                    lbl_part = { label = part.name }
                })
                visible_part_map[counter] = i
                counter = counter + 1
            end
        end

        dialog.list_parts.set_items(p_items)
        
        -- B. UPDATE VARIANTS FUNCTION
        local function update_variants_list()
            local selected_gui_idx = dialog.list_parts.selected_index
            if selected_gui_idx < 1 then return end
            
            -- Hole den echten Index aus race_data
            local real_idx = visible_part_map[selected_gui_idx]
            if not real_idx then return end
            
            local part = race_data.body_parts[real_idx]
            
            -- Finde den Archetype für diese Unit
            local active_archetype = nil
            for _, arch in pairs(part.data) do
                 for _, ut in ipairs(arch.unit_types or {}) do
                     if ut == unit.type then 
                        active_archetype = arch
                        break 
                     end
                 end
                 if active_archetype then break end
            end
            
            active_variants_cache = {} -- Reset Cache
            local v_items = {}
            
            if active_archetype then
                local current_selection = selections[part.name]
                
                for k, v in ipairs(active_archetype.variants) do
                    table.insert(active_variants_cache, v) -- Speichern für Zugriff später
                    
                    local is_sel = (current_selection == v.name)
                    -- Wenn nichts ausgewählt ist, wähle das erste (Standard)
                    if current_selection == nil and k == 1 then is_sel = true end
                    
                    -- FIX: Auch hier korrekte Widget IDs ansprechen
                    table.insert(v_items, {
                        btn_variant = { selected = is_sel },
                        lbl_variant = { label = v.name }
                    })
                end
            end
            
            dialog.list_variants.set_items(v_items)
        end
        
        -- Initialer Aufruf
        if #p_items > 0 then
            -- Setze Selection auf 1, falls nichts gewählt
            -- dialog.list_parts.selected_index = 1 -- passiert oft automatisch durch 'selected=true' im Item
            update_variants_list()
        end

        -- CALLBACKS
        
        -- 1. Klick auf Körperteil
        dialog.list_parts.on_modified = function()
            update_variants_list()
        end
        
        -- 2. Klick auf Variante
        dialog.list_variants.on_modified = function()
            local part_gui_idx = dialog.list_parts.selected_index
            local var_gui_idx = dialog.list_variants.selected_index
            
            if part_gui_idx > 0 and var_gui_idx > 0 then
                local real_part_idx = visible_part_map[part_gui_idx]
                local part_name = race_data.body_parts[real_part_idx].name
                
                local variant_obj = active_variants_cache[var_gui_idx]
                
                if variant_obj then
                    selections[part_name] = variant_obj.name
                    -- Chat Debug
                    -- wesnoth.interface.add_chat_message("UCC", "Gewählt: " .. part_name .. " -> " .. variant_obj.name)
                    update_preview()
                end
            end
        end
        
        dialog.chk_faction.on_modified = function()
             whole_faction_check = dialog.chk_faction.selected
        end
    end

	-- Wir prüfen, welche Funktion verfügbar ist (Versions-Kompatibilität)
    local show_dialog_func = wesnoth.show_dialog
    if wesnoth.gui and wesnoth.gui.show_dialog then
        show_dialog_func = wesnoth.gui.show_dialog
    end

    -- Dialog aufrufen
    local res = show_dialog_func(definition, preshow)
    
    -- Auswertung nach Schließen des Dialogs
    -- res == 1 oder -1 ist meist OK (je nach Button ID, 'ok' Button ist oft default)
    -- Da wir kein explizites return_value im Button definiert haben, 
    -- müssen wir prüfen, ob selections gefüllt sind.
    
    -- Wenn der User einfach Escape drückt, ist res oft 0 oder 2.
    -- Wir gehen davon aus: Wenn selections nicht leer ist, wollen wir anwenden.
    
    return selections, whole_faction_check
end

return gui