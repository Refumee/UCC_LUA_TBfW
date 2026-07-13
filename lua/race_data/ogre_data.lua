-- ogre_data.lua
local body_parts = {
	{
		name = "ogre_skin", -- body_part
		description = "Skin",
		data = {
			ogre = {
				unit_types = { "Young Ogre", "Ogre", "Great Ogre", "Ancient Ogre"},
				base = "FFD087,F3B368,E2A76F,BA9863,97663C,574D31,3B3427", -- color 2 for Great/Ancient Ogre and color 4 for Ancient Ogre
				variants = {
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
		}
	},
	{
		name = "ogre_trousers", -- body_part
		description = "Trouser",
		data = {
			ogre = {
				unit_types = { "Young Ogre", "Ogre", "Great Ogre", "Ancient Ogre"},
				base = "DFFFFF,99AABB,555577,222244",
				variants = {
					{ name = "OGRE_TROUSER_OGRE", description = "Ogre", colors = "DFFFFF,99AABB,555577,222244"},
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
		}
	},
	{
		name = "ogre_weapon", -- body_part
		description = "Weapon",
		data = {
			ogre = {
				unit_types = { "Young Ogre", "Ogre", "Great Ogre", "Ancient Ogre"},
				base = "c6e7e7,94c6c6,638c94,31526b,182931",
				variants = {
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
					{ name = "QUENOTH_RED", description = "Quenoth Red", colors = "d9aea6,bd696e,9f2133,6a343b,3f2a31"},
					{ name = "QUENOTH_BLUE", description = "Quenoth Blue", colors = "a4f19d,78c1b2,4c91c9,4a707a,4a2e62"},

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
		name = "ogre_boot", -- body_part
		description = "Boot",
		data = {
			ogre = {
				unit_types = { "Young Ogre", "Ogre", "Great Ogre", "Ancient Ogre"},
				base = "FFDD88,AA9966,515138,303030",
				variants = {
					{ name = "OGRE_BOOTS", description = "Ogre Boot", colors = "FFDD88,AA9966,515138,303030"},
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
		}
	},
}

_G.ucc_race_registry["ogre"] = {
    body_parts = body_parts
}