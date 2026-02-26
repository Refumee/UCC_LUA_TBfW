-- human_data.lua
local body_parts = {
	{
		name = "Metal", -- body_part
		data = {
			infantry = {
                unit_types = { 
                    "Battle Princess", "Princess", "Cavalryman", "Horseman", "Dragoon", "Spearman", "Master at Arms", 
					"Bowman", "Swordsman", "General", "Longbowman", "Grand Marshal", "Sergeant", "Lieutenant", "Master Bowman", 
					"Knight", "Pikeman", "Royal Guard", "Halberdier", "Duelist", "Fencer", "Peasant", "Woodsman", 
					"Afterlife Battle Princess", "Afterlife Princess", "Afterlife Cavalryman", "Afterlife Horseman", 
					"Afterlife Dragoon", "Afterlife Spearman", "Afterlife Master at Arms", "Bowman", "Afterlife Swordsman", 
					"Afterlife General", "Afterlife Longbowman", "Afterlife Grand Marshal", "Afterlife Sergeant", 
					"Afterlife Lieutenant", "Afterlife Master Bowman", "Knight", "Afterlife Pikeman", "Afterlife Royal Guard", 
					"Afterlife Halberdier", "Afterlife Duelist", "Afterlife Fencer", "Afterlife Peasant", "Afterlife Woodsman",
					"Lancer", "Javelineer", "Afterlife Lancer", "Afterlife Javelineer"
                },
				base = "FFFFFF,C6E7E7,94C6C6,638C94,31526B,182931,C5CFDA,66A5B2,A0B9B8", 
				variants = {
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "FFFFFF,C6E7E7,94C6C6,638C94,31526B,182931,94C6C6,638C94,94C6C6"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "ECECEC,C6E7E7,A0B9B8,6E8387,3F505C,182931,A0B9B8,6E8387,A0B9B8"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "FFFFFF,C6E7E7,C5CFDA,8F8895,3F505C,182931,C5CFDA,8F8895,C5CFDA"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "FFFFFF,ECECEC,C5CFDA,66A5B2,31526B,3F505C,C5CFDA,66A5B2,C5CFDA"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "DBE6E8,ADCCD2,6799A2,3B6C75,213D43,182931,6799A2,3B6C75,6799A2"},
					{ name = "WITNESS", description = "Witness THoT", colors = "FFFFFF,B1EBEC,79A9B3,4F6973,507059,1E3038,79A9B3,4F6973,79A9B3"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "C3D2EF,9FAECB,697895,3D4E69,293A55,11203D,697895,3D4E69,697895"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "ECECEC,A8A098,78655A,4D4541,2C2623,191919,78655A,4D4541,78655A"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "DCCACA,A9A5AB,858086,5A565A,332D32,2C2623,858086,5A565A,858086"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ECECCF,CCC2B9,A8A098,686058,3D3A37,151718,A8A098,686058,A8A098"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "FFFFFF,DCDBDF,B6B4BA,7B7B85,53535B,34343A,B6B4BA,7B7B85,B6B4BA"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ECECEC,CCC2B9,A8A098,686058,524E46,3D3A37,A8A098,686058,A8A098"},

					--gold/bronze armour
					{ name = "DRAKE", description = "Drake Armour", colors = "FFFFFF,D1E997,C79962,996D24,AF3C18,4C3324,C79962,996D24,C79962"},
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "FFFFFF,FFE38C,FFCC43,C67B02,804018,66211B,FFCC43,C67B02,FFCC43"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "FFFFFF,ECECEC,D1B563,985810,512A13,2F1010,D1B563,985810,D1B563"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "FFFFFF,ECECEC,FFCC43,AF7A18,66211B,2F1010,FFCC43,AF7A18,FFCC43"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "FFFFFF,CCB066,AA6A28,804018,74341C,13262E,AA6A28,804018,AA6A28"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "FFFFFF,D6D69C,938D6D,525239,39382D,2F1010,938D6D,525239,938D6D"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "FFFFFF,FFF5A0,D6BD8A,888670,5C6339,3D3411,D6BD8A,888670,D6BD8A"},
					{ name = "ORC", description = "Orc", colors = "FFFFD5,FFDD88,AA9966,7F774C,515138,2D2D2D,AA9966,7F774C,AA9966"},
					{ name = "ASSASSIN", description = "Assassin", colors = "AAC0A0,889880,506858,333D33,273631,1C1B21,506858,333D33,506858"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "F8F8A0,CCB066,AA6A28,74341C,304860,13262E,AA6A28,74341C,AA6A28"},
					{ name = "SKELETON", description = "Skeleton", colors = "FFFFFF,FFFFCE,D6D69C,C8D090,949473,525239,D6D69C,C8D090,D6D69C"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,13262E,A3A7AB,73697E,A3A7AB"},
					{ name = "GHOST", description = "Ghost", colors = "FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,283028,A3A7AB,73697E,A3A7AB"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "FFFFFF,ABE5F6,69BBD9,2B52A9,121B5C,140036,69BBD9,2B52A9,69BBD9"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "FFFFFF,92D2BB,5BB19E,2D8569,125756,0A293B,5BB19E,2D8569,5BB19E"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "FFFFCA,E6E6A6,C99462,835C35,573A14,352313,C99462,835C35,C99462"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "E8EBE7,D8C2AD,A28D62,896941,704D1F,47213C,A28D62,896941,A28D62"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "E8EDD5,A4B496,687862,313B31,252A23,121311,687862,313B31,687862"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "FFFFFF,E8EDD5,A4B496,687862,313B31,252A23,A4B496,687862,A4B496"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "FFFFFF,F2F2EA,D8C2AD,B3AE78,484B42,504137,D8C2AD,B3AE78,D8C2AD"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "CDF8F8,F8F8F8,D8C2AD,A28D62,425838,382218,D8C2AD,A28D62,D8C2AD"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "cdf8f8,f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "FEFEFE,E5E2C2,D8CCAD,A2A062,746E47,383618,D8CCAD,A2A062,D8CCAD"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "F2F2EA,BDBEBD,979FA9,4D586D,586164,404444,979FA9,4D586D,979FA9"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "F8C8E8,DB98C6,C878B0,905080,583068,301030,C878B0,905080,C878B0"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "DBD2A4,DCA993,DE8685,CA7559,A85C4E,824143,DE8685,CA7559,DE8685"},
					{ name = "IXTHALA", description = "Ixthala", colors = "CECCEA,AFACD9,8A81B3,5E699C,474A6B,222438,8A81B3,5E699C,8A81B3"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "ECC3C1,CC8F8C,9D6B6F,7D303B,57373B,342A29,9D6B6F,7D303B,9D6B6F"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725,8F7A7A,74605D,8F7A7A"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "FFFFFF,D1D199,999955,554C26,2C1A09,090602,999955,554C26,999955"},
					{ name = "QUENOTH_RED", description = "Quenoth Red", colors = "FFFFFF,D9AEA6,BD696E,9F2133,6A343B,3F2A31,BD696E,9F2133,BD696E"},
					{ name = "QUENOTH_BLUE", description = "Quenoth Blue", colors = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62,78C1B2,4C91C9,78C1B2"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "FFE6D6,DCD1FF,BBABED,6B57B9,5E4DA1,1E1348,BBABED,6B57B9,BBABED"},
					{ name = "SCORPLING", description = "Scorpling", colors = "FFFFFF,DAB6C4,C19FA5,A38583,7F615F,491D27,C19FA5,A38583,C19FA5"},
					{ name = "TENTACLE", description = "Tentacle", colors = "FFFFFF,CDCDCD,94999A,68676F,4A5661,311A16,94999A,68676F,94999A"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "D9FFFF,ADCFCF,87A1A1,5B7F8A,405F72,384247,87A1A1,5B7F8A,87A1A1"},
					{ name = "SCARAB", description = "Scarab", colors = "FFFFFF,A5DEAB,74C67E,6CA26A,657E55,49613B,74C67E,6CA26A,74C67E"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "CDE5FE,B6C8DA,8384A3,5F607F,414C5E,1D2C49,8384A3,5F607F,8384A3"},
					{ name = "CRAB", description = "Crab", colors = "FFFFFF,DDD3CD,B6ACA4,917B4D,695937,261F10,B6ACA4,917B4D,B6ACA4"},
					{ name = "BAT", description = "Vampire Bat", colors = "E5A490,AD7569,84495E,794D44,592B3B,1B1B1B,84495E,794D44,84495E"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "FB9254,EC7E3D,BA5520,963718,4D0000,350000,BA5520,963718,BA5520"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "999999,707070,4E4E4E,353535,292929,191919,4E4E4E,353535,4E4E4E"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "CDCDCD,707070,4E4E4E,353535,292929,191919,4E4E4E,353535,4E4E4E"},
					{ name = "ANT", description = "Ant", colors = "B1D2D6,90A8B0,907AB5,706993,505870,550022,907AB5,706993,907AB5"},
					{ name = "FIREANT", description = "Fire Ant", colors = "FFE9B3,FFC843,FF4301,B02E00,821611,550022,FF4301,B02E00,FF4301"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "eacfc2,bd9785,8b6c71,593a3f,33282a,1f1f1a,8b6c71,593a3f,8b6c71"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "fdffea,bdd6e6,a28d62,3d5a4b,454545,232323,a28d62,3d5a4b,a28d62"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "ffffff,d6be6b,ad9748,88742f,5e4e1a,2f270a,ad9748,88742f,ad9748"},

					--Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "D0CFBF,A8A8A8,747F73,616153,374336,172830,747F73,616153,747F73" },

					--earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "FAF3C9,F6D39B,C5956A,A9794F,7B4231,422110,C5956A,A9794F,C5956A" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "E6E6A6,C99462,835C35,573A14,352313,131414,835C35,573A14,835C35" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "D9AC79,BC946B,B3785B,844C1F,462D1F,201810,B3785B,844C1F,B3785B" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "FFCE39,C08008,985810,804018,582820,281010,985810,804018,985810" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "CBBC7F,918460,60573C,3C3623,22221A,191911,60573C,3C3623,60573C" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "FFD087,E2A76F,97663C,574D31,383838,3B3427,97663C,574D31,97663C" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "889880,797979,506858,333D33,22221E,191915,506858,333D33,506858" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "D5D59B,AA9966,939372,515138,2D2D2D,172830,939372,515138,939372" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "F8F8A0,FFFFCE,D6D69C,949473,525239,2D2E22,D6D69C,949473,D6D69C" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "F49AC1,EF5BA1,D6007F,9E005D,690039,55002A,D6007F,9E005D,D6007F" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "F7DF8E,E2CD67,F3A62C,AF3C18,8E1A12,6F282B,F3A62C,AF3C18,F3A62C" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "90F8B8,6ECD8F,50A070,327855,185030,102810,50A070,327855,50A070" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "d3bcc1,a8a8a8,817d71,635054,454133,172830,817d71,635054,817d71" }
				},
			},
			heavy_infantry = {
                unit_types = { 
                    "Heavy Infantryman", "Shock Trooper", "Iron Mauler",
					"Afterlife Heavy Infantryman", "Afterlife Shock Trooper", "Afterlife Iron Mauler"
                },
				base = "FFFFFF,ECECEC,A8A098,78655A,4D4541,2C2623",
				variants = {
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
			grand_knight = {
                unit_types = { 
                    "Grand Knight", "Afterlife Grand Knight"
                },
				base = "FFFFFF,C6E7E7,C5CFDA,8F8895,3F505C,182931",
				variants = {
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
			paladin = {
                unit_types = { 
                    "Paladin", "Afterlife Paladin"
                },
				base = "FFFFFF,ECECEC,C5CFDA,66A5B2,31526B,3F505C",
				variants = {
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
            cavalier = {
                unit_types = { 
                    "Cavalier", "Afterlife Cavalier"
                },
				base = "FFFFFF,ECECEC,C6E7E7,A0B9B8,6E8387,3F505C,182931",
				variants = {
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
		}
	},
	{
		name = "Leather", -- body_part
		data = {
			human = { -- archetype
                unit_types = { 
                    "Battle Princess", "Princess", "Cavalryman", "Horseman", "Dragoon", "Spearman", "Master at Arms", 
					"Bowman", "Swordsman", "General", "Longbowman", "Grand Marshal", "Sergeant", "Lieutenant", "Master Bowman", 
					"Knight", "Pikeman", "Royal Guard", "Halberdier", "Duelist", "Fencer", "Peasant", "Woodsman", 
					"Lancer", "Javelineer", 
					"Afterlife Battle Princess", "Afterlife Princess", "Afterlife Cavalryman", "Afterlife Horseman", 
					"Afterlife Dragoon", "Afterlife Spearman", "Afterlife Master at Arms", "Bowman", "Afterlife Swordsman", 
					"Afterlife General", "Afterlife Longbowman", "Afterlife Grand Marshal", "Afterlife Sergeant", 
					"Afterlife Lieutenant", "Afterlife Master Bowman", "Knight", "Afterlife Pikeman", "Afterlife Royal Guard", 
					"Afterlife Halberdier", "Afterlife Duelist", "Afterlife Fencer", "Afterlife Peasant", "Afterlife Woodsman", 
					"Afterlife Lancer", "Afterlife Javelineer"
                },
				base = "D6D69C,938D6D,525239,39382D,332D32,2F1010",
				variants = {
					--blue armour
					{ name = "LOYALIST_BLUE_LEATHER", description = "Loyalist Blue", colors = "c6e7e7,94c6c6,638c94,31526b,31526b,182931"},
					{ name = "LOYALIST_CAVALIER_LEATHER", description = "Cavalier", colors = "c6e7e7,a0b9B8,6e8387,3f505c,3f505c,182931"},
					{ name = "LOYALIST_GRAND_KNIGHT_LEATHER", description = "Grand Knight", colors = "c6e7e7,c5cfda,8f8895,3f505c,3f505c,182931"},
					{ name = "LOYALIST_PALADIN_LEATHER", description = "Paladin", colors = "ececec,c5cfda,66a5b2,31526b,31526b,3f505c"},
					{ name = "KARRAG_LEATHER", description = "Karrag THoT", colors = "adccd2,6799a2,3b6c75,213d43,213d43,182931"},
					{ name = "WITNESS_LEATHER", description = "Witness THoT", colors = "b1ebec,79a9b3,4f6973,507059,507059,1e3038"},

					--dark armour
					{ name = "SIR_GERRIK_LEATHER", description = "Sir Gerrik SG", colors = "9faecb,697895,3d4e69,293a55,293a55,11203d"},
					{ name = "HEAVY_INFANTERY_LEATHER", description = "Heavy Infantry", colors = "a8a098,78655a,4d4541,2c2623,2c2623,191919"},
					{ name = "ROYAL_WARRIOR_LEATHER", description = "Royal Warrior", colors = "a9a5ab,858086,5a565a,332d32,332d32,2c2623"},
					{ name = "CHEVALIER_LEATHER", description = "Chevalier (Rashy Era)", colors = "ccc2b9,a8a098,686058,3d3a37,3d3a37,151718"},
					{ name = "SEACAPTAIN_STEEL_LEATHER", description = "Sea Captain Steel SotA", colors = "dcdbdf,b6b4ba,7b7b85,53535b,53535b,34343a"},
					{ name = "BANNERET_LEATHER", description = "Banneret EI", colors = "ccc2b9,a8a098,686058,524e46,524e46,3d3a37"},

					--gold/bronze armour
					{ name = "DRAKE_LEATHER", description = "Drake Armour", colors = "d1e997,c79962,996d24,af3c18,af3c18,4c3324"},
					{ name = "GOLD_NEW_LEATHER", description = "Gold 1.18", colors = "ffe38c,ffcc43,c67b02,804018,804018,66211b"},
					{ name = "GOLD_OLD_LEATHER", description = "Gold 1.16", colors = "ececec,d1b563,985810,512a13,512a13,2f1010"},
					{ name = "EE_PALADIN_LEATHER", description = "Paladin EI", colors = "ececec,ffcc43,af7a18,66211b,66211b,2f1010"},
					{ name = "BRONZE_LEATHER", description = "Siege Trooper Bronze", colors = "ccb066,aa6a28,804018,74341c,74341c,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER_LEATHER", description = "Javelineer", colors = "d6d69c,938d6d,525239,39382d,39382d,2f1010"},
					{ name = "DUNEFOLK_LEATHER", description = "Dunefolk", colors = "fff5a0,d6bd8a,888670,5c6339,5c6339,3d3411"},
					{ name = "ORC_LEATHER", description = "Orc", colors = "ffdd88,aa9966,7f774c,515138,515138,2d2d2d"},
					{ name = "ASSASSIN_LEATHER", description = "Assassin", colors = "889880,506858,333d33,273631,273631,1c1b21"},

					--undead armour
					{ name = "SKELETON_RIDER_LEATHER", description = "Skeleton Rider", colors = "ccb066,aa6a28,74341c,304860,304860,13262e"},
					{ name = "SKELETON_LEATHER", description = "Skeleton", colors = "ffffce,d6d69c,c8d090,949473,949473,525239"},
					{ name = "DEATHKNIGHT_LEATHER", description = "Death Knight", colors = "e0e0e8,a3a7ab,73697e,5e3535,5e3535,13262e"},
					{ name = "GHOST_LEATHER", description = "Ghost", colors = "e0e0e8,a3a7ab,73697e,5e3535,5e3535,283028"},

					--GSE
					{ name = "GSE_MILITA_LEATHER", description = "Great Steppe Era Militia", colors = "abe5f6,69bbd9,2b52a9,121b5c,121b5c,140036"},
					{ name = "GSE_CANNONEER_LEATHER", description = "Great Steppe Era Cannoneer", colors = "92d2bb,5bb19e,2d8569,125756,125756,0a293b"},

					--wose/elf
					{ name = "WOSE_LEATHER", description = "Wose", colors = "e6e6a6,c99462,835c35,573a14,573a14,352313"},
					{ name = "KALIAN_ELF_LEATHER", description = "Kalian Elf TroW", colors = "d8c2ad,a28d62,896941,704d1f,704d1f,47213c"},
					{ name = "ELF_DARKER_LEATHER", description = "Elvish Armour Dark", colors = "a4b496,687862,313b31,252a23,252a23,121311"},
					{ name = "ELF_LIGHTER_LEATHER", description = "Elvish Armour Light", colors = "e8edd5,a4b496,687862,313b31,313b31,252a23"},

					--merfolk
					{ name = "MERFOLK_LEATHER", description = "Merfolk", colors = "f2f2ea,d8c2ad,b3ae78,484b42,484b42,504137"},
					{ name = "MERFOLK_MAGE_LEATHER", description = "Merfolk Siren", colors = "f8f8f8,d8c2ad,a28d62,425838,425838,382218"},
					{ name = "MERFOLK_HOPLITE_LEATHER", description = "Merfolk Hoplite", colors = "f2f2ea,b3ae78,a28d62,484b42,484b42,504137"},
					{ name = "AQUANA_LEATHER", description = "Aquana (Rashy Era)", colors = "e5e2c2,d8ccad,a2a062,746e47,746e47,383618"},
					{ name = "MERFOLK_JAVELINEER_LEATHER", description = "Merfolk Javelineer", colors = "bdbebd,979fa9,4d586d,586164,586164,404444"},

					--UTBS
					{ name = "DAWARF_LEATHER", description = "Dawarf", colors = "db98c6,c878b0,905080,583068,583068,301030"},
					{ name = "FLESHGOLEM_LEATHER", description = "Fleshgolem", colors = "dca993,de8685,ca7559,a85c4e,a85c4e,824143"},
					{ name = "IXTHALA_LEATHER", description = "Ixthala", colors = "afacd9,8a81b3,5e699c,474a6b,474a6b,222438"},
					{ name = "DARK_ASSASSIN_MASK_LEATHER", description = "Dark Assassin Mask", colors = "cc8f8c,9d6b6f,7d303b,57373b,57373b,342a29"},
					{ name = "DARK_ASSASSIN_CLOAK_LEATHER", description = "Dark Assassin Cloak", colors = "9c8b8b,8f7a7a,74605d,5c4744,5c4744,372725"},
					{ name = "UTBS_HUMAN_LEATHER", description = "UtbS Human", colors = "d1d199,999955,554c26,2c1a09,2c1a09,090602"},
					{ name = "QUENOTH_RED_LEATHER", description = "Quenoth Red", colors = "d9aea6,bd696e,9f2133,6a343b,6a343b,3f2a31"},
					{ name = "QUENOTH_BLUE_LEATHER", description = "Quenoth Blue", colors = "a4f19d,78c1b2,4c91c9,4a707a,4a707a,4a2e62"},

					--animal parts
					{ name = "JUMPING_SPIDER_LEATHER", description = "Jumping Spider", colors = "dcd1ff,bbabed,6b57b9,5e4da1,5e4da1,1e1348"},
					{ name = "SCORPLING_LEATHER", description = "Scorpling", colors = "dab6c4,c19fa5,a38583,7f615f,7f615f,491d27"},
					{ name = "TENTACLE_LEATHER", description = "Tentacle", colors = "cdcdcd,94999a,68676f,4a5661,4a5661,311a16"},
					{ name = "SEASERPENT_LEATHER", description = "Sea Serpent", colors = "adcfcf,87a1a1,5b7f8a,405f72,405f72,384247"},
					{ name = "SCARAB_LEATHER", description = "Scarab", colors = "a5deab,74c67e,6ca26a,657e55,657e55,49613b"},
					{ name = "SCORPIAN_LEATHER", description = "Scorpion", colors = "b6c8da,8384a3,5f607f,414c5e,414c5e,1d2c49"},
					{ name = "CRAB_LEATHER", description = "Crab", colors = "ddd3cd,b6aca4,917b4d,695937,695937,261f10"},
					{ name = "BAT_LEATHER", description = "Vampire Bat", colors = "ad7569,84495e,794d44,592b3b,592b3b,1b1b1b"},
					{ name = "BLOODBAT_LEATHER", description = "Blood Bat", colors = "ec7e3d,ba5520,963718,4d0000,4d0000,350000"},
					{ name = "DREADBAT_LEATHER", description = "Dread Bat", colors = "707070,4e4e4e,353535,292929,292929,191919"},
					{ name = "DREADBAT_METAL_LEATHER", description = "Dread Bat Metal", colors = "707070,4e4e4e,353535,292929,292929,191919"},
					{ name = "ANT_LEATHER", description = "Ant", colors = "90a8b0,907ab5,706993,505870,505870,550022"},
					{ name = "FIREANT_LEATHER", description = "Fire Ant", colors = "ffc843,ff4301,b02e00,821611,821611,550022"},

					--rashy era
					{ name = "DARDO_LEATHER", description = "Dardo (Rashy Era)", colors = "bd9785,8b6c71,593a3f,33282a,33282a,1f1f1a"},
					{ name = "MARASHY_LEATHER", description = "Marashy (Rashy Era)", colors = "bdd6e6,a28d62,3d5a4b,454545,454545,232323"},
					{ name = "LUZ_LEATHER", description = "Paladin Luz (Rashy Era)", colors = "d6be6b,ad9748,88742f,5e4e1a,5e4e1a,2f270a"},

					--Default grey troll
					{ name = "TROLL_GREY_LEATHER", description = "Troll Grey", colors = "a8a8a8,747f73,616153,374336,374336,172830" },

					--earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN_LEATHER", description = "Light Earth", colors = "f6d39b,c5956a,a9794f,7b4231,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH_LEATHER", description = "Wooden Earth", colors = "c99462,835c35,573a14,352313,352313,131414" },
					{ name = "TROLL_EARTHEN_LEATHER", description = "Earth", colors = "bc946b,b3785b,844c1f,462d1f,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD_LEATHER", description = "Goblinmud", colors = "c08008,985810,804018,582820,582820,281010" },
					{ name = "TROLL_DARKERMUD_LEATHER", description = "Darker Mud", colors = "918460,60573c,3c3623,22221a,22221a,191911" },
					{ name = "TROLL_DARKMUD_LEATHER", description = "Dark Mud", colors = "e2a76f,97663c,574d31,383838,383838,3b3427" },
					{ name = "TROLL_DARKGREEN_LEATHER", description = "Dark Green", colors = "797979,506858,333d33,22221e,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE_LEATHER", description = "Dark Bright Stone", colors = "aa9966,939372,515138,2d2d2d,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE_LEATHER", description = "Sandstone", colors = "ffffce,d6d69c,949473,525239,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR_LEATHER", description = "Teamcolor", colors = "ef5ba1,d6007f,9e005d,690039,690039,55002a" },
					{ name = "TROLL_MOLTEN_LEATHER", description = "Molten", colors = "e2cd67,f3a62c,af3c18,8e1a12,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN_LEATHER", description = "1.0 Troll", colors = "6ECD8F,50A070,327855,185030,185030,102810" },
					{ name = "TROLL_GRUU_LEATHER", description = "Grüü (SotBE)", colors = "a8a8a8,817d71,635054,454133,454133,172830" }
				},
			},
		}
	}
}

_G.ucc_race_registry["human"] = {
    body_parts = body_parts
}