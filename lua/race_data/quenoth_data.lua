-- quenoth_data.lua
local body_parts = {
	{
		name = "quenoth_hair", -- body_part
		description = "Hair",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth"	},
				base = "C3B397,D0C4AE,958F8D,897A5A,585E74,61464B,4A332B", --C3B397,D0C4AE identical
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C3B397,D0C4AE,958F8D,897A5A,585E74,61464B,4A332B" },
				},
			},
			figther = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion","Corrupted Quenoth Elf"	},
				base = "9D9F90,818584,585E74", --585E74 same color as weapon
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "9D9F90,818584,585E74" },
				},
			},
			flanker = {
				unit_types = {	"Quenoth Flanker","Quenoth Ranger"	},
				base = "C3B8C2,938091,585E74", --585E74 same color as weapon
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C3B8C2,938091,585E74" },
				},
			},
			mystic = {
				unit_types = {	"Quenoth Mystic","Quenoth Shaman"	},
				base = "D6BCFA,8A92CD,60586E,262328",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "D6BCFA,8A92CD,60586E,262328" },
				},
			},
			druid = {
				unit_types = {	"Quenoth Druid"	},
				base = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B" },
				},
			},
			shyde = {
				unit_types = {	"Quenoth Shyde"	},
				base = "9D9F90,897A5A,585E74,61464B,5D474B,35323A", --61464B,5D474B identical
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "9D9F90,897A5A,585E74,61464B,5D474B,35323A" },
				},
			},
			sun = {
				unit_types = {	"Quenoth Sun Singer","Quenoth Sun Sylph"},
				base = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "D6BCFA,8A92CD,60586E,262328" },
				},
			},
			assassin_uncloak = {
				unit_types = {	"Dark Assassin Uncloaked"	},
				base = "958F8D,585E74,61464B,37122C",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "958F8D,585E74,61464B,37122C" },
				},
			},
		}
	},
	{
		name = "quenoth_skin", -- body_part
		description = "Skin",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth",
								"Quenoth Scout","Quenoth Pathfinder",
								"Tauroch Rider","Tauroch Vanguard","Tauroch Flagbearer","Tauroch Stalwart","Tauroch Protector"},
				base = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A" },
				},
			},
			figther = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger"},
				base = "DF9859,C8715D,9F6050,6C3427,511F13",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,9F6050,6C3427,511F13" },
				},
			},
			corrupted = {
				unit_types = {	"Corrupted Quenoth Elf"	},
				base = "AC8D5C,8E755C,9F6050,6C3427,5B261A,511F13",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "AC8D5C,8E755C,9F6050,6C3427,5B261A,511F13" },
				},
			},
			archer = {
				unit_types = {	"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider"},
				base = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A,46261F",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A,46261F" },
				},
			},
			mystic = {
				unit_types = {	"Quenoth Mystic","Quenoth Shaman","Quenoth Druid"	},
				base = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431" },
				},
			},
			shyde = {
				unit_types = {	"Quenoth Shyde"	},
				base = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,5B2619,55291D,391F12,310D02",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,5B2619,55291D,391F12,310D02" },
				},
			},
			sun_singer = {
				unit_types = {	"Quenoth Sun Singer"},
				base = "D69B63,BD7562,976353,88503E,784739,764637,764538,65372A,55291D,432720", --784739,764637,764538 identical
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "D69B63,BD7562,976353,88503E,784739,764637,764538,65372A,55291D,432720" },
				},
			},
			sun_sylph = {
				unit_types = {	"Quenoth Sun Sylph"},
				base = "D69B63,BD7562,976353,88503E,784739,764538,65372A,55291D,391F12", --784739,764538 identical
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "D69B63,BD7562,976353,88503E,784739,764538,65372A,55291D,391F12" },
				},
			},
			assassin = {
				unit_types = {	"Dark Assassin Uncloaked","Dark Assassin Cloaked"	},
				base = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_cloth", -- body_part
		description = "Tan Cloth",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth"},
				base = "F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
				},
			},
			figther = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Quenoth Scout","Quenoth Pathfinder","Quenoth Outrider"},
				base = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
				},
			},
			corrupted = {
				unit_types = {	"Corrupted Quenoth Elf"	},
				base = "C3B397,AF986E,897A5A,5B4D32,46261F",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C3B397,AF986E,897A5A,5B4D32,46261F" },
				},
			},
		}
	},
	{
		name = "quenoth_blue_cloth", -- body_part
		description = "Blue Cloth",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth",
								"Quenoth Archer","Quenoth Marksman"},
				base = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
				},
			},
			assassin = {
				unit_types = {	"Dark Assassin Uncloaked","Dark Assassin Cloaked"	},
				base = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36", --001038,000F36 identical
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
				},
			},
		}
	},
	{
		name = "quenoth_mystic_robe", -- body_part
		description = "Mystic Robe",
		data = {
			mystic = {
				unit_types = {	"Quenoth Mystic","Quenoth Shaman"},
				base = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
				},
			},
			druid = {
				unit_types = {	"Quenoth Druid"	},
				base = "F1D8B3,C5C892,BCAE7E,8E9E72,A1966F,8E755C,536C4A,705B49,534338,2F3B30,02292C",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F1D8B3,C5C892,BCAE7E,8E9E72,A1966F,8E755C,536C4A,705B49,534338,2F3B30,02292C" },
				},
			},
			shyde = {
				unit_types = {	"Quenoth Shyde"	},
				base = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
				},
			},
			sun_singer = {
				unit_types = {	"Quenoth Sun Singer"},
				base = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F" },
				},
			},
			sun_sylph = {
				unit_types = {	"Quenoth Sun Sylph"},
				base = "BBB389,A29D66,877C43,6E5F24,51461B,362F10",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "BBB389,A29D66,877C43,6E5F24,51461B,362F10" },
				},
			},
		}
	},
	{
		name = "quenoth_shyde_wing", -- body_part
		description = "Mystic Wing",
		data = {
			shyde = {
				unit_types = {	"Quenoth Shyde"	},
				base = "F9FDDF,E5FAB4,CEE4A5,BBC392,5D6564",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F9FDDF,E5FAB4,CEE4A5,BBC392,5D6564" },
				},
			},
			sun_sylph = {
				unit_types = {	"Quenoth Sun Sylph"},
				base = "C8FCFE,E6E9BA,B7D5B8,80B3B6,6786A2,2E6272",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C8FCFE,E6E9BA,B7D5B8,80B3B6,6786A2,2E6272" },
				},
			},
		}
	},
	{
		name = "quenoth_blue_metal", -- body_part
		description = "Blue Metal",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth"	},
				base = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62" },
				},
			},
			figther = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Corrupted Quenoth Elf",
								"Dark Assassin Uncloaked","Dark Assassin Cloaked"},
				base = "A4F19D,8B9A88,585E74,4A2E62", --585E74 same color as hair
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "A4F19D,8B9A88,585E74,4A2E62" },
				},
			},
			archer = {
				unit_types = {	"Quenoth Scout",
								"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider","Quenoth Pathfinder"},
				base = "FCFFDC,FFE593,A4F19D,A4F29D,8B9A88,4C91C9,4A707A,4A2E62", --A4F19D,A4F29D identical
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "FCFFDC,FFE593,A4F19D,A4F29D,8B9A88,4C91C9,4A707A,4A2E62" },
				},
			},
			tauroch = {
				unit_types = {	"Tauroch Rider",
								"Tauroch Vanguard","Tauroch Flagbearer",
								"Tauroch Stalwart","Tauroch Protector"},
				base = "FFE593,A4F19D,A4F29D,78C1B2,8B9A88,4C91C9,BDD6E6,89BBB5,8592B9,4A707A,4A2E62",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "FFE593,A4F19D,A4F29D,78C1B2,8B9A88,4C91C9,BDD6E6,89BBB5,8592B9,4A707A,4A2E62" },
				},
			},
		}
	},
	{
		name = "quenoth_red_metal", -- body_part
		description = "Red Metal",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth"	},
				base = "B38E8E,8A4C4C,664B50,50363B",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "B38E8E,8A4C4C,664B50,50363B"	},
				},
			},
			figther = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Corrupted Quenoth Elf",
								"Quenoth Scout",
								"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider","Quenoth Pathfinder"},
				base = "F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31" },
				},
			},
			assassin = {
				unit_types = {	"Dark Assassin Uncloaked","Dark Assassin Cloaked"	},
				base = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,7D303B,57373B,3F2A31", --EACCC6,ECC3C1 identical and BCA39D,CC8F8C identical
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,7D303B,57373B,3F2A31"	},
				},
			},
		}
	},
	{
		name = "quenoth_corrupted_red_metal", -- body_part
		description = "Corrupted Red Metal",
		data = {
			corrupted = {
				unit_types = {	"Corrupted Quenoth Elf"	},
				base = "C3B397,9D5875,800A12,61464B,3B2328", --C3B397 same color as tan cloth
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C3B397,9D5875,800A12,61464B,3B2328" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_leather", -- body_part
		description = "Tan Leather",
		data = {
			tauroch = {
				unit_types = {	"Tauroch Protector"},
				base = "F1DBBE,C6B7AB,7F7165,534338",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F1DBBE,C6B7AB,7F7165,534338" },
				},
			},
			archer = {
				unit_types = {	"Quenoth Outrider","Quenoth Pathfinder"},
				base = "ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_hide", -- body_part
		description = "Tan Hide",
		data = {
			tauroch = {
				unit_types = {	"Quenoth Scout"},
				base = "E3D89C,BA9C55,746646,4F4E3A",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "E3D89C,BA9C55,746646,4F4E3A" },
				},
			},
			archer = {
				unit_types = {	"Quenoth Outrider","Quenoth Pathfinder"},
				base = "E3D89C,D9A06E,BF8149,A76326,746646,4F4E3A,5A2827,341713",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "E3D89C,D9A06E,BF8149,A76326,746646,4F4E3A,5A2827,341713" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_cape", -- body_part
		description = "Tan Cape",
		data = {
			assassin = {
				unit_types = {	"Dark Assassin Uncloaked","Dark Assassin Cloaked"	},
				base = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29", --maybe some tuning?
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_headscarf", -- body_part
		description = "Tan Headscarf",
		data = {
			assassin = {
				unit_types = {	"Dark Assassin Uncloaked","Dark Assassin Cloaked"	},
				base = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
		}
	},
}

_G.ucc_race_registry["quenoth"] = {
    body_parts = body_parts
}