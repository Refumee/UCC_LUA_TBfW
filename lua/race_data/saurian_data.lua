-- saurian_data.lua
local body_parts = {
	{
		name = "Scales", -- body_part
		data = {
			wose = {
				unit_types = {	"Saurian Skirmisher", "Saurian Ambusher", "Saurian Spearthrower", "Saurian Javelineer", "Saurian Flanker", "Saurian Augur", "Saurian Soothsayer", "Saurian Oracle", "Saurian Seer", "Saurian Prophet",
								"Afterlife Saurian Skirmisher", "Afterlife Saurian Ambusher", "Afterlife Saurian Spearthrower", "Afterlife Saurian Javelineer", "Afterlife Saurian Flanker", "Afterlife Saurian Augur",
								"Afterlife Saurian Soothsayer", "Afterlife Saurian Oracle", "Afterlife Saurian Seer", "Afterlife Saurian Prophet",
								"Wild Saurian","Beast Saurian"
				},
				base = "cff521,22d22f,85d64f,98d858,3f8b34,4d8d38,26882e,0d4218", 
				variants = {
					-- Default Green Saurian (color 2, 4, 5 and 6 from talentless saurians having old saurian pixel color, last two colors swamp alchemist)
					{ name = "SCALE_GREEN", description = "Default green", colors = "cff521,22d22f,85d64f,98d858,3f8b34,4d8d38,26882e,0d4218" },

					-- green for the randomizer ###
					{ name = "SCALE_OLDGREEN", description = "1.16 Saurian green", colors = "cff521,cff521,98D858,98D858,4D8D38,4D8D38,4D8D38,0D4218" },
					{ name = "SCALE_OLDGREENORACLE", description = "1.16 Oracle Saurian", colors = "22D22F,22D22F,98D858,98D858,26882E,26882E,26882E,0D4218" },
					{ name = "SCALE_SXRPGGREEN", description = "SXRPG green Saurian", colors = "F5D421,F5D421,C3D858,C3D858,698D38,698D38,698D38,14420D" },
					{ name = "SCALE_ELVISHFIGHTERGREEN", description = "Elvish fighter Saurian", colors = "61CC21,61CC21,9CDE5A,9CDE5A,4F7229,4F7229,4F7229,104820" },
					{ name = "SCALE_ELVISHSCOUTGREEN", description = "Elvish scout Saurian", colors = "8DCD53,8DCD53,5E6E57,5E6E57,535E2D,535E2D,535E2D,104820" },
					{ name = "SCALE_NAGAGREEN", description = "Naga Saurian", colors = "9EDB5E,9EDB5E,56963D,56963D,24753C,24753C,24753C,124E24" },
					{ name = "SCALE_WOSEGREEN", description = "Wose leaf Saurian", colors = "F5DA30,F5DA30,718204,718204,3B5F0E,3B5F0E,3B5F0E,0D3D02" },
					{ name = "SCALE_MERFOLKGREEN", description = "Merfolk beard Saurian", colors = "E8F898,E8F898,98D858,98D858,509038,509038,509038,364C3E" },
					{ name = "SCALE_DRAKEGREEN", description = "Drake green Saurian", colors = "F6DB84,F6DB84,C1D553,C1D553,86AC53,86AC53,86AC53,40513C" },
					{ name = "SCALE_SWAMPLIZARD", description = "Swamp lizard Saurian", colors = "5DA177,5DA177,98D858,98D858,77A15D,77A15D,77A15D,395432" },
					{ name = "SCALE_WATERSERPENT", description = "Water serpent Saurian", colors = "D1F086,D1F086,8DCF6C,8DCF6C,6BAC4B,6BAC4B,6BAC4B,225921" },
					{ name = "SCALE_KALIANELF", description = "Elvish kalian green Saurian", colors = "E8F898,E8F898,8DCD53,8DCD53,458967,458967,458967,104820" },
					{ name = "SCALE_SHIFT_MOSS", description = "Moos green Saurian", colors = "c0d1cc,c0d1cc,a19f7c,a19f7c,4f7754,4f7754,4f7754,213b25" },
					
					-- Deep Saurian
					{ name = "SCALE_DEEP", description = "Deep Saurian", colors = "b3e0a9,b3e0a9,80b4a5,80b4a5,59646d,59646d,59646d,1e3637" },
					-- Desert Saurian
					{ name = "SCALE_SHIFT_DESERT", description = "Desert Saurian", colors = "fcfbca,fcfbca,ead585,ead585,b88656,b88656,b88656,7b5028" },
					-- Chillwind frost Saurian
					{ name = "SCALE_SHIFT_CHILLWIND", description = "Chillwind Saurian", colors = "21f59f,21f59f,58d8cd,58d8cd,387f8d,387f8d,387f8d,0d2142" },
					-- Technocracy Saurian
					{ name = "SCALE_SHIFT_RED", description = "Red Saurian", colors = "ff0f64,ff0f64,ee4e4e,ee4e4e,99492e,99492e,99492e,463203" },
					-- Salamander looking Saurian
					{ name = "SCALE_SHIFT_SALAMANDER", description = "Salamander Saurian", colors = "f8d040,f8d040,a5b89c,a5b89c,506858,506858,506858,283028" },
					{ name = "SCALE_SHIFT_ROOTLESS", description = "Rootless Saurian", colors = "ffd5cc,ffd5cc,cc5566,cc5566,660000,660000,660000,330000" },
					{ name = "SCALE_SHIFT_GREYGREEN", description = "Greygreen Saurian", colors = "a0f072,a0f072,93b6c1,93b6c1,557185,557185,557185,1a1c2c" },

					-- undead scales
					{ name = "SCALE_SHIFT_WC", description = "Walking Corpse Saurian", colors = "C4C3C1,C4C3C1,A2A684,A2A684,555E3E,555E3E,555E3E,524133" },
					{ name = "SCALE_SHIFT_SOUL", description = "Soulless Saurian", colors = "DCF6AF,DCF6AF,B0B3AF,B0B3AF,826C79,826C79,826C79,3E3730" },
					-- from Vendraxis' Prophecy
					{ name = "SCALE_SHIFT_VP", description = "Vendraxis' Lich Saurian", colors = "FFFFCE,FFFFCE,D6D69C,D6D69C,A19470,A19470,A19470,5C5239" },
					{ name = "SCALE_SHIFT_SKELETON", description = "Skeleton Saurian", colors = "FFFFCE,FFFFCE,D6D69C,D6D69C,949473,949473,949473,525239" },
					{ name = "SCALE_SHIFT_PUMKIN", description = "Pumpkin Saurian", colors = "399A04,399A04,DF8600,DF8600,976314,976314,976314,48300C" },

					{ name = "SCALE_SHIFT_HUSK", description = "Saurian Husk (TRoJ)", colors = "C0C4AC,C0C4AC,9ABF60,9ABF60,758237,758237,758237,484B1A" },
					{ name = "SCALE_SHIFT_WRETCH", description = "Saurian Wretch (TRoJ)", colors = "BAC5AB,BAC5AB,94A57B,94A57B,606F4B,606F4B,606F4B,353D29" },
					{ name = "SCALE_SHIFT_BLIGHT", description = "Saurian Blight (TRoJ)", colors = "B0BDA0,B0BDA0,87996D,87996D,52613D,52613D,52613D,29301E" },

					-- mainline unit ideas
					{ name = "SCALE_SHIFT_DRAKEBURNER", description = "Drake Burner Saurian", colors = "DEB099,DEB099,A5876D,A5876D,65564B,65564B,65564B,573D2D" },
					{ name = "SCALE_SHIFT_DUNESTRIDER", description = "Dunestrider Saurian", colors = "F6F6DA,F6F6DA,D5D3A1,D5D3A1,A09F84,A09F84,A09F84,453843" },
					{ name = "SCALE_SHIFT_LOYALISTKNIGHT", description = "Loyalist Armor Saurian", colors = "FFFFFF,FFFFFF,C6E7E7,C6E7E7,A0B9B8,A0B9B8,A0B9B8,6E8387" },
					{ name = "SCALE_SHIFT_OUTLAWASSASSIN", description = "Outlaw Assassin Saurian", colors = "ACC0A2,ACC0A2,889880,889880,506858,506858,506858,333D33" },
					{ name = "SCALE_SHIFT_MERFOLK", description = "Merfolk Saurian", colors = "007777,007777,6D98CB,6D98CB,2D58AD,2D58AD,2D58AD,1D3971" },
					{ name = "SCALE_SHIFT_ORCISHARMOR", description = "Orcish Armor Saurian", colors = "FFDD88,FFDD88,AA9966,AA9966,555533,555533,555533,333333" },
					{ name = "SCALE_SHIFT_WOSEWOODEN", description = "Wose Wood Saurian", colors = "C99462,C99462,835C35,835C35,573A14,573A14,573A14,352313" },

					-- wished scales
					{ name = "SCALE_SHIFT_PURPLE", description = "Purple Saurian", colors = "4721F5,4721F5,A04FD6,A04FD6,80348f,80348f,80348f,420D37" },
					{ name = "SCALE_SHIFT_DARKGREY", description = "Dark Saurian", colors = "575757,575757,3C3C3C,3C3C3C,2D2D2D,2D2D2D,2D2D2D,222222" },
					{ name = "SCALE_SHIFT_GOLDEN", description = "The Golden Saurian", colors = "FFFFFF,FFFFFF,FFCC43,FFCC43,C67B02,C67B02,C67B02,66211B" },
					{ name = "SCALE_SHIFT_DRAKEARMOUR", description = "Drake armour Saurian", colors = "D1E997,D1E997,C79962,C79962,996D24,996D24,996D24,3F0016" },
					{ name = "SCALE_SHIFT_LIGHTDRAKEARMOUR", description = "Drake light armour Saurian", colors = "FFFFFF,FFFFFF,D1E997,D1E997,C79962,C79962,C79962,4C3324" },					{ name = "SCALE_SHIFT_DARKPURPLE", description = "Dark purple Saurian", colors = "4631A5,4631A5,8D61AB,8D61AB,6C4372,6C4372,6C4372,33162D" },
					{ name = "SCALE_SHIFT_TEAMCOLOR", description = "TC Saurian", colors = "F172AC,F172AC,C30074,C30074,7B0045,7B0045,7B0045,55002A" },
					{ name = "SCALE_SHIFT_WYVERN", description = "Wyvern Saurian", colors = "FFD8B8,FFD8B8,F6B782,F6B782,C08656,C08656,C08656,8B482C" },
					{ name = "SCALE_SHIFT_ALBINO", description = "Albino Saurian", colors = "FDE6EF,FDE6EF,CCCCCC,CCCCCC,989898,989898,989898,6E6E6E" },

					-- wished scales round 2
					{ name = "SCALE_SHIFT_WHITE", description = "White Saurian", colors = "FFFFFF,FFFFFF,FFFFFF,FFFFFF,F1F1F1,F1F1F1,F1F1F1,C5C5C5" },
					{ name = "SCALE_SHIFT_MUDFACE", description = "Mudface Saurian", colors = "F0BD77,F0BD77,C59154,C59154,7BB24E,7BB24E,7BB24E,4F2B24" },
					{ name = "SCALE_SHIFT_STEAMLORD", description = "Steamlord Saurian", colors = "C0D1CC,C0D1CC,A19F7C,A19F7C,4F7754,4F7754,4F7754,213B25" },
					{ name = "SCALE_SHIFT_BROWN", description = "Brown Saurian", colors = "B36A33,B36A33,CDA184,CDA184,875C3C,875C3C,875C3C,4C2D18" },
					{ name = "SCALE_SHIFT_BLUEISHPURPLE", description = "Blueish purple Saurian", colors = "E7C19C,E7C19C,968BAB,968BAB,4D5675,4D5675,4D5675,322A3F" },
					{ name = "SCALE_SHIFT_BRIGHTDARKPURPLE", description = "Bright Dark purple Saurian", colors = "FFFFFF,FFFFFF,FE6C90,FE6C90,452459,452459,452459,260D34" },
					{ name = "SCALE_SHIFT_CURSED", description = "Cursed Saurian", colors = "FEFF8A,FEFF8A,FEFF8A,FEFF8A,89FF9F,89FF9F,89FF9F,8A89FF" },
					{ name = "SCALE_SHIFT_PIXELGREEN", description = "Pixel green Saurian", colors = "E0F8D0,E0F8D0,88C070,88C070,346856,346856,346856,081820" },
					{ name = "SCALE_SHIFT_PIXELRED", description = "Pixel red Saurian", colors = "F7E7C6,F7E7C6,D68E49,D68E49,A63725,A63725,A63725,331E50" },
					{ name = "SCALE_SHIFT_PIXELGREENTINT", description = "Pixel green tint Saurian", colors = "FFFFB5,FFFFB5,7BC67B,7BC67B,6B8C42,6B8C42,6B8C42,5A3921" },
					{ name = "SCALE_SHIFT_DARKBLUE", description = "Dark blue Saurian", colors = "B9F1F0,B9F1F0,8999B4,8999B4,50596E,50596E,50596E,122336" },
					{ name = "SCALE_SHIFT_PURPLE2", description = "Another Purple Saurian", colors = "DFD5E3,DFD5E3,B28FB0,B28FB0,5A4A5D,5A4A5D,5A4A5D,312933" },
					{ name = "SCALE_SHIFT_PURPLE3", description = "Again Purple Saurian", colors = "BAADDE,BAADDE,BAA4C0,BAA4C0,8C5862,8C5862,8C5862,3E2800" },
					{ name = "SCALE_SHIFT_CLOUDYSUNSET", description = "Cloudy Sunset Saurian", colors = "FBDBA2,FBDBA2,E59479,E59479,717282,717282,717282,514343" },
					{ name = "SCALE_SHIFT_MOLTEN", description = "Molten Saurian", colors = "FAE98F,FAE98F,FEC56E,FEC56E,5A1C29,5A1C29,5A1C29,3A1622" },
					{ name = "SCALE_SHIFT_DUNEFOLK", description = "Dunefolk Saurian", colors = "E3C6AA,E3C6AA,AAAA8E,AAAA8E,717171,717171,717171,393939" },
					{ name = "SCALE_SHIFT_DWARVISHARMOUR", description = "Dwarvish Armour Saurian", colors = "93CFC5,93CFC5,8ABCB8,8ABCB8,4F6973,4F6973,4F6973,21353E" },
					{ name = "SCALE_SHIFT_ICE", description = "Ice Saurian", colors = "FFFFFF,FFFFFF,E8FFFF,E8FFFF,82DEFF,82DEFF,82DEFF,66B6FD" },
					{ name = "SCALE_SHIFT_JAPANESEWOODBLOCK", description = "Japanesewoodblock Saurian", colors = "E0C872,E0C872,B1A58D,B1A58D,3E6958,3E6958,3E6958,2B2821" },
					{ name = "SCALE_SHIFT_DARKRED", description = "Dark red Saurian", colors = "D7173D,D7173D,87173E,87173E,41173D,41173D,41173D,0F173D" },
					{ name = "SCALE_SHIFT_SABIK", description = "Sabik BoW", colors = "808080,808080,4C4C4C,4C4C4C,313131,313131,313131,141414" }
				},
			},
		}
	}
}

_G.ucc_race_registry["lizard"] = {
    body_parts = body_parts
}