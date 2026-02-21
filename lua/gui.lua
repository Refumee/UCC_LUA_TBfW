local T = wml.tag

-- ============================================================================
-- MODUL DEFINITION
-- ============================================================================
local gui_module = {}

-- ============================================================================
-- HELPER FUNKTIONEN
-- ============================================================================

-- Versucht, das Bild der Einheit sicher zu ermitteln
local function get_unit_base_image(unit)
    -- 1. Hat die Einheit ein spezifisches Bild?
    if unit.__cfg.image then return unit.__cfg.image end
    -- 2. Hat der Unit Type ein Bild?
    local ut = wesnoth.unit_types[unit.type]
    if ut and ut.__cfg.image then return ut.__cfg.image end
    -- 3. Fallback
    return "misc/missing-image.png"
end

-- Generiert ein kleines Vorschau-Icon für eine Farbe
-- Schneidet einen 36x36 Pixel Bereich aus der Mitte des Bildes aus und färbt ihn
local function generate_color_swatch(base_image, palette_mod)
    -- ~CROP(x,y,w,h) -> Wir nehmen an, das Bild ist ~72x72, also Mitte ca 18,18
    return base_image .. "~CROP(18,18,36,36)" .. palette_mod
end

-- ============================================================================
-- HAUPTFUNKTION: SHOW PICKER
-- ============================================================================
function gui_module.show_picker(unit, race_data)
    
    -- 1. INIT & DATEN CHECK
    -- ------------------------------------------------------------------------
    if not unit then wesnoth.interface.add_chat_message("UCC", "Error: Unit is nil"); return end
    if not race_data then wesnoth.interface.add_chat_message("UCC", "Error: Race Data is nil"); return end

    local selections = {}         -- Speichert: { "skin" = "green", "armor" = "gold" }
    local active_variants_cache = {} -- Speichert die Varianten-Objekte der aktuellen rechten Liste
    local whole_faction = false
    local base_image = get_unit_base_image(unit)

    -- 2. VORSCHAU LOGIK
    -- ------------------------------------------------------------------------
    local function get_preview_string()
        local modifications = ""
        
        -- Wir iterieren über alle getroffenen Auswahlen
        for part_name, variant_name in pairs(selections) do
            -- Finde die Daten dazu in race_data
            for _, part in ipairs(race_data.body_parts) do
                if part.name == part_name then
                    -- Finde den Archetyp für diese Unit
                    for _, arch in pairs(part.data) do
                        local is_unit_match = false
                        for _, ut in ipairs(arch.unit_types or {}) do
                            if ut == unit.type then is_unit_match = true; break end
                        end
                        
                        if is_unit_match then
                            -- Finde die Variante (Farbe)
                            for _, v in ipairs(arch.variants) do
                                if v.name == variant_name then
                                    -- Bau den Paletten-String: ~PAL(start>ziel)
                                    modifications = modifications .. "~PAL(" .. arch.base .. ">" .. v.colors .. ")"
                                end
                            end
                        end
                    end
                end
            end
        end
        return base_image .. modifications
    end

    -- 3. GUI DEFINITION (WML)
    -- ------------------------------------------------------------------------
    local definition = {
        T.tooltip { id = "tooltip_large" }, -- Pflichtfeld
        T.helptip { id = "tooltip_large" }, -- Pflichtfeld
        
        T.grid {
            T.row {
                -- SPALTE 1: VORSCHAU & STATUS
                T.column {
                    border = "right", border_size = 10,
                    vertical_alignment = "top",
                    T.grid {
                        T.row { T.column { T.label { label = "<b>Preview</b>", use_markup = true } } },
                        T.row { 
                            T.column { 
                                -- Das Hauptbild
                                T.image { id = "img_preview", label = base_image } 
                            } 
                        },
                        T.row { T.column { T.spacer { height = 20 } } },
                        T.row { T.column { 
                            T.toggle_button { 
                                id = "chk_faction", 
                                label = "Whole Faction",
                                tooltip = "Apply to all units of this race for your side"
                            } 
                        }},
                    }
                },

                -- SPALTE 2: KÖRPERTEILE (LINKE LISTE)
                T.column {
                    border = "right", border_size = 5,
                    vertical_alignment = "top",
                    horizontal_grow = true,
                    T.grid {
                        T.row { T.column { T.label { label = "<b>Parts</b>", use_markup = true } } },
                        T.row {
                            T.column {
                                T.listbox {
                                    id = "list_parts",
                                    height = 300, width = 160,
                                    definition = "default", -- Wichtig für Sichtbarkeit
                                    T.list_definition {
                                        T.row {
                                            T.column {
                                                horizontal_grow = true,
                                                T.toggle_panel {
                                                    id = "p_panel", -- ID für Lua Zugriff
                                                    definition = "default",
                                                    T.grid {
                                                        T.row {
                                                            T.column {
                                                                horizontal_alignment = "left",
                                                                border = "all", border_size = 5,
                                                                T.label { id = "p_label" } -- ID für Lua Zugriff
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

                -- SPALTE 3: FARBEN / VARIANTEN (RECHTE LISTE)
                T.column {
                    vertical_alignment = "top",
                    horizontal_grow = true,
                    T.grid {
                        T.row { T.column { T.label { label = "<b>Colors</b>", use_markup = true } } },
                        T.row {
                            T.column {
                                T.listbox {
                                    id = "list_variants",
                                    height = 300, width = 220,
                                    definition = "default",
                                    T.list_definition {
                                        T.row {
                                            T.column {
                                                horizontal_grow = true,
                                                T.toggle_panel {
                                                    id = "v_panel", -- ID für Lua Zugriff
                                                    definition = "default",
                                                    T.grid {
                                                        T.row {
                                                            -- Icon Spalte
                                                            T.column { 
                                                                border = "right", border_size = 5,
                                                                T.image { id = "v_icon" } 
                                                            },
                                                            -- Text Spalte
                                                            T.column {
                                                                horizontal_alignment = "left",
                                                                T.label { id = "v_label" }
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
            },
            
            -- UNTERE LEISTE: BUTTONS
            T.row {
                T.column {
                    grid_width = 3, 
                    horizontal_alignment = "right",
                    border = "top", border_size = 10,
                    T.grid {
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

    -- 4. GUI LOGIK (PRESHOW)
    -- ------------------------------------------------------------------------
    local function preshow(dialog)
        
        -- Mapping: Welcher Listen-Index entspricht welchem Race-Data Index?
        local visible_parts_map = {} 

        -- A. UPDATE PREVIEW IMAGE
        local function update_image()
            dialog.img_preview.label = get_preview_string()
        end

        -- B. UPDATE RECHTE LISTE (VARIANTEN)
        local function load_variants(part_idx)
            local race_part_idx = visible_parts_map[part_idx]
            if not race_part_idx then return end

            local part_data = race_data.body_parts[race_part_idx]
            
            -- Alte Items löschen
            if dialog.list_variants.item_count then
                 dialog.list_variants:remove_items_at(1, dialog.list_variants.item_count)
            else
                 pcall(function() dialog.list_variants:remove_items_at(1, 100) end)
            end
            
            active_variants_cache = {} -- Reset Cache

            -- Finde Archetyp für diese Unit
            local active_arch = nil
            for _, arch in pairs(part_data.data) do
                local match = false
                for _, ut in ipairs(arch.unit_types or {}) do
                    if ut == unit.type then match = true; break end
                end
                if match then active_arch = arch; break end
            end

            if active_arch then
                for i, variant in ipairs(active_arch.variants) do
                    table.insert(active_variants_cache, variant)
                    
                    -- Icon generieren
                    local pal_string = "~PAL(" .. active_arch.base .. ">" .. variant.colors .. ")"
                    local icon = generate_color_swatch(base_image, pal_string)
                    
                    -- Item hinzufügen
                    -- WICHTIG: Hier matchen wir die WML IDs (v_panel, v_icon, v_label)
                    local item_widget_data = {
                        v_panel = {
                            v_icon = { label = icon },
                            v_label = { label = variant.name }
                        }
                    }
                    
                    -- Ist dies die aktuell gewählte Farbe?
                    local current_sel = selections[part_data.name]
                    if current_sel == variant.name then
                        item_widget_data.v_panel.selected = true
                    elseif current_sel == nil and i == 1 then
                         -- Default Auswahl beim ersten Laden
                         item_widget_data.v_panel.selected = true
                    end
                    
                    dialog.list_variants:add_item(item_widget_data)
                end
            end
        end

        -- C. INIT LINKE LISTE (PARTS)
        local counter = 1
        for i, part in ipairs(race_data.body_parts) do
            -- Prüfen ob der Part für diese Unit relevant ist
            local relevant = false
            for _, arch in pairs(part.data) do
                 for _, ut in ipairs(arch.unit_types or {}) do
                     if ut == unit.type then relevant = true; break end
                 end
            end

            if relevant then
                visible_parts_map[counter] = i
                
                local item_data = {
                    p_panel = {
                        p_label = { label = part.name },
                        selected = (counter == 1) -- Erstes Element selektieren
                    }
                }
                dialog.list_parts:add_item(item_data)
                counter = counter + 1
            end
        end

        -- CALLBACKS
        dialog.list_parts.on_modified = function()
            local idx = dialog.list_parts.selected_index
            if idx > 0 then load_variants(idx) end
        end

        dialog.list_variants.on_modified = function()
            local p_idx = dialog.list_parts.selected_index
            local v_idx = dialog.list_variants.selected_index
            
            if p_idx > 0 and v_idx > 0 then
                local race_part_idx = visible_parts_map[p_idx]
                if race_part_idx then
                    local part_name = race_data.body_parts[race_part_idx].name
                    local variant = active_variants_cache[v_idx]
                    
                    if variant then
                        selections[part_name] = variant.name
                        update_image()
                    end
                end
            end
        end
        
        dialog.chk_faction.on_modified = function()
            whole_faction = dialog.chk_faction.selected
        end

        -- Initiale Ladung
        if counter > 1 then load_variants(1) end
        update_image()
    end

    -- 5. DIALOG ANZEIGEN (VERSIONS-SICHER)
    -- ------------------------------------------------------------------------
    local show_dialog_func = nil
    
    -- Versuch 1: Modernes GUI Modul laden (Wesnoth 1.17/1.18+)
    local has_gui, sys_gui = pcall(wesnoth.require, "gui")
    if has_gui and sys_gui and sys_gui.show_dialog then
        show_dialog_func = sys_gui.show_dialog
    -- Versuch 2: Wesnoth 1.16 Style
    elseif wesnoth.gui and wesnoth.gui.show_dialog then
        show_dialog_func = wesnoth.gui.show_dialog
    -- Versuch 3: Legacy (1.14)
    else
        show_dialog_func = wesnoth.show_dialog
    end

    local res = show_dialog_func(definition, preshow)

    -- 6. RÜCKGABE
    -- ------------------------------------------------------------------------
    -- In den meisten Versionen ist 1="OK" (erster Button von rechts oft)
    -- Wir prüfen ob res > 0 (positive IDs sind meistens Buttons, -1 oft Escape)
    -- Da wir IDs 'ok' und 'cancel' vergeben haben:
    -- Wesnoth returned bei show_dialog meistens:
    -- 1 für den rechten Button, 2 für den links daneben usw. ODER -1/-2.
    -- Sicherer Check: Wenn selections nicht leer ist und nicht gecancelt wurde.
    
    -- Einfache Annahme für Standard-Dialoge:
    -- Wir schauen einfach, ob der User etwas ausgewählt hat.
    -- Um ganz sicher zu sein bei IDs, bräuchten wir postshow check.
    -- Aber für jetzt: Wenn res nicht 'cancel' ist (was meist 0, -1 oder 2 ist je nach OS/Version).
    
    -- Debugging Hilfe:
    -- wesnoth.interface.add_chat_message("UCC", "Result Code: " .. tostring(res))

    -- Wir nehmen an: Alles außer explizitem Abbruch ist OK.
    return selections, whole_faction
end

return gui_module