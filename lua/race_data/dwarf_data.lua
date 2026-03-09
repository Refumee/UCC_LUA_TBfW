--dwarf_data.lua
local body_parts = {
	{
		name = "dwarf_armor", -- body_part
		description = "Armor",
		data = {
			dwarf = {
                unit_types = {	"Dwarvish Ulfserker", "Dwarvish Berserker",
								"Dwarvish Thunderer", "Dwarvish Thunderguard", "Dwarvish Dragonguard"
								"Dwarvish Fighter", "Dwarvish Steelclad", "Dwarvish Lord"
								"Dwarvish Guardsman", "Dwarvish Stalwart", "Dwarvish Sentinel",
								"Dwarvish Scout", "Dwarvish Pathfinder", "Dwarvish Explorer",
								"Dwarvish Runesmith", "Dwarvish Runemaster", "Dwarvish Arcanister",
								"Dwarvish Miner",
								"Dwarvish Witness", "Dwarvish Annalist", "Dwarvish Loremaster",
								"Dwarvish Rune Lord", "Undead Dwarvish Rune Lord"
				},
				base = "FFFFFF,B1EBEC,93CFC5,58808D,31526B,21353E", 
				variants = {
					{ name = "DWARF_ARMOUR_DEFAULT", description = "Fighter", colors = "FFFFFF,B1EBEC,93CFC5,58808D,31526B,21353E"},
					{ name = "DWARF_ARMOUR_RUNESMITH", description = "Runesmith", colors = "FFFFFF,B1EBEC,79A9B3,4F6973,31526B,21353E"},
					{ name = "DWARF_ARMOUR_GRYPHONRIDER", description = "Gryphonrider", colors = "FFFFFF,CDDACE,9BB59D,6A8E7E,2D4A4F,21353E"},
					{ name = "DWARF_ARMOUR_THUNDERER", description = "Thunderer", colors = "FFFFFF,98CFC4,9BB59D,6A8E7E,2D4A4F,21353E"},
					{ name = "DWARF_ARMOUR_MINER", description = "Miner", colors = "CADAD7,9E948D,747171,4A5668,3A3A50,2C1D2B"},
					{ name = "DWARF_ARMOUR_GUARD", description = "Guard", colors = "DAB0A4,A8A098,8A766D,4E3A2D,352419,271A11"},
					{ name = "DWARF_ARMOUR_SENTINEL", description = "Sentinel", colors = "B1EBEC,8ABCB8,58808D,26446D,21353E,1C2123"},
					{ name = "DWARF_ARMOUR_WITNESS", description = "Witness", colors = "FFFFFF,B1EBEC,79A9B3,507059,4F6973,1E3038"},
					{ name = "DWARF_ARMOUR_KARRAG", description = "Karrag", colors = "DBE6E8,ADCCD2,6799A2,3B6C75,524855,182931"},
				},
			},
		}
	},
	{
		name = "dwarf_beard", -- body_part
		description = "Beard",
		data = {
			dwarf = { -- archetype
                unit_types = {	"Dwarvish Ulfserker", "Dwarvish Berserker",
								"Dwarvish Thunderer", "Dwarvish Thunderguard", "Dwarvish Dragonguard"
								"Dwarvish Fighter", "Dwarvish Steelclad", "Dwarvish Lord"
								"Dwarvish Guardsman", "Dwarvish Stalwart", "Dwarvish Sentinel",
								"Dwarvish Scout", "Dwarvish Pathfinder", "Dwarvish Explorer",
								"Dwarvish Runesmith", "Dwarvish Runemaster", "Dwarvish Arcanister",
								"Dwarvish Miner",
								"Dwarvish Witness", "Dwarvish Annalist", "Dwarvish Loremaster",
								"Dwarvish Rune Lord", "Undead Dwarvish Rune Lord"
				},
				base = "E08B7A,B14B4B,8B3219,592010",
				variants = {
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,B14B4B,8B3219,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,AF937F,8B3219,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,AF937F,8A4E0D,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,93CFC5,58808D,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,E0C3A2,888868,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEC66D,D0804D,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Guard", colors = "FFFFFF,E0C3A2,AF937F,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,AF937F,8F3D14,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,9F9C99,757A7B,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,D0804D,8A4422,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,909070,505038,353525"},
				},
			},
		}
	}
}

_G.ucc_race_registry["dwarf"] = {
    body_parts = body_parts
}