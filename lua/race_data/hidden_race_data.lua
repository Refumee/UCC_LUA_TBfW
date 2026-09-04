-- hidden_race.lua
local body_parts = {
	{
		name = "quenoth_skin", -- body_part
		description = "Skin",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked" },
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
		name = "quenoth_blue_cloth", -- body_part
		description = "Blue Cloth",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked"},
				base = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
					{ name = "MAGE_CLOTH_HUMANMAGE", description = "Mage Cloth", colors = "B18134,976831,83552F,75462F,5B3A30,432F25,2D2410"},
					{ name = "MAGE_CLOTH_REDMAGE", description = "Red Mage Cloth", colors = "C5956A,B7875D,A9794F,986E4B,876246,6B4B3B,4E3430"},
					{ name = "MAGE_CLOTH_ARCHMAGE", description = "Arch Mage Cloth", colors = "CABCA2,B1A38A,998D74,847860,6E634B,5B503A,4B402B"},
					{ name = "MAGE_CLOTH_SILVER_MAGE", description = "Silver Mage Cloth", colors = "C0D7E0,A0BFCB,8AADB5,7EA0A0,708591,59657D,384062"},
					{ name = "MAGE_CLOTH_WHITE_MAGE", description = "White Mage Cloth", colors = "C0D7E0,A8C5D0,90B3C0,7897A8,607B90,516779,425361"},
					{ name = "MAGE_CLOTH_MAGE_HOOD", description = "Mage Hood Cloth", colors = "BFBFBF,959595,83878A,8A949F,696C70,555555,4D4D4D"},
					{ name = "MAGE_CLOTH_SILVER_MAGE_HOOD", description = "Silver Mage Hood Cloth", colors = "D6D6D6,C1C1C1,ABABAB,929292,7A7A7A,646464,4D4D4D"},
					{ name = "MAGE_CLOTH_WHITE_MAGE_HOOD", description = "White Mage Hood Cloth", colors = "D3CBBB,A2A6A8,858B93,7A7A7A,51575D,303B45,182830"},
					{ name = "MAGE_CLOTH_ELDER_MAGE", description = "Elder Mage Cloth", colors = "84401E,7B3715,6D2F13,5A2816,4A2312,3B1C11,2C1212"},
					{ name = "MAGE_CLOTH_ELDER_MAGE_HOOD", description = "Elder Mage Hood Cloth", colors = "A4977E,8F826A,796D56,635841,534832,413722,2D2410"},
					{ name = "MAGE_CLOTH_DELFADOR_HTTT", description = "Delfador Cloth (HttT)", colors = "834D70,743A68,60245F,470D55,3D0646,310238,22012D"},
					{ name = "MAGE_CLOTH_DELFADOR_HTTT_HOOD", description = "Delfador Hood Cloth (HttT)", colors = "3D8381,1C6F68,0A5A55,07444A,04333A,03222D,031222"},
					{ name = "MAGE_CLOTH_DELFADOR_TDG3", description = "Delfador Cloth (TDG)", colors = "D4AE76,B68F5F,95724A,705638,4B4F42,303D3A,212121"},
					{ name = "MAGE_CLOTH_DELFADOR_TDG4", description = "Delfador Cloth Grey (TDG)", colors = "D2D2D2,B8B8B8,9B9B9B,7A7A7A,5C5C5C,464C4B,384B47"},
					{ name = "MAGE_CLOTH_DARKER", description = "Darker Cloth", colors = "818442,6E6E37,5C572C,4E5033,41493A,313C2A,212E1A"},
					{ name = "MAGE_CLOTH_GREENPURPLE", description = "Green Purple", colors = "93A167,808564,6E6962,584E5B,433455,211A2B,000001"},
					{ name = "MAGE_CLOTH_GREENRED", description = "Green Red", colors = "A19F7C,8C8A66,77744F,6C5844,603B3A,403B30,213B25"},
					{ name = "MAGE_CLOTH_BROWNREDPURPLE", description = "Brown Red Purple", colors = "826E2F,7C5C26,75491E,5E352D,47213C,431B2B,3F1519"},
					{ name = "MAGE_CLOTH_BROWNGREY", description = "Brown Grey", colors = "84754A,6F623C,594E2F,504837,47433F,39382B,2B2C16"},
					{ name = "MAGE_CLOTH_DARKBROWN", description = "Dark Brown", colors = "A08662,8D765C,796755,5E5044,423934,322A27,221C1A"},
					{ name = "MAGE_CLOTH_LIGHTBROWN", description = "Light Brown", colors = "CDA184,B08167,93614A,7C4C31,653618,4E2611,38160A"},
					{ name = "MAGE_CLOTH_BROWNGREYGREEN", description = "Brown Greygreen", colors = "8F6C61,7D5B4C,6B4936,594D3D,475044,473E36,472B27"},
					{ name = "MAGE_CLOTH_ORANGEBLUE", description = "Orange Blue", colors = "D08159,AF756A,8D697A,575368,203C56,17344E,0D2B45"},
					{ name = "MAGE_CLOTH_BLUE", description = "Blue", colors = "50596E,3C4758,273541,273844,273A48,222F3F,1D2336"},
					{ name = "MAGE_CLOTH_PURPLE", description = "Purple", colors = "9D7D95,83667E,684E67,5C4961,50445A,41374D,322A3F"},
					{ name = "MAGE_CLOTH_GREY", description = "Grey", colors = "909090,808080,6F6F6F,595959,434343,323232,212121"},
					{ name = "MAGE_CLOTH_GREYBROWN", description = "Grey Brown", colors = "576D6D,717565,8A7D5D,725E48,593F33,3E2F2B,221E23"},
					{ name = "MAGE_CLOTH_GREYRED", description = "Grey Red", colors = "AAAA8E,8E8E80,717171,635555,553939,472F2F,393939"},
					{ name = "MAGE_CLOTH_ORC_SHAMAN", description = "Orc Shaman", colors = "9AAB60,898F49,726F32,554C1B,3F3814,473F14,312B0A"},
					{ name = "MAGE_CLOTH_DUNEBURNER", description = "Dune Burner", colors = "D5D3A1,BBB993,A09F84,908875,7F7165,625554,453843"},
					{ name = "MAGE_CLOTH_DUNEHERBALIST", description = "Dune Herbalist", colors = "B8A641,999A52,798D63,667648,535E2D,424920,303313"},
					{ name = "MAGE_CLOTH_DARKDUNE", description = "Dark Dune Cloth", colors = "E6E6CC,C8C8AD,AAAA8E,8E8E80,717171,555555,393939"},
					{ name = "MAGE_CLOTH_LIGHTDUNE", description = "Light Dune Cloth", colors = "F6F6DA,E6E5BE,D5D3A1,C8C696,BAB98B,837D67,4B4142"},
					{ name = "MAGE_CLOTH_ROGUE_MAGE", description = "Rogue Mage Cloth", colors = "636363,505050,44442F,3D3D00,211F13,24261A,152114"},
					{ name = "MAGE_CLOTH_DARKADEPT", description = "Dark Adept Cloth", colors = "A5B89C,97A88E,889880,6C806C,506858,3C4C40,283028"},
					{ name = "MAGE_CLOTH_ELVISHSHAMAN", description = "Elvish Shaman Cloth", colors = "EFFF9C,C6EF7B,9CDE5A,77B94A,529439,518331,4F7229"},
					{ name = "MAGE_CLOTH_SAURIANAUGUR", description = "Saurian Augur Cloth", colors = "FFFFFF,CDCECE,9B9C92,76776E,515249,343A3B,17212C"},
					{ name = "MAGE_CLOTH_SAURIANORACLE", description = "Saurian Oracle Cloth", colors = "FFFFFF,C6E1E1,8DC2C2,5D8797,2C4C6C,22374C,17212C"},
					{ name = "MAGE_CLOTH_SAURIANPROPHET", description = "Saurian Prophet Cloth", colors = "FFD44A,FFDD74,FFE59D,DFA94F,BF6D00,8C4301,581802"},
					{ name = "MAGE_CLOTH_SAURIANSEER", description = "Saurian Seer Cloth", colors = "FFFFFF,FFEAA5,FFD44A,DFA125,BF6D00,8C4301,581802"}
				},
			},
		}
	},
	{
		name = "quenoth_blue_metal", -- body_part
		description = "Blue Metal",
		data = {
			assassin = {
				unit_types = { 	"Dark Assassin Cloaked"},
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
		}
	},
	{
		name = "quenoth_red_metal", -- body_part
		description = "Red Metal",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked" },
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
		name = "quenoth_tan_cape", -- body_part
		description = "Tan Cape",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked"},
				base = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,EDDDC8,C1B69A,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,FCFFDC,BDD6E6,89BBB5,8592B9,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,705B49,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,C9C49E,A3AB5B,898B5F,62754A,62754A,436448,494428,313926" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,DBC5AF,C3A89F,9C8B8B,8F7A7A,8F7A7A,74605D,5C4744,372725" },
					{ name = "MAGE_CLOTH_HUMANMAGE", description = "Mage Cloth", colors = "B18134,9D6E32,8D5E30,80512F,75462F,623D30,4F342A,3D2C20,2D2410" },
					{ name = "MAGE_CLOTH_REDMAGE", description = "Red Mage Cloth", colors = "C5956A,BA8A60,B08056,A5764E,986E4B,8B6547,795640,644538,4E3430" },
					{ name = "MAGE_CLOTH_ARCHMAGE", description = "Arch Mage Cloth", colors = "CABCA2,B7A990,A5987F,94886F,847860,736850,645A42,574C36,4B402B" },
					{ name = "MAGE_CLOTH_SILVER_MAGE", description = "Silver Mage Cloth", colors = "C0D7E0,A8C5D0,95B6C0,87AAB0,7EA0A0,748C95,647587,515C76,384062" },
					{ name = "MAGE_CLOTH_WHITE_MAGE", description = "White Mage Cloth", colors = "C0D7E0,AECAD4,9CBCC8,8AACBA,7897A8,668296,587184,4D6273,425361" },
					{ name = "MAGE_CLOTH_MAGE_HOOD", description = "Mage Hood Cloth", colors = "BFBFBF,A0A0A0,8C8E90,858A8F,8A949F,71767C,5F6062,535353,4D4D4D" },
					{ name = "MAGE_CLOTH_SILVER_MAGE_HOOD", description = "Silver Mage Hood Cloth", colors = "D6D6D6,C6C6C6,B6B6B6,A5A5A5,929292,808080,6F6F6F,5E5E5E,4D4D4D" },
					{ name = "MAGE_CLOTH_WHITE_MAGE_HOOD", description = "White Mage Hood Cloth", colors = "D3CBBB,AEAFAD,94999E,82878D,7A7A7A,5B6064,414951,2A3640,182830" },
					{ name = "MAGE_CLOTH_ELDER_MAGE", description = "Elder Mage Cloth", colors = "84401E,7D3917,743314,682D14,5A2816,4E2413,432012,371A11,2C1212" },
					{ name = "MAGE_CLOTH_ELDER_MAGE_HOOD", description = "Elder Mage Hood Cloth", colors = "A4977E,94876F,847860,746851,635841,574C36,4A402A,3C321E,2D2410" },
					{ name = "MAGE_CLOTH_DELFADOR_HTTT", description = "Delfador Cloth (HttT)", colors = "834D70,783F6A,6A2F64,5A1E5D,470D55,40084A,37043F,2D0235,22012D" },
					{ name = "MAGE_CLOTH_DELFADOR_HTTT_HOOD", description = "Delfador Hood Cloth (HttT)", colors = "3D8381,24746E,13655F,095552,07444A,05373E,042B34,031E2A,031222" },
					{ name = "MAGE_CLOTH_DELFADOR_TDG3", description = "Delfador Cloth (TDG)", colors = "D4AE76,BE9765,A68155,8C6B46,705638,545140,3E463E,2C3634,212121" },
					{ name = "MAGE_CLOTH_DELFADOR_TDG4", description = "Delfador Cloth Grey (TDG)", colors = "D2D2D2,BFBFBF,AAAAAA,939393,7A7A7A,646464,515454,434C4A,384B47" },
					{ name = "MAGE_CLOTH_DARKER", description = "Darker Cloth", colors = "818442,73743A,656332,59552E,4E5033,444B38,394332,2D3926,212E1A" },
					{ name = "MAGE_CLOTH_GREENPURPLE", description = "Green Purple", colors = "93A167,858C65,777763,696260,584E5B,483B57,322740,191421,000001" },
					{ name = "MAGE_CLOTH_GREENRED", description = "Green Red", colors = "A19F7C,918F6C,827F5B,746D4C,6C5844,63423D,503B35,383B2D,213B25" },
					{ name = "MAGE_CLOTH_BROWNREDPURPLE", description = "Brown Red Purple", colors = "826E2F,7E6128,795322,6F4422,5E352D,4D2638,451E34,421A27,3F1519" },
					{ name = "MAGE_CLOTH_BROWNGREY", description = "Brown Grey", colors = "84754A,746740,645836,574D31,504837,49443D,403E35,363526,2B2C16" },
					{ name = "MAGE_CLOTH_DARKBROWN", description = "Dark Brown", colors = "A08662,927A5E,836F59,726151,5E5044,493F38,3A322E,2E2724,221C1A" },
					{ name = "MAGE_CLOTH_LIGHTBROWN", description = "Light Brown", colors = "CDA184,B7896E,A27159,8D5C44,7C4C31,6B3C1E,5A2E15,49220F,38160A" },
					{ name = "MAGE_CLOTH_BROWNGREYGREEN", description = "Brown Greygreen", colors = "8F6C61,825F51,745241,674A38,594D3D,4C4F42,47473D,473932,472B27" },
					{ name = "MAGE_CLOTH_ORANGEBLUE", description = "Orange Blue", colors = "D08159,B77866,9E6F72,806476,575368,2E425B,1C3852,15324C,0D2B45" },
					{ name = "MAGE_CLOTH_BLUE", description = "Blue", colors = "50596E,414C5E,323E4D,273642,273844,273A47,253544,212C3D,1D2336" },
					{ name = "MAGE_CLOTH_PURPLE", description = "Purple", colors = "9D7D95,8A6C84,765A73,654D66,5C4961,53455C,493E54,3D344A,322A3F" },
					{ name = "MAGE_CLOTH_GREY", description = "Grey", colors = "909090,848484,787878,6A6A6A,595959,494949,3B3B3B,2E2E2E,212121" },
					{ name = "MAGE_CLOTH_GREYBROWN", description = "Grey Brown", colors = "576D6D,6B7367,7E7961,847558,725E48,5F4738,4C372F,372B29,221E23" },
					{ name = "MAGE_CLOTH_GREYRED", description = "Grey Red", colors = "AAAA8E,959584,808079,6E6A6A,635555,594040,4E3434,443232,393939" },
					{ name = "MAGE_CLOTH_ORC_SHAMAN", description = "Orc Shaman", colors = "9AAB60,8D964F,7E7F3E,6B662C,554C1B,453D16,433C14,423A12,312B0A" },
					{ name = "MAGE_CLOTH_DUNEBURNER", description = "Dune Burner", colors = "D5D3A1,C2C097,AEAC8C,9C9980,908875,837769,71635D,5B4E50,453843" },
					{ name = "MAGE_CLOTH_DUNEHERBALIST", description = "Dune Herbalist", colors = "B8A641,A19D4E,89945B,74875C,667648,586434,4B5427,3E441D,303313" },
					{ name = "MAGE_CLOTH_DARKDUNE", description = "Dark Dune Cloth", colors = "E6E6CC,D0D0B5,B9B99E,A3A38B,8E8E80,787875,636363,4E4E4E,393939" },
					{ name = "MAGE_CLOTH_LIGHTDUNE", description = "Light Dune Cloth", colors = "F6F6DA,EAE9C5,DEDCB0,D2D09E,C8C696,BEBC8E,9F9B79,756E5E,4B4142" },
					{ name = "MAGE_CLOTH_ROGUE_MAGE", description = "Rogue Mage Cloth", colors = "636363,555555,4A4A40,424223,3D3D00,28270E,232317,202519,152114" },
					{ name = "MAGE_CLOTH_DARKADEPT", description = "Dark Adept Cloth", colors = "A5B89C,9BAC92,90A087,81927B,6C806C,576E5D,465A4C,37453A,283028" },
					{ name = "MAGE_CLOTH_ELVISHSHAMAN", description = "Elvish Shaman Cloth", colors = "EFFF9C,D0F383,B1E76B,93D556,77B94A,5B9D3D,528C35,517F2F,4F7229" },
					{ name = "MAGE_CLOTH_SAURIANAUGUR", description = "Saurian Augur Cloth", colors = "FFFFFF,DADADA,B4B5B0,929389,76776E,5A5B52,434642,2D3437,17212C" },
					{ name = "MAGE_CLOTH_SAURIANORACLE", description = "Saurian Oracle Cloth", colors = "FFFFFF,D4E9E9,AAD2D2,81B3B7,5D8797,385B77,27425C,1F3244,17212C" },
					{ name = "MAGE_CLOTH_SAURIANPROPHET", description = "Saurian Prophet Cloth", colors = "FFD44A,FFDB6A,FFE189,F7D68A,DFA94F,C77C14,A65801,7F3801,581802" },
					{ name = "MAGE_CLOTH_SAURIANSEER", description = "Saurian Seer Cloth", colors = "FFFFFF,FFEFBC,FFDF78,F7C741,DFA125,C77A09,A65801,7F3801,581802" }
				},
			},
		}
	},
	{
		name = "quenoth_tan_headscarf", -- body_part
		description = "Tan Headscarf",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked"},
				base = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "MAGE_CLOTH_HUMANMAGE", description = "Mage Cloth", colors = "B18134,976831,83552F,75462F,5B3A30,432F25,2D2410"},
					{ name = "MAGE_CLOTH_REDMAGE", description = "Red Mage Cloth", colors = "C5956A,B7875D,A9794F,986E4B,876246,6B4B3B,4E3430"},
					{ name = "MAGE_CLOTH_ARCHMAGE", description = "Arch Mage Cloth", colors = "CABCA2,B1A38A,998D74,847860,6E634B,5B503A,4B402B"},
					{ name = "MAGE_CLOTH_SILVER_MAGE", description = "Silver Mage Cloth", colors = "C0D7E0,A0BFCB,8AADB5,7EA0A0,708591,59657D,384062"},
					{ name = "MAGE_CLOTH_WHITE_MAGE", description = "White Mage Cloth", colors = "C0D7E0,A8C5D0,90B3C0,7897A8,607B90,516779,425361"},
					{ name = "MAGE_CLOTH_MAGE_HOOD", description = "Mage Hood Cloth", colors = "BFBFBF,959595,83878A,8A949F,696C70,555555,4D4D4D"},
					{ name = "MAGE_CLOTH_SILVER_MAGE_HOOD", description = "Silver Mage Hood Cloth", colors = "D6D6D6,C1C1C1,ABABAB,929292,7A7A7A,646464,4D4D4D"},
					{ name = "MAGE_CLOTH_WHITE_MAGE_HOOD", description = "White Mage Hood Cloth", colors = "D3CBBB,A2A6A8,858B93,7A7A7A,51575D,303B45,182830"},
					{ name = "MAGE_CLOTH_ELDER_MAGE", description = "Elder Mage Cloth", colors = "84401E,7B3715,6D2F13,5A2816,4A2312,3B1C11,2C1212"},
					{ name = "MAGE_CLOTH_ELDER_MAGE_HOOD", description = "Elder Mage Hood Cloth", colors = "A4977E,8F826A,796D56,635841,534832,413722,2D2410"},
					{ name = "MAGE_CLOTH_DELFADOR_HTTT", description = "Delfador Cloth (HttT)", colors = "834D70,743A68,60245F,470D55,3D0646,310238,22012D"},
					{ name = "MAGE_CLOTH_DELFADOR_HTTT_HOOD", description = "Delfador Hood Cloth (HttT)", colors = "3D8381,1C6F68,0A5A55,07444A,04333A,03222D,031222"},
					{ name = "MAGE_CLOTH_DELFADOR_TDG3", description = "Delfador Cloth (TDG)", colors = "D4AE76,B68F5F,95724A,705638,4B4F42,303D3A,212121"},
					{ name = "MAGE_CLOTH_DELFADOR_TDG4", description = "Delfador Cloth Grey (TDG)", colors = "D2D2D2,B8B8B8,9B9B9B,7A7A7A,5C5C5C,464C4B,384B47"},
					{ name = "MAGE_CLOTH_DARKER", description = "Darker Cloth", colors = "818442,6E6E37,5C572C,4E5033,41493A,313C2A,212E1A"},
					{ name = "MAGE_CLOTH_GREENPURPLE", description = "Green Purple", colors = "93A167,808564,6E6962,584E5B,433455,211A2B,000001"},
					{ name = "MAGE_CLOTH_GREENRED", description = "Green Red", colors = "A19F7C,8C8A66,77744F,6C5844,603B3A,403B30,213B25"},
					{ name = "MAGE_CLOTH_BROWNREDPURPLE", description = "Brown Red Purple", colors = "826E2F,7C5C26,75491E,5E352D,47213C,431B2B,3F1519"},
					{ name = "MAGE_CLOTH_BROWNGREY", description = "Brown Grey", colors = "84754A,6F623C,594E2F,504837,47433F,39382B,2B2C16"},
					{ name = "MAGE_CLOTH_DARKBROWN", description = "Dark Brown", colors = "A08662,8D765C,796755,5E5044,423934,322A27,221C1A"},
					{ name = "MAGE_CLOTH_LIGHTBROWN", description = "Light Brown", colors = "CDA184,B08167,93614A,7C4C31,653618,4E2611,38160A"},
					{ name = "MAGE_CLOTH_BROWNGREYGREEN", description = "Brown Greygreen", colors = "8F6C61,7D5B4C,6B4936,594D3D,475044,473E36,472B27"},
					{ name = "MAGE_CLOTH_ORANGEBLUE", description = "Orange Blue", colors = "D08159,AF756A,8D697A,575368,203C56,17344E,0D2B45"},
					{ name = "MAGE_CLOTH_BLUE", description = "Blue", colors = "50596E,3C4758,273541,273844,273A48,222F3F,1D2336"},
					{ name = "MAGE_CLOTH_PURPLE", description = "Purple", colors = "9D7D95,83667E,684E67,5C4961,50445A,41374D,322A3F"},
					{ name = "MAGE_CLOTH_GREY", description = "Grey", colors = "909090,808080,6F6F6F,595959,434343,323232,212121"},
					{ name = "MAGE_CLOTH_GREYBROWN", description = "Grey Brown", colors = "576D6D,717565,8A7D5D,725E48,593F33,3E2F2B,221E23"},
					{ name = "MAGE_CLOTH_GREYRED", description = "Grey Red", colors = "AAAA8E,8E8E80,717171,635555,553939,472F2F,393939"},
					{ name = "MAGE_CLOTH_ORC_SHAMAN", description = "Orc Shaman", colors = "9AAB60,898F49,726F32,554C1B,3F3814,473F14,312B0A"},
					{ name = "MAGE_CLOTH_DUNEBURNER", description = "Dune Burner", colors = "D5D3A1,BBB993,A09F84,908875,7F7165,625554,453843"},
					{ name = "MAGE_CLOTH_DUNEHERBALIST", description = "Dune Herbalist", colors = "B8A641,999A52,798D63,667648,535E2D,424920,303313"},
					{ name = "MAGE_CLOTH_DARKDUNE", description = "Dark Dune Cloth", colors = "E6E6CC,C8C8AD,AAAA8E,8E8E80,717171,555555,393939"},
					{ name = "MAGE_CLOTH_LIGHTDUNE", description = "Light Dune Cloth", colors = "F6F6DA,E6E5BE,D5D3A1,C8C696,BAB98B,837D67,4B4142"},
					{ name = "MAGE_CLOTH_ROGUE_MAGE", description = "Rogue Mage Cloth", colors = "636363,505050,44442F,3D3D00,211F13,24261A,152114"},
					{ name = "MAGE_CLOTH_DARKADEPT", description = "Dark Adept Cloth", colors = "A5B89C,97A88E,889880,6C806C,506858,3C4C40,283028"},
					{ name = "MAGE_CLOTH_ELVISHSHAMAN", description = "Elvish Shaman Cloth", colors = "EFFF9C,C6EF7B,9CDE5A,77B94A,529439,518331,4F7229"},
					{ name = "MAGE_CLOTH_SAURIANAUGUR", description = "Saurian Augur Cloth", colors = "FFFFFF,CDCECE,9B9C92,76776E,515249,343A3B,17212C"},
					{ name = "MAGE_CLOTH_SAURIANORACLE", description = "Saurian Oracle Cloth", colors = "FFFFFF,C6E1E1,8DC2C2,5D8797,2C4C6C,22374C,17212C"},
					{ name = "MAGE_CLOTH_SAURIANPROPHET", description = "Saurian Prophet Cloth", colors = "FFD44A,FFDD74,FFE59D,DFA94F,BF6D00,8C4301,581802"},
					{ name = "MAGE_CLOTH_SAURIANSEER", description = "Saurian Seer Cloth", colors = "FFFFFF,FFEAA5,FFD44A,DFA125,BF6D00,8C4301,581802"}
				},
			},
		}
	},
}

_G.ucc_race_registry["hidden_race"] = {
    body_parts = body_parts
}