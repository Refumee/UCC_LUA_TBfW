local T = wml.tag
local my_helper = wesnoth.require("~add-ons/UCC_LUA/lua/dialog/my_helper.lua") -- Nutze dein Deepcopy/Table-Helper

local ucc_editor = {}

-- Wir kopieren das Fenster-Layout (main_window) aus unit_selection_helper.lua
-- Aber wir ändern die Logik:
function ucc_editor.show(target_unit, ucc_data)
    local state = {
        unit = target_unit,
        current_part = ucc_data.body_parts[1],
        selections = {} -- [part_id] = {base, color, variant_id}
    }

    -- 1. Wir bauen das Dialog-Fenster (T.grid Struktur von unit_selection_helper)
    -- 2. Linke Spalte: OnClick setzt state.current_part
    -- 3. Mittlere Spalte: OnClick fügt Auswahl in state.selections ein
    -- 4. Rechtes Panel: Zeigt die "Vorschau-ID" (z.B. bark:manual:Birch)
    
    -- Update-Funktion für das Bild (Live-Vorschau)
    local function refresh_preview()
        local mods = {}
        for _, sel in pairs(state.selections) do
            table.insert(mods, {base = sel.base, color = sel.color})
        end
        -- Hier nutzen wir deinen funktionierenden PAL Code
    end
end