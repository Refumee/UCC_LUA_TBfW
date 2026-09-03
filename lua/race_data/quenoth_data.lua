-- quenoth_data.lua
local body_parts = {
	{
		name = "quenoth_hair", -- body_part
		description = "Hair",
		data = {
			youth = {
				unit_types = { "Quenoth Youth", "Quenoth Scout" },
				base = "C3B397,D0C4AE,958F8D,897A5A,585E75,61464B,4A332B", -- replace 585E74 with 585E75
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B397,D0C4AE,958F8D,897A5A,585E75,61464B,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E75,585E75,585E75" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E75,585E75,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,D6BCFA,8A92CD,8A92CD,60586E,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E75,61464B,5D474B,35323A,35323A" },
					{ name = "SUN", description = "Sun Hair", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B,33152B" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E75,585E75,61464B,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,E08B7A,B14B4B,B14B4B,8B3219,592010,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,DAB0A4,AF937F,AF937F,8B3219,582820,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,DABEA4,AF937F,AF937F,8A4E0D,582820,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,B1EBEC,93CFC5,93CFC5,58808D,2D4A4F,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,F8EDC5,E0C3A2,E0C3A2,888868,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEE498,EEC66D,EEC66D,D0804D,833F1E,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,FFFFFF,E0C3A2,E0C3A2,AF937F,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,DAB0A4,AF937F,AF937F,8F3D14,582820,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,C7CFDC,9F9C99,9F9C99,757A7B,4E5053,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,EEC66D,D0804D,D0804D,8A4422,44260D,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,D0D098,909070,909070,505038,353525,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,e8f898,98d858,98d858,509038,364c3e,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,cd9db0,a4929f,a4929f,775b71,4e3d4b,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,faf3c9,e0c89e,e0c89e,c5956a,a9794f,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,d1b563,af7a18,af7a18,734a29,422110,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,faf3c9,c5956a,c5956a,8a5c2f,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,ebd5bc,cfa87a,cfa87a,9a7458,7a4a3f,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,c5956a,a9794f,a9794f,784838,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,ffe970,c7a143,c7a143,bc5d5e,6b2444,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,bdd3e3,88a6d8,88a6d8,7c949b,3a5872,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ababab,ad9960,ad9960,506858,333d33,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,c9c3be,889880,889880,6e675c,514a3f,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,f3c274,a59077,a59077,796433,494a46,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,d09b4c,a35b67,a35b67,494a46,18222d,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,cd9d6f,826c79,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,859a94,826c79,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,d9b75a,b5712f,b5712f,7b4919,471d09,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,a5966d,816447,816447,523d28,2a1810,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,94ac98,6f8078,6f8078,414445,25262a,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,c6e9bd,84b8bf,84b8bf,4d687c,313545,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,a2b5ff,85ebe4,85ebe4,2d8b91,02342f,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,f51743,9b173f,9b173f,55173d,37173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,c7faff,baa4c0,baa4c0,8c5862,3e2844,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00cf9e,00a35f,00a35f,008734,003008,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,cefdff,9bdfeb,9bdfeb,3591c3,1969b0,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,dfdfdf,c7c7c7,c7c7c7,7e7e7e,434343,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,f6d6bd,cca88f,cca88f,746266,4e495f,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,dfd5e3,b28fb0,b28fb0,5a4a5d,312933,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,b9f1f0,90a1bd,90a1bd,50596e,273a48,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,ffd4a3,d08159,d08159,544e68,203c56,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,f8f8a0,a5b89c,a5b89c,506858,525239,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,848484,565656,565656,313131,1a1a1a,1a1a1a"},
				},
			},
			fighter = {
				unit_types = { "Quenoth Fighter","Quenoth Warrior","Quenoth Champion","Corrupted Quenoth Elf" },
				base = "9D9F90,818584,585E75",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "9D9F90,818584,585E75" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,897A5A,61464B" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,938091,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "8A92CD,75759D,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "897A5A,585E75,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,3E2745" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,B14B4B,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,AF937F,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,AF937F,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,93CFC5,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,E0C3A2,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEC66D,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,E0C3A2,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,AF937F,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,9F9C99,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,D0804D,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,909070,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,98d858,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,a4929f,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,e0c89e,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,af7a18,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,c5956a,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,cfa87a,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,a9794f,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,c7a143,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,88a6d8,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ad9960,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,889880,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,a59077,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,a35b67,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,826c79,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,826c79,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,b5712f,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,816447,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,6f8078,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,84b8bf,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,85ebe4,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,9b173f,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,baa4c0,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00a35f,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,9bdfeb,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,c7c7c7,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,cca88f,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,b28fb0,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,90a1bd,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,d08159,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,a5b89c,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,565656,1a1a1a"},
				},
			},
			flanker = {
				unit_types = { "Quenoth Flanker","Quenoth Ranger" },
				base = "C3B8C2,938091,585E75",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B8C2,938091,585E75" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,897A5A,61464B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,818584,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "8A92CD,75759D,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "897A5A,585E75,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,3E2745" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,B14B4B,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,AF937F,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,AF937F,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,93CFC5,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,E0C3A2,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEC66D,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,E0C3A2,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,AF937F,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,9F9C99,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,D0804D,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,909070,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,98d858,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,a4929f,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,e0c89e,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,af7a18,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,c5956a,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,cfa87a,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,a9794f,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,c7a143,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,88a6d8,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ad9960,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,889880,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,a59077,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,a35b67,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,826c79,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,826c79,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,b5712f,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,816447,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,6f8078,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,84b8bf,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,85ebe4,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,9b173f,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,baa4c0,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00a35f,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,9bdfeb,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,c7c7c7,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,cca88f,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,b28fb0,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,90a1bd,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,d08159,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,a5b89c,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,565656,1a1a1a"},
				},
			},
			mystic = {
				unit_types = { "Quenoth Mystic","Quenoth Shaman" },
				base = "D6BCFA,8A92CD,60586E,262328",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D6BCFA,8A92CD,60586E,262328" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,958F8D,897A5A,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,818584,818584,585E75" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,938091,938091,585E75" },
					{ name = "DRUID", description = "Druid Hair", colors = "D6BCFA,AFA6E3,8A92CD,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E75,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,894C5D,3E2745" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,585E75,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,B14B4B,8B3219,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,AF937F,8B3219,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,AF937F,8A4E0D,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,93CFC5,58808D,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,E0C3A2,888868,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEC66D,D0804D,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,E0C3A2,AF937F,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,AF937F,8F3D14,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,9F9C99,757A7B,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,D0804D,8A4422,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,909070,505038,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,98d858,509038,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,a4929f,775b71,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,e0c89e,c5956a,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,af7a18,734a29,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,c5956a,8a5c2f,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,cfa87a,9a7458,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,a9794f,784838,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,c7a143,bc5d5e,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,88a6d8,7c949b,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ad9960,506858,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,889880,6e675c,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,a59077,796433,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,a35b67,494a46,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,826c79,4a503e,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,826c79,4a503e,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,b5712f,7b4919,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,816447,523d28,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,6f8078,414445,25262a"},

					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,84b8bf,4d687c,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,85ebe4,2d8b91,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,9b173f,55173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,baa4c0,8c5862,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00a35f,008734,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,9bdfeb,3591c3,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,c7c7c7,7e7e7e,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,cca88f,746266,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,b28fb0,5a4a5d,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,90a1bd,50596e,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,d08159,544e68,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,a5b89c,506858,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,565656,313131,1a1a1a"},
				},
			},
			druid = {
				unit_types = { "Quenoth Druid" },
				base = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B" },
					{ name = "YOUTH", description = "Youth Hair", colors = "C3B397,D0C4AE,958F8D,897A5A,585E75,61464B,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E75,585E75,585E75" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E75,585E75,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,D6BCFA,8A92CD,8A92CD,60586E,60586E,262328" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E75,61464B,5D474B,35323A,35323A" },
					{ name = "SUN", description = "Sun Hair", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B,33152B" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E75,585E75,61464B,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,E08B7A,B14B4B,B14B4B,8B3219,592010,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,DAB0A4,AF937F,AF937F,8B3219,582820,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,DABEA4,AF937F,AF937F,8A4E0D,582820,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,B1EBEC,93CFC5,93CFC5,58808D,2D4A4F,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,F8EDC5,E0C3A2,E0C3A2,888868,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEE498,EEC66D,EEC66D,D0804D,833F1E,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,FFFFFF,E0C3A2,E0C3A2,AF937F,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,DAB0A4,AF937F,AF937F,8F3D14,582820,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,C7CFDC,9F9C99,9F9C99,757A7B,4E5053,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,EEC66D,D0804D,D0804D,8A4422,44260D,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,D0D098,909070,909070,505038,353525,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,e8f898,98d858,98d858,509038,364c3e,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,cd9db0,a4929f,a4929f,775b71,4e3d4b,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,faf3c9,e0c89e,e0c89e,c5956a,a9794f,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,d1b563,af7a18,af7a18,734a29,422110,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,faf3c9,c5956a,c5956a,8a5c2f,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,ebd5bc,cfa87a,cfa87a,9a7458,7a4a3f,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,c5956a,a9794f,a9794f,784838,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,ffe970,c7a143,c7a143,bc5d5e,6b2444,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,bdd3e3,88a6d8,88a6d8,7c949b,3a5872,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ababab,ad9960,ad9960,506858,333d33,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,c9c3be,889880,889880,6e675c,514a3f,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,f3c274,a59077,a59077,796433,494a46,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,d09b4c,a35b67,a35b67,494a46,18222d,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,cd9d6f,826c79,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,859a94,826c79,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,d9b75a,b5712f,b5712f,7b4919,471d09,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,a5966d,816447,816447,523d28,2a1810,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,94ac98,6f8078,6f8078,414445,25262a,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,c6e9bd,84b8bf,84b8bf,4d687c,313545,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,a2b5ff,85ebe4,85ebe4,2d8b91,02342f,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,f51743,9b173f,9b173f,55173d,37173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,c7faff,baa4c0,baa4c0,8c5862,3e2844,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00cf9e,00a35f,00a35f,008734,003008,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,cefdff,9bdfeb,9bdfeb,3591c3,1969b0,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,dfdfdf,c7c7c7,c7c7c7,7e7e7e,434343,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,f6d6bd,cca88f,cca88f,746266,4e495f,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,dfd5e3,b28fb0,b28fb0,5a4a5d,312933,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,b9f1f0,90a1bd,90a1bd,50596e,273a48,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,ffd4a3,d08159,d08159,544e68,203c56,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,f8f8a0,a5b89c,a5b89c,506858,525239,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,848484,565656,565656,313131,1a1a1a,1a1a1a"},
				},
			},
			shyde = {
				unit_types = { "Quenoth Shyde" },
				base = "9D9F90,897A5A,585E75,61464B,5D474B,35323A",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "9D9F90,897A5A,585E75,61464B,5D474B,35323A" },
					{ name = "YOUTH", description = "Youth Hair", colors = "C3B397,D0C4AE,958F8D,897A5A,585E75,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E75,585E75" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E75,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,D6BCFA,8A92CD,8A92CD,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "F1E6FF,D6BCFA,8A92CD,60586E,75759D,35323B" },
					{ name = "SUN", description = "Sun Hair", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E75,61464B,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,E08B7A,B14B4B,8B3219,592010,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,DAB0A4,AF937F,8B3219,582820,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,DABEA4,AF937F,8A4E0D,582820,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,B1EBEC,93CFC5,58808D,2D4A4F,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,F8EDC5,E0C3A2,888868,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEE498,EEC66D,D0804D,833F1E,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,FFFFFF,E0C3A2,AF937F,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,DAB0A4,AF937F,8F3D14,582820,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,C7CFDC,9F9C99,757A7B,4E5053,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,EEC66D,D0804D,8A4422,44260D,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,D0D098,909070,505038,353525,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,e8f898,98d858,509038,364c3e,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,cd9db0,a4929f,775b71,4e3d4b,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,faf3c9,e0c89e,c5956a,a9794f,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,d1b563,af7a18,734a29,422110,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,faf3c9,c5956a,8a5c2f,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,ebd5bc,cfa87a,9a7458,7a4a3f,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,c5956a,a9794f,784838,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,ffe970,c7a143,bc5d5e,6b2444,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,bdd3e3,88a6d8,7c949b,3a5872,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ababab,ad9960,506858,333d33,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,c9c3be,889880,6e675c,514a3f,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,f3c274,a59077,796433,494a46,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,d09b4c,a35b67,494a46,18222d,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,cd9d6f,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,859a94,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,d9b75a,b5712f,7b4919,471d09,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,a5966d,816447,523d28,2a1810,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,94ac98,6f8078,414445,25262a,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,c6e9bd,84b8bf,4d687c,313545,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,a2b5ff,85ebe4,2d8b91,02342f,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,f51743,9b173f,55173d,37173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,c7faff,baa4c0,8c5862,3e2844,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00cf9e,00a35f,008734,003008,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,cefdff,9bdfeb,3591c3,1969b0,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,dfdfdf,c7c7c7,7e7e7e,434343,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,f6d6bd,cca88f,746266,4e495f,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,dfd5e3,b28fb0,5a4a5d,312933,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,b9f1f0,90a1bd,50596e,273a48,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,ffd4a3,d08159,544e68,203c56,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,f8f8a0,a5b89c,506858,525239,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,848484,565656,313131,1a1a1a,1a1a1a"},
				},
			},
			sun = {
				unit_types = { "Quenoth Sun Singer","Quenoth Sun Sylph"},
				base = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B" },
					{ name = "YOUTH", description = "Youth Hair", colors = "C3B397,D0C4AE,958F8D,897A5A,585E75,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E75,585E75" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E75,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,8A92CD,8A92CD,60586E,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "F1E6FF,D6BCFA,8A92CD,60586E,75759D,35323B" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E75,61464B,5D474B,35323A" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E75,61464B,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,E08B7A,B14B4B,8B3219,592010,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,DAB0A4,AF937F,8B3219,582820,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,DABEA4,AF937F,8A4E0D,582820,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,B1EBEC,93CFC5,58808D,2D4A4F,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,F8EDC5,E0C3A2,888868,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEE498,EEC66D,D0804D,833F1E,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,FFFFFF,E0C3A2,AF937F,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,DAB0A4,AF937F,8F3D14,582820,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,C7CFDC,9F9C99,757A7B,4E5053,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,EEC66D,D0804D,8A4422,44260D,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,D0D098,909070,505038,353525,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,e8f898,98d858,509038,364c3e,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,cd9db0,a4929f,775b71,4e3d4b,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,faf3c9,e0c89e,c5956a,a9794f,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,d1b563,af7a18,734a29,422110,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,faf3c9,c5956a,8a5c2f,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,ebd5bc,cfa87a,9a7458,7a4a3f,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,c5956a,a9794f,784838,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,ffe970,c7a143,bc5d5e,6b2444,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,bdd3e3,88a6d8,7c949b,3a5872,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ababab,ad9960,506858,333d33,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,c9c3be,889880,6e675c,514a3f,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,f3c274,a59077,796433,494a46,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,d09b4c,a35b67,494a46,18222d,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,cd9d6f,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,859a94,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,d9b75a,b5712f,7b4919,471d09,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,a5966d,816447,523d28,2a1810,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,94ac98,6f8078,414445,25262a,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,c6e9bd,84b8bf,4d687c,313545,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,a2b5ff,85ebe4,2d8b91,02342f,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,f51743,9b173f,55173d,37173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,c7faff,baa4c0,8c5862,3e2844,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00cf9e,00a35f,008734,003008,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,cefdff,9bdfeb,3591c3,1969b0,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,dfdfdf,c7c7c7,7e7e7e,434343,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,f6d6bd,cca88f,746266,4e495f,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,dfd5e3,b28fb0,5a4a5d,312933,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,b9f1f0,90a1bd,50596e,273a48,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,ffd4a3,d08159,544e68,203c56,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,f8f8a0,a5b89c,506858,525239,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,848484,565656,313131,1a1a1a,1a1a1a"},
				},
			},
			tauroch = {
				unit_types = {	"Tauroch Rider",
								"Tauroch Vanguard","Tauroch Flagbearer",
								"Tauroch Stalwart","Tauroch Protector"},
				base = "C7C9BC,9D9F90,958F8D,897A5A,585E75,61464B,4A332B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C7C9BC,9D9F90,958F8D,897A5A,585E75,61464B,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E75,585E75,585E75" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E75,585E75,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,D6BCFA,8A92CD,8A92CD,60586E,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E75,61464B,5D474B,35323A,35323A" },
					{ name = "SUN", description = "Sun Hair", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B,33152B" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E75,585E75,61464B,61464B,37122C" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,E08B7A,B14B4B,B14B4B,8B3219,592010,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,DAB0A4,AF937F,AF937F,8B3219,582820,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,DABEA4,AF937F,AF937F,8A4E0D,582820,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,B1EBEC,93CFC5,93CFC5,58808D,2D4A4F,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,F8EDC5,E0C3A2,E0C3A2,888868,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEE498,EEC66D,EEC66D,D0804D,833F1E,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,FFFFFF,E0C3A2,E0C3A2,AF937F,4E3A2D,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,DAB0A4,AF937F,AF937F,8F3D14,582820,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,C7CFDC,9F9C99,9F9C99,757A7B,4E5053,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,EEC66D,D0804D,D0804D,8A4422,44260D,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,D0D098,909070,909070,505038,353525,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,e8f898,98d858,98d858,509038,364c3e,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,cd9db0,a4929f,a4929f,775b71,4e3d4b,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,faf3c9,e0c89e,e0c89e,c5956a,a9794f,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,d1b563,af7a18,af7a18,734a29,422110,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,faf3c9,c5956a,c5956a,8a5c2f,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,ebd5bc,cfa87a,cfa87a,9a7458,7a4a3f,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,c5956a,a9794f,a9794f,784838,5a2816,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,ffe970,c7a143,c7a143,bc5d5e,6b2444,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,bdd3e3,88a6d8,88a6d8,7c949b,3a5872,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ababab,ad9960,ad9960,506858,333d33,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,c9c3be,889880,889880,6e675c,514a3f,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,f3c274,a59077,a59077,796433,494a46,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,d09b4c,a35b67,a35b67,494a46,18222d,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,cd9d6f,826c79,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,859a94,826c79,826c79,4a503e,2c2319,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,d9b75a,b5712f,b5712f,7b4919,471d09,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,a5966d,816447,816447,523d28,2a1810,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,94ac98,6f8078,6f8078,414445,25262a,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,c6e9bd,84b8bf,84b8bf,4d687c,313545,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,a2b5ff,85ebe4,85ebe4,2d8b91,02342f,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,f51743,9b173f,9b173f,55173d,37173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,c7faff,baa4c0,baa4c0,8c5862,3e2844,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00cf9e,00a35f,00a35f,008734,003008,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,cefdff,9bdfeb,9bdfeb,3591c3,1969b0,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,dfdfdf,c7c7c7,c7c7c7,7e7e7e,434343,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,f6d6bd,cca88f,cca88f,746266,4e495f,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,dfd5e3,b28fb0,b28fb0,5a4a5d,312933,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,b9f1f0,90a1bd,90a1bd,50596e,273a48,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,ffd4a3,d08159,d08159,544e68,203c56,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,f8f8a0,a5b89c,a5b89c,506858,525239,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,848484,565656,565656,313131,1a1a1a,1a1a1a"},
				},
			},
			assassin_uncloak = {
				unit_types = { "Dark Assassin Uncloaked" },
				base = "958F8D,585E75,61464B,37122C",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "958F8D,585E75,61464B,37122C" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,958F8D,897A5A,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,818584,818584,585E75" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,938091,938091,585E75" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,8A92CD,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "D6BCFA,AFA6E3,8A92CD,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E75,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,894C5D,3E2745" },
					-- other colors
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,B14B4B,8B3219,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,AF937F,8B3219,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,AF937F,8A4E0D,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B1EBEC,93CFC5,58808D,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F8EDC5,E0C3A2,888868,4E3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EEC66D,D0804D,833F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FFFFFF,E0C3A2,AF937F,4E3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,AF937F,8F3D14,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,9F9C99,757A7B,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EEC66D,D0804D,8A4422,44260D"},
					{ name = "DWARF_BEARD_LOREMASTER", description = "Loremaster", colors = "D0D098,909070,505038,353525"},
					--other factions hair coloring
					{ name = "MERFOLK_HAIR", description = "Merfolk", colors = "e8f898,98d858,509038,364c3e"},
					{ name = "MERFOLK_HAIR_DUNEBURNER", description = "Dunefolk", colors = "cd9db0,a4929f,775b71,4e3d4b"},
					{ name = "MERFOLK_HAIR_ELVISH", description = "Elvish", colors = "faf3c9,e0c89e,c5956a,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", description = "Fencer", colors = "d1b563,af7a18,734a29,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", description = "Archmage", colors = "faf3c9,c5956a,8a5c2f,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", description = "Female Archmage", colors = "ebd5bc,cfa87a,9a7458,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", description = "White Mage", colors = "c5956a,a9794f,784838,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", description = "Footpad", colors = "ffe970,c7a143,bc5d5e,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", description = "Thief", colors = "bdd3e3,88a6d8,7c949b,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", description = "Bandit", colors = "ababab,ad9960,506858,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", description = "Necromancer", colors = "c9c3be,889880,6e675c,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", description = "Wolfrider", colors = "f3c274,a59077,796433,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", description = "Pillager", colors = "d09b4c,a35b67,494a46,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", description = "Goblin Knight", colors = "cd9d6f,826c79,4a503e,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", description = "Direwolfrider", colors = "859a94,826c79,4a503e,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", description = "Orcish Novice", colors = "d9b75a,b5712f,7b4919,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", description = "Orcish Shaman", colors = "a5966d,816447,523d28,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", description = "Orcish Elder Shaman", colors = "94ac98,6f8078,414445,25262a"},
					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", description = "Grey green blue", colors = "c6e9bd,84b8bf,4d687c,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", description = "Purple ice", colors = "a2b5ff,85ebe4,2d8b91,02342f"},
					{ name = "MERFOLK_HAIR_RED", description = "Red", colors = "f51743,9b173f,55173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", description = "Lightghost (CtL)", colors = "c7faff,baa4c0,8c5862,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", description = "Dryad", colors = "00cf9e,00a35f,008734,003008"},
					{ name = "MERFOLK_HAIR_ICE", description = "Ice", colors = "cefdff,9bdfeb,3591c3,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", description = "White", colors = "dfdfdf,c7c7c7,7e7e7e,434343"},
					{ name = "MERFOLK_HAIR_EARTH", description = "Earth", colors = "f6d6bd,cca88f,746266,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", description = "Purple", colors = "dfd5e3,b28fb0,5a4a5d,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", description = "Grey Blue", colors = "b9f1f0,90a1bd,50596e,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", description = "Bright Brown", colors = "ffd4a3,d08159,544e68,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", description = "Grey Green", colors = "f8f8a0,a5b89c,506858,525239"},
					{ name = "MERFOLK_HAIR_BLACK", description = "Black", colors = "848484,565656,313131,1a1a1a"},
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
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,C8715D,9F6050,9F6050,6C3427,6C3427,511F13" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,8E755C,9F6050,9F6050,6C3427,5B261A,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,88503E,6C3426,65372A,55291D,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,764637,65372A,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,9F6050,6C3427,5B261A,382800" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,E2A76F,BA9863,97663C,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,AC7732,97560F,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,c08008,985810,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,d0963a,ac7732,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,d6d69c,949473,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,a2a684,75826a,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,b0b3af,826c79,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,c2cd71,84873b,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,87B02F,709427,4E671E,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,DFB136,A66E06,A66E06,824B0D,6B3413,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,DFB67F,DFB67F,CD9B5E,B37941,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,B58230,B58230,94652A,80470C,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,BFBF8B,BFBF8B,7D7D61,42422D,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,8C9072,8C9072,616C56,454D31,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,999C98,999C98,6B5763,5C5262,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,ABB561,ABB561,6E7130,4E6633,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,759926,759926,5C7A1F,3E5217,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,A3B500,859600,697800,4E5C00,364000,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,29BFFF,00A3E8,0084BD,006694,004A6E,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,D4E6F1,A9CCE3,7FB3D5,5499C7,2980B9,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,8C8C8C,707070,575757,3D3D3D,262626,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,C23B3B,9E1F1F,7A0F0F,5C0000,380000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,52968E,357870,205C55,11423D,072B27,021714"},
				},
			},
			fighter = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger"},
				base = "DF9859,C8715D,9F6050,6C3427,511F13",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,9F6050,6C3427,511F13" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,C8715D,9F6050,7F4436,5B261A" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,9F6050,6C3427,5B261A,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,E98F7A,C8715D,6C3427,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,88503E,65372A,55291D,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,976353,764637,65372A,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,DF9859,9F6050,5B261A,382800" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,BA9863,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,4E671E,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,DFB136,A66E06,6B3413,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,DFB67F,B37941,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,B58230,80470C,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,BFBF8B,42422D,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,8C9072,454D31,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,999C98,5C5262,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,ABB561,4E6633,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,759926,3E5217,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,A3B500,697800,364000,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,29BFFF,0084BD,004A6E,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,D4E6F1,7FB3D5,2980B9,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,8C8C8C,575757,262626,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,C23B3B,7A0F0F,380000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,52968E,205C55,072B27,021714"},
				},
			},
			corrupted = {
				unit_types = { "Corrupted Quenoth Elf" },
				base = "AC8D5C,8E755C,9F6050,6C3427,5B261A,511F13",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "AC8D5C,8E755C,9F6050,6C3427,5B261A,511F13" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,C8715D,9F6050,9F6050,6C3427,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F9BAAC,E98F7A,C8715D,6C3427,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,9F6050,88503E,65372A,55291D,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,764637,65372A,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,9F6050,5B261A,382800" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,E2A76F,97663C,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,97560F,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,985810,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,ac7732,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,949473,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,75826a,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,826c79,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,84873b,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,709427,4E671E,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,DFB136,A66E06,824B0D,6B3413,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,DFB67F,CD9B5E,B37941,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,B58230,94652A,80470C,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,BFBF8B,7D7D61,42422D,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,8C9072,616C56,454D31,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,999C98,6B5763,5C5262,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,ABB561,6E7130,4E6633,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,759926,5C7A1F,3E5217,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,A3B500,859600,4E5C00,364000,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,29BFFF,00A3E8,006694,004A6E,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,D4E6F1,A9CCE3,5499C7,2980B9,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,8C8C8C,707070,3D3D3D,262626,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,C23B3B,9E1F1F,5C0000,380000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,52968E,357870,11423D,072B27,021714"},
				},
			},
			archer = {
				unit_types = {	"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider"},
				base = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A,46261F",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A,46261F" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,9F6050,6C3427,6C3427,511F13,511F13" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,8E755C,9F6050,9F6050,6C3427,6C3427,5B261A,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,784739,764637,55291D,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,5B261A,382800" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,E2A76F,BA9863,BA9863,97663C,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,AC7732,AC7732,97560F,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,c08008,c08008,985810,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,f6d39b,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,d0963a,d0963a,ac7732,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,d6d69c,d6d69c,949473,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,a2a684,a2a684,75826a,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,b0b3af,b0b3af,826c79,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,c2cd71,c2cd71,84873b,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,87B02F,87B02F,709427,4E671E,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,DFB136,A66E06,A66E06,A66E06,824B0D,6B3413,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,DFB67F,DFB67F,DFB67F,CD9B5E,B37941,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,B58230,B58230,B58230,94652A,80470C,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,BFBF8B,BFBF8B,BFBF8B,7D7D61,42422D,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,8C9072,8C9072,8C9072,616C56,454D31,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,999C98,999C98,999C98,6B5763,5C5262,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,ABB561,ABB561,ABB561,6E7130,4E6633,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,759926,759926,759926,5C7A1F,3E5217,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,A3B500,859600,697800,697800,4E5C00,364000,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,29BFFF,00A3E8,0084BD,0084BD,006694,004A6E,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,D4E6F1,A9CCE3,7FB3D5,7FB3D5,5499C7,2980B9,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,8C8C8C,707070,575757,575757,3D3D3D,262626,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,C23B3B,9E1F1F,7A0F0F,7A0F0F,5C0000,380000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,52968E,357870,205C55,205C55,11423D,072B27,021714"},
				},
			},
			mystic = {
				unit_types = { "Quenoth Mystic","Quenoth Shaman","Quenoth Druid" },
				base = "F1B892,E98F7A,F6D39B,C8715D,904D39,6C3427",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1B892,E98F7A,F6D39B,C8715D,6C3427" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,8C445A,9F6050,7F4436,6C3427" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,9F6050,9F6050,6C3427,6C3427" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,9F6050,9F6050,6C3427,5B261A" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,88503E,6C3426,65372A,55291D" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,976353,88503E,764637,65372A" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,DF9859,9F6050,6C3427,5B261A" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,E2A76F,97663C,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,97560F,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,985810,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,ac7732,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,949473,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,75826a,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,826c79,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,84873b,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,709427,4E671E,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,DFB136,A66E06,824B0D,6B3413,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,DFB67F,CD9B5E,B37941,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,B58230,94652A,80470C,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,BFBF8B,7D7D61,42422D,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,8C9072,616C56,454D31,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,999C98,6B5763,5C5262,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,ABB561,6E7130,4E6633,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,759926,5C7A1F,3E5217,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,A3B500,859600,4E5C00,364000,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,29BFFF,00A3E8,006694,004A6E,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,D4E6F1,A9CCE3,5499C7,2980B9,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,8C8C8C,707070,3D3D3D,262626,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,C23B3B,9E1F1F,5C0000,380000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,52968E,357870,11423D,072B27,021714"},
				},
			},
			shyde = {
				unit_types = { "Quenoth Shyde" },
				base = "DF9859,C8715D,9F6050,88503E,7F4436,65372A,5B2619,55291D,391F12,310D02",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,9F6050,88503E,7F4436,65372A,55291D,391F12,310D02" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,C8715D,8C445A,9F6050,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,C8715D,9F6050,6C3427,511F13,511F13,511F13" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,AC8D5C,8E755C,8E755C,9F6050,6C3427,5B261A,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,F9BAAC,E98F7A,C8715D,6C3427,662431,662431" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,784739,764538,55291D,432720,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,6C3427,46261F,382800,382800" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,FFD087,F3B368,E2A76F,BA9863,97663C,574D31,3B3427,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,D6BD8A,C29A5E,AC7732,AC7732,97560F,6E3417,502413,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,ffce39,F8C842,c08008,c08008,985810,804018,582820,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,d2d2d2,f6d39b,f6d39b,e8b374,ce8f50,753c32,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d6bd8a,d0963a,d0963a,ac7732,97560f,6e3417,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,ffffce,d6d69c,d6d69c,949473,525239,283028,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,c4c3c1,a2a684,a2a684,75826a,555e3e,524133,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,cbcfc7,b0b3af,b0b3af,826c79,74687b,634258,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,ffd756,c2cd71,c2cd71,84873b,617f41,2f461d,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,9CCE36,87B02F,87B02F,709427,4E671E,3A4A1A,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,E6B62E,DFB136,A66E06,A66E06,824B0D,6B3413,4A201A,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,BABABA,DFB67F,DFB67F,CD9B5E,B37941,612F26,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,BFA777,B58230,B58230,94652A,80470C,5C2A12,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,E5E5B8,BFBF8B,BFBF8B,7D7D61,42422D,1F251F,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,ADACAA,8C9072,8C9072,616C56,454D31,423428,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,B2B5AF,999C98,999C98,6B5763,5C5262,4C3243,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,E5C04A,ABB561,ABB561,6E7130,4E6633,243615,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,89B52C,759926,759926,5C7A1F,3E5217,2C3813,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,C4D300,A3B500,859600,697800,4E5C00,364000,1F2600,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,5CD6FF,29BFFF,00A3E8,0084BD,006694,004A6E,002E47,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,F0F8FF,D4E6F1,A9CCE3,7FB3D5,5499C7,2980B9,154360,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,A6A6A6,8C8C8C,707070,575757,3D3D3D,262626,121212,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,E65C5C,C23B3B,9E1F1F,7A0F0F,5C0000,380000,1F0000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,77B5AE,52968E,357870,205C55,11423D,072B27,021714,021714"},
				},
			},
			sun_singer = {
				unit_types = { "Quenoth Sun Singer"},
				base = "D69B63,BD7562,976353,88503E,784739,65372A,55291D,432720",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D69B63,BD7562,976353,88503E,784739,65372A,55291D,432720" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,8C445A,9F6050,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,C8715D,9F6050,6C3427,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,E98F7A,F6D39B,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,5B2619,391F12,310D02" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,5B261A,46261F,382800" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,E2A76F,BA9863,BA9863,97663C,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,AC7732,AC7732,97560F,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,c08008,c08008,985810,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,f6d39b,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,d0963a,d0963a,ac7732,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,d6d69c,d6d69c,949473,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,a2a684,a2a684,75826a,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,b0b3af,b0b3af,826c79,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,c2cd71,c2cd71,84873b,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,87B02F,87B02F,709427,4E671E,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,DFB136,A66E06,A66E06,A66E06,824B0D,6B3413,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,DFB67F,DFB67F,DFB67F,CD9B5E,B37941,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,B58230,B58230,B58230,94652A,80470C,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,BFBF8B,BFBF8B,BFBF8B,7D7D61,42422D,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,8C9072,8C9072,8C9072,616C56,454D31,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,999C98,999C98,999C98,6B5763,5C5262,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,ABB561,ABB561,ABB561,6E7130,4E6633,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,759926,759926,759926,5C7A1F,3E5217,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,A3B500,859600,697800,697800,4E5C00,364000,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,29BFFF,00A3E8,0084BD,0084BD,006694,004A6E,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,D4E6F1,A9CCE3,7FB3D5,7FB3D5,5499C7,2980B9,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,8C8C8C,707070,575757,575757,3D3D3D,262626,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,C23B3B,9E1F1F,7A0F0F,7A0F0F,5C0000,380000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,52968E,357870,205C55,205C55,11423D,072B27,021714"},
				},
			},
			sun_sylph = {
				unit_types = { "Quenoth Sun Sylph"},
				base = "D69B63,BD7562,976353,88503E,784739,65372A,55291D,391F12",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D69B63,BD7562,976353,88503E,784739,65372A,55291D,391F12" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,8C445A,9F6050,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,9F6050,9F6050,6C3427,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,E98F7A,F6D39B,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,5B2619,391F12,310D02" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,6C3427,5B261A,46261F,382800" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,E2A76F,BA9863,BA9863,97663C,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,AC7732,AC7732,97560F,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,c08008,c08008,985810,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,f6d39b,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,d0963a,d0963a,ac7732,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,d6d69c,d6d69c,949473,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,a2a684,a2a684,75826a,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,b0b3af,b0b3af,826c79,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,c2cd71,c2cd71,84873b,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,87B02F,87B02F,709427,4E671E,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,DFB136,A66E06,A66E06,A66E06,824B0D,6B3413,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,DFB67F,DFB67F,DFB67F,CD9B5E,B37941,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,B58230,B58230,B58230,94652A,80470C,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,BFBF8B,BFBF8B,BFBF8B,7D7D61,42422D,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,8C9072,8C9072,8C9072,616C56,454D31,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,999C98,999C98,999C98,6B5763,5C5262,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,ABB561,ABB561,ABB561,6E7130,4E6633,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,759926,759926,759926,5C7A1F,3E5217,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,A3B500,859600,697800,697800,4E5C00,364000,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,29BFFF,00A3E8,0084BD,0084BD,006694,004A6E,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,D4E6F1,A9CCE3,7FB3D5,7FB3D5,5499C7,2980B9,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,8C8C8C,707070,575757,575757,3D3D3D,262626,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,C23B3B,9E1F1F,7A0F0F,7A0F0F,5C0000,380000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,52968E,357870,205C55,205C55,11423D,072B27,021714"},
				},
			},
			assassin = {
				unit_types = { "Dark Assassin Uncloaked" },
				base = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,8C445A,9F6050,7F4436,7F4436,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,C8715D,9F6050,9F6050,6C3427,6C3427,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,E98F7A,F6D39B,C8715D,C8715D,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,5B2619,391F12,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,784739,764637,764538,65372A,55291D,432720" },
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,FFD087,F3B368,E2A76F,BA9863,97663C,97663C,574D31,3B3427,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,D6BD8A,C29A5E,AC7732,AC7732,97560F,97560F,6E3417,502413,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,ffce39,F8C842,c08008,c08008,985810,985810,804018,582820,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,d2d2d2,f6d39b,f6d39b,e8b374,e8b374,ce8f50,753c32,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d6bd8a,d0963a,d0963a,ac7732,ac7732,97560f,6e3417,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,ffffce,d6d69c,d6d69c,949473,949473,525239,283028,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,c4c3c1,a2a684,a2a684,75826a,75826a,555e3e,524133,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,cbcfc7,b0b3af,b0b3af,826c79,826c79,74687b,634258,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,ffd756,c2cd71,c2cd71,84873b,84873b,617f41,2f461d,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,9CCE36,87B02F,87B02F,709427,709427,4E671E,3A4A1A,3A4A1A"},
					--new
					{ name = "OGRE_SKIN_ORCISH_DARKER", description = "Orc Darker", colors = "E6B62E,E6B62E,DFB136,A66E06,A66E06,824B0D,824B0D,6B3413,4A201A,4A201A"},
					{ name = "OGRE_SKIN_HUMAN_DARKER", description = "Human Darker", colors = "BABABA,BABABA,BABABA,DFB67F,DFB67F,CD9B5E,CD9B5E,B37941,612F26,612F26"},
					{ name = "OGRE_SKIN_DUNEFOLK_DARKER", description = "Dunefolk Darker", colors = "BFA777,BFA777,BFA777,B58230,B58230,94652A,94652A,80470C,5C2A12,5C2A12"},
					{ name = "OGRE_SKIN_SKELETON_DARKER", description = "Skeleton Bone Darker", colors = "E5E5B8,E5E5B8,E5E5B8,BFBF8B,BFBF8B,7D7D61,7D7D61,42422D,1F251F,1F251F"},
					{ name = "OGRE_SKIN_WC_DARKER", description = "Walking Corpse Darker", colors = "ADACAA,ADACAA,ADACAA,8C9072,8C9072,616C56,616C56,454D31,423428,423428"},
					{ name = "OGRE_SKIN_SOULLESS_DARKER", description = "Soulless Darker", colors = "B2B5AF,B2B5AF,B2B5AF,999C98,999C98,6B5763,6B5763,5C5262,4C3243,4C3243"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN_DARKER", description = "AoA Mountain Goblin Darker", colors = "E5C04A,E5C04A,E5C04A,ABB561,ABB561,6E7130,6E7130,4E6633,243615,243615"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN_DARKER", description = "Anbennar Green Darker", colors = "89B52C,89B52C,89B52C,759926,759926,5C7A1F,5C7A1F,3E5217,2C3813,2C3813"},
					-- special
					{ name = "OGRE_SKIN_SWAMP", description = "Swamp Ogre", colors = "C4D300,C4D300,A3B500,859600,697800,4E5C00,4E5C00,364000,1F2600,1F2600"},
					{ name = "OGRE_SKIN_EIFFEL65", description = "Blue", colors = "5CD6FF,5CD6FF,29BFFF,00A3E8,0084BD,006694,006694,004A6E,002E47,002E47"},
					{ name = "OGRE_SKIN_FROST", description = "Frost", colors = "F0F8FF,F0F8FF,D4E6F1,A9CCE3,7FB3D5,5499C7,5499C7,2980B9,154360,154360"},
					{ name = "OGRE_SKIN_ASHEN", description = "Volcanic Ash", colors = "A6A6A6,A6A6A6,8C8C8C,707070,575757,3D3D3D,3D3D3D,262626,121212,121212"},
					{ name = "OGRE_SKIN_ONI", description = "Crimson Oni", colors = "E65C5C,E65C5C,C23B3B,9E1F1F,7A0F0F,5C0000,5C0000,380000,1F0000,1F0000"},
					{ name = "OGRE_SKIN_RIVER", description = "River Troll", colors = "77B5AE,77B5AE,52968E,357870,205C55,11423D,11423D,072B27,021714,021714"},
				},
			},
		}
	},
	{
		name = "quenoth_tan_cloth", -- body_part
		description = "Tan Cloth",
		data = {
			youth = {
				unit_types = { "Quenoth Youth"},
				base = "F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Cloth Youth", colors = "FCFFDC,FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "BLUE_CLOTH_ASSASSIN", description = "Blue Cloth Assassin", colors = "9098AC,9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			fighter = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Quenoth Scout","Quenoth Pathfinder","Quenoth Outrider"},
				base = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CORRUPTED", description = "Tan Corrupted Cloth", colors = "C3B397,AF986E,897A5A,897A5A,5B4D32,46261F,46261F" },
					{ name = "BLUE_CLOTH", description = "Blue Cloth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			corrupted = {
				unit_types = { "Corrupted Quenoth Elf" },
				base = "C3B397,AF986E,897A5A,5B4D32,46261F",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B397,AF986E,897A5A,5B4D32,46261F" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,BCAE7E,A1966F,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,A1966F,827A54,574D34,382800" },
					{ name = "BLUE_CLOTH", description = "Blue Cloth", colors = "FCFFDC,89BBB5,8592B9,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,BCAE7E,A1966F,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,BFAFAB,A79790,6F615E,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,9C8B8B,8F7A7A,5C4744,372725" },
					{ name = "MAGE_CLOTH_HUMANMAGE", description = "Mage Cloth", colors = "b18134,8a5c2f,75462F,4e3430,2D2410"},
					{ name = "MAGE_CLOTH_REDMAGE", description = "Red Mage Cloth", colors = "C5956A,A9794F,876246,876246,4E3430"},
					{ name = "MAGE_CLOTH_ARCHMAGE", description = "Arch Mage Cloth", colors = "cabca2,a4977e,847860,635841,4b402b"},
					{ name = "MAGE_CLOTH_SILVER_MAGE", description = "Silver Mage Cloth", colors = "C0D7E0,90B3C0,7EA0A0,69788A,384062"},
					{ name = "MAGE_CLOTH_WHITE_MAGE", description = "White Mage Cloth", colors = "C0D7E0,90B3C0,607B90,607B90,425361"},
					{ name = "MAGE_CLOTH_MAGE_HOOD", description = "Mage Hood Cloth", colors = "BFBFBF,808080,8A949F,595959,4D4D4D"},
					{ name = "MAGE_CLOTH_SILVER_MAGE_HOOD", description = "Silver Mage Hood Cloth", colors = "D6D6D6,ABABAB,7A7A7A,7A7A7A,4D4D4D"},
					{ name = "MAGE_CLOTH_WHITE_MAGE_HOOD", description = "White Mage Hood Cloth", colors = "D3CBBB,8A949F,7A7A7A,3C454F,182830"},
					{ name = "MAGE_CLOTH_ELDER_MAGE", description = "Elder Mage Cloth", colors = "84401E,773311,5A2816,422110,2C1212"},
					{ name = "MAGE_CLOTH_ELDER_MAGE_HOOD", description = "Elder Mage Hood Cloth", colors = "A4977E,847860,635841,4B402B,2D2410"},
					{ name = "MAGE_CLOTH_DELFADOR_HTTT", description = "Delfador Cloth (HttT)", colors = "834D70,6C3064,470D55,38023E,22012D"},
					{ name = "MAGE_CLOTH_DELFADOR_HTTT_HOOD", description = "Delfador Hood Cloth (HttT)", colors = "3D8381,0C655B,07444A,032A32,031222"},
					{ name = "MAGE_CLOTH_DELFADOR_TDG3", description = "Delfador Cloth (TDG)", colors = "D4AE76,A78053,705638,384B47,212121"},
					{ name = "MAGE_CLOTH_DELFADOR_TDG4", description = "Delfador Cloth Grey (TDG)", colors = "D2D2D2,ABABAB,7A7A7A,4D4D4D,384B47"},
					
					{ name = "MAGE_CLOTH_DARKER", description = "Darker Cloth", colors = "818442,5c572c,41493a,41493a,212e1a"},
					{ name = "MAGE_CLOTH_GREENPURPLE", description = "Green Purple", colors = "93a167,6e6962,433455,433455,000001"},
					{ name = "MAGE_CLOTH_GREENRED", description = "Green Red", colors = "a19f7c,77744f,603b3a,603b3a,213b25"},
					{ name = "MAGE_CLOTH_BROWNREDPURPLE", description = "Brown Red Purple", colors = "826e2f,75491e,47213c,47213c,3F1519"},
					{ name = "MAGE_CLOTH_BROWNGREY", description = "Brown Grey", colors = "84754a,594e2f,47433f,47433f,2b2c16"},
					{ name = "MAGE_CLOTH_DARKBROWN", description = "Dark Brown", colors = "a08662,796755,423934,423934,221c1a"},
					{ name = "MAGE_CLOTH_LIGHTBROWN", description = "Light Brown", colors = "cda184,93614a,653618,653618,38160a"},
					{ name = "MAGE_CLOTH_BROWNGREYGREEN", description = "Brown Greygreen", colors = "8f6c61,6b4936,475044,475044,472b27"},
					{ name = "MAGE_CLOTH_ORANGEBLUE", description = "Orange Blue", colors = "d08159,8d697a,203c56,203c56,0d2b45"},
					{ name = "MAGE_CLOTH_BLUE", description = "Blue", colors = "50596e,273541,273a48,273a48,1d2336"},
					{ name = "MAGE_CLOTH_PURPLE", description = "Purple", colors = "9d7d95,684e67,50445a,50445a,322a3f"},
					{ name = "MAGE_CLOTH_GREY", description = "Grey", colors = "909090,6f6f6f,434343,434343,212121"},
					{ name = "MAGE_CLOTH_GREYBROWN", description = "Grey Brown", colors = "576d6d,8a7d5d,593f33,593f33,221e23"},
					{ name = "MAGE_CLOTH_GREYRED", description = "Grey Red", colors = "aaaa8e,717171,553939,553939,393939"},

					--faction clothing
					{ name = "MAGE_CLOTH_ORC_SHAMAN", description = "Orc Shaman", colors = "9AAB60,80813D,554C1B,524919,312B0A"},
					{ name = "MAGE_CLOTH_DUNEBURNER", description = "Dune Burner", colors = "D5D3A1,A09F84,7F7165,7F7165,453843"},
					{ name = "MAGE_CLOTH_DUNEHERBALIST", description = "Dune Herbalist", colors = "B8A641,798D63,535E2D,535E2D,303313"},
					{ name = "MAGE_CLOTH_DARKDUNE", description = "Dark Dune Cloth", colors = "e6e6cc,aaaa8e,717171,717171,393939"},
					{ name = "MAGE_CLOTH_LIGHTDUNE", description = "Light Dune Cloth", colors = "f6f6da,d5d3a1,bab98b,bab98b,4b4142"},
					{ name = "MAGE_CLOTH_ROGUE_MAGE", description = "Rogue Mage Cloth", colors = "636363,474747,3D3D00,2B281D,152114"},
					{ name = "MAGE_CLOTH_DARKADEPT", description = "Dark Adept Cloth", colors = "a5b89c,889880,506858,506858,283028"},
					{ name = "MAGE_CLOTH_ELVISHSHAMAN", description = "Elvish Shaman Cloth", colors = "efff9c,9cde5a,529439,529439,4f7229"},
					{ name = "MAGE_CLOTH_SAURIANAUGUR", description = "Saurian Augur Cloth", colors = "ffffff,9b9c92,515249,515249,17212c"},
					{ name = "MAGE_CLOTH_SAURIANORACLE", description = "Saurian Oracle Cloth", colors = "ffffff,8dc2c2,2c4c6c,2c4c6c,17212c"},
					{ name = "MAGE_CLOTH_SAURIANPROPHET", description = "Saurian Prophet Cloth", colors = "ffd44a,ffe59d,bf6d00,bf6d00,581802"},
					{ name = "MAGE_CLOTH_SAURIANSEER", description = "Saurian Seer Cloth", colors = "ffffff,ffd44a,bf6d00,bf6d00,581802"}
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
					{ name = "DEFAULT", description = "Default", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_ASSASSIN", description = "Blue Assassin", colors = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			assassin = {
				unit_types = { "Dark Assassin Uncloaked"},
				base = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
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
					{ name = "DEFAULT", description = "Default", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,A1966F,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "MYSTIC_SINGER", description = "Sun Singer Robe", colors = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F" },
					{ name = "MYSTIC_SYLPH", description = "Sun Sylph Robe", colors = "BBB389,BBB389,A29D66,877C43,6E5F24,51461B,362F10" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			druid = {
				unit_types = {	"Quenoth Druid" },
				base = "F1D8B3,C5C892,BCAE7E,8E9E72,A1966F,8E755C,536C4A,705B49,534338,2F3B30,02292C",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1D8B3,C5C892,BCAE7E,8E9E72,A1966F,8E755C,536C4A,705B49,534338,2F3B30,02292C" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338,534338,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,EDDDC8,EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800,382800,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,FCFFDC,BDD6E6,89BBB5,8592B9,8592B9,7C7F82,716565,4F4E3A,4F4E3A,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,705B49,534338,534338,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,C9C49E,A3AB5B,A3AB5B,898B5F,62754A,436448,494428,313926,313926,313926" },
					{ name = "MYSTIC_SINGER", description = "Sun Singer Robe", colors = "D8D4AC,D8D4AC,BDBE86,BDBE86,9FA563,898A40,726F20,545218,37370F,37370F,37370F" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,DBC5AF,C3A89F,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725,372725,372725" },
				},
			},
			shyde = {
				unit_types = {	"Quenoth Shyde" },
				base = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,A1966F,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SINGER", description = "Sun Singer Robe", colors = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			sun_singer = {
				unit_types = {	"Quenoth Sun Singer"},
				base = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,A1966F,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			sun_sylph = {
				unit_types = {	"Quenoth Sun Sylph"},
				base = "BBB389,A29D66,877C43,6E5F24,51461B,362F10",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "BBB389,A29D66,877C43,6E5F24,51461B,362F10" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,494428,313926" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,5C4744,372725" },
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
					{ name = "SYLPH", description = "Quenoth Sun Sylph", colors = "C8FCFE,B7D5B8,80B3B6,6786A2,2E6272" },
				},
			},
			sun_sylph = {
				unit_types = {	"Quenoth Sun Sylph"},
				base = "C8FCFE,E6E9BA,B7D5B8,80B3B6,6786A2,2E6272",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C8FCFE,E6E9BA,B7D5B8,80B3B6,6786A2,2E6272" },
					{ name = "SHYDE", description = "Quenoth Shyde", colors = "F9FDDF,E5FAB4,CEE4A5,BBC392,8C947B,5D6564" },
				},
			},
		}
	},
	{
		name = "quenoth_blue_metal", -- body_part
		description = "Blue Metal",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth"},
				base = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,8B9A88,585E74,4A2E62" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,B38E8E,8A4C4C,664B50,50363B,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,EACCC6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B398,C3B398,9D5875,800A12,61464B,3B2328" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "ffffff,c6e7e7,94c6c6,638c94,31526b,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "ececec,c6e7e7,a0b9B8,6e8387,3f505c,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "ffffff,c6e7e7,c5cfda,8f8895,3f505c,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "ffffff,ececec,c5cfda,66a5b2,31526b,3f505c"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "dbe6e8,adccd2,6799a2,3b6c75,213d43,182931"},
					{ name = "WITNESS", description = "Witness THoT", colors = "ffffff,b1ebec,79a9b3,4f6973,507059,1e3038"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "c3d2ef,9faecb,697895,3d4e69,293a55,11203d"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "ececec,a8a098,78655a,4d4541,2c2623,191919"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "dccaca,a9a5ab,858086,5a565a,332d32,2c2623"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ececcf,ccc2b9,a8a098,686058,3d3a37,151718"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "ffffff,dcdbdf,b6b4ba,7b7b85,53535b,34343a"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ececec,ccc2b9,a8a098,686058,524e46,3d3a37"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "ffffff,d1e997,c79962,996d24,af3c18,4c3324"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "ffffff,ffe38c,ffcc43,c67b02,804018,66211b"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "ffffff,ececec,d1b563,985810,512a13,2f1010"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "ffffff,ececec,ffcc43,af7a18,66211b,2f1010"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "ffffff,ccb066,aa6a28,804018,74341c,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "ffffff,d6d69c,938d6d,525239,39382d,2f1010"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "ffffff,fff5a0,d6bd8a,888670,5c6339,3d3411"},
					{ name = "ORC", description = "Orc", colors = "ffffd5,ffdd88,aa9966,7f774c,515138,2d2d2d"},
					{ name = "ASSASSIN", description = "Assassin", colors = "aac0a0,889880,506858,333d33,273631,1c1b21"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "f8f8a0,ccb066,aa6a28,74341c,304860,13262e"},
					{ name = "SKELETON", description = "Skeleton", colors = "ffffff,ffffce,d6d69c,c8d090,949473,525239"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "ffffff,e0e0e8,a3a7ab,73697e,5e3535,13262e"},
					{ name = "GHOST", description = "Ghost", colors = "ffffff,e0e0e8,a3a7ab,73697e,5e3535,283028"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "FFFFFF,D2BDA9,A3A7AB,73697E,91822F,5E3535"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "C3C1C1,9B9B9B,808080,484848,575757,1B1B1B"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "ffffff,abe5f6,69bbd9,2b52a9,121b5c,140036"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "ffffff,92d2bb,5bb19e,2d8569,125756,0a293b"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "ffffca,e6e6a6,c99462,835c35,573a14,352313"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "e8ebe7,d8c2ad,a28d62,896941,704d1f,47213c"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "e8edd5,a4b496,687862,313b31,252a23,121311"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "ffffff,e8edd5,a4b496,687862,313b31,252a23"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "ffffff,f2f2ea,d8c2ad,b3ae78,484b42,504137"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "cdf8f8,f8f8f8,d8c2ad,a28d62,425838,382218"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "cdf8f8,f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "fefefe,e5e2c2,d8ccad,a2a062,746e47,383618"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "f2f2ea,bdbebd,979fa9,4d586d,586164,404444"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "f8c8e8,db98c6,c878b0,905080,583068,301030"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "dbd2a4,dca993,de8685,ca7559,a85c4e,824143"},
					{ name = "IXTHALA", description = "Ixthala", colors = "ceccea,afacd9,8a81b3,5e699c,474a6b,222438"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "ecc3c1,cc8f8c,9d6b6f,7d303b,57373b,342a29"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "c3a89f,9c8b8b,8f7a7a,74605d,5c4744,372725"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "ffffff,d1d199,999955,554c26,2c1a09,090602"},
					{ name = "QUENOTH_RED", description = "Quenoth Red", colors = "ffffff,d9aea6,bd696e,9f2133,6a343b,3f2a31"},
					{ name = "QUENOTH_BLUE", description = "Quenoth Blue", colors = "e7ffce,a4f19d,78c1b2,4c91c9,4a707a,4a2e62"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "ffe6d6,dcd1ff,bbabed,6b57b9,5e4da1,1e1348"},
					{ name = "SCORPLING", description = "Scorpling", colors = "ffffff,dab6c4,c19fa5,a38583,7f615f,491d27"},
					{ name = "TENTACLE", description = "Tentacle", colors = "ffffff,cdcdcd,94999a,68676f,4a5661,311a16"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "d9ffff,adcfcf,87a1a1,5b7f8a,405f72,384247"},
					{ name = "SCARAB", description = "Scarab", colors = "ffffff,a5deab,74c67e,6ca26a,657e55,49613b"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "cde5fe,b6c8da,8384a3,5f607f,414c5e,1d2c49"},
					{ name = "CRAB", description = "Crab", colors = "ffffff,ddd3cd,b6aca4,917b4d,695937,261f10"},
					{ name = "BAT", description = "Vampire Bat", colors = "e5a490,ad7569,84495e,794d44,592b3b,1b1b1b"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "fb9254,ec7e3d,ba5520,963718,4d0000,350000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "999999,707070,4e4e4e,353535,292929,191919"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "cdcdcd,707070,4e4e4e,353535,292929,191919"},
					{ name = "ANT", description = "Ant", colors = "b1d2d6,90a8b0,907ab5,706993,505870,550022"},
					{ name = "FIREANT", description = "Fire Ant", colors = "ffe9b3,ffc843,ff4301,b02e00,821611,550022"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "eacfc2,bd9785,8b6c71,593a3f,33282a,1f1f1a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "fdffea,bdd6e6,a28d62,3d5a4b,454545,232323"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "ffffff,d6be6b,ad9748,88742f,5e4e1a,2f270a"},

					-- Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "d0cfbf,a8a8a8,747f73,616153,374336,172830" },

					-- earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "faf3c9,f6d39b,c5956a,a9794f,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "e6e6a6,c99462,835c35,573a14,352313,131414" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "d9ac79,bc946b,b3785b,844c1f,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "ffce39,c08008,985810,804018,582820,281010" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "cbbc7f,918460,60573c,3c3623,22221a,191911" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "ffd087,e2a76f,97663c,574d31,383838,3b3427" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "889880,797979,506858,333d33,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "d5d59b,aa9966,939372,515138,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "f8f8a0,ffffce,d6d69c,949473,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "f49ac1,ef5ba1,d6007f,9e005d,690039,55002a" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "f7df8e,e2cd67,f3a62c,af3c18,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "90F8B8,6ECD8F,50A070,327855,185030,102810" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "d3bcc1,a8a8a8,817d71,635054,454133,172830" }
				},
			},
			fighter = {
				unit_types = { 	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Corrupted Quenoth Elf"},
				base = "A4F19D,8B9A88,585E74,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "A4F19D,8B9A88,585E74,4A2E62" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,78C1B2,4C91C9,4A2E62" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,8A4C4C,664B50,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,D9AEA6,9F2133,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,BCA39D,CC8F8C,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B398,800A12,61464B,3B2328" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "c6e7e7,94c6c6,31526b,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "c6e7e7,a0b9B8,3f505c,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "c6e7e7,c5cfda,3f505c,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "ececec,c5cfda,31526b,3f505c"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "adccd2,6799a2,213d43,182931"},
					{ name = "WITNESS", description = "Witness THoT", colors = "b1ebec,79a9b3,507059,1e3038"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "9faecb,697895,293a55,11203d"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "a8a098,78655a,2c2623,191919"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "a9a5ab,858086,332d32,2c2623"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,a8a098,3d3a37,151718"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "dcdbdf,b6b4ba,53535b,34343a"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ccc2b9,a8a098,524e46,3d3a37"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "d1e997,c79962,af3c18,4c3324"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "ffe38c,ffcc43,804018,66211b"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "ececec,d1b563,512a13,2f1010"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "ececec,ffcc43,66211b,2f1010"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "ccb066,aa6a28,74341c,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "d6d69c,938d6d,39382d,2f1010"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "fff5a0,d6bd8a,5c6339,3d3411"},
					{ name = "ORC", description = "Orc", colors = "ffdd88,aa9966,515138,2d2d2d"},
					{ name = "ASSASSIN", description = "Assassin", colors = "889880,506858,273631,1c1b21"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "ccb066,aa6a28,304860,13262e"},
					{ name = "SKELETON", description = "Skeleton", colors = "ffffce,d6d69c,949473,525239"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "e0e0e8,a3a7ab,5e3535,13262e"},
					{ name = "GHOST", description = "Ghost", colors = "e0e0e8,a3a7ab,5e3535,283028"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "D2BDA9,A3A7AB,91822F,5E3535"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "9B9B9B,808080,575757,1B1B1B"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "abe5f6,69bbd9,121b5c,140036"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,5bb19e,125756,0a293b"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "e6e6a6,c99462,573a14,352313"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "d8c2ad,a28d62,704d1f,47213c"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "a4b496,687862,252a23,121311"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "e8edd5,a4b496,313b31,252a23"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "f2f2ea,d8c2ad,484b42,504137"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "f8f8f8,d8c2ad,425838,382218"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "f2f2ea,b3ae78,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "e5e2c2,d8ccad,746e47,383618"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "bdbebd,979fa9,586164,404444"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "db98c6,c878b0,583068,301030"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "dca993,de8685,a85c4e,824143"},
					{ name = "IXTHALA", description = "Ixthala", colors = "afacd9,8a81b3,474a6b,222438"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "cc8f8c,9d6b6f,57373b,342a29"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "9c8b8b,8f7a7a,5c4744,372725"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "d1d199,999955,2c1a09,090602"},
					{ name = "QUENOTH_RED", description = "Quenoth Red", colors = "d9aea6,bd696e,6a343b,3f2a31"},
					{ name = "QUENOTH_BLUE", description = "Quenoth Blue", colors = "a4f19d,78c1b2,4a707a,4a2e62"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "dcd1ff,bbabed,5e4da1,1e1348"},
					{ name = "SCORPLING", description = "Scorpling", colors = "dab6c4,c19fa5,7f615f,491d27"},
					{ name = "TENTACLE", description = "Tentacle", colors = "cdcdcd,94999a,4a5661,311a16"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "adcfcf,87a1a1,405f72,384247"},
					{ name = "SCARAB", description = "Scarab", colors = "a5deab,74c67e,657e55,49613b"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "b6c8da,8384a3,414c5e,1d2c49"},
					{ name = "CRAB", description = "Crab", colors = "ddd3cd,b6aca4,695937,261f10"},
					{ name = "BAT", description = "Vampire Bat", colors = "ad7569,84495e,592b3b,1b1b1b"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "ec7e3d,ba5520,4d0000,350000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "707070,4e4e4e,292929,191919"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "707070,4e4e4e,292929,191919"},
					{ name = "ANT", description = "Ant", colors = "90a8b0,907ab5,505870,550022"},
					{ name = "FIREANT", description = "Fire Ant", colors = "ffc843,ff4301,821611,550022"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "bd9785,8b6c71,33282a,1f1f1a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "bdd6e6,a28d62,454545,232323"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,ad9748,5e4e1a,2f270a"},

					-- Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "a8a8a8,747f73,374336,172830" },

					-- earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "f6d39b,c5956a,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "c99462,835c35,352313,131414" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "bc946b,b3785b,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "c08008,985810,582820,281010" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "918460,60573c,22221a,191911" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "e2a76f,97663c,383838,3b3427" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "797979,506858,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "aa9966,939372,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "ffffce,d6d69c,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "ef5ba1,d6007f,690039,55002a" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "e2cd67,f3a62c,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "6ECD8F,50A070,185030,102810" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "a8a8a8,817d71,454133,172830" }
				},
			},
			archer = {
				unit_types = { 	"Quenoth Scout",
								"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider","Quenoth Pathfinder"},
				base = "FCFFDC,FFE593,A4F19D,8B9A88,4C91C9,4A707A,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "FCFFDC,FFE593,A4F19D,8B9A88,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,585E74,585E74,4A2E62,4A2E62" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,B38E8E,8A4C4C,664B50,664B50,50363B,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,F1DDD9,EACCC6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,ECC3C1,BCA39D,9D6B6F,7D303B,57373B,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B398,C3B398,9D5875,800A12,61464B,3B2328,3B2328" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "FFFFFF,FFFFFF,C6E7E7,94C6C6,638C94,31526B,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "FFFFFF,ECECEC,C6E7E7,A0B9B8,6E8387,3F505C,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "FFFFFF,FFFFFF,C6E7E7,C5CFDA,8F8895,3F505C,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "FFFFFF,FFFFFF,ECECEC,C5CFDA,66A5B2,31526B,3F505C"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "DBE6E8,DBE6E8,ADCCD2,6799A2,3B6C75,213D43,182931"},
					{ name = "WITNESS", description = "Witness THoT", colors = "FFFFFF,FFFFFF,B1EBEC,79A9B3,4F6973,507059,1E3038"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "C3D2EF,C3D2EF,9FAECB,697895,3D4E69,293A55,11203D"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "ECECEC,ECECEC,A8A098,78655A,4D4541,2C2623,191919"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "DCCACA,DCCACA,A9A5AB,858086,5A565A,332D32,2C2623"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ECECCF,ECECCF,CCC2B9,A8A098,686058,3D3A37,151718"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "FFFFFF,FFFFFF,DCDBDF,B6B4BA,7B7B85,53535B,34343A"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ECECEC,ECECEC,CCC2B9,A8A098,686058,524E46,3D3A37"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "FFFFFF,FFFFFF,D1E997,C79962,996D24,AF3C18,4C3324"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "FFFFFF,FFFFFF,FFE38C,FFCC43,C67B02,804018,66211B"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "FFFFFF,FFFFFF,ECECEC,D1B563,985810,512A13,2F1010"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "FFFFFF,FFFFFF,ECECEC,FFCC43,AF7A18,66211B,2F1010"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "FFFFFF,FFFFFF,CCB066,AA6A28,804018,74341C,13262E"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "FFFFFF,FFFFFF,D6D69C,938D6D,525239,39382D,2F1010"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "FFFFFF,FFFFFF,FFF5A0,D6BD8A,888670,5C6339,3D3411"},
					{ name = "ORC", description = "Orc", colors = "FFFFD5,FFFFD5,FFDD88,AA9966,7F774C,515138,2D2D2D"},
					{ name = "ASSASSIN", description = "Assassin", colors = "AAC0A0,AAC0A0,889880,506858,333D33,273631,1C1B21"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "F8F8A0,F8F8A0,CCB066,AA6A28,74341C,304860,13262E"},
					{ name = "SKELETON", description = "Skeleton", colors = "FFFFFF,FFFFFF,FFFFCE,D6D69C,C8D090,949473,525239"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "FFFFFF,FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,13262E"},
					{ name = "GHOST", description = "Ghost", colors = "FFFFFF,FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,283028"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "FFFFFF,FFFFFF,D2BDA9,A3A7AB,73697E,91822F,5E3535"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "C3C1C1,C3C1C1,9B9B9B,808080,484848,575757,1B1B1B"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "FFFFFF,FFFFFF,ABE5F6,69BBD9,2B52A9,121B5C,140036"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "FFFFFF,FFFFFF,92D2BB,5BB19E,2D8569,125756,0A293B"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "FFFFCA,FFFFCA,E6E6A6,C99462,835C35,573A14,352313"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "E8EBE7,E8EBE7,D8C2AD,A28D62,896941,704D1F,47213C"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "E8EDD5,E8EDD5,A4B496,687862,313B31,252A23,121311"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "FFFFFF,FFFFFF,E8EDD5,A4B496,687862,313B31,252A23"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "FFFFFF,FFFFFF,F2F2EA,D8C2AD,B3AE78,484B42,504137"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "CDF8F8,CDF8F8,F8F8F8,D8C2AD,A28D62,425838,382218"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "cdf8f8,f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "FEFEFE,FEFEFE,E5E2C2,D8CCAD,A2A062,746E47,383618"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "F2F2EA,F2F2EA,BDBEBD,979FA9,4D586D,586164,404444"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "F8C8E8,F8C8E8,DB98C6,C878B0,905080,583068,301030"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "DBD2A4,DBD2A4,DCA993,DE8685,CA7559,A85C4E,824143"},
					{ name = "IXTHALA", description = "Ixthala", colors = "CECCEA,CECCEA,AFACD9,8A81B3,5E699C,474A6B,222438"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "ECC3C1,ECC3C1,CC8F8C,9D6B6F,7D303B,57373B,342A29"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "C3A89F,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "FFFFFF,FFFFFF,D1D199,999955,554C26,2C1A09,090602"},
					{ name = "QUENOTH_RED", description = "Quenoth Red", colors = "FFFFFF,FFFFFF,D9AEA6,BD696E,9F2133,6A343B,3F2A31"},
					{ name = "QUENOTH_BLUE", description = "Quenoth Blue", colors = "E7FFCE,E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "FFE6D6,FFE6D6,DCD1FF,BBABED,6B57B9,5E4DA1,1E1348"},
					{ name = "SCORPLING", description = "Scorpling", colors = "FFFFFF,FFFFFF,DAB6C4,C19FA5,A38583,7F615F,491D27"},
					{ name = "TENTACLE", description = "Tentacle", colors = "FFFFFF,FFFFFF,CDCDCD,94999A,68676F,4A5661,311A16"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "D9FFFF,D9FFFF,ADCFCF,87A1A1,5B7F8A,405F72,384247"},
					{ name = "SCARAB", description = "Scarab", colors = "FFFFFF,FFFFFF,A5DEAB,74C67E,6CA26A,657E55,49613B"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "CDE5FE,CDE5FE,B6C8DA,8384A3,5F607F,414C5E,1D2C49"},
					{ name = "CRAB", description = "Crab", colors = "FFFFFF,FFFFFF,DDD3CD,B6ACA4,917B4D,695937,261F10"},
					{ name = "BAT", description = "Vampire Bat", colors = "E5A490,E5A490,AD7569,84495E,794D44,592B3B,1B1B1B"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "FB9254,FB9254,EC7E3D,BA5520,963718,4D0000,350000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "999999,999999,707070,4E4E4E,353535,292929,191919"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "CDCDCD,CDCDCD,707070,4E4E4E,353535,292929,191919"},
					{ name = "ANT", description = "Ant", colors = "B1D2D6,B1D2D6,90A8B0,907AB5,706993,505870,550022"},
					{ name = "FIREANT", description = "Fire Ant", colors = "FFE9B3,FFE9B3,FFC843,FF4301,B02E00,821611,550022"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "eacfc2,eacfc2,bd9785,8b6c71,593a3f,33282a,1f1f1a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "fdffea,fdffea,bdd6e6,a28d62,3d5a4b,454545,232323"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "ffffff,ffffff,d6be6b,ad9748,88742f,5e4e1a,2f270a"},

					--Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "D0CFBF,D0CFBF,A8A8A8,747F73,616153,374336,172830" },

					--earthen/stone colors for the randomizer
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "FAF3C9,FAF3C9,F6D39B,C5956A,A9794F,7B4231,422110" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "E6E6A6,E6E6A6,C99462,835C35,573A14,352313,131414" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "D9AC79,D9AC79,BC946B,B3785B,844C1F,462D1F,201810" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "FFCE39,FFCE39,C08008,985810,804018,582820,281010" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "CBBC7F,CBBC7F,918460,60573C,3C3623,22221A,191911" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "FFD087,FFD087,E2A76F,97663C,574D31,383838,3B3427" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "889880,889880,797979,506858,333D33,22221E,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "D5D59B,D5D59B,AA9966,939372,515138,2D2D2D,172830" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "F8F8A0,F8F8A0,FFFFCE,D6D69C,949473,525239,2D2E22" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "F49AC1,F49AC1,EF5BA1,D6007F,9E005D,690039,55002A" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "F7DF8E,F7DF8E,E2CD67,F3A62C,AF3C18,8E1A12,6F282B" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "90F8B8,90F8B8,6ECD8F,50A070,327855,185030,102810" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "d3bcc1,d3bcc1,a8a8a8,817d71,635054,454133,172830" }
				},
			},
			tauroch = {
				unit_types = {	"Tauroch Rider",
								"Tauroch Vanguard","Tauroch Flagbearer",
								"Tauroch Stalwart","Tauroch Protector"},
				base = "FFE593,A4F19D,78C1B2,8B9A88,4C91C9,BDD6E6,89BBB5,8592B9,4A707A,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "FFE593,A4F19D,78C1B2,8B9A88,4C91C9,BDD6E6,89BBB5,8592B9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,8B9A88,8B9A88,585E74,585E74,585E74,4A2E62,4A2E62" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,9F2133,6A343B,6A343B,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B398,C3B398,9D5875,9D5875,800A12,800A12,61464B,61464B,3B2328,3B2328" },
				},
			},
		}
	},
	{
		name = "quenoth_red_metal", -- body_part
		description = "Red Metal",
		data = {
			youth = {
				unit_types = { "Quenoth Youth"},
				base = "B38E8E,8A4C4C,664B50,50363B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "B38E8E,8A4C4C,664B50,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,D9AEA6,9F2133,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,BCA39D,CC8F8C,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,78C1B2,4C91C9,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,8B9A88,585E74,4A2E62" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B398,800A12,61464B,3B2328" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "c6e7e7,94c6c6,31526b,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "c6e7e7,a0b9B8,3f505c,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "c6e7e7,c5cfda,3f505c,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "ececec,c5cfda,31526b,3f505c"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "adccd2,6799a2,213d43,182931"},
					{ name = "WITNESS", description = "Witness THoT", colors = "b1ebec,79a9b3,507059,1e3038"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "9faecb,697895,293a55,11203d"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "a8a098,78655a,2c2623,191919"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "a9a5ab,858086,332d32,2c2623"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,a8a098,3d3a37,151718"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "dcdbdf,b6b4ba,53535b,34343a"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ccc2b9,a8a098,524e46,3d3a37"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "d1e997,c79962,af3c18,4c3324"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "ffe38c,ffcc43,804018,66211b"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "ececec,d1b563,512a13,2f1010"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "ececec,ffcc43,66211b,2f1010"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "ccb066,aa6a28,74341c,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "d6d69c,938d6d,39382d,2f1010"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "fff5a0,d6bd8a,5c6339,3d3411"},
					{ name = "ORC", description = "Orc", colors = "ffdd88,aa9966,515138,2d2d2d"},
					{ name = "ASSASSIN", description = "Assassin", colors = "889880,506858,273631,1c1b21"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "ccb066,aa6a28,304860,13262e"},
					{ name = "SKELETON", description = "Skeleton", colors = "ffffce,d6d69c,949473,525239"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "e0e0e8,a3a7ab,5e3535,13262e"},
					{ name = "GHOST", description = "Ghost", colors = "e0e0e8,a3a7ab,5e3535,283028"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "D2BDA9,A3A7AB,91822F,5E3535"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "9B9B9B,808080,575757,1B1B1B"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "abe5f6,69bbd9,121b5c,140036"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,5bb19e,125756,0a293b"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "e6e6a6,c99462,573a14,352313"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "d8c2ad,a28d62,704d1f,47213c"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "a4b496,687862,252a23,121311"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "e8edd5,a4b496,313b31,252a23"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "f2f2ea,d8c2ad,484b42,504137"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "f8f8f8,d8c2ad,425838,382218"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "f2f2ea,b3ae78,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "e5e2c2,d8ccad,746e47,383618"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "bdbebd,979fa9,586164,404444"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "db98c6,c878b0,583068,301030"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "dca993,de8685,a85c4e,824143"},
					{ name = "IXTHALA", description = "Ixthala", colors = "afacd9,8a81b3,474a6b,222438"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "cc8f8c,9d6b6f,57373b,342a29"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "9c8b8b,8f7a7a,5c4744,372725"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "d1d199,999955,2c1a09,090602"},
					{ name = "QUENOTH_RED", description = "Quenoth Red", colors = "d9aea6,bd696e,6a343b,3f2a31"},
					{ name = "QUENOTH_BLUE", description = "Quenoth Blue", colors = "a4f19d,78c1b2,4a707a,4a2e62"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "dcd1ff,bbabed,5e4da1,1e1348"},
					{ name = "SCORPLING", description = "Scorpling", colors = "dab6c4,c19fa5,7f615f,491d27"},
					{ name = "TENTACLE", description = "Tentacle", colors = "cdcdcd,94999a,4a5661,311a16"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "adcfcf,87a1a1,405f72,384247"},
					{ name = "SCARAB", description = "Scarab", colors = "a5deab,74c67e,657e55,49613b"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "b6c8da,8384a3,414c5e,1d2c49"},
					{ name = "CRAB", description = "Crab", colors = "ddd3cd,b6aca4,695937,261f10"},
					{ name = "BAT", description = "Vampire Bat", colors = "ad7569,84495e,592b3b,1b1b1b"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "ec7e3d,ba5520,4d0000,350000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "707070,4e4e4e,292929,191919"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "707070,4e4e4e,292929,191919"},
					{ name = "ANT", description = "Ant", colors = "90a8b0,907ab5,505870,550022"},
					{ name = "FIREANT", description = "Fire Ant", colors = "ffc843,ff4301,821611,550022"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "bd9785,8b6c71,33282a,1f1f1a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "bdd6e6,a28d62,454545,232323"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,ad9748,5e4e1a,2f270a"},

					-- Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "a8a8a8,747f73,374336,172830" },

					-- earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "f6d39b,c5956a,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "c99462,835c35,352313,131414" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "bc946b,b3785b,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "c08008,985810,582820,281010" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "918460,60573c,22221a,191911" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "e2a76f,97663c,383838,3b3427" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "797979,506858,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "aa9966,939372,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "ffffce,d6d69c,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "ef5ba1,d6007f,690039,55002a" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "e2cd67,f3a62c,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "6ECD8F,50A070,185030,102810" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "a8a8a8,817d71,454133,172830" }
				},
			},
			fighter = {
				unit_types = { 	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Corrupted Quenoth Elf",
								"Quenoth Scout","Quenoth Pathfinder"},
				base = "F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,B38E8E,8A4C4C,8A4C4C,664B50,50363B,50363B" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,57373B,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,8B9A88,585E74,585E74,4A2E62" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B398,C3B398,9D5875,800A12,61464B,61464B,3B2328" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "FFFFFF,FFFFFF,C6E7E7,94C6C6,638C94,31526B,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "FFFFFF,ECECEC,C6E7E7,A0B9B8,6E8387,3F505C,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "FFFFFF,FFFFFF,C6E7E7,C5CFDA,8F8895,3F505C,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "FFFFFF,FFFFFF,ECECEC,C5CFDA,66A5B2,31526B,3F505C"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "DBE6E8,DBE6E8,ADCCD2,6799A2,3B6C75,213D43,182931"},
					{ name = "WITNESS", description = "Witness THoT", colors = "FFFFFF,FFFFFF,B1EBEC,79A9B3,4F6973,507059,1E3038"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "C3D2EF,C3D2EF,9FAECB,697895,3D4E69,293A55,11203D"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "ECECEC,ECECEC,A8A098,78655A,4D4541,2C2623,191919"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "DCCACA,DCCACA,A9A5AB,858086,5A565A,332D32,2C2623"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ECECCF,ECECCF,CCC2B9,A8A098,686058,3D3A37,151718"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "FFFFFF,FFFFFF,DCDBDF,B6B4BA,7B7B85,53535B,34343A"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ECECEC,ECECEC,CCC2B9,A8A098,686058,524E46,3D3A37"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "FFFFFF,FFFFFF,D1E997,C79962,996D24,AF3C18,4C3324"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "FFFFFF,FFFFFF,FFE38C,FFCC43,C67B02,804018,66211B"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "FFFFFF,FFFFFF,ECECEC,D1B563,985810,512A13,2F1010"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "FFFFFF,FFFFFF,ECECEC,FFCC43,AF7A18,66211B,2F1010"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "FFFFFF,FFFFFF,CCB066,AA6A28,804018,74341C,13262E"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "FFFFFF,FFFFFF,D6D69C,938D6D,525239,39382D,2F1010"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "FFFFFF,FFFFFF,FFF5A0,D6BD8A,888670,5C6339,3D3411"},
					{ name = "ORC", description = "Orc", colors = "FFFFD5,FFFFD5,FFDD88,AA9966,7F774C,515138,2D2D2D"},
					{ name = "ASSASSIN", description = "Assassin", colors = "AAC0A0,AAC0A0,889880,506858,333D33,273631,1C1B21"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "F8F8A0,F8F8A0,CCB066,AA6A28,74341C,304860,13262E"},
					{ name = "SKELETON", description = "Skeleton", colors = "FFFFFF,FFFFFF,FFFFCE,D6D69C,C8D090,949473,525239"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "FFFFFF,FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,13262E"},
					{ name = "GHOST", description = "Ghost", colors = "FFFFFF,FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,283028"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "FFFFFF,FFFFFF,D2BDA9,A3A7AB,73697E,91822F,5E3535"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "C3C1C1,C3C1C1,9B9B9B,808080,484848,575757,1B1B1B"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "FFFFFF,FFFFFF,ABE5F6,69BBD9,2B52A9,121B5C,140036"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "FFFFFF,FFFFFF,92D2BB,5BB19E,2D8569,125756,0A293B"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "FFFFCA,FFFFCA,E6E6A6,C99462,835C35,573A14,352313"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "E8EBE7,E8EBE7,D8C2AD,A28D62,896941,704D1F,47213C"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "E8EDD5,E8EDD5,A4B496,687862,313B31,252A23,121311"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "FFFFFF,FFFFFF,E8EDD5,A4B496,687862,313B31,252A23"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "FFFFFF,FFFFFF,F2F2EA,D8C2AD,B3AE78,484B42,504137"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "CDF8F8,CDF8F8,F8F8F8,D8C2AD,A28D62,425838,382218"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "cdf8f8,f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "FEFEFE,FEFEFE,E5E2C2,D8CCAD,A2A062,746E47,383618"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "F2F2EA,F2F2EA,BDBEBD,979FA9,4D586D,586164,404444"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "F8C8E8,F8C8E8,DB98C6,C878B0,905080,583068,301030"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "DBD2A4,DBD2A4,DCA993,DE8685,CA7559,A85C4E,824143"},
					{ name = "IXTHALA", description = "Ixthala", colors = "CECCEA,CECCEA,AFACD9,8A81B3,5E699C,474A6B,222438"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "ECC3C1,ECC3C1,CC8F8C,9D6B6F,7D303B,57373B,342A29"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "C3A89F,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "FFFFFF,FFFFFF,D1D199,999955,554C26,2C1A09,090602"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "FFE6D6,FFE6D6,DCD1FF,BBABED,6B57B9,5E4DA1,1E1348"},
					{ name = "SCORPLING", description = "Scorpling", colors = "FFFFFF,FFFFFF,DAB6C4,C19FA5,A38583,7F615F,491D27"},
					{ name = "TENTACLE", description = "Tentacle", colors = "FFFFFF,FFFFFF,CDCDCD,94999A,68676F,4A5661,311A16"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "D9FFFF,D9FFFF,ADCFCF,87A1A1,5B7F8A,405F72,384247"},
					{ name = "SCARAB", description = "Scarab", colors = "FFFFFF,FFFFFF,A5DEAB,74C67E,6CA26A,657E55,49613B"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "CDE5FE,CDE5FE,B6C8DA,8384A3,5F607F,414C5E,1D2C49"},
					{ name = "CRAB", description = "Crab", colors = "FFFFFF,FFFFFF,DDD3CD,B6ACA4,917B4D,695937,261F10"},
					{ name = "BAT", description = "Vampire Bat", colors = "E5A490,E5A490,AD7569,84495E,794D44,592B3B,1B1B1B"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "FB9254,FB9254,EC7E3D,BA5520,963718,4D0000,350000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "999999,999999,707070,4E4E4E,353535,292929,191919"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "CDCDCD,CDCDCD,707070,4E4E4E,353535,292929,191919"},
					{ name = "ANT", description = "Ant", colors = "B1D2D6,B1D2D6,90A8B0,907AB5,706993,505870,550022"},
					{ name = "FIREANT", description = "Fire Ant", colors = "FFE9B3,FFE9B3,FFC843,FF4301,B02E00,821611,550022"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "eacfc2,eacfc2,bd9785,8b6c71,593a3f,33282a,1f1f1a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "fdffea,fdffea,bdd6e6,a28d62,3d5a4b,454545,232323"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "ffffff,ffffff,d6be6b,ad9748,88742f,5e4e1a,2f270a"},

					--Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "D0CFBF,D0CFBF,A8A8A8,747F73,616153,374336,172830" },

					--earthen/stone colors for the randomizer
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "FAF3C9,FAF3C9,F6D39B,C5956A,A9794F,7B4231,422110" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "E6E6A6,E6E6A6,C99462,835C35,573A14,352313,131414" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "D9AC79,D9AC79,BC946B,B3785B,844C1F,462D1F,201810" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "FFCE39,FFCE39,C08008,985810,804018,582820,281010" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "CBBC7F,CBBC7F,918460,60573C,3C3623,22221A,191911" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "FFD087,FFD087,E2A76F,97663C,574D31,383838,3B3427" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "889880,889880,797979,506858,333D33,22221E,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "D5D59B,D5D59B,AA9966,939372,515138,2D2D2D,172830" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "F8F8A0,F8F8A0,FFFFCE,D6D69C,949473,525239,2D2E22" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "F49AC1,F49AC1,EF5BA1,D6007F,9E005D,690039,55002A" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "F7DF8E,F7DF8E,E2CD67,F3A62C,AF3C18,8E1A12,6F282B" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "90F8B8,90F8B8,6ECD8F,50A070,327855,185030,102810" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "d3bcc1,d3bcc1,a8a8a8,817d71,635054,454133,172830" }
				},
			},
			assassin = {
				unit_types = { "Dark Assassin Uncloaked" },
				base = "BCA39D,CC8F8C,9D6B6F,7D303B,57373B,3F2A31",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "BCA39D,CC8F8C,9D6B6F,7D303B,57373B,3F2A31" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "8A4C4C,8A4C4C,664B50,664B50,50363B,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "A4F19D,78C1B2,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "8B9A88,8B9A88,585E74,585E74,4A2E62,4A2E62" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "9D5875,9D5875,800A12,61464B,3B2328,3B2328" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "FFFFFF,FFFFFF,C6E7E7,94C6C6,638C94,31526B,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "FFFFFF,ECECEC,C6E7E7,A0B9B8,6E8387,3F505C,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "FFFFFF,FFFFFF,C6E7E7,C5CFDA,8F8895,3F505C,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "FFFFFF,FFFFFF,ECECEC,C5CFDA,66A5B2,31526B,3F505C"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "DBE6E8,DBE6E8,ADCCD2,6799A2,3B6C75,213D43,182931"},
					{ name = "WITNESS", description = "Witness THoT", colors = "FFFFFF,FFFFFF,B1EBEC,79A9B3,4F6973,507059,1E3038"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "C3D2EF,C3D2EF,9FAECB,697895,3D4E69,293A55,11203D"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "ECECEC,ECECEC,A8A098,78655A,4D4541,2C2623,191919"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "DCCACA,DCCACA,A9A5AB,858086,5A565A,332D32,2C2623"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ECECCF,ECECCF,CCC2B9,A8A098,686058,3D3A37,151718"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "FFFFFF,FFFFFF,DCDBDF,B6B4BA,7B7B85,53535B,34343A"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ECECEC,ECECEC,CCC2B9,A8A098,686058,524E46,3D3A37"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "FFFFFF,FFFFFF,D1E997,C79962,996D24,AF3C18,4C3324"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "FFFFFF,FFFFFF,FFE38C,FFCC43,C67B02,804018,66211B"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "FFFFFF,FFFFFF,ECECEC,D1B563,985810,512A13,2F1010"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "FFFFFF,FFFFFF,ECECEC,FFCC43,AF7A18,66211B,2F1010"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "FFFFFF,FFFFFF,CCB066,AA6A28,804018,74341C,13262E"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "FFFFFF,FFFFFF,D6D69C,938D6D,525239,39382D,2F1010"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "FFFFFF,FFFFFF,FFF5A0,D6BD8A,888670,5C6339,3D3411"},
					{ name = "ORC", description = "Orc", colors = "FFFFD5,FFFFD5,FFDD88,AA9966,7F774C,515138,2D2D2D"},
					{ name = "ASSASSIN", description = "Assassin", colors = "AAC0A0,AAC0A0,889880,506858,333D33,273631,1C1B21"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "F8F8A0,F8F8A0,CCB066,AA6A28,74341C,304860,13262E"},
					{ name = "SKELETON", description = "Skeleton", colors = "FFFFFF,FFFFFF,FFFFCE,D6D69C,C8D090,949473,525239"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "FFFFFF,FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,13262E"},
					{ name = "GHOST", description = "Ghost", colors = "FFFFFF,FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,283028"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "FFFFFF,FFFFFF,D2BDA9,A3A7AB,73697E,91822F,5E3535"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "C3C1C1,C3C1C1,9B9B9B,808080,484848,575757,1B1B1B"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "FFFFFF,FFFFFF,ABE5F6,69BBD9,2B52A9,121B5C,140036"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "FFFFFF,FFFFFF,92D2BB,5BB19E,2D8569,125756,0A293B"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "FFFFCA,FFFFCA,E6E6A6,C99462,835C35,573A14,352313"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "E8EBE7,E8EBE7,D8C2AD,A28D62,896941,704D1F,47213C"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "E8EDD5,E8EDD5,A4B496,687862,313B31,252A23,121311"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "FFFFFF,FFFFFF,E8EDD5,A4B496,687862,313B31,252A23"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "FFFFFF,FFFFFF,F2F2EA,D8C2AD,B3AE78,484B42,504137"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "CDF8F8,CDF8F8,F8F8F8,D8C2AD,A28D62,425838,382218"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "cdf8f8,f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "FEFEFE,FEFEFE,E5E2C2,D8CCAD,A2A062,746E47,383618"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "F2F2EA,F2F2EA,BDBEBD,979FA9,4D586D,586164,404444"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "F8C8E8,F8C8E8,DB98C6,C878B0,905080,583068,301030"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "DBD2A4,DBD2A4,DCA993,DE8685,CA7559,A85C4E,824143"},
					{ name = "IXTHALA", description = "Ixthala", colors = "CECCEA,CECCEA,AFACD9,8A81B3,5E699C,474A6B,222438"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "ECC3C1,ECC3C1,CC8F8C,9D6B6F,7D303B,57373B,342A29"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "C3A89F,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "FFFFFF,FFFFFF,D1D199,999955,554C26,2C1A09,090602"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "FFE6D6,FFE6D6,DCD1FF,BBABED,6B57B9,5E4DA1,1E1348"},
					{ name = "SCORPLING", description = "Scorpling", colors = "FFFFFF,FFFFFF,DAB6C4,C19FA5,A38583,7F615F,491D27"},
					{ name = "TENTACLE", description = "Tentacle", colors = "FFFFFF,FFFFFF,CDCDCD,94999A,68676F,4A5661,311A16"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "D9FFFF,D9FFFF,ADCFCF,87A1A1,5B7F8A,405F72,384247"},
					{ name = "SCARAB", description = "Scarab", colors = "FFFFFF,FFFFFF,A5DEAB,74C67E,6CA26A,657E55,49613B"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "CDE5FE,CDE5FE,B6C8DA,8384A3,5F607F,414C5E,1D2C49"},
					{ name = "CRAB", description = "Crab", colors = "FFFFFF,FFFFFF,DDD3CD,B6ACA4,917B4D,695937,261F10"},
					{ name = "BAT", description = "Vampire Bat", colors = "E5A490,E5A490,AD7569,84495E,794D44,592B3B,1B1B1B"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "FB9254,FB9254,EC7E3D,BA5520,963718,4D0000,350000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "999999,999999,707070,4E4E4E,353535,292929,191919"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "CDCDCD,CDCDCD,707070,4E4E4E,353535,292929,191919"},
					{ name = "ANT", description = "Ant", colors = "B1D2D6,B1D2D6,90A8B0,907AB5,706993,505870,550022"},
					{ name = "FIREANT", description = "Fire Ant", colors = "FFE9B3,FFE9B3,FFC843,FF4301,B02E00,821611,550022"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "eacfc2,eacfc2,bd9785,8b6c71,593a3f,33282a,1f1f1a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "fdffea,fdffea,bdd6e6,a28d62,3d5a4b,454545,232323"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "ffffff,ffffff,d6be6b,ad9748,88742f,5e4e1a,2f270a"},

					--Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "D0CFBF,D0CFBF,A8A8A8,747F73,616153,374336,172830" },

					--earthen/stone colors for the randomizer
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "FAF3C9,FAF3C9,F6D39B,C5956A,A9794F,7B4231,422110" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "E6E6A6,E6E6A6,C99462,835C35,573A14,352313,131414" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "D9AC79,D9AC79,BC946B,B3785B,844C1F,462D1F,201810" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "FFCE39,FFCE39,C08008,985810,804018,582820,281010" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "CBBC7F,CBBC7F,918460,60573C,3C3623,22221A,191911" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "FFD087,FFD087,E2A76F,97663C,574D31,383838,3B3427" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "889880,889880,797979,506858,333D33,22221E,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "D5D59B,D5D59B,AA9966,939372,515138,2D2D2D,172830" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "F8F8A0,F8F8A0,FFFFCE,D6D69C,949473,525239,2D2E22" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "F49AC1,F49AC1,EF5BA1,D6007F,9E005D,690039,55002A" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "F7DF8E,F7DF8E,E2CD67,F3A62C,AF3C18,8E1A12,6F282B" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "90F8B8,90F8B8,6ECD8F,50A070,327855,185030,102810" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "d3bcc1,d3bcc1,a8a8a8,817d71,635054,454133,172830" }
				},
			},
		}
	},
	{
		name = "quenoth_corrupted_red_metal", -- body_part
		description = "Corrupted Red Metal",
		data = {
			corrupted = {
				unit_types = { "Corrupted Quenoth Elf" },
				base = "C3B398,9D5875,800A12,61464B,3B2328", --replace C3B397 with C3B398 
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B398,9D5875,800A12,61464B,3B2328" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,8A4C4C,664B50,664B50,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,EACCC6,BD696E,9F2133,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,BCA39D,CC8F8C,57373B,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,A4F19D,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,8B9A88,8B9A88,585E74,4A2E62" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "c6e7e7,94c6c6,638c94,31526b,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "c6e7e7,a0b9B8,6e8387,3f505c,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "c6e7e7,c5cfda,8f8895,3f505c,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "ececec,c5cfda,66a5b2,31526b,3f505c"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "adccd2,6799a2,3b6c75,213d43,182931"},
					{ name = "WITNESS", description = "Witness THoT", colors = "b1ebec,79a9b3,4f6973,507059,1e3038"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "9faecb,697895,3d4e69,293a55,11203d"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "a8a098,78655a,4d4541,2c2623,191919"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "a9a5ab,858086,5a565a,332d32,2c2623"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,a8a098,686058,3d3a37,151718"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "dcdbdf,b6b4ba,7b7b85,53535b,34343a"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ccc2b9,a8a098,686058,524e46,3d3a37"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "d1e997,c79962,996d24,af3c18,4c3324"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "ffe38c,ffcc43,c67b02,804018,66211b"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "ececec,d1b563,985810,512a13,2f1010"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "ececec,ffcc43,af7a18,66211b,2f1010"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "ccb066,aa6a28,804018,74341c,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "d6d69c,938d6d,525239,39382d,2f1010"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "fff5a0,d6bd8a,888670,5c6339,3d3411"},
					{ name = "ORC", description = "Orc", colors = "ffdd88,aa9966,7f774c,515138,2d2d2d"},
					{ name = "ASSASSIN", description = "Assassin", colors = "889880,506858,333d33,273631,1c1b21"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "ccb066,aa6a28,74341c,304860,13262e"},
					{ name = "SKELETON", description = "Skeleton", colors = "ffffce,d6d69c,c8d090,949473,525239"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "e0e0e8,a3a7ab,73697e,5e3535,13262e"},
					{ name = "GHOST", description = "Ghost", colors = "e0e0e8,a3a7ab,73697e,5e3535,283028"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "D2BDA9,A3A7AB,73697E,91822F,5E3535"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "9B9B9B,808080,484848,575757,1B1B1B"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "abe5f6,69bbd9,2b52a9,121b5c,140036"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,5bb19e,2d8569,125756,0a293b"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "e6e6a6,c99462,835c35,573a14,352313"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "d8c2ad,a28d62,896941,704d1f,47213c"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "a4b496,687862,313b31,252a23,121311"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "e8edd5,a4b496,687862,313b31,252a23"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "f2f2ea,d8c2ad,b3ae78,484b42,504137"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "f8f8f8,d8c2ad,a28d62,425838,382218"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "e5e2c2,d8ccad,a2a062,746e47,383618"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "bdbebd,979fa9,4d586d,586164,404444"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "db98c6,c878b0,905080,583068,301030"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "dca993,de8685,ca7559,a85c4e,824143"},
					{ name = "IXTHALA", description = "Ixthala", colors = "afacd9,8a81b3,5e699c,474a6b,222438"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "cc8f8c,9d6b6f,7d303b,57373b,342a29"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "9c8b8b,8f7a7a,74605d,5c4744,372725"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "d1d199,999955,554c26,2c1a09,090602"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "dcd1ff,bbabed,6b57b9,5e4da1,1e1348"},
					{ name = "SCORPLING", description = "Scorpling", colors = "dab6c4,c19fa5,a38583,7f615f,491d27"},
					{ name = "TENTACLE", description = "Tentacle", colors = "cdcdcd,94999a,68676f,4a5661,311a16"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "adcfcf,87a1a1,5b7f8a,405f72,384247"},
					{ name = "SCARAB", description = "Scarab", colors = "a5deab,74c67e,6ca26a,657e55,49613b"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "b6c8da,8384a3,5f607f,414c5e,1d2c49"},
					{ name = "CRAB", description = "Crab", colors = "ddd3cd,b6aca4,917b4d,695937,261f10"},
					{ name = "BAT", description = "Vampire Bat", colors = "ad7569,84495e,794d44,592b3b,1b1b1b"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "ec7e3d,ba5520,963718,4d0000,350000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "707070,4e4e4e,353535,292929,191919"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "707070,4e4e4e,353535,292929,191919"},
					{ name = "ANT", description = "Ant", colors = "90a8b0,907ab5,706993,505870,550022"},
					{ name = "FIREANT", description = "Fire Ant", colors = "ffc843,ff4301,b02e00,821611,550022"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "bd9785,8b6c71,593a3f,33282a,1f1f1a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "bdd6e6,a28d62,3d5a4b,454545,232323"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,ad9748,88742f,5e4e1a,2f270a"},

					-- Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "a8a8a8,747f73,616153,374336,172830" },

					-- earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "f6d39b,c5956a,a9794f,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "c99462,835c35,573a14,352313,131414" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "bc946b,b3785b,844c1f,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "c08008,985810,804018,582820,281010" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "918460,60573c,3c3623,22221a,191911" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "e2a76f,97663c,574d31,383838,3b3427" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "797979,506858,333d33,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "aa9966,939372,515138,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "ffffce,d6d69c,949473,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "ef5ba1,d6007f,9e005d,690039,55002a" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "e2cd67,f3a62c,af3c18,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "6ECD8F,50A070,327855,185030,102810" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "a8a8a8,817d71,635054,454133,172830" }
				},
			},
		}
	},
	{
		name = "quenoth_tan_leather", -- body_part
		description = "Tan Leather",
		data = {
			tauroch = {
				unit_types = { "Tauroch Flagbearer"},
				base = "F1DBBE,C6B7AB,7F7165,534338",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1DBBE,C6B7AB,7F7165,534338" },
					{ name = "TAN_LEATHER_ARCHER", description = "Tan Leather Archer", colors = "ECDED9,D7C4BD,9A796C,2E2020" },
					{ name = "TAN_HIDE_TAUROCH", description = "Tan Hide Tauroch", colors = "E3D89C,BA9C55,746646,4F4E3A" },
					{ name = "TAN_HIDE_ARCHER", description = "Tan Hide Archer", colors = "E3D89C,D9A06E,A76326,341713" },
					--blue armour
					{ name = "LOYALIST_BLUE_LEATHER", description = "Loyalist Blue", colors = "c6e7e7,94c6c6,638c94,31526b"},
					{ name = "LOYALIST_CAVALIER_LEATHER", description = "Cavalier", colors = "c6e7e7,a0b9B8,6e8387,3f505c"},
					{ name = "LOYALIST_GRAND_KNIGHT_LEATHER", description = "Grand Knight", colors = "c6e7e7,c5cfda,8f8895,3f505c"},
					{ name = "LOYALIST_PALADIN_LEATHER", description = "Paladin", colors = "ececec,c5cfda,66a5b2,31526b"},
					{ name = "KARRAG_LEATHER", description = "Karrag THoT", colors = "adccd2,6799a2,3b6c75,213d43"},
					{ name = "WITNESS_LEATHER", description = "Witness THoT", colors = "b1ebec,79a9b3,4f6973,507059"},

					--dark armour
					{ name = "SIR_GERRIK_LEATHER", description = "Sir Gerrik SG", colors = "9faecb,697895,3d4e69,293a55"},
					{ name = "HEAVY_INFANTERY_LEATHER", description = "Heavy Infantry", colors = "a8a098,78655a,4d4541,2c2623"},
					{ name = "ROYAL_WARRIOR_LEATHER", description = "Royal Warrior", colors = "a9a5ab,858086,5a565a,332d32"},
					{ name = "CHEVALIER_LEATHER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,a8a098,686058,3d3a37"},
					{ name = "SEACAPTAIN_STEEL_LEATHER", description = "Sea Captain Steel SotA", colors = "dcdbdf,b6b4ba,7b7b85,53535b"},
					{ name = "BANNERET_LEATHER", description = "Banneret EI", colors = "ccc2b9,a8a098,686058,524e46"},

					--gold/bronze armour
					{ name = "DRAKE_LEATHER", description = "Drake Armour", colors = "d1e997,c79962,996d24,af3c18"},
					{ name = "GOLD_NEW_LEATHER", description = "Gold 1.18", colors = "ffe38c,ffcc43,c67b02,804018"},
					{ name = "GOLD_OLD_LEATHER", description = "Gold 1.16", colors = "ececec,d1b563,985810,512a13"},
					{ name = "EE_PALADIN_LEATHER", description = "Paladin EI", colors = "ececec,ffcc43,af7a18,66211b"},
					{ name = "BRONZE_LEATHER", description = "Siege Trooper Bronze", colors = "ccb066,aa6a28,804018,74341c"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER_LEATHER", description = "Javelineer", colors = "d6d69c,938d6d,525239,39382d"},
					{ name = "DUNEFOLK_LEATHER", description = "Dunefolk", colors = "fff5a0,d6bd8a,888670,5c6339"},
					{ name = "ORC_LEATHER", description = "Orc", colors = "ffdd88,aa9966,7f774c,515138"},
					{ name = "ASSASSIN_LEATHER", description = "Assassin", colors = "889880,506858,333d33,273631"},
					{ name = "ROGUE_MAGE_LEATHER", description = "Rogue Mage", colors = "A88325,936920,754C20,643B23"},

					--undead armour
					{ name = "SKELETON_RIDER_LEATHER", description = "Skeleton Rider", colors = "ccb066,aa6a28,74341c,304860"},
					{ name = "SKELETON_LEATHER", description = "Skeleton", colors = "ffffce,d6d69c,c8d090,949473"},
					{ name = "DEATHKNIGHT_LEATHER", description = "Death Knight", colors = "e0e0e8,a3a7ab,73697e,5e3535"},
					{ name = "GHOST_LEATHER", description = "Ghost", colors = "e0e0e8,a3a7ab,73697e,5e3535"},

					--GSE
					{ name = "GSE_MILITA_LEATHER", description = "Great Steppe Era Militia", colors = "abe5f6,69bbd9,2b52a9,121b5c"},
					{ name = "GSE_CANNONEER_LEATHER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,5bb19e,2d8569,125756"},

					--wose/elf
					{ name = "WOSE_LEATHER", description = "Wose", colors = "e6e6a6,c99462,835c35,573a14"},
					{ name = "KALIAN_ELF_LEATHER", description = "Kalian Elf TroW", colors = "d8c2ad,a28d62,896941,704d1f"},
					{ name = "ELF_DARKER_LEATHER", description = "Elvish Armour Dark", colors = "a4b496,687862,313b31,252a23"},
					{ name = "ELF_LIGHTER_LEATHER", description = "Elvish Armour Light", colors = "e8edd5,a4b496,687862,313b31"},

					--merfolk
					{ name = "MERFOLK_LEATHER", description = "Merfolk", colors = "f2f2ea,d8c2ad,b3ae78,484b42"},
					{ name = "MERFOLK_MAGE_LEATHER", description = "Merfolk Siren", colors = "f8f8f8,d8c2ad,a28d62,425838"},
					{ name = "MERFOLK_HOPLITE_LEATHER", description = "Merfolk Hoplite", colors = "f2f2ea,b3ae78,a28d62,484b42"},
					{ name = "AQUANA_LEATHER", description = "Aquana (Rashy Era)", colors = "e5e2c2,d8ccad,a2a062,746e47"},
					{ name = "MERFOLK_JAVELINEER_LEATHER", description = "Merfolk Javelineer", colors = "bdbebd,979fa9,4d586d,586164"},

					--UTBS
					{ name = "DAWARF_LEATHER", description = "Dawarf", colors = "db98c6,c878b0,905080,583068"},
					{ name = "FLESHGOLEM_LEATHER", description = "Fleshgolem", colors = "dca993,de8685,ca7559,a85c4e"},
					{ name = "IXTHALA_LEATHER", description = "Ixthala", colors = "afacd9,8a81b3,5e699c,474a6b"},
					{ name = "DARK_ASSASSIN_MASK_LEATHER", description = "Dark Assassin Mask", colors = "cc8f8c,9d6b6f,7d303b,57373b"},
					{ name = "DARK_ASSASSIN_CLOAK_LEATHER", description = "Dark Assassin Cloak", colors = "9c8b8b,8f7a7a,74605d,5c4744"},
					{ name = "UTBS_HUMAN_LEATHER", description = "UtbS Human", colors = "d1d199,999955,554c26,2c1a09"},
					{ name = "QUENOTH_RED_LEATHER", description = "Quenoth Red", colors = "d9aea6,bd696e,9f2133,6a343b"},
					{ name = "QUENOTH_BLUE_LEATHER", description = "Quenoth Blue", colors = "a4f19d,78c1b2,4c91c9,4a707a"},

					--animal parts
					{ name = "JUMPING_SPIDER_LEATHER", description = "Jumping Spider", colors = "dcd1ff,bbabed,6b57b9,5e4da1"},
					{ name = "SCORPLING_LEATHER", description = "Scorpling", colors = "dab6c4,c19fa5,a38583,7f615f"},
					{ name = "TENTACLE_LEATHER", description = "Tentacle", colors = "cdcdcd,94999a,68676f,4a5661"},
					{ name = "SEASERPENT_LEATHER", description = "Sea Serpent", colors = "adcfcf,87a1a1,5b7f8a,405f72"},
					{ name = "SCARAB_LEATHER", description = "Scarab", colors = "a5deab,74c67e,6ca26a,657e55"},
					{ name = "SCORPIAN_LEATHER", description = "Scorpion", colors = "b6c8da,8384a3,5f607f,414c5e"},
					{ name = "CRAB_LEATHER", description = "Crab", colors = "ddd3cd,b6aca4,917b4d,695937"},
					{ name = "BAT_LEATHER", description = "Vampire Bat", colors = "ad7569,84495e,794d44,592b3b"},
					{ name = "BLOODBAT_LEATHER", description = "Blood Bat", colors = "ec7e3d,ba5520,963718,4d0000"},
					{ name = "DREADBAT_LEATHER", description = "Dread Bat", colors = "707070,4e4e4e,353535,292929"},
					{ name = "DREADBAT_METAL_LEATHER", description = "Dread Bat Metal", colors = "707070,4e4e4e,353535,292929"},
					{ name = "ANT_LEATHER", description = "Ant", colors = "90a8b0,907ab5,706993,505870"},
					{ name = "FIREANT_LEATHER", description = "Fire Ant", colors = "ffc843,ff4301,b02e00,821611"},

					--rashy era
					{ name = "DARDO_LEATHER", description = "Dardo (Rashy Era)", colors = "bd9785,8b6c71,593a3f,33282a"},
					{ name = "MARASHY_LEATHER", description = "Marashy (Rashy Era)", colors = "bdd6e6,a28d62,3d5a4b,454545"},
					{ name = "LUZ_LEATHER", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,ad9748,88742f,5e4e1a"},

					--Default grey troll
					{ name = "TROLL_GREY_LEATHER", description = "Troll Grey", colors = "a8a8a8,747f73,616153,374336" },

					--earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN_LEATHER", description = "Light Earth", colors = "f6d39b,c5956a,a9794f,7b4231" },
					{ name = "TROLL_WOODENEARTH_LEATHER", description = "Wooden Earth", colors = "c99462,835c35,573a14,352313" },
					{ name = "TROLL_EARTHEN_LEATHER", description = "Earth", colors = "bc946b,b3785b,844c1f,462d1f" },
					{ name = "TROLL_GOBLINMUD_LEATHER", description = "Goblinmud", colors = "c08008,985810,804018,582820" },
					{ name = "TROLL_DARKERMUD_LEATHER", description = "Darker Mud", colors = "918460,60573c,3c3623,22221a" },
					{ name = "TROLL_DARKMUD_LEATHER", description = "Dark Mud", colors = "e2a76f,97663c,574d31,383838" },
					{ name = "TROLL_DARKGREEN_LEATHER", description = "Dark Green", colors = "797979,506858,333d33,22221e" },
					{ name = "TROLL_DARKBRIGHTSTONE_LEATHER", description = "Dark Bright Stone", colors = "aa9966,939372,515138,2d2d2d" },
					{ name = "TROLL_SANDSTONE_LEATHER", description = "Sandstone", colors = "ffffce,d6d69c,949473,525239" },
					{ name = "TROLL_TEAMCOLOR_LEATHER", description = "Teamcolor", colors = "ef5ba1,d6007f,9e005d,690039" },
					{ name = "TROLL_MOLTEN_LEATHER", description = "Molten", colors = "e2cd67,f3a62c,af3c18,8e1a12" },
					{ name = "TROLL_OLDGREEN_LEATHER", description = "1.0 Troll", colors = "6ECD8F,50A070,327855,185030" },
					{ name = "TROLL_GRUU_LEATHER", description = "Grüü (SotBE)", colors = "a8a8a8,817d71,635054,454133" }
				},
			},
			archer = {
				unit_types = { "Quenoth Outrider","Quenoth Pathfinder"},
				base = "ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020" },
					{ name = "TAN_LEATHER_TAUROCH", description = "Tan Leather Tauroch", colors = "F1DBBE,F1DBBE,C6B7AB,C6B7AB,7F7165,7F7165,534338" },
					{ name = "TAN_HIDE_TAUROCH", description = "Tan Hide Tauroch", colors = "E3D89C,E3D89C,BA9C55,BA9C55,746646,746646,4F4E3A" },
					{ name = "TAN_HIDE_ARCHER", description = "Tan Hide Archer", colors = "E3D89C,D9A06E,BF8149,A76326,746646,5A2827,341713" },
					--blue armour
					{ name = "LOYALIST_BLUE_LEATHER", description = "Loyalist Blue", colors = "c6e7e7,c6e7e7,94c6c6,638c94,31526b,31526b,182931"},
					{ name = "LOYALIST_CAVALIER_LEATHER", description = "Cavalier", colors = "c6e7e7,c6e7e7,a0b9B8,6e8387,3f505c,3f505c,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT_LEATHER", description = "Grand Knight", colors = "c6e7e7,c6e7e7,c5cfda,8f8895,3f505c,3f505c,182931"},
					{ name = "LOYALIST_PALADIN_LEATHER", description = "Paladin", colors = "ececec,ececec,c5cfda,66a5b2,31526b,31526b,3f505c"},
					{ name = "KARRAG_LEATHER", description = "Karrag THoT", colors = "adccd2,adccd2,6799a2,3b6c75,213d43,213d43,182931"},
					{ name = "WITNESS_LEATHER", description = "Witness THoT", colors = "b1ebec,b1ebec,79a9b3,4f6973,507059,507059,1e3038"},

					--dark armour
					{ name = "SIR_GERRIK_LEATHER", description = "Sir Gerrik SG", colors = "9faecb,9faecb,697895,3d4e69,293a55,293a55,11203d"},
					{ name = "HEAVY_INFANTERY_LEATHER", description = "Heavy Infantry", colors = "a8a098,a8a098,78655a,4d4541,2c2623,2c2623,191919"},
					{ name = "ROYAL_WARRIOR_LEATHER", description = "Royal Warrior", colors = "a9a5ab,a9a5ab,858086,5a565a,332d32,332d32,2c2623"},
					{ name = "CHEVALIER_LEATHER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,ccc2b9,a8a098,686058,3d3a37,3d3a37,151718"},
					{ name = "SEACAPTAIN_STEEL_LEATHER", description = "Sea Captain Steel SotA", colors = "dcdbdf,dcdbdf,b6b4ba,7b7b85,53535b,53535b,34343a"},
					{ name = "BANNERET_LEATHER", description = "Banneret EI", colors = "ccc2b9,ccc2b9,a8a098,686058,524e46,524e46,3d3a37"},

					--gold/bronze armour
					{ name = "DRAKE_LEATHER", description = "Drake Armour", colors = "d1e997,d1e997,c79962,996d24,af3c18,af3c18,4c3324"},
					{ name = "GOLD_NEW_LEATHER", description = "Gold 1.18", colors = "ffe38c,ffe38c,ffcc43,c67b02,804018,804018,66211b"},
					{ name = "GOLD_OLD_LEATHER", description = "Gold 1.16", colors = "ececec,ececec,d1b563,985810,512a13,512a13,2f1010"},
					{ name = "EE_PALADIN_LEATHER", description = "Paladin EI", colors = "ececec,ececec,ffcc43,af7a18,66211b,66211b,2f1010"},
					{ name = "BRONZE_LEATHER", description = "Siege Trooper Bronze", colors = "ccb066,ccb066,aa6a28,804018,74341c,74341c,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER_LEATHER", description = "Javelineer", colors = "d6d69c,d6d69c,938d6d,525239,39382d,39382d,2f1010"},
					{ name = "DUNEFOLK_LEATHER", description = "Dunefolk", colors = "fff5a0,fff5a0,d6bd8a,888670,5c6339,5c6339,3d3411"},
					{ name = "ORC_LEATHER", description = "Orc", colors = "ffdd88,ffdd88,aa9966,7f774c,515138,515138,2d2d2d"},
					{ name = "ASSASSIN_LEATHER", description = "Assassin", colors = "889880,889880,506858,333d33,273631,273631,1c1b21"},
					{ name = "ROGUE_MAGE_LEATHER", description = "Rogue Mage", colors = "A88325,A88325,936920,754C20,643B23,472924,2f1010"},

					--undead armour
					{ name = "SKELETON_RIDER_LEATHER", description = "Skeleton Rider", colors = "ccb066,ccb066,aa6a28,74341c,304860,304860,13262e"},
					{ name = "SKELETON_LEATHER", description = "Skeleton", colors = "ffffce,ffffce,d6d69c,c8d090,949473,949473,525239"},
					{ name = "DEATHKNIGHT_LEATHER", description = "Death Knight", colors = "e0e0e8,e0e0e8,a3a7ab,73697e,5e3535,5e3535,13262e"},
					{ name = "GHOST_LEATHER", description = "Ghost", colors = "e0e0e8,e0e0e8,a3a7ab,73697e,5e3535,5e3535,283028"},

					--GSE
					{ name = "GSE_MILITA_LEATHER", description = "Great Steppe Era Militia", colors = "abe5f6,abe5f6,69bbd9,2b52a9,121b5c,121b5c,140036"},
					{ name = "GSE_CANNONEER_LEATHER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,92d2bb,5bb19e,2d8569,125756,125756,0a293b"},

					--wose/elf
					{ name = "WOSE_LEATHER", description = "Wose", colors = "e6e6a6,e6e6a6,c99462,835c35,573a14,573a14,352313"},
					{ name = "KALIAN_ELF_LEATHER", description = "Kalian Elf TroW", colors = "d8c2ad,d8c2ad,a28d62,896941,704d1f,704d1f,47213c"},
					{ name = "ELF_DARKER_LEATHER", description = "Elvish Armour Dark", colors = "a4b496,a4b496,687862,313b31,252a23,252a23,121311"},
					{ name = "ELF_LIGHTER_LEATHER", description = "Elvish Armour Light", colors = "e8edd5,e8edd5,a4b496,687862,313b31,313b31,252a23"},

					--merfolk
					{ name = "MERFOLK_LEATHER", description = "Merfolk", colors = "f2f2ea,f2f2ea,d8c2ad,b3ae78,484b42,484b42,504137"},
					{ name = "MERFOLK_MAGE_LEATHER", description = "Merfolk Siren", colors = "f8f8f8,f8f8f8,d8c2ad,a28d62,425838,425838,382218"},
					{ name = "MERFOLK_HOPLITE_LEATHER", description = "Merfolk Hoplite", colors = "f2f2ea,f2f2ea,b3ae78,a28d62,484b42,484b42,504137"},
					{ name = "AQUANA_LEATHER", description = "Aquana (Rashy Era)", colors = "e5e2c2,e5e2c2,d8ccad,a2a062,746e47,746e47,383618"},
					{ name = "MERFOLK_JAVELINEER_LEATHER", description = "Merfolk Javelineer", colors = "bdbebd,bdbebd,979fa9,4d586d,586164,586164,404444"},

					--UTBS
					{ name = "DAWARF_LEATHER", description = "Dawarf", colors = "db98c6,db98c6,c878b0,905080,583068,583068,301030"},
					{ name = "FLESHGOLEM_LEATHER", description = "Fleshgolem", colors = "dca993,dca993,de8685,ca7559,a85c4e,a85c4e,824143"},
					{ name = "IXTHALA_LEATHER", description = "Ixthala", colors = "afacd9,afacd9,8a81b3,5e699c,474a6b,474a6b,222438"},
					{ name = "DARK_ASSASSIN_MASK_LEATHER", description = "Dark Assassin Mask", colors = "cc8f8c,cc8f8c,9d6b6f,7d303b,57373b,57373b,342a29"},
					{ name = "DARK_ASSASSIN_CLOAK_LEATHER", description = "Dark Assassin Cloak", colors = "9c8b8b,9c8b8b,8f7a7a,74605d,5c4744,5c4744,372725"},
					{ name = "UTBS_HUMAN_LEATHER", description = "UtbS Human", colors = "d1d199,d1d199,999955,554c26,2c1a09,2c1a09,090602"},
					{ name = "QUENOTH_RED_LEATHER", description = "Quenoth Red", colors = "d9aea6,d9aea6,bd696e,9f2133,6a343b,6a343b,3f2a31"},
					{ name = "QUENOTH_BLUE_LEATHER", description = "Quenoth Blue", colors = "a4f19d,a4f19d,78c1b2,4c91c9,4a707a,4a707a,4a2e62"},

					--animal parts
					{ name = "JUMPING_SPIDER_LEATHER", description = "Jumping Spider", colors = "dcd1ff,dcd1ff,bbabed,6b57b9,5e4da1,5e4da1,1e1348"},
					{ name = "SCORPLING_LEATHER", description = "Scorpling", colors = "dab6c4,dab6c4,c19fa5,a38583,7f615f,7f615f,491d27"},
					{ name = "TENTACLE_LEATHER", description = "Tentacle", colors = "cdcdcd,cdcdcd,94999a,68676f,4a5661,4a5661,311a16"},
					{ name = "SEASERPENT_LEATHER", description = "Sea Serpent", colors = "adcfcf,adcfcf,87a1a1,5b7f8a,405f72,405f72,384247"},
					{ name = "SCARAB_LEATHER", description = "Scarab", colors = "a5deab,a5deab,74c67e,6ca26a,657e55,657e55,49613b"},
					{ name = "SCORPIAN_LEATHER", description = "Scorpion", colors = "b6c8da,b6c8da,8384a3,5f607f,414c5e,414c5e,1d2c49"},
					{ name = "CRAB_LEATHER", description = "Crab", colors = "ddd3cd,ddd3cd,b6aca4,917b4d,695937,695937,261f10"},
					{ name = "BAT_LEATHER", description = "Vampire Bat", colors = "ad7569,ad7569,84495e,794d44,592b3b,592b3b,1b1b1b"},
					{ name = "BLOODBAT_LEATHER", description = "Blood Bat", colors = "ec7e3d,ec7e3d,ba5520,963718,4d0000,4d0000,350000"},
					{ name = "DREADBAT_LEATHER", description = "Dread Bat", colors = "707070,707070,4e4e4e,353535,292929,292929,191919"},
					{ name = "DREADBAT_METAL_LEATHER", description = "Dread Bat Metal", colors = "707070,707070,4e4e4e,353535,292929,292929,191919"},
					{ name = "ANT_LEATHER", description = "Ant", colors = "90a8b0,90a8b0,907ab5,706993,505870,505870,550022"},
					{ name = "FIREANT_LEATHER", description = "Fire Ant", colors = "ffc843,ffc843,ff4301,b02e00,821611,821611,550022"},

					--rashy era
					{ name = "DARDO_LEATHER", description = "Dardo (Rashy Era)", colors = "bd9785,bd9785,8b6c71,593a3f,33282a,33282a,1f1f1a"},
					{ name = "MARASHY_LEATHER", description = "Marashy (Rashy Era)", colors = "bdd6e6,bdd6e6,a28d62,3d5a4b,454545,454545,232323"},
					{ name = "LUZ_LEATHER", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,d6be6b,ad9748,88742f,5e4e1a,5e4e1a,2f270a"},

					--Default grey troll
					{ name = "TROLL_GREY_LEATHER", description = "Troll Grey", colors = "a8a8a8,a8a8a8,747f73,616153,374336,374336,172830" },

					--earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN_LEATHER", description = "Light Earth", colors = "f6d39b,f6d39b,c5956a,a9794f,7b4231,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH_LEATHER", description = "Wooden Earth", colors = "c99462,c99462,835c35,573a14,352313,352313,131414" },
					{ name = "TROLL_EARTHEN_LEATHER", description = "Earth", colors = "bc946b,bc946b,b3785b,844c1f,462d1f,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD_LEATHER", description = "Goblinmud", colors = "c08008,c08008,985810,804018,582820,582820,281010" },
					{ name = "TROLL_DARKERMUD_LEATHER", description = "Darker Mud", colors = "918460,918460,60573c,3c3623,22221a,22221a,191911" },
					{ name = "TROLL_DARKMUD_LEATHER", description = "Dark Mud", colors = "e2a76f,e2a76f,97663c,574d31,383838,383838,3b3427" },
					{ name = "TROLL_DARKGREEN_LEATHER", description = "Dark Green", colors = "797979,797979,506858,333d33,22221e,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE_LEATHER", description = "Dark Bright Stone", colors = "aa9966,aa9966,939372,515138,2d2d2d,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE_LEATHER", description = "Sandstone", colors = "ffffce,ffffce,d6d69c,949473,525239,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR_LEATHER", description = "Teamcolor", colors = "ef5ba1,ef5ba1,d6007f,9e005d,690039,690039,55002a" },
					{ name = "TROLL_MOLTEN_LEATHER", description = "Molten", colors = "e2cd67,e2cd67,f3a62c,af3c18,8e1a12,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN_LEATHER", description = "1.0 Troll", colors = "6ECD8F,6ECD8F,50A070,327855,185030,185030,102810" },
					{ name = "TROLL_GRUU_LEATHER", description = "Grüü (SotBE)", colors = "a8a8a8,a8a8a8,817d71,635054,454133,454133,172830" }
				},
			},
		}
	},
	{
		name = "quenoth_tan_hide", -- body_part
		description = "Tan Hide",
		data = {
			scout = {
				unit_types = { "Quenoth Scout"},
				base = "E3D89C,BA9C55,746646,4F4E3A",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "E3D89C,BA9C55,746646,4F4E3A" },
					{ name = "TAN_HIDE_ARCHER", description = "Tan Hide Archer", colors = "E3D89C,D9A06E,A76326,341713" },
					{ name = "TAN_LEATHER_TAUROCH", description = "Tan Leather Tauroch", colors = "F1DBBE,C6B7AB,7F7165,534338" },
					{ name = "TAN_LEATHER_ARCHER", description = "Tan Leather Archer", colors = "ECDED9,D7C4BD,9A796C,2E2020" },
					--blue armour
					{ name = "LOYALIST_BLUE_LEATHER", description = "Loyalist Blue", colors = "c6e7e7,94c6c6,638c94,31526b"},
					{ name = "LOYALIST_CAVALIER_LEATHER", description = "Cavalier", colors = "c6e7e7,a0b9B8,6e8387,3f505c"},
					{ name = "LOYALIST_GRAND_KNIGHT_LEATHER", description = "Grand Knight", colors = "c6e7e7,c5cfda,8f8895,3f505c"},
					{ name = "LOYALIST_PALADIN_LEATHER", description = "Paladin", colors = "ececec,c5cfda,66a5b2,31526b"},
					{ name = "KARRAG_LEATHER", description = "Karrag THoT", colors = "adccd2,6799a2,3b6c75,213d43"},
					{ name = "WITNESS_LEATHER", description = "Witness THoT", colors = "b1ebec,79a9b3,4f6973,507059"},

					--dark armour
					{ name = "SIR_GERRIK_LEATHER", description = "Sir Gerrik SG", colors = "9faecb,697895,3d4e69,293a55"},
					{ name = "HEAVY_INFANTERY_LEATHER", description = "Heavy Infantry", colors = "a8a098,78655a,4d4541,2c2623"},
					{ name = "ROYAL_WARRIOR_LEATHER", description = "Royal Warrior", colors = "a9a5ab,858086,5a565a,332d32"},
					{ name = "CHEVALIER_LEATHER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,a8a098,686058,3d3a37"},
					{ name = "SEACAPTAIN_STEEL_LEATHER", description = "Sea Captain Steel SotA", colors = "dcdbdf,b6b4ba,7b7b85,53535b"},
					{ name = "BANNERET_LEATHER", description = "Banneret EI", colors = "ccc2b9,a8a098,686058,524e46"},

					--gold/bronze armour
					{ name = "DRAKE_LEATHER", description = "Drake Armour", colors = "d1e997,c79962,996d24,af3c18"},
					{ name = "GOLD_NEW_LEATHER", description = "Gold 1.18", colors = "ffe38c,ffcc43,c67b02,804018"},
					{ name = "GOLD_OLD_LEATHER", description = "Gold 1.16", colors = "ececec,d1b563,985810,512a13"},
					{ name = "EE_PALADIN_LEATHER", description = "Paladin EI", colors = "ececec,ffcc43,af7a18,66211b"},
					{ name = "BRONZE_LEATHER", description = "Siege Trooper Bronze", colors = "ccb066,aa6a28,804018,74341c"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER_LEATHER", description = "Javelineer", colors = "d6d69c,938d6d,525239,39382d"},
					{ name = "DUNEFOLK_LEATHER", description = "Dunefolk", colors = "fff5a0,d6bd8a,888670,5c6339"},
					{ name = "ORC_LEATHER", description = "Orc", colors = "ffdd88,aa9966,7f774c,515138"},
					{ name = "ASSASSIN_LEATHER", description = "Assassin", colors = "889880,506858,333d33,273631"},
					{ name = "ROGUE_MAGE_LEATHER", description = "Rogue Mage", colors = "A88325,936920,754C20,643B23"},

					--undead armour
					{ name = "SKELETON_RIDER_LEATHER", description = "Skeleton Rider", colors = "ccb066,aa6a28,74341c,304860"},
					{ name = "SKELETON_LEATHER", description = "Skeleton", colors = "ffffce,d6d69c,c8d090,949473"},
					{ name = "DEATHKNIGHT_LEATHER", description = "Death Knight", colors = "e0e0e8,a3a7ab,73697e,5e3535"},
					{ name = "GHOST_LEATHER", description = "Ghost", colors = "e0e0e8,a3a7ab,73697e,5e3535"},

					--GSE
					{ name = "GSE_MILITA_LEATHER", description = "Great Steppe Era Militia", colors = "abe5f6,69bbd9,2b52a9,121b5c"},
					{ name = "GSE_CANNONEER_LEATHER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,5bb19e,2d8569,125756"},

					--wose/elf
					{ name = "WOSE_LEATHER", description = "Wose", colors = "e6e6a6,c99462,835c35,573a14"},
					{ name = "KALIAN_ELF_LEATHER", description = "Kalian Elf TroW", colors = "d8c2ad,a28d62,896941,704d1f"},
					{ name = "ELF_DARKER_LEATHER", description = "Elvish Armour Dark", colors = "a4b496,687862,313b31,252a23"},
					{ name = "ELF_LIGHTER_LEATHER", description = "Elvish Armour Light", colors = "e8edd5,a4b496,687862,313b31"},

					--merfolk
					{ name = "MERFOLK_LEATHER", description = "Merfolk", colors = "f2f2ea,d8c2ad,b3ae78,484b42"},
					{ name = "MERFOLK_MAGE_LEATHER", description = "Merfolk Siren", colors = "f8f8f8,d8c2ad,a28d62,425838"},
					{ name = "MERFOLK_HOPLITE_LEATHER", description = "Merfolk Hoplite", colors = "f2f2ea,b3ae78,a28d62,484b42"},
					{ name = "AQUANA_LEATHER", description = "Aquana (Rashy Era)", colors = "e5e2c2,d8ccad,a2a062,746e47"},
					{ name = "MERFOLK_JAVELINEER_LEATHER", description = "Merfolk Javelineer", colors = "bdbebd,979fa9,4d586d,586164"},

					--UTBS
					{ name = "DAWARF_LEATHER", description = "Dawarf", colors = "db98c6,c878b0,905080,583068"},
					{ name = "FLESHGOLEM_LEATHER", description = "Fleshgolem", colors = "dca993,de8685,ca7559,a85c4e"},
					{ name = "IXTHALA_LEATHER", description = "Ixthala", colors = "afacd9,8a81b3,5e699c,474a6b"},
					{ name = "DARK_ASSASSIN_MASK_LEATHER", description = "Dark Assassin Mask", colors = "cc8f8c,9d6b6f,7d303b,57373b"},
					{ name = "DARK_ASSASSIN_CLOAK_LEATHER", description = "Dark Assassin Cloak", colors = "9c8b8b,8f7a7a,74605d,5c4744"},
					{ name = "UTBS_HUMAN_LEATHER", description = "UtbS Human", colors = "d1d199,999955,554c26,2c1a09"},
					{ name = "QUENOTH_RED_LEATHER", description = "Quenoth Red", colors = "d9aea6,bd696e,9f2133,6a343b"},
					{ name = "QUENOTH_BLUE_LEATHER", description = "Quenoth Blue", colors = "a4f19d,78c1b2,4c91c9,4a707a"},

					--animal parts
					{ name = "JUMPING_SPIDER_LEATHER", description = "Jumping Spider", colors = "dcd1ff,bbabed,6b57b9,5e4da1"},
					{ name = "SCORPLING_LEATHER", description = "Scorpling", colors = "dab6c4,c19fa5,a38583,7f615f"},
					{ name = "TENTACLE_LEATHER", description = "Tentacle", colors = "cdcdcd,94999a,68676f,4a5661"},
					{ name = "SEASERPENT_LEATHER", description = "Sea Serpent", colors = "adcfcf,87a1a1,5b7f8a,405f72"},
					{ name = "SCARAB_LEATHER", description = "Scarab", colors = "a5deab,74c67e,6ca26a,657e55"},
					{ name = "SCORPIAN_LEATHER", description = "Scorpion", colors = "b6c8da,8384a3,5f607f,414c5e"},
					{ name = "CRAB_LEATHER", description = "Crab", colors = "ddd3cd,b6aca4,917b4d,695937"},
					{ name = "BAT_LEATHER", description = "Vampire Bat", colors = "ad7569,84495e,794d44,592b3b"},
					{ name = "BLOODBAT_LEATHER", description = "Blood Bat", colors = "ec7e3d,ba5520,963718,4d0000"},
					{ name = "DREADBAT_LEATHER", description = "Dread Bat", colors = "707070,4e4e4e,353535,292929"},
					{ name = "DREADBAT_METAL_LEATHER", description = "Dread Bat Metal", colors = "707070,4e4e4e,353535,292929"},
					{ name = "ANT_LEATHER", description = "Ant", colors = "90a8b0,907ab5,706993,505870"},
					{ name = "FIREANT_LEATHER", description = "Fire Ant", colors = "ffc843,ff4301,b02e00,821611"},

					--rashy era
					{ name = "DARDO_LEATHER", description = "Dardo (Rashy Era)", colors = "bd9785,8b6c71,593a3f,33282a"},
					{ name = "MARASHY_LEATHER", description = "Marashy (Rashy Era)", colors = "bdd6e6,a28d62,3d5a4b,454545"},
					{ name = "LUZ_LEATHER", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,ad9748,88742f,5e4e1a"},

					--Default grey troll
					{ name = "TROLL_GREY_LEATHER", description = "Troll Grey", colors = "a8a8a8,747f73,616153,374336" },

					--earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN_LEATHER", description = "Light Earth", colors = "f6d39b,c5956a,a9794f,7b4231" },
					{ name = "TROLL_WOODENEARTH_LEATHER", description = "Wooden Earth", colors = "c99462,835c35,573a14,352313" },
					{ name = "TROLL_EARTHEN_LEATHER", description = "Earth", colors = "bc946b,b3785b,844c1f,462d1f" },
					{ name = "TROLL_GOBLINMUD_LEATHER", description = "Goblinmud", colors = "c08008,985810,804018,582820" },
					{ name = "TROLL_DARKERMUD_LEATHER", description = "Darker Mud", colors = "918460,60573c,3c3623,22221a" },
					{ name = "TROLL_DARKMUD_LEATHER", description = "Dark Mud", colors = "e2a76f,97663c,574d31,383838" },
					{ name = "TROLL_DARKGREEN_LEATHER", description = "Dark Green", colors = "797979,506858,333d33,22221e" },
					{ name = "TROLL_DARKBRIGHTSTONE_LEATHER", description = "Dark Bright Stone", colors = "aa9966,939372,515138,2d2d2d" },
					{ name = "TROLL_SANDSTONE_LEATHER", description = "Sandstone", colors = "ffffce,d6d69c,949473,525239" },
					{ name = "TROLL_TEAMCOLOR_LEATHER", description = "Teamcolor", colors = "ef5ba1,d6007f,9e005d,690039" },
					{ name = "TROLL_MOLTEN_LEATHER", description = "Molten", colors = "e2cd67,f3a62c,af3c18,8e1a12" },
					{ name = "TROLL_OLDGREEN_LEATHER", description = "1.0 Troll", colors = "6ECD8F,50A070,327855,185030" },
					{ name = "TROLL_GRUU_LEATHER", description = "Grüü (SotBE)", colors = "a8a8a8,817d71,635054,454133" }
				},
			},
			archer = {
				unit_types = {"Quenoth Outrider","Quenoth Pathfinder"},
				base = "E3D89C,D9A06E,BF8149,A76326,746646,4F4E3A,5A2827,341713",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "E3D89C,D9A06E,BF8149,A76326,746646,4F4E3A,5A2827,341713" },
					{ name = "TAN_HIDE_TAUROCH", description = "Tan Hide Tauroch", colors = "E3D89C,E3D89C,BA9C55,BA9C55,746646,746646,4F4E3A,4F4E3A" },
					{ name = "TAN_LEATHER_TAUROCH", description = "Tan Leather Tauroch", colors = "F1DBBE,F1DBBE,C6B7AB,C6B7AB,7F7165,7F7165,534338,534338" },
					{ name = "TAN_LEATHER_ARCHER", description = "Tan Leather Archer", colors = "ECDED9,ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020" },
					--blue armour
					{ name = "LOYALIST_BLUE_LEATHER", description = "Loyalist Blue", colors = "c6e7e7,c6e7e7,94c6c6,638c94,31526b,31526b,182931,182931"},
					{ name = "LOYALIST_CAVALIER_LEATHER", description = "Cavalier", colors = "c6e7e7,c6e7e7,a0b9B8,6e8387,3f505c,3f505c,182931,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT_LEATHER", description = "Grand Knight", colors = "c6e7e7,c6e7e7,c5cfda,8f8895,3f505c,3f505c,182931,182931"},
					{ name = "LOYALIST_PALADIN_LEATHER", description = "Paladin", colors = "ececec,ececec,c5cfda,66a5b2,31526b,31526b,3f505c,3f505c"},
					{ name = "KARRAG_LEATHER", description = "Karrag THoT", colors = "adccd2,adccd2,6799a2,3b6c75,213d43,213d43,182931,182931"},
					{ name = "WITNESS_LEATHER", description = "Witness THoT", colors = "b1ebec,b1ebec,79a9b3,4f6973,507059,507059,1e3038,1e3038"},

					--dark armour
					{ name = "SIR_GERRIK_LEATHER", description = "Sir Gerrik SG", colors = "9faecb,9faecb,697895,3d4e69,293a55,293a55,11203d,11203d"},
					{ name = "HEAVY_INFANTERY_LEATHER", description = "Heavy Infantry", colors = "a8a098,a8a098,78655a,4d4541,2c2623,2c2623,191919,191919"},
					{ name = "ROYAL_WARRIOR_LEATHER", description = "Royal Warrior", colors = "a9a5ab,a9a5ab,858086,5a565a,332d32,332d32,2c2623,2c2623"},
					{ name = "CHEVALIER_LEATHER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,ccc2b9,a8a098,686058,3d3a37,3d3a37,151718,151718"},
					{ name = "SEACAPTAIN_STEEL_LEATHER", description = "Sea Captain Steel SotA", colors = "dcdbdf,dcdbdf,b6b4ba,7b7b85,53535b,53535b,34343a,34343a"},
					{ name = "BANNERET_LEATHER", description = "Banneret EI", colors = "ccc2b9,ccc2b9,a8a098,686058,524e46,524e46,3d3a37,3d3a37"},

					--gold/bronze armour
					{ name = "DRAKE_LEATHER", description = "Drake Armour", colors = "d1e997,d1e997,c79962,996d24,af3c18,af3c18,4c3324,4c3324"},
					{ name = "GOLD_NEW_LEATHER", description = "Gold 1.18", colors = "ffe38c,ffe38c,ffcc43,c67b02,804018,804018,66211b,66211b"},
					{ name = "GOLD_OLD_LEATHER", description = "Gold 1.16", colors = "ececec,ececec,d1b563,985810,512a13,512a13,2f1010,2f1010"},
					{ name = "EE_PALADIN_LEATHER", description = "Paladin EI", colors = "ececec,ececec,ffcc43,af7a18,66211b,66211b,2f1010,2f1010"},
					{ name = "BRONZE_LEATHER", description = "Siege Trooper Bronze", colors = "ccb066,ccb066,aa6a28,804018,74341c,74341c,13262e,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER_LEATHER", description = "Javelineer", colors = "d6d69c,d6d69c,938d6d,525239,39382d,39382d,2f1010,2f1010"},
					{ name = "DUNEFOLK_LEATHER", description = "Dunefolk", colors = "fff5a0,fff5a0,d6bd8a,888670,5c6339,5c6339,3d3411,3d3411"},
					{ name = "ORC_LEATHER", description = "Orc", colors = "ffdd88,ffdd88,aa9966,7f774c,515138,515138,2d2d2d,2d2d2d"},
					{ name = "ASSASSIN_LEATHER", description = "Assassin", colors = "889880,889880,506858,333d33,273631,273631,1c1b21,1c1b21"},
					{ name = "ROGUE_MAGE_LEATHER", description = "Rogue Mage", colors = "A88325,A88325,936920,754C20,643B23,472924,2f1010,2f1010"},

					--undead armour
					{ name = "SKELETON_RIDER_LEATHER", description = "Skeleton Rider", colors = "ccb066,ccb066,aa6a28,74341c,304860,304860,13262e,13262e"},
					{ name = "SKELETON_LEATHER", description = "Skeleton", colors = "ffffce,ffffce,d6d69c,c8d090,949473,949473,525239,525239"},
					{ name = "DEATHKNIGHT_LEATHER", description = "Death Knight", colors = "e0e0e8,e0e0e8,a3a7ab,73697e,5e3535,5e3535,13262e,13262e"},
					{ name = "GHOST_LEATHER", description = "Ghost", colors = "e0e0e8,e0e0e8,a3a7ab,73697e,5e3535,5e3535,283028,283028"},

					--GSE
					{ name = "GSE_MILITA_LEATHER", description = "Great Steppe Era Militia", colors = "abe5f6,abe5f6,69bbd9,2b52a9,121b5c,121b5c,140036,140036"},
					{ name = "GSE_CANNONEER_LEATHER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,92d2bb,5bb19e,2d8569,125756,125756,0a293b,0a293b"},

					--wose/elf
					{ name = "WOSE_LEATHER", description = "Wose", colors = "e6e6a6,e6e6a6,c99462,835c35,573a14,573a14,352313,352313"},
					{ name = "KALIAN_ELF_LEATHER", description = "Kalian Elf TroW", colors = "d8c2ad,d8c2ad,a28d62,896941,704d1f,704d1f,47213c,47213c"},
					{ name = "ELF_DARKER_LEATHER", description = "Elvish Armour Dark", colors = "a4b496,a4b496,687862,313b31,252a23,252a23,121311,121311"},
					{ name = "ELF_LIGHTER_LEATHER", description = "Elvish Armour Light", colors = "e8edd5,e8edd5,a4b496,687862,313b31,313b31,252a23,252a23"},

					--merfolk
					{ name = "MERFOLK_LEATHER", description = "Merfolk", colors = "f2f2ea,f2f2ea,d8c2ad,b3ae78,484b42,484b42,504137,504137"},
					{ name = "MERFOLK_MAGE_LEATHER", description = "Merfolk Siren", colors = "f8f8f8,f8f8f8,d8c2ad,a28d62,425838,425838,382218,382218"},
					{ name = "MERFOLK_HOPLITE_LEATHER", description = "Merfolk Hoplite", colors = "f2f2ea,f2f2ea,b3ae78,a28d62,484b42,484b42,504137,504137"},
					{ name = "AQUANA_LEATHER", description = "Aquana (Rashy Era)", colors = "e5e2c2,e5e2c2,d8ccad,a2a062,746e47,746e47,383618,383618"},
					{ name = "MERFOLK_JAVELINEER_LEATHER", description = "Merfolk Javelineer", colors = "bdbebd,bdbebd,979fa9,4d586d,586164,586164,404444,404444"},

					--UTBS
					{ name = "DAWARF_LEATHER", description = "Dawarf", colors = "db98c6,db98c6,c878b0,905080,583068,583068,301030,301030"},
					{ name = "FLESHGOLEM_LEATHER", description = "Fleshgolem", colors = "dca993,dca993,de8685,ca7559,a85c4e,a85c4e,824143,824143"},
					{ name = "IXTHALA_LEATHER", description = "Ixthala", colors = "afacd9,afacd9,8a81b3,5e699c,474a6b,474a6b,222438,222438"},
					{ name = "DARK_ASSASSIN_MASK_LEATHER", description = "Dark Assassin Mask", colors = "cc8f8c,cc8f8c,9d6b6f,7d303b,57373b,57373b,342a29,342a29"},
					{ name = "DARK_ASSASSIN_CLOAK_LEATHER", description = "Dark Assassin Cloak", colors = "9c8b8b,9c8b8b,8f7a7a,74605d,5c4744,5c4744,372725,372725"},
					{ name = "UTBS_HUMAN_LEATHER", description = "UtbS Human", colors = "d1d199,d1d199,999955,554c26,2c1a09,2c1a09,090602,090602"},
					{ name = "QUENOTH_RED_LEATHER", description = "Quenoth Red", colors = "d9aea6,d9aea6,bd696e,9f2133,6a343b,6a343b,3f2a31,3f2a31"},
					{ name = "QUENOTH_BLUE_LEATHER", description = "Quenoth Blue", colors = "a4f19d,a4f19d,78c1b2,4c91c9,4a707a,4a707a,4a2e62,4a2e62"},

					--animal parts
					{ name = "JUMPING_SPIDER_LEATHER", description = "Jumping Spider", colors = "dcd1ff,dcd1ff,bbabed,6b57b9,5e4da1,5e4da1,1e1348,1e1348"},
					{ name = "SCORPLING_LEATHER", description = "Scorpling", colors = "dab6c4,dab6c4,c19fa5,a38583,7f615f,7f615f,491d27,491d27"},
					{ name = "TENTACLE_LEATHER", description = "Tentacle", colors = "cdcdcd,cdcdcd,94999a,68676f,4a5661,4a5661,311a16,311a16"},
					{ name = "SEASERPENT_LEATHER", description = "Sea Serpent", colors = "adcfcf,adcfcf,87a1a1,5b7f8a,405f72,405f72,384247,384247"},
					{ name = "SCARAB_LEATHER", description = "Scarab", colors = "a5deab,a5deab,74c67e,6ca26a,657e55,657e55,49613b,49613b"},
					{ name = "SCORPIAN_LEATHER", description = "Scorpion", colors = "b6c8da,b6c8da,8384a3,5f607f,414c5e,414c5e,1d2c49,1d2c49"},
					{ name = "CRAB_LEATHER", description = "Crab", colors = "ddd3cd,ddd3cd,b6aca4,917b4d,695937,695937,261f10,261f10"},
					{ name = "BAT_LEATHER", description = "Vampire Bat", colors = "ad7569,ad7569,84495e,794d44,592b3b,592b3b,1b1b1b,1b1b1b"},
					{ name = "BLOODBAT_LEATHER", description = "Blood Bat", colors = "ec7e3d,ec7e3d,ba5520,963718,4d0000,4d0000,350000,350000"},
					{ name = "DREADBAT_LEATHER", description = "Dread Bat", colors = "707070,707070,4e4e4e,353535,292929,292929,191919,191919"},
					{ name = "DREADBAT_METAL_LEATHER", description = "Dread Bat Metal", colors = "707070,707070,4e4e4e,353535,292929,292929,191919,191919"},
					{ name = "ANT_LEATHER", description = "Ant", colors = "90a8b0,90a8b0,907ab5,706993,505870,505870,550022,550022"},
					{ name = "FIREANT_LEATHER", description = "Fire Ant", colors = "ffc843,ffc843,ff4301,b02e00,821611,821611,550022,550022"},

					--rashy era
					{ name = "DARDO_LEATHER", description = "Dardo (Rashy Era)", colors = "bd9785,bd9785,8b6c71,593a3f,33282a,33282a,1f1f1a,1f1f1a"},
					{ name = "MARASHY_LEATHER", description = "Marashy (Rashy Era)", colors = "bdd6e6,bdd6e6,a28d62,3d5a4b,454545,454545,232323,232323"},
					{ name = "LUZ_LEATHER", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,d6be6b,ad9748,88742f,5e4e1a,5e4e1a,2f270a,2f270a"},

					--Default grey troll
					{ name = "TROLL_GREY_LEATHER", description = "Troll Grey", colors = "a8a8a8,a8a8a8,747f73,616153,374336,374336,172830,172830" },

					--earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN_LEATHER", description = "Light Earth", colors = "f6d39b,f6d39b,c5956a,a9794f,7b4231,7b4231,422110,422110" },
					{ name = "TROLL_WOODENEARTH_LEATHER", description = "Wooden Earth", colors = "c99462,c99462,835c35,573a14,352313,352313,131414,131414" },
					{ name = "TROLL_EARTHEN_LEATHER", description = "Earth", colors = "bc946b,bc946b,b3785b,844c1f,462d1f,462d1f,201810,201810" },
					{ name = "TROLL_GOBLINMUD_LEATHER", description = "Goblinmud", colors = "c08008,c08008,985810,804018,582820,582820,281010,281010" },
					{ name = "TROLL_DARKERMUD_LEATHER", description = "Darker Mud", colors = "918460,918460,60573c,3c3623,22221a,22221a,191911,191911" },
					{ name = "TROLL_DARKMUD_LEATHER", description = "Dark Mud", colors = "e2a76f,e2a76f,97663c,574d31,383838,383838,3b3427,3b3427" },
					{ name = "TROLL_DARKGREEN_LEATHER", description = "Dark Green", colors = "797979,797979,506858,333d33,22221e,22221e,191915,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE_LEATHER", description = "Dark Bright Stone", colors = "aa9966,aa9966,939372,515138,2d2d2d,2d2d2d,172830,172830" },
					{ name = "TROLL_SANDSTONE_LEATHER", description = "Sandstone", colors = "ffffce,ffffce,d6d69c,949473,525239,525239,2d2e22,2d2e22" },
					{ name = "TROLL_TEAMCOLOR_LEATHER", description = "Teamcolor", colors = "ef5ba1,ef5ba1,d6007f,9e005d,690039,690039,55002a,55002a" },
					{ name = "TROLL_MOLTEN_LEATHER", description = "Molten", colors = "e2cd67,e2cd67,f3a62c,af3c18,8e1a12,8e1a12,6f282b,6f282b" },
					{ name = "TROLL_OLDGREEN_LEATHER", description = "1.0 Troll", colors = "6ECD8F,6ECD8F,50A070,327855,185030,185030,102810,102810" },
					{ name = "TROLL_GRUU_LEATHER", description = "Grüü (SotBE)", colors = "a8a8a8,a8a8a8,817d71,635054,454133,454133,172830,172830" }
				},
			},
		}
	},
	{
		name = "quenoth_tan_cape", -- body_part
		description = "Tan Cape",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Uncloaked"},
				base = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,EDDDC8,C1B69A,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,FCFFDC,BDD6E6,89BBB5,8592B9,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,705B49,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,C9C49E,A3AB5B,898B5F,62754A,62754A,436448,494428,313926" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,DBC5AF,C3A89F,9C8B8B,8F7A7A,8F7A7A,74605D,5C4744,372725" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_headscarf", -- body_part
		description = "Tan Headscarf",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Uncloaked"},
				base = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
				},
			},
		}
	},
	{
		name = "quenoth_mount_body", -- body_part
		description = "Mount Body",
		data = {
			tauroch = { -- archtype
				unit_types = {	"Tauroch Rider",
								"Tauroch Vanguard","Tauroch Flagbearer",
								"Tauroch Stalwart","Tauroch Protector"},
				base = "E19D6F,BD8331,935B53,664B50,573535,47213C,2B112A",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "E19D6F,BD8331,935B53,664B50,573535,47213C,2B112A" },
					{ name = "LIGHT", description = "Light Tauroch", colors = "F5B588,D59F4D,AB746C,7F6469,704C4C,56393F,3D2633" },
					{ name = "DARK", description = "Dark Tauroch", colors = "C87F52,A06516,763F38,4C3136,3D1D1D,2E1416,1F0B10" },
					{ name = "ALBINO", description = "Albino Tauroch", colors = "FFFFFF,FDF6EE,F0DFCB,E0C4A8,C9A685,B18F70,99785B" },
					{ name = "MELANISTIC", description = "Black Tauroch", colors = "4B4B4B,383838,262626,171717,0A0A0A,050505,000000" },
					{ name = "CAMEL", description = "Camel", colors = "D4B594,B89872,9C7C54,7F5F39,634421,52371A,422B14" },
					{ name = "ORYX", description = "Oryx", colors = "F4F1EB,DFD8CA,C4BCA6,A49981,7A715C,675F4C,544D3D" },
				},
			},
			dustbok = { -- archtype
				unit_types = { 	"Quenoth Scout",
								"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider","Quenoth Pathfinder"},
				base = "F4C960,DFB769,D69168,BA7D54,9F6A3F,844824,4F2400,6A390A,301000,000000",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F4C960,DFB769,D69168,BA7D54,9F6A3F,844824,4F2400,6A390A,301000,000000" },
					{ name = "LIGHT", description = "Light Dustbok", colors = "FFE590,EFD392,E9B390,D19A76,B7885F,9C613D,6A3C15,804A1B,4A2010,1F0C05" },
					{ name = "DARK", description = "Dark Dustbok", colors = "D0A140,BA924B,B06A44,955B32,7C491D,63310B,361400,4D2405,1A0500,050100" },
					{ name = "ALBINO", description = "Albino Dustbok", colors = "FFFFFF,FCF9F2,F4EBE1,E8D9C8,D9C1AB,C7A98F,B29074,C2A187,8E6B52,5A3E2B" },
					{ name = "MELANISTIC", description = "Black Dustbok", colors = "5A5A5A,4A4A4A,3D3D3D,2F2F2F,222222,161616,0C0C0C,111111,030303,000000" },
					{ name = "FENNEC", description = "Fennec Fox", colors = "FDF2D8,F2DEB3,E5C890,D1A96B,B58A4D,946A36,68451E,7A5427,42270D,1A0F05" },
					{ name = "ADDAX", description = "Addax", colors = "FCFBF8,EEECE4,DCD6C6,C6BDA8,AD9F86,918063,6C5B42,7D6C50,4A3C28,1F1910" },
				},
			},
		}
	},
	{
		name = "quenoth_mount_horn", -- body_part
		description = "Mount Horn",
		data = {
			tauroch = { -- archtype
				unit_types = {	"Tauroch Rider",
								"Tauroch Vanguard","Tauroch Flagbearer",
								"Tauroch Stalwart","Tauroch Protector"},
				base = "FCFFDD,BDD6E7,8592BA,4A707B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "FCFFDD,BDD6E7,8592BA,4A707B" },
					{ name = "LIGHT", description = "Light Horn", colors = "FFFFFF,DDF0FF,A9B9DF,67919C" },
					{ name = "DARK", description = "Dark Horn", colors = "E0E5B5,96B5CA,647299,31515B" },
					{ name = "ALBINO", description = "Albino Horn", colors = "FFF0F5,FFE4E1,F0B6B6,D28E8E" },
					{ name = "MELANISTIC", description = "Black Horn", colors = "757575,525252,333333,1A1A1A" },
					{ name = "DESERT_BONE", description = "Desert Bone", colors = "F5F5DC,E3D8B8,C1B28C,9E8C61" },
				},
			},
			dustbok = { -- archtype
				unit_types = { 	"Quenoth Scout",
								"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider","Quenoth Pathfinder"},
				base = "CAD1D7,ADB5BD,929BA3,7B848C,425A52,363E3A,292121",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "CAD1D7,ADB5BD,929BA3,7B848C,425A52,363E3A,292121" },
					{ name = "LIGHT", description = "Light Horn", colors = "E6EBEF,C8D2D9,AAB5BE,929CA5,5B7A70,48544E,383E3B" },
					{ name = "DARK", description = "Dark Horn", colors = "A8B0B6,8C969F,737E88,5D6870,2E433C,252C28,1A1E1C" },
					{ name = "ALBINO", description = "Albino Horn", colors = "FFF9F9,F2E4E4,E2CCCC,CEA8A8,9C7272,795454,4F3737" },
					{ name = "MELANISTIC", description = "Black Horn", colors = "505050,424242,353535,292929,1F1F1F,121212,0A0A0A" },
					{ name = "DESERT_BONE", description = "Desert Bone", colors = "FBF8F1,ECE3CE,D9CBB1,C3AE8F,9C8764,735F42,473926" },
				},
			},
		}
	}
}

_G.ucc_race_registry["quenoth"] = {
    body_parts = body_parts
}