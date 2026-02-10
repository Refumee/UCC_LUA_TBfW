-- merfolk_data.lua
local body_parts = {
	{
		name = "body", -- body_part
		data = {
			merman = {
				unit_types = { 
                    "Merman Fighter", "Merman Warrior", "Merman Triton", "Merman Hoplite",
                    "Merman Hunter", "Merman Spearman", "Merman Javelineer", 
                    "Merman Brawler", "Merman Citizen",
                    "Merman Netcaster", "Merman Entangler",
					"Child King", "Merman Young King", "Soldier King", "Merman Warrior King",
					"Afterlife Merman Fighter", "Afterlife Merman Warrior", "Afterlife Merman Triton", "Afterlife Merman Hoplite",
                    "Afterlife Merman Hunter", "Afterlife Merman Spearman", "Afterlife Merman Javelineer", 
                    "Afterlife Merman Brawler", "Afterlife Merman Citizen",
                    "Afterlife Merman Netcaster", "Afterlife Merman Entangler",
					"Mermaid Initiate", "Mermaid Enchantress", "Mermaid Siren",
                    "Mermaid Priestess", "Mermaid Diviner",
                    "Afterlife Mermaid Initiate", "Afterlife Mermaid Enchantress", "Afterlife Mermaid Siren",
                    "Afterlife Mermaid Priestess", "Afterlife Mermaid Diviner"
                },
				base = "cdf8f8,add8f8,93c4eb,6d98cb,8a9db4,4d586d,6085a5,6da2e2,2d58ad,1d3971,007777,278162", 
				variants = {
					{ name = "MERFOLK_BLUE", colors = "cdf8f8,add8f8,93c4eb,6d98cb,8a9db4,4d586d,6085a5,6da2e2,2d58ad,1d3971,007777,278162"},

					{ name = "MERFOLK_DIVINER18", colors = "cdf8f8,bdbebd,8a9db4,617b9b,979fa9,4d586d,586164,8a9db4,484b42,422547,637559,637559"},
					{ name = "MERFOLK_DIVINER16", colors = "cdf8f8,c7d3db,8da2ad,748e9c,8da2ad,5d6359,5d6359,8a9db4,484b42,422547,637559,637559"},
					{ name = "MERFOLK_ENCHANTRESS18", colors = "a3ffa6,93c4eb,8cb4dc,a09462,979fa9,586164,6085a5,a09462,364c3e,422547,61554d,61554d"},
					{ name = "MERFOLK_ENCHANTRESS16", colors = "a3ffa6,93d4ff,7cc0ed,a09462,9bac9c,5d6359,6085a5,a09462,364c3e,422547,61554d,61554d"},
					{ name = "MERFOLK_ENTANGLER18", colors = "c4ffcb,93c4eb,c0de67,6085a5,8a9db4,4d586d,6085a5,6085a5,364c3e,422547,007777,007777"},
					{ name = "MERFOLK_ENTANGLER16", colors = "c7fcd0,93c4eb,c0de67,55a692,8da2ad,4d586d,55a692,55a692,364c3e,422547,006755,006755"},
					{ name = "MERFOLK_JAVELINEER18", colors = "cdf8f8,bdbebd,8a9db4,8a9db4,8da2ad,4d586d,6085a5,8a9db4,484b42,4b2e30,637559,637559"},
					{ name = "MERFOLK_JAVELINEER16", colors = "cdf8f8,c7d3db,8da2ad,8a9db4,8a9db4,4d586d,6085a5,8a9db4,484b42,4b2e30,637559,637559"},
					{ name = "MERFOLK_NETCASTER18", colors = "cdf8f8,add8f8,93c4eb,6d98cb,5b7009,4d586d,6085a5,6d98cb,5b7009,27431b,5b7009,5b7009"},
					{ name = "MERFOLK_NETCASTER16", colors = "cdf8f8,add8f8,93c4eb,53aaba,5b7009,4d586d,6085a5,53aaba,71541b,27431b,71541b,71541b"},
					{ name = "MERFOLK_PRIESTESS18", colors = "cdf8f8,bdbebd,8a9db4,6d98cb,a8c5b8,4d586d,4d586d,7a9180,007777,1d3971,6085a5,6085a5"},
					{ name = "MERFOLK_PRIESTESS16", colors = "cdf8f8,a8c5b8,8da2ad,6d98cb,bdbebd,4d586d,4d586d,75a997,006c6d,37306f,4c7498,4c7498"},
					{ name = "MERFOLK_SIREN18", colors = "e8f898,b3ae78,b8ae8b,aa9f78,979fa9,4d586d,6085a5,7a9180,6e3f89,422547,746247,746247"},
					{ name = "MERFOLK_SIREN16", colors = "f3fcbb,d0b477,be8b99,b17a89,9bac9c,4d586d,6085a5,7a9180,6e3f89,422547,92485d,92485d"},
					{ name = "MERFOLK_SPEARMAN18", colors = "cdf8f8,add8f8,93c4eb,8a9db4,8a9db4,4d586d,6085a5,8a9db4,278162,422547,278162,278162"},
					{ name = "MERFOLK_SPEARMAN16", colors = "cdf8f8,add8f8,93c4eb,67c1a0,8a9db4,4d586d,6085a5,67c1a0,278162,3d3661,278162,278162"},

					--experimental coloring
					{ name = "MERFOLK_GREY_BLUE_GREEN", colors = "eeeec7,b1b0bf,96c083,8e8897,8e8897,4c547a,676786,8e8897,4c547a,384d52,3e625e,4a806b"},
					{ name = "MERFOLK_YELLOW_GREEN", colors = "efb775,efd8a1,efd8a1,3c9f9c,927e6a,684c3c,927e6a,3c9f9c,276468,276468,276468,276468"},
					{ name = "MERFOLK_YELLOW_BROWN", colors = "ffd4a3,ffecd6,ffd4a3,8d697a,d08159,544e68,8d697a,8d697a,544e68,203c56,544e68,544e68"},
					{ name = "MERFOLK_GREY", colors = "e9e9e9,d3d3d3,bcbcbc,9b9b9b,a6a6a6,646464,858585,9b9b9b,6f6f6f,434343,595959,646464"},
					{ name = "MERFOLK_HUMAN", colors = "f6d975,f6d39b,cf7f62,c4823f,a86e4c,753c32,cf7f62,cf7f62,c4823f,753c32,653f16,4e2009"},

					{ name = "MERFOLK_SAND", colors = "fff0e6,fbe4d2,e2c0a7,b3927e,997a6b,746266,876f69,b3927e,746266,4e495f,746266,746266"},
					{ name = "MERFOLK_STONE", colors = "f3f0eb,d0c6bc,d0c6bc,968bab,9d7d95,684e67,9d7d95,968bab,684e67,50445a,4d5675,4d5675"},
					{ name = "MERFOLK_MOSS", colors = "e6edec,c7eaeb,bbc0c7,92bdd2,898997,554766,607394,92bdd2,607394,414157,506b65,668b72"},
					{ name = "MERFOLK_LIGHTGHOST", colors = "c7faff,baf1ff,baadde,baadde,baa4c0,523262,8c5862,baadde,8c5862,4c3262,864f62,935862"},
					{ name = "MERFOLK_PURPLE", colors = "e6e6ef,ccc5f6,c5baca,b38de3,9a8798,6d4355,8f5aa0,b38de3,8f5aa0,5c3e58,4e5273,607c92"},
					{ name = "MERFOLK_NAGA", colors = "eaf89e,c1a77e,9edb5e,56963d,90765c,4d586d,6085a5,784838,24753c,124e24,429895,326462"},
					{ name = "MERFOLK_GREYISH", colors = "ebebeb,cfcfcf,bababa,919191,9a9a9a,575757,7d7d7d,999999,545454,373737,535353,636363"},
					{ name = "MERFOLK_BLACK", colors = "b3b3b3,979797,818181,595959,626262,1f1f1f,454545,616161,1c1c1c,000001,1b1b1b,2a2a2a"},
					{ name = "MERFOLK_WHITE", colors = "ebebeb,e2e2e2,b6b6b6,b6b6b6,aeaeae,414141,696969,b6b6b6,696969,3f3f3f,626262,6b6b6b"},
					{ name = "MERFOLK_MUD", colors = "eeeec7,ddcf95,cd9957,bd6b44,bfa17a,6e4c49,94725d,bd6b44,ac4136,6c3434,3e2d2e,5a444e"},
					{ name = "MERFOLK_REDCORAL", colors = "e0e0e0,ffb980,ff80a6,ff8080,999999,575757,7a7a7a,ff8080,993300,662200,660044,990082"},
					{ name = "MERFOLK_RED", colors = "dae0ea,e9b5a3,f5a097,ba756a,ba756a,5a4e44,8e5252,e86a73,b4202a,73172d,5b3138,793a80"},
					{ name = "MERFOLK_MYSTIC", colors = "ffd5c4,f5b8c1,f3a6c6,a776bb,a776bb,7762b1,7762b1,cb85c3,7762b1,715ba4,7762b1,715ba4"},

					--colorshift coloring
					{ name = "MERFOLK_CS1", colors = "cdeaf8,adbff8,93a7eb,6d79cb,8a8fb4,4d4d6d,606ea5,6d7be2,2d2dad,1d1d71,004f77,278180"},
					{ name = "MERFOLK_CS2", colors = "cddcf8,b4adf8,9c93eb,806dcb,938ab4,584d6d,6960a5,866de2,582dad,391d71,002777,276481"},
					{ name = "MERFOLK_CS3", colors = "cdcef8,cdadf8,b993eb,9f6dcb,a18ab4,634d6d,8060a5,ad6de2,832dad,551d71,510077,510077"},
					{ name = "MERFOLK_CS4", colors = "dacdf8,e6adf8,d693eb,be6dcb,af8ab4,6d4d6c,9760a5,d46de2,ad2dac,711d71,510077,510077"},
					{ name = "MERFOLK_CS5", colors = "e8cdf8,f8adf1,eb93e3,cb6db9,b48aab,6d4d61,a5609c,e26dc9,ad2d81,711d55,622781,622781"},
					{ name = "MERFOLK_CS6", colors = "f6cdf8,f8add8,eb93c6,cb6d9a,b48a9d,6d4d56,a56085,e26da2,ad2d56,711d39,77004d,77004d"},
					{ name = "MERFOLK_CS7", colors = "f8cdec,f8adbf,eb93a9,cb6d7b,b48a8f,6d4f4d,a5606e,e26d7b,ad2f2d,711d1d,77004d,802781"},
					{ name = "MERFOLK_CS8", colors = "f8cdde,f8b4ad,eb9a93,cb7e6d,b4938a,6d5a4d,a56960,e2866d,ad5a2d,71391d,82482c,82482c"},
					{ name = "MERFOLK_CS9", colors = "f8cdd0,f8cdad,ebb793,cb9d6d,b4a18a,6d654d,a58060,e2ad6d,ad852d,71551d,71711d,71711d"},
					{ name = "MERFOLK_CS10", colors = "f8d8cd,f8e6ad,ebd493,cbbc6d,b4af8a,6a6d4d,a59760,e2d46d,aaad2d,71711d,55711d,55711d"},
					{ name = "MERFOLK_CS11", colors = "f8e6cd,f1f8ad,e5eb93,bbcb6d,abb48a,5f6d4d,9ca560,c9e26d,7fad2d,55711d,39711d,39711d"},
					{ name = "MERFOLK_CS12", colors = "f8f4cd,d8f8ad,c8eb93,9ccb6d,9db48a,546d4d,85a560,a2e26d,54ad2d,39711d,737700,816227"},
					{ name = "MERFOLK_CS13", colors = "eef8cd,bff8ad,abeb93,7dcb6d,8fb48a,4d6d51,6ea560,7be26d,2dad31,1d711d,4b7700,818027"},
					{ name = "MERFOLK_CS14", colors = "e0f8cd,adf8b4,93eb98,6dcb7c,8ab493,4d6d5c,60a569,6de286,2dad5c,1d7139,237700,648127"},
					{ name = "MERFOLK_CS15", colors = "d2f8cd,adf8cd,93ebb5,6dcb9b,8ab4a1,4d6d67,60a580,6de2ad,2dad87,1d7155,007705,468127"},
					{ name = "MERFOLK_CS16", colors = "cdf8d6,adf8e6,93ebd2,6dcbba,8ab4af,4d686d,60a597,6de2d4,2da8ad,1d7171,00772d,288127"},
					{ name = "MERFOLK_CS17", colors = "cdf8e4,adf1f8,93e7eb,6dbdcb,8aabb4,4d5d6d,609ca5,6dc9e2,2d7dad,1d5571,007755,278144"}
				},
			},
		}
	},
	{
		name = "hair", -- body_part
		data = {
			merman = {
				unit_types = { 
                    "Merman Fighter", "Merman Warrior", "Merman Triton", "Merman Hoplite",
                    "Merman Hunter", "Merman Spearman", "Merman Javelineer", 
                    "Merman Brawler", "Merman Citizen",
                    "Merman Netcaster", "Merman Entangler",
					"Child King", "Merman Young King", "Soldier King", "Merman Warrior King",
					"Afterlife Merman Fighter", "Afterlife Merman Warrior", "Afterlife Merman Triton", "Afterlife Merman Hoplite",
                    "Afterlife Merman Hunter", "Afterlife Merman Spearman", "Afterlife Merman Javelineer", 
                    "Afterlife Merman Brawler", "Afterlife Merman Citizen",
                    "Afterlife Merman Netcaster", "Afterlife Merman Entangler",
					"Mermaid Initiate", "Mermaid Enchantress", "Mermaid Siren",
                    "Mermaid Priestess", "Mermaid Diviner",
                    "Afterlife Mermaid Initiate", "Afterlife Mermaid Enchantress", "Afterlife Mermaid Siren",
                    "Afterlife Mermaid Priestess", "Afterlife Mermaid Diviner"
                },
				base = "e8f898,98d858,509038,364c3e",
				variants = {
					{ name = "MERFOLK_HAIR", colors = "e8f898,98d858,509038,364c3e"},

					{ name = "MERFOLK_HAIR_JAVELINEER18", colors = "d8c2ad,93cc7a,2d58ad,637559"},
					{ name = "MERFOLK_HAIR_SIREN18", colors = "c4ffcb,93cc7a,278162,6e3f89"},
					{ name = "MERFOLK_HAIR_SPEARMAN18", colors = "e8f898,98d858,278162,364c3e"},
					{ name = "MERFOLK_HAIR_ENTANGLER16", colors = "e8f898,c0de67,509038,007777"},
					{ name = "MERFOLK_HAIR_ENTANGLER18", colors = "e8f898,98d858,509038,007777"},
					{ name = "MERFOLK_HAIR_SPEARMAN16", colors = "e8f898,98d858,308f7b,346452"},
					{ name = "MERFOLK_HAIR_JAVELINEER16", colors = "cae6a9,6fc192,2861a6,637559"},
					{ name = "MERFOLK_HAIR_SIREN16", colors = "c7fcd0,93cc7a,6c9d71,6e3f89"},
					{ name = "MERFOLK_HAIR_ENCHANTRESS18", colors = "f3fcbb,c7ac71,007b55,6e3f89"},
					{ name = "MERFOLK_HAIR_ENCHANTRESS16", colors = "e8f898,b3ae78,007777,6e3f89"},

					--other factions hair coloring
					{ name = "MERFOLK_HAIR_DUNEBURNER", colors = "cd9db0,a4929f,775b71,4e3d4b"},
					{ name = "MERFOLK_HAIR_DWARFBERSERK", colors = "b1ebec,98cfc4,58808d,2d4a4f"},
					{ name = "MERFOLK_HAIR_DWARFTHUNDERER", colors = "dab0a4,af937f,8b3219,582820"},
					{ name = "MERFOLK_HAIR_DWARFFIGHTER", colors = "f8edc5,e0c3a2,888868,4e3a2d"},
					{ name = "MERFOLK_HAIR_DWARFGUARD", colors = "eee498,eec66d,d0804d,833f1e"},
					{ name = "MERFOLK_HAIR_DWARFRUNESMITH", colors = "ffffff,e0c3a2,af937f,4e3a2d"},
					{ name = "MERFOLK_HAIR_ELVISH", colors = "faf3c9,e0c89e,c5956a,a9794f"},
					{ name = "MERFOLK_HAIR_HUMANFENCER", colors = "d1b563,af7a18,734a29,422110"},
					{ name = "MERFOLK_HAIR_HUMANARCHMAGE", colors = "faf3c9,c5956a,8a5c2f,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFEMALEARCHMAGE", colors = "ebd5bc,cfa87a,9a7458,7a4a3f"},
					{ name = "MERFOLK_HAIR_HUMANWHITEMAGE", colors = "c5956a,a9794f,784838,5a2816"},
					{ name = "MERFOLK_HAIR_HUMANFOOTPAD", colors = "ffe970,c7a143,bc5d5e,6b2444"},
					{ name = "MERFOLK_HAIR_HUMANTHIEF", colors = "bdd3e3,88a6d8,7c949b,3a5872"},
					{ name = "MERFOLK_HAIR_HUMANBANDIT", colors = "ababab,ad9960,506858,333d33"},
					{ name = "MERFOLK_HAIR_HUMANNECROMANCER", colors = "c9c3be,889880,6e675c,514a3f"},
					{ name = "MERFOLK_HAIR_WOLFRIDER", colors = "f3c274,a59077,796433,494a46"},
					{ name = "MERFOLK_HAIR_WOLFPILLAGER", colors = "d09b4c,a35b67,494a46,18222d"},
					{ name = "MERFOLK_HAIR_WOLFKNIGHT", colors = "cd9d6f,826c79,4a503e,2c2319"},
					{ name = "MERFOLK_HAIR_DIREWOLFRIDER", colors = "859a94,826c79,4a503e,2c2319"},
					{ name = "MERFOLK_HAIR_ORCISH_NOVICE", colors = "d9b75a,b5712f,7b4919,471d09"},
					{ name = "MERFOLK_HAIR_ORCISH_SHAMAN", colors = "a5966d,816447,523d28,2a1810"},
					{ name = "MERFOLK_HAIR_ORCISH_ELDER_SHAMAN", colors = "94ac98,6f8078,414445,25262a"},

					--experimental coloring
					{ name = "MERFOLK_HAIR_GREY_GREEN_BLUE", colors = "c6e9bd,84b8bf,4d687c,313545"},
					{ name = "MERFOLK_HAIR_ICE_PURPLE", colors = "a2b5ff,85ebe4,2d8b91,02342f"},
					{ name = "MERFOLK_HAIR_RED", colors = "f51743,9b173f,55173d,37173d"},
					{ name = "MERFOLK_HAIR_LIGHTSPIRIT", colors = "c7faff,baa4c0,8c5862,3e2844"},
					{ name = "MERFOLK_HAIR_DRYAD", colors = "00cf9e,00a35f,008734,003008"},
					{ name = "MERFOLK_HAIR_ICE", colors = "cefdff,9bdfeb,3591c3,1969b0"},
					{ name = "MERFOLK_HAIR_WHITE", colors = "dfdfdf,c7c7c7,7e7e7e,434343"},
					{ name = "MERFOLK_HAIR_EARTH", colors = "f6d6bd,cca88f,746266,4e495f"},
					{ name = "MERFOLK_HAIR_PURPLE", colors = "dfd5e3,b28fb0,5a4a5d,312933"},
					{ name = "MERFOLK_HAIR_GREY_BLUE", colors = "b9f1f0,90a1bd,50596e,273a48"},
					{ name = "MERFOLK_HAIR_BRIGHT_BROWN", colors = "ffd4a3,d08159,544e68,203c56"},
					{ name = "MERFOLK_HAIR_GREY_GREEN", colors = "f8f8a0,a5b89c,506858,525239"},
					{ name = "MERFOLK_HAIR_BLACK", colors = "848484,565656,313131,1a1a1a"},

					--colorshift coloring
					{ name = "MERFOLK_HAIR_CS1", colors = "c8f898,6dd858,38903d,364c45"},
					{ name = "MERFOLK_HAIR_CS2", colors = "a8f898,58d86e,38905a,364c4c"},
					{ name = "MERFOLK_HAIR_CS3", colors = "98f8a8,58d899,389077,36454c"},
					{ name = "MERFOLK_HAIR_CS4", colors = "98f8c8,58d8c4,388c90,363e4c"},
					{ name = "MERFOLK_HAIR_CS5", colors = "98f8e8,58c1d8,386f90,36374c"},
					{ name = "MERFOLK_HAIR_CS6", colors = "98e8f8,5896d8,385290,3c364c"},
					{ name = "MERFOLK_HAIR_CS7", colors = "98c8f8,586bd8,3b3890,43364c"},
					{ name = "MERFOLK_HAIR_CS8", colors = "98a8f8,7058d8,583890,4a364c"},
					{ name = "MERFOLK_HAIR_CS9", colors = "a898f8,9b58d8,753890,4c3647"},
					{ name = "MERFOLK_HAIR_CS10", colors = "c898f8,c658d8,90388e,4c3640"},
					{ name = "MERFOLK_HAIR_CS11", colors = "e898f8,d858bf,903871,4c3639"},
					{ name = "MERFOLK_HAIR_CS12", colors = "f898e8,d85894,903854,4c3a36"},
					{ name = "MERFOLK_HAIR_CS13", colors = "f898c8,d85869,903938,4c4136"},
					{ name = "MERFOLK_HAIR_CS14", colors = "898a8,d87258,905638,4c4836"},
					{ name = "MERFOLK_HAIR_CS15", colors = "f8a898,d89d58,907338,494c36"},
					{ name = "MERFOLK_HAIR_CS16", colors = "f8c898,d8c858,909038,424c36"},
					{ name = "MERFOLK_HAIR_CS17", colors = "f8e898,bdd858,739038,3b4c36"}
				},
			},
		}
	},
	{
		name = "armour", -- body_part
		data = {
			merman = {
				unit_types = { 
                    "Merman Fighter", "Merman Warrior", "Merman Triton", "Merman Hoplite",
                    "Merman Hunter", "Merman Spearman", "Merman Javelineer", 
                    "Merman Brawler", "Merman Citizen",
                    "Merman Netcaster", "Merman Entangler",
					"Child King", "Merman Young King", "Soldier King", "Merman Warrior King",
					"Afterlife Merman Fighter", "Afterlife Merman Warrior", "Afterlife Merman Triton", "Afterlife Merman Hoplite",
                    "Afterlife Merman Hunter", "Afterlife Merman Spearman", "Afterlife Merman Javelineer", 
                    "Afterlife Merman Brawler", "Afterlife Merman Citizen",
                    "Afterlife Merman Netcaster", "Afterlife Merman Entangler",
					"Mermaid Initiate", "Mermaid Enchantress", "Mermaid Siren",
                    "Mermaid Priestess", "Mermaid Diviner",
                    "Afterlife Mermaid Initiate", "Afterlife Mermaid Enchantress", "Afterlife Mermaid Siren",
                    "Afterlife Mermaid Priestess", "Afterlife Mermaid Diviner"
                },
				base = "f2f2ea,d8c2ad,b8ae8b,b3ae78,a09462,a28d62,746247,484b42,504137,4b2e30,382218,425838,1c1735",
				variants = {
					{ name = "MERFOLK_ARMOUR_BASE", colors = "f2f2ea,d8c2ad,b8ae8b,b3ae78,a09462,a28d62,746247,484b42,504137,4b2e30,382218,425838,1c1735"},

					--merfolk armour
					{ name = "MERFOLK_ARMOUR_PRIESTESS", colors = "f2f2ea,d8c2ad,d8c2ad,b8ae8b,b3ae78,b8ae8b,a28d62,425838,425838,425838,382218,425838,1c1735"},
					{ name = "MERFOLK_ARMOUR_JAVELINEER", colors = "f2f2ea,979fa9,979fa9,979fa9,979fa9,4d586d,586164,484b42,404444,404444,382218,422547,1c1735"},
					{ name = "MERFOLK_ARMOUR_SPEARMAN", colors = "f2f2ea,bdbebd,bdbebd,bdbebd,bdbebd,979fa9,586164,484b42,495153,495153,382218,422547,1c1735"},
					{ name = "MERFOLK_ARMOUR_SIREN18", colors = "c4ffcb,c4ffcb,c5c5ff,c5c5ff,c5c5ff,c5c5ff,7a9180,61554d,61554d,61554d,382218,61554d,1c1735"},
					{ name = "MERFOLK_ARMOUR_SIREN16", colors = "c4ffcb,c4ffcb,c5c5ff,c5c5ff,c5c5ff,c5c5ff,6c9d71,714444,714444,714444,382218,714444,1c1735"},

					--other faction armour
					{ name = "MERFOLK_ARMOUR_LOYALIST_BLUE", colors = "c6e7e7,c6e7e7,94c6c6,66a5b2,66a5b2,638c94,638c94,31526b,31526b,182931,182931,182931,101010"},
					{ name = "MERFOLK_ARMOUR_HI", colors = "a8a098,a8a098,78655a,686058,686058,4d4541,4d4541,2c2623,2c2623,191919,191919,191919,101010"},
					{ name = "MERFOLK_ARMOUR_DRAKE", colors = "d1e997,d1e997,c79962,af7a18,af7a18,996d24,996d24,af3c18,af3c18,4c3324,4c3324,4c3324,101010"},
					{ name = "MERFOLK_ARMOUR_GOLD", colors = "ffe38c,ffe38c,ffcc43,e1a022,e1a022,c67b02,c67b02,804018,804018,66211b,66211b,66211b,101010"},
					{ name = "MERFOLK_ARMOUR_BRONZE", colors = "ccb066,ccb066,aa6a28,943020,943020,804018,804018,74341c,74341c,13262e,13262e,13262e,101010"},
					{ name = "MERFOLK_ARMOUR_HUMANJAVELIN", colors = "d6d69c,d6d69c,938d6d,837c54,837c54,525239,525239,39382d,39382d,2f1010,2f1010,2f1010,101010"},
					{ name = "MERFOLK_ARMOUR_DUNEFOLK", colors = "fff5a0,fff5a0,d6bd8a,b09e7d,b09e7d,888670,888670,5c6339,5c6339,3d3411,3d3411,3d3411,101010"},
					{ name = "MERFOLK_ARMOUR_ORC", colors = "ffffd5,ffffd5,ffdd88,d5d59b,d5d59b,aa9966,aa9966,515138,515138,2d2d2d,2d2d2d,2d2d2d,101010"},
					{ name = "MERFOLK_ARMOUR_ASSASSIN", colors = "aac0a0,aac0a0,889880,506858,506858,333d33,333d33,273631,273631,1c1b21,1c1b21,1c1b21,101010"},
					{ name = "MERFOLK_ARMOUR_DEATHKNIGHT", colors = "e0e0e8,e0e0e8,a3a7ab,878996,878996,73697e,73697e,5e3535,5e3535,13262e,13262e,13262e,101010"},
					{ name = "MERFOLK_ARMOUR_GSE_BLUE", colors = "abe5f6,abe5f6,69bbd9,4984bd,4984bd,2b52a9,2b52a9,121b5c,121b5c,140036,140036,140036,101010"},
					{ name = "MERFOLK_ARMOUR_GSE_GREEN", colors = "92d2bb,92d2bb,5bb19e,439b82,439b82,2d8569,2d8569,125756,125756,0a293b,0a293b,0a293b,101010"},
					{ name = "MERFOLK_ARMOUR_WOSE", colors = "e6e6a6,e6e6a6,c99462,af7d4b,af7d4b,835c35,835c35,573a14,573a14,352313,352313,352313,101010"},
					{ name = "MERFOLK_ARMOUR_ELVISH", colors = "a4b496,a4b496,687862,4b5a4a,4b5a4a,313b31,313b31,252a23,252a23,121311,121311,121311,101010"},
					{ name = "MERFOLK_ARMOUR_QUENOTH", colors = "d9aea6,d9aea6,bd696e,ae4e51,ae4e51,9f2133,9f2133,6a343b,6a343b,3f2a31,3f2a31,3f2a31,101010"},
					{ name = "MERFOLK_ARMOUR_QUENOTH_WEAPON", colors = "a4f19d,a4f19d,78c1b2,5fb2b9,5fb2b9,4c91c9,4c91c9,4a707a,4a707a,4a2e62,4a2e62,4a2e62,101010"}
				},
			},
		}
	}
}

_G.ucc_race_registry["merman"] = {
    body_parts = body_parts
}