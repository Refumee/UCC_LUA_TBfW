-- troll_data.lua
local body_parts = {
	{
		name = "skin", -- body_part
		data = {
			wose = {
				unit_types = {	"Troll", "Troll Whelp", "Troll Rocklobber", "Troll Warrior", "Great Troll", "Troll Shaman", "Troll Hero",
								"Afterlife Troll", "Afterlife Troll Whelp", "Afterlife Troll Rocklobber", "Afterlife Troll Warrior", "Great Afterlife Troll", "Afterlife Troll Shaman", "Afterlife Troll Hero",
								"Troll Initiate","Troll Earth-Shaker"
				},
				-- Your DEFAULT_WOSE_BARK
				base = "d0cfbf,a8a8a8,747f73,616153,374336,172830", 
				variants = {
					-- Default grey troll
					{ name = "TROLL_GREY", colors = "d0cfbf,a8a8a8,747f73,616153,374336,172830" },

					-- earthen/stone colors for the randomizer ##################
					{ name = "TROLL_LIGHTEARTHEN", colors = "faf3c9,f6d39b,c5956a,a9794f,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH", colors = "e6e6a6,c99462,835c35,573a14,352313,131414" },
					{ name = "TROLL_EARTHEN", colors = "d9ac79,bc946b,b3785b,844c1f,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD", colors = "ffce39,c08008,985810,804018,582820,281010" },
					{ name = "TROLL_DARKERMUD", colors = "cbbc7f,918460,60573c,3c3623,22221a,191911" },
					{ name = "TROLL_DARKMUD", colors = "ffd087,e2a76f,97663c,574d31,383838,3b3427" },
					{ name = "TROLL_DARKGREEN", colors = "889880,797979,506858,333d33,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", colors = "d5d59b,aa9966,939372,515138,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE", colors = "f8f8a0,ffffce,d6d69c,949473,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR", colors = "f49ac1,ef5ba1,d6007f,9e005d,690039,55002a" },
					{ name = "TROLL_MOLTEN", colors = "f7df8e,e2cd67,f3a62c,af3c18,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN", colors = "90F8B8,6ECD8F,50A070,327855,185030,102810" },
					{ name = "TROLL_GRUU", colors = "d3bcc1,a8a8a8,817d71,635054,454133,172830" },
					
					--blue armour
					{ name = "BASE_LOYALIST_BLUE_HI_ARMOUR_COLOR", colors = "ffffff,c6e7e7,94c6c6,638c94,31526b,182931"},
					{ name = "BASE_LOYALIST_CAVALIER_HI_ARMOUR_COLOR", colors = "ececec,c6e7e7,a0b9B8,6e8387,3f505c,182931"},
					{ name = "BASE_LOYALIST_GRAND_KNIGHT_HI_ARMOUR_COLOR", colors = "ffffff,c6e7e7,c5cfda,8f8895,3f505c,182931"},
					{ name = "BASE_LOYALIST_PALADIN_HI_ARMOUR_COLOR", colors = "ffffff,ececec,c5cfda,66a5b2,31526b,3f505c"},
					{ name = "BASE_KARRAG_HI_ARMOUR_COLOR", colors = "dbe6e8,adccd2,6799a2,3b6c75,213d43,182931"},
					{ name = "BASE_WITNESS_HI_ARMOUR_COLOR", colors = "ffffff,b1ebec,79a9b3,4f6973,507059,1e3038"},

					--dark armour
					{ name = "BASE_SIR_GERRIK_HI_ARMOUR_COLOR", colors = "c3d2ef,9faecb,697895,3d4e69,293a55,11203d"},
					{ name = "BASE_HEAVY_INFANTERY_HI_ARMOUR_COLOR", colors = "ececec,a8a098,78655a,4d4541,2c2623,191919"},
					{ name = "BASE_ROYAL_WARRIOR_HI_ARMOUR_COLOR", colors = "dccaca,a9a5ab,858086,5a565a,332d32,2c2623"},
					{ name = "BASE_CHEVALIER_HI_ARMOUR_COLOR", colors = "ececcf,ccc2b9,a8a098,686058,3d3a37,151718"},
					{ name = "BASE_SEACAPTAIN_STEEL_HI_ARMOUR_COLOR", colors = "ffffff,dcdbdf,b6b4ba,7b7b85,53535b,34343a"},
					{ name = "BASE_BANNERET_HI_ARMOUR_COLOR", colors = "ececec,ccc2b9,a8a098,686058,524e46,3d3a37"},

					--gold/bronze armour
					{ name = "BASE_DRAKE_HI_ARMOUR_COLOR", colors = "ffffff,d1e997,c79962,996d24,af3c18,4c3324"},
					{ name = "BASE_GOLD_NEW_HI_ARMOUR_COLOR", colors = "ffffff,ffe38c,ffcc43,c67b02,804018,66211b"},
					{ name = "BASE_GOLD_OLD_HI_ARMOUR_COLOR", colors = "ffffff,ececec,d1b563,985810,512a13,2f1010"},
					{ name = "BASE_EE_PALADIN_HI_ARMOUR_COLOR", colors = "ffffff,ececec,ffcc43,af7a18,66211b,2f1010"},
					{ name = "BASE_BRONZE_HI_ARMOUR_COLOR", colors = "ffffff,ccb066,aa6a28,804018,74341c,13262e"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "BASE_LOYALIST_JAVELINEER_HI_ARMOUR_COLOR", colors = "ffffff,d6d69c,938d6d,525239,39382d,2f1010"},
					{ name = "BASE_DUNEFOLK_HI_ARMOUR_COLOR", colors = "ffffff,fff5a0,d6bd8a,888670,5c6339,3d3411"},
					{ name = "BASE_ORC_HI_ARMOUR_COLOR", colors = "ffffd5,ffdd88,aa9966,7f774c,515138,2d2d2d"},
					{ name = "BASE_ASSASSIN_HI_ARMOUR_COLOR", colors = "aac0a0,889880,506858,333d33,273631,1c1b21"},

					--undead armour
					{ name = "BASE_SKELETON_RIDER_HI_ARMOUR_COLOR", colors = "f8f8a0,ccb066,aa6a28,74341c,304860,13262e"},
					{ name = "BASE_SKELETON_HI_ARMOUR_COLOR", colors = "ffffff,ffffce,d6d69c,c8d090,949473,525239"},
					{ name = "BASE_DEATHKNIGHT_HI_ARMOUR_COLOR", colors = "ffffff,e0e0e8,a3a7ab,73697e,5e3535,13262e"},
					{ name = "BASE_GHOST_HI_ARMOUR_COLOR", colors = "ffffff,e0e0e8,a3a7ab,73697e,5e3535,283028"},

					--GSE
					{ name = "BASE_GSE_MILITA_HI_ARMOUR_COLOR", colors = "ffffff,abe5f6,69bbd9,2b52a9,121b5c,140036"},
					{ name = "BASE_GSE_CANNONEER_HI_ARMOUR_COLOR", colors = "ffffff,92d2bb,5bb19e,2d8569,125756,0a293b"},

					--wose/elf
					{ name = "BASE_WOSE_HI_ARMOUR_COLOR", colors = "ffffca,e6e6a6,c99462,835c35,573a14,352313"},
					{ name = "BASE_KALIAN_ELF_HI_ARMOUR_COLOR", colors = "e8ebe7,d8c2ad,a28d62,896941,704d1f,47213c"},
					{ name = "BASE_ELF_DARKER_HI_ARMOUR_COLOR", colors = "e8edd5,a4b496,687862,313b31,252a23,121311"},
					{ name = "BASE_ELF_LIGHTER_HI_ARMOUR_COLOR", colors = "ffffff,e8edd5,a4b496,687862,313b31,252a23"},

					--merfolk
					{ name = "BASE_MERFOLK_HI_ARMOUR_COLOR", colors = "ffffff,f2f2ea,d8c2ad,b3ae78,484b42,504137"},
					{ name = "BASE_MERFOLK_MAGE_HI_ARMOUR_COLOR", colors = "cdf8f8,f8f8f8,d8c2ad,a28d62,425838,382218"},
					{ name = "BASE_MERFOLK_HOPLITE_HI_ARMOUR_COLOR", colors = "cdf8f8,f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "BASE_AQUANA_HI_ARMOUR_COLOR", colors = "fefefe,e5e2c2,d8ccad,a2a062,746e47,383618"},
					{ name = "BASE_MERFOLK_JAVELINEER_HI_ARMOUR_COLOR", colors = "f2f2ea,bdbebd,979fa9,4d586d,586164,404444"},

					--UTBS
					{ name = "BASE_DAWARF_HI_ARMOUR_COLOR", colors = "f8c8e8,db98c6,c878b0,905080,583068,301030"},
					{ name = "BASE_FLESHGOLEM_HI_ARMOUR_COLOR", colors = "dbd2a4,dca993,de8685,ca7559,a85c4e,824143"},
					{ name = "BASE_IXTHALA_HI_ARMOUR_COLOR", colors = "ceccea,afacd9,8a81b3,5e699c,474a6b,222438"},
					{ name = "BASE_DARK_ASSASSIN_MASK_HI_ARMOUR_COLOR", colors = "ecc3c1,cc8f8c,9d6b6f,7d303b,57373b,342a29"},
					{ name = "BASE_DARK_ASSASSIN_CLOAK_HI_ARMOUR_COLOR", colors = "c3a89f,9c8b8b,8f7a7a,74605d,5c4744,372725"},
					{ name = "BASE_UTBS_HUMAN_HI_ARMOUR_COLOR", colors = "ffffff,d1d199,999955,554c26,2c1a09,090602"},
					{ name = "BASE_QUENOTH_RED_HI_ARMOUR_COLOR", colors = "ffffff,d9aea6,bd696e,9f2133,6a343b,3f2a31"},
					{ name = "BASE_QUENOTH_BLUE_HI_ARMOUR_COLOR", colors = "e7ffce,a4f19d,78c1b2,4c91c9,4a707a,4a2e62"},

					--animal parts
					{ name = "BASE_JUMPING_SPIDER_HI_ARMOUR_COLOR", colors = "ffe6d6,dcd1ff,bbabed,6b57b9,5e4da1,1e1348"},
					{ name = "BASE_SCORPLING_HI_ARMOUR_COLOR", colors = "ffffff,dab6c4,c19fa5,a38583,7f615f,491d27"},
					{ name = "BASE_TENTACLE_HI_ARMOUR_COLOR", colors = "ffffff,cdcdcd,94999a,68676f,4a5661,311a16"},
					{ name = "BASE_SEASERPENT_HI_ARMOUR_COLOR", colors = "d9ffff,adcfcf,87a1a1,5b7f8a,405f72,384247"},
					{ name = "BASE_SCARAB_HI_ARMOUR_COLOR", colors = "ffffff,a5deab,74c67e,6ca26a,657e55,49613b"},
					{ name = "BASE_SCORPIAN_HI_ARMOUR_COLOR", colors = "cde5fe,b6c8da,8384a3,5f607f,414c5e,1d2c49"},
					{ name = "BASE_CRAB_HI_ARMOUR_COLOR", colors = "ffffff,ddd3cd,b6aca4,917b4d,695937,261f10"},
					{ name = "BASE_BAT_HI_ARMOUR_COLOR", colors = "e5a490,ad7569,84495e,794d44,592b3b,1b1b1b"},
					{ name = "BASE_BLOODBAT_HI_ARMOUR_COLOR", colors = "fb9254,ec7e3d,ba5520,963718,4d0000,350000"},
					{ name = "BASE_DREADBAT_HI_ARMOUR_COLOR", colors = "999999,707070,4e4e4e,353535,292929,191919"},
					{ name = "BASE_DREADBAT_METAL_HI_ARMOUR_COLOR", colors = "cdcdcd,707070,4e4e4e,353535,292929,191919"},
					{ name = "BASE_ANT_HI_ARMOUR_COLOR", colors = "b1d2d6,90a8b0,907ab5,706993,505870,550022"},
					{ name = "BASE_FIREANT_HI_ARMOUR_COLOR", colors = "ffe9b3,ffc843,ff4301,b02e00,821611,550022"},

					--rashy era
					{ name = "BASE_DARDO_HI_ARMOUR_COLOR", colors = "eacfc2,bd9785,8b6c71,593a3f,33282a,1f1f1a"},
					{ name = "BASE_MARASHY_HI_ARMOUR_COLOR", colors = "fdffea,bdd6e6,a28d62,3d5a4b,454545,232323"},
					{ name = "BASE_LUZ_HI_ARMOUR_COLOR", colors = "ffffff,d6be6b,ad9748,88742f,5e4e1a,2f270a"}
				},
			},
		}
	}
}

_G.ucc_race_registry["troll"] = {
    body_parts = body_parts
}