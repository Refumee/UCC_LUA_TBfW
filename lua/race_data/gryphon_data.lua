-- gryphon_data.lua
local body_parts = {
	{
		name = "gryphon_body", -- body_part
		description = "Body",
		data = {
			feather = {
				unit_types = { "Gryphon","Gryphon Rider","Gryphon Master", "Afterlife Gryphon Rider", "Afterlife Gryphon Master" },
				base = "E0C3A2,BEA18B,AF937F,83675E,795332,543638,3B232B", 
				variants = {
					{ name = "DEFAULT_GRYPHON_BODY", description = "Default", colors = "E0C3A2,BEA18B,AF937F,83675E,795332,543638,3B232B" },
					-- variation
					{ name = "GRYPHON_BODY_LIGHT", description = "Lighter Body", colors = "F5DCC0,D4B9A4,C4AA97,9E8177,946D4B,6B4A4C,4F353E" },
					{ name = "GRYPHON_BODY_DARK", description = "Darker Body", colors = "C2A889,A18774,917967,6B534B,5E3F25,40282A,26151B" },
					{ name = "GRYPHON_BODY_WARM", description = "Warm Reddish Body", colors = "E8BA9D,C99680,BD8675,915951,874328,612C2F,451D24" },
					{ name = "GRYPHON_BODY_COOL", description = "Cool Ash Body", colors = "D1C7B1,AF9F92,9EA090,786C6A,6B5242,4A3940,31232B" },
					{ name = "GRYPHON_BODY_SATURATED", description = "Saturated Body", colors = "F2C596,D1A280,C48F70,996A5C,8C552B,66363B,47212A" },
					{ name = "GRYPHON_BODY_MUTED", description = "Muted Dusty Body", colors = "D1C6BD,B0A8A2,A19A95,75706E,695B50,4A4042,332A2E" },
					-- other units
					{ name = "GRYPHON_BODY_FALCON", description = "Falcon Body", colors = "E7D9BF,D7C6A4,B99F83,9D7964,7D502E,573711,381507" },
					{ name = "GRYPHON_BODY_RAVEN", description = "Raven Body", colors = "A0A7FB,A59BB7,8D83A0,716587,5C5073,493C61,2B194C" },
					-- different
					{ name = "GRYPHON_BODY_SNOW", description = "Arctic Body", colors = "FEFFFF,E6ECEF,C0CDDA,9CA8B5,768699,4F6075,2A374A" },
					{ name = "GRYPHON_BODY_OBSIDIAN", description = "Obsidian Body", colors = "8A8A9E,656578,4C4C5C,363645,242430,15151F,08080C" },
					{ name = "GRYPHON_BODY_DESERT", description = "Desert Body", colors = "FFE599,EBC573,D1A24B,B37E29,8A5B1C,5C380E,331A05" },
					{ name = "GRYPHON_BODY_FOREST", description = "Mossy Body", colors = "D6CDA5,B8AD80,968C5E,756B41,544C27,363014,1C1808" },
				},
			},
		}
	},
	{
		name = "gryhon_head", -- body_part
		description = "Head",
		data = {
			head = { -- archtype
				unit_types = { "Gryphon","Gryphon Rider","Gryphon Master", "Afterlife Gryphon Rider", "Afterlife Gryphon Master" },
				base = "F8EDC5,A8A098,585858,4E3A2D", --last color is just an "eyeliner"
				variants = {
					{ name = "DEFAULT_GRYPHON_HEAD", description = "Default", colors = "F8EDC5,A8A098,585858,4E3A2D" },
					-- variation
					{ name = "GRYPHON_HEAD_LIGHT", description = "Lighter Head", colors = "FFFFF5,C2B8B0,737373,664F40" },
					{ name = "GRYPHON_HEAD_DARK", description = "Darker Head", colors = "D9CEAB,8F8880,454545,36271D" },
					{ name = "GRYPHON_HEAD_WARM", description = "Warm Cream Head", colors = "FCE9B8,B09F92,635858,593C2A" },
					{ name = "GRYPHON_HEAD_COOL", description = "Cool Silver Head", colors = "EDEAF2,9F9EA6,54565C,423630" },
					{ name = "GRYPHON_HEAD_SATURATED", description = "Saturated Head", colors = "FCE6A4,B5A696,5E5E5E,593A24" },
					{ name = "GRYPHON_HEAD_MUTED", description = "Muted Grey Head", colors = "EDEBE6,A19F9D,575757,423A36" },
					-- other units
					{ name = "GRYPHON_HEAD_FALCON", description = "Falcon Head", colors = "D7C6A4,9D7964,7D502E,381507" },
					{ name = "GRYPHON_HEAD_RAVEN", description = "Raven Head", colors = "A59BB7,716587,5C5073,2B194C" },
					-- different
					{ name = "GRYPHON_HEAD_SNOW", description = "Arctic Head", colors = "EAF0F4,B8C5D1,7A8B9E,3B495C" },
					{ name = "GRYPHON_HEAD_OBSIDIAN", description = "Raven Head", colors = "424252,2A2A36,17171F,0A0A0F" },
					{ name = "GRYPHON_HEAD_DESERT", description = "Eagle Head", colors = "E0C78B,AD8C51,75582D,3D2912" },
					{ name = "GRYPHON_HEAD_FOREST", description = "Hawk Head", colors = "C4C0A3,918D6C,5E5A40,33301C" },
				},
			},
		}
	},
	{
		name = "gryphon_peak", -- body_part
		description = "Peak",
		data = {
			peak = {
				unit_types = { "Gryphon","Gryphon Rider","Gryphon Master", "Afterlife Gryphon Rider", "Afterlife Gryphon Master" },
				base = "EDC66D,CF804D,823F1E", 
				variants = {
					{ name = "DEFAULT_GRYPHON_PEAK", description = "Default", colors = "EDC66D,CF804D,823F1E" },
					-- variation
					{ name = "GRYPHON_PEAK_LIGHT", description = "Lighter Beak", colors = "FFE48F,EB9B67,9E5431" },
					{ name = "GRYPHON_PEAK_DARK", description = "Darker Beak", colors = "C9A354,AD673B,663016" },
					{ name = "GRYPHON_PEAK_WARM", description = "Warm Orange Beak", colors = "F2B36B,D6674B,8F301F" },
					{ name = "GRYPHON_PEAK_COOL", description = "Cool Brass Beak", colors = "EDE085,C99557,754326" },
					{ name = "GRYPHON_PEAK_SATURATED", description = "Saturated Beak", colors = "FFCE59,E67B3E,963C15" },
					{ name = "GRYPHON_PEAK_MUTED", description = "Muted Bone Beak", colors = "D9BD82,B8805E,6E4129" },
					-- other units
					{ name = "GRYPHON_PEAK_FALCON", description = "Falcon Beak", colors = "EFD335,DE9E05,573711" },
					{ name = "GRYPHON_PEAK_RAVEN", description = "Raven Beak", colors = "A49895,564743,342724" },
					-- different
					{ name = "GRYPHON_PEAK_SNOW", description = "Arctic Beak", colors = "8D9DAE,546475,222D3A" },
					{ name = "GRYPHON_PEAK_OBSIDIAN", description = "Silver Beak", colors = "C2C6D1,808594,424652" },
					{ name = "GRYPHON_PEAK_DESERT", description = "Ivory Beak", colors = "F5E8D3,C2B195,786851" },
					{ name = "GRYPHON_PEAK_FOREST", description = "Wood Beak", colors = "B59673,856545,4A3420" },
				},
			},
		}
	},
	{
		name = "dwarf_rider_armor", -- body_part
		description = "Armor",
		data = {
			dwarf_rider = {
				unit_types = {	"Gryphon Rider","Gryphon Master", "Afterlife Gryphon Rider", "Afterlife Gryphon Master"	},
				base = "FFFFFF,B1EBEC,93CFC5,58808D,31526B,21353E", 
				variants = {
					{ name = "DWARF_ARMOUR_DEFAULT", description = "Fighter", colors = "FFFFFF,B1EBEC,93CFC5,58808D,31526B,21353E"},
					{ name = "DWARF_ARMOUR_RUNESMITH", description = "Runesmith", colors = "FFFFFF,B1EBEC,79A9B3,4F6973,31526B,21353E"},
					{ name = "DWARF_ARMOUR_GRYPHONRIDER", description = "Gryphonrider", colors = "FFFFFF,CDDACE,9BB59D,6A8E7E,2D4A4F,21353E"},
					{ name = "DWARF_ARMOUR_THUNDERER", description = "Thunderer", colors = "FFFFFF,98CFC4,9BB59D,6A8E7E,2D4A4F,21353E"},
					{ name = "DWARF_ARMOUR_MINER", description = "Miner", colors = "CADAD7,9E948D,747171,4A5668,3A3A50,2C1D2B"},
					{ name = "DWARF_ARMOUR_GUARD", description = "Guard", colors = "DAB0A4,A9A098,8A766D,4F3A2D,352419,271A11"},
					{ name = "DWARF_ARMOUR_SENTINEL", description = "Sentinel", colors = "B1EBEC,8ABCB8,58808D,26446D,21353E,1C2123"},
					{ name = "DWARF_ARMOUR_WITNESS", description = "Witness", colors = "FFFFFF,B1EBEC,79A9B3,507059,4F6973,1E3038"},
					{ name = "DWARF_ARMOUR_KARRAG", description = "Karrag", colors = "DBE6E8,ADCCD2,6799A2,3B6C75,524855,182931"},
					-- human stuff
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "ffffff,c6e7e7,94c6c6,638c94,31526b,182931"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "ececec,c6e7e7,a0b9B8,6e8387,3f505c,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "ffffff,c6e7e7,c5cfda,8f8895,3f505c,182931"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "ffffff,ececec,c5cfda,66a5b2,31526b,3f505c"},

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
		}
	},
	{
		name = "dwarf_rider_beard", -- body_part
		description = "Beard",
		data = {
			dwarf_rider = { -- archetype
				unit_types = {	"Gryphon Rider","Gryphon Master", "Afterlife Gryphon Rider", "Afterlife Gryphon Master"	},
				base = "E08B7A,B14B4B,8B3219,592010",
				variants = {
					{ name = "DWARF_BEARD_MINER", description = "Miner", colors = "E08B7A,B14B4B,8B3219,592010"},
					{ name = "DWARF_BEARD_THUNDERER", description = "Thunderer", colors = "DAB0A4,B0937F,8B3219,582820"},
					{ name = "DWARF_BEARD_GRYPHONRIDER", description = "Gryphonrider", colors = "DABEA4,B0937F,8A4E0D,582820"},
					{ name = "DWARF_BEARD_ULFSERKER", description = "Ulfserker", colors = "B2EBEC,94CFC5,59808D,2D4A4F"},
					{ name = "DWARF_BEARD_FIGHTER", description = "Fighter", colors = "F9EDC5,E1C3A2,888868,4F3A2D"},
					{ name = "DWARF_BEARD_GUARD", description = "Guard", colors = "EEE498,EFC66D,D1804D,843F1E"},
					{ name = "DWARF_BEARD_RUNESMITH", description = "Runesmith", colors = "FEFFFF,E1C3A2,B0937F,4F3A2D"},
					{ name = "DWARF_BEARD_SCOUT", description = "Scout", colors = "DAB0A4,B0937F,8F3D14,582820"},
					{ name = "DWARF_BEARD_KARRAG", description = "Karrag", colors = "C7CFDC,9F9C99,757A7B,4E5053"},
					{ name = "DWARF_BEARD_ANNALIST", description = "Annalist", colors = "EFC66D,D1804D,8A4422,44260D"},
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
	}
}

_G.ucc_race_registry["gryphon"] = {
    body_parts = body_parts
}