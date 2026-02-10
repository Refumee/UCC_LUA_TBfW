-- orc_data.lua
local body_parts = {
	{
		name = "armor", -- body_part
		data = {
			orc = {
                unit_types = { 
                    "Orcish Grunt", "Orcish Warrior", "Orcish Warlord", 
                    "Orcish Archer","Orcish Crossbowman", "Orcish Slurbow",
                    "Orcish Leader", "Orcish Ruler", "Orcish Sovereign",
                    "Afterlife Orcish Grunt", "Afterlife Orcish Warrior", "Afterlife Orcish Warlord", 
                    "Afterlife Orcish Archer","Afterlife Orcish Crossbowman", "Afterlife Orcish Slurbow",
                    "Afterlife Orcish Leader", "Afterlife Orcish Ruler", "Afterlife Orcish Sovereign"
                },
				base = "FFFFD5,FFFFCE,F0E9AE,D5D59B,FFDD88,AA9966,79746D,84754A,939372,66663E,555533,515138,2B2C16,333333,2D2D2D", 
				variants = {
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_COLLECTION_COLOR", colors = "FFFFFF,FFFFD5,FFFFCE,D5D59B,FFDD88,AA9966,79746D,84754A,939372,66663E,555533,515138,2B2C16,333333,2D2D2D"},

					--randomiser
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR10_COLOR", colors = "FFFFFF,ffffef,ffffef,efefb5,fff7a2,c4b380,c4b380,c4b380,adad8c,6e6e4c,6e6e4c,6e6e4c,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_10_COLOR", colors = "FFFFFF,e6e6bc,e6e6bc,bcbc82,e6c46f,90804c,90804c,90804c,7a7a58,3c3c1a,3c3c1a,3c3c1a,141414,141414,141414"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR25_COLOR", colors = "FFFFFF,ffffcc,ffffcc,d7d78e,ffdd73,ae9959,ae9959,ae9959,94946b,56562b,56562b,56562b,2d2d2d,2d2d2d,2d2d2d"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR2510_COLOR", colors = "FFFFFF,ffffe6,ffffe6,f1f1a8,fff78d,c8b372,c8b372,c8b372,aeae84,707044,707044,707044,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR25_10_COLOR", colors = "FFFFFF,e6e6b2,e6e6b2,bebe75,e6c45a,948040,948040,948040,7b7b52,3d3d12,3d3d12,3d3d12,141414,141414,141414"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR50_COLOR", colors = "FFFFFF,ffffc2,ffffc2,d8d881,ffdd5d,b3994d,b3994d,b3994d,959563,575724,575724,575724,2d2d2d,2d2d2d,2d2d2d"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR5010_COLOR", colors = "FFFFFF,ffffdc,ffffdc,f2f29b,fff777,cdb366,cdb366,cdb366,afaf7c,70703d,70703d,70703d,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR50_10_COLOR", colors = "FFFFFF,e6e6a8,e6e6a8,bebe68,e6c444,9a8034,9a8034,9a8034,7c7c4a,3e3e0a,3e3e0a,3e3e0a,141414,141414,141414"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_25_COLOR", colors = "FFFFFF,fefede,fefede,d3d3a8,f7dd9d,a69973,a69973,a69973,929279,54543b,54543b,54543b,2d2d2d,2d2d2d,2d2d2d"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_2510_COLOR", colors = "FFFFFF,fffff8,fffff8,ededc2,fff7b7,c0b38c,c0b38c,c0b38c,acac92,6e6e54,6e6e54,6e6e54,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_25_10_COLOR", colors = "FFFFFF,e4e4c4,e4e4c4,baba8e,dec484,8c805a,8c805a,8c805a,797960,3b3b21,3b3b21,3b3b21,141414,141414,141414"},

					--rare armour
					{ name = "BASE_NORTHERNER_DARK_LOYALIST_ARMOUR_COLOR", colors = "FFFFFF,ffffff,ffffff,94c6c6,c6e7e7,638c94,638c94,638c94,6799a2,31526b,31526b,31526b,182931,182931,182931"},
					{ name = "BASE_NORTHERNER_HEAVY_INFANTERY_ARMOUR_COLOR", colors = "FFFFFF,ececec,ececec,a8a098,cac6c2,78655a,78655a,78655a,7a726c,4d4541,4d4541,4d4541,2c2623,2c2623,2c2623"},
					{ name = "BASE_NORTHERNER_LIGHT_LOYALIST_ARMOUR_COLOR", colors = "FFFFFF,ffffff,ffffff,add6d6,c6e7e7,94c6c6,94c6c6,94c6c6,7ba9ad,638c94,638c94,638c94,31526b,31526b,31526b"},
					{ name = "BASE_NORTHERNER_MEDIUM_LOYALIST_ARMOUR_COLOR", colors = "FFFFFF,ffffff,ffffff,A1CECE,C6E7E7,7CA9AD,7CA9AD,7CA9AD,71A1A8,4A6F80,4A6F80,4A6F80,253E4E,253E4E,253E4E"},
					{ name = "BASE_NORTHERNER_ELVISH_ARMOUR_COLOR", colors = "FFFFFF,e8edd5,e8edd5,a4b496,86967c,687862,687862,687862,4c5949,313b31,313b31,313b31,252a23,252a23,252a23"},
					{ name = "BASE_NORTHERNER_DUNEFOLK_ARMOUR_COLOR", colors = "FFFFFF,ffffff,ffffff,f5e5c2,cfb99f,a79e7e,a79e7e,a79e7e,7f7165,625454,625454,625454,453843,453843,453843"}, 

					--rusty armour
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_GREYBLUE", colors = "e0e0e8,b1a58d,b1a58d,8c806a,5c8b93,c87020,c87020,c87020,a55d19,5d7275,5d7275,5d7275,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_BROWN", colors = "e0e0e8,cda184,cda184,b1876b,93614a,c87020,c87020,c87020,a55d19,875c3c,875c3c,875c3c,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_ORANGE", colors = "e0e0e8,e3986d,e3986d,c27a51,ab5635,c87020,c87020,c87020,a55d19,9c5324,9c5324,9c5324,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_PURPLE", colors = "e0e0e8,879ea7,879ea7,8c806a,667f89,c87020,c87020,c87020,a55d19,5d4852,5d4852,5d4852,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_RED", colors = "e0e0e8,ff8d8d,ff8d8d,db6b6b,922e2e,c87020,c87020,c87020,a55d19,742b2b,742b2b,742b2b,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_GREEN", colors = "a3a7ab,a3a7ab,a3a7ab,7d848c,5f685a,c87020,c87020,c87020,a55d19,525239,525239,525239,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_JADEGREEN", colors = "84c6c4,7d848c,7d848c,8c806a,569988,be6859,be6859,be6859,a04e40,345c51,345c51,345c51,5e3535,5e3535,5e3535"},

					--faction colors
					{ name = "BASE_NORTHERNER_DARK_QUENOTH_ARMOUR_COLOR", colors = "ffffff,d9aea6,d9aea6,a65055,bd696e,9f2133,9f2133,9f2133,822837,6a343b,6a343b,6a343b,3f2a31,3f2a31,3f2a31"},
					{ name = "BASE_NORTHERNER_LIGHT_QUENOTH_ARMOUR_COLOR", colors = "ffffff,eaccc6,eaccc6,c6958d,d9aea6,bd696e,bd696e,bd696e,a44b51,9f2133,9f2133,9f2133,6a343b,6a343b,6a343b"},
					{ name = "BASE_NORTHERNER_QUENOTHWEAPN1_ARMOUR_COLOR", colors = "ffffff,e7ffce,e7ffce,8cda85,a4f19d,4c91c9,4c91c9,4c91c9,78c1b2,4a707a,4a707a,4a707a,4a2e62,4a2e62,4a2e62"},
					{ name = "BASE_NORTHERNER_QUENOTHWEAPN2_ARMOUR_COLOR", colors = "ffffff,e7ffce,e7ffce,8cda85,a4f19d,78c1b2,78c1b2,78c1b2,4c91c9,4a707a,4a707a,4a707a,4a2e62,4a2e62,4a2e62"},
					{ name = "BASE_NORTHERNER_IXTHALA_ARMOUR_COLOR", colors = "ffffff,ceccea,ceccea,8e8abf,afacd9,8a81b3,8a81b3,8a81b3,5e699c,474a6b,474a6b,474a6b,222438,222438,222438"},
					{ name = "BASE_NORTHERNER_GIANT_ANT_ARMOUR_COLOR", colors = "ffffff,b1d2d6,b1d2d6,78949d,90a8b0,907ab5,907ab5,907ab5,706993,505870,505870,505870,550022,550022,550022"},
					{ name = "BASE_NORTHERNER_FIRE_ANT_ARMOUR_COLOR", colors = "ffffff,ffe9b3,ffe9b3,ecb535,ffc843,ff4301,ff4301,ff4301,b02e00,821611,821611,821611,550022,550022,550022"},
					{ name = "BASE_NORTHERNER_QUENOTH_ASSASSIN_CLOTH_ARMOUR_COLOR", colors = "ffffff,c3a89f,c3a89f,897373,9c8b8b,8f7a7a,8f7a7a,8f7a7a,74605d,5c4744,5c4744,5c4744,372725,372725,372725"},
					{ name = "BASE_NORTHERNER_MERFOLK_JAVELIN_ARMOUR_COLOR", colors = "ffffff,f2f2ea,f2f2ea,a7afa7,bdbebd,979fa9,979fa9,979fa9,4d586d,586164,586164,586164,404444,404444,404444"},
					{ name = "BASE_NORTHERNER_DRAKE_ARMOUR_COLOR", colors = "ffffff,ecfdc6,ecfdc6,bbd57f,d1e997,c79962,c79962,c79962,996d24,af3c18,af3c18,af3c18,4c3324,4c3324,4c3324"},
					{ name = "BASE_NORTHERNER_GOLD_ARMOUR_COLOR", colors = "ffffff,ffe38c,ffe38c,eab932,ffcc43,c67b02,c67b02,c67b02,aa5a0c,804018,804018,804018,66211b,66211b,66211b"},
					{ name = "BASE_NORTHERNER_BRONZE_ARMOUR_COLOR", colors = "ffffff,e3c981,e3c981,bfa254,ccb066,aa6a28,aa6a28,aa6a28,804018,74341c,74341c,74341c,13262e,13262e,13262e"},
					{ name = "BASE_NORTHERNER_SKELETONRIDER_ARMOUR_COLOR", colors = "ffffff,f8f8a0,f8f8a0,bfa254,ccb066,aa6a28,aa6a28,aa6a28,74341c,304860,304860,304860,13262e,13262e,13262e"},
					{ name = "BASE_NORTHERNER_DEATHKNIGHT_ARMOUR_COLOR", colors = "ffffff,e0e0e8,e0e0e8,8d939a,a3a7ab,73697e,73697e,73697e,644b5f,5e3535,5e3535,5e3535,13262e,13262e,13262e"},
					{ name = "BASE_NORTHERNER_GSE_BLUE_ARMOUR_COLOR", colors = "ffffff,abe5f6,abe5f6,55a9c7,69bbd9,2b52a9,2b52a9,2b52a9,1e3289,121b5c,121b5c,121b5c,140036,140036,140036"},
					{ name = "BASE_NORTHERNER_GSE_GREEN_ARMOUR_COLOR", colors = "ffffff,92d2bb,92d2bb,499c8a,5bb19e,2d8569,2d8569,2d8569,1e6e5f,125756,125756,125756,0a293b,0a293b,0a293b"},
					{ name = "BASE_NORTHERNER_WOSE_ARMOUR_COLOR", colors = "ffffca,e6e6a6,e6e6a6,b7814f,c99462,835c35,835c35,835c35,693e23,573a14,573a14,573a14,352313,352313,352313"},
					{ name = "BASE_NORTHERNER_GREY_ARMOUR_COLOR", colors = "ffffff,fafafa,fafafa,cfcfcf,dedede,989898,989898,989898,8f8f8f,515151,515151,515151,2d2d2d,2d2d2d,2d2d2d"}
				},
			},
		}
	},
	{
		name = "cloth", -- body_part
		data = {
			assassin = {
                unit_types = { "Orcish Assassin", "Orcish Slayer", "Orcish Nightblade", "Afterlife Orcish Assassin", "Afterlife Orcish Slayer", "Afterlife Orcish Nightblade" },
				base = "b1840b,582820,ad9862,939372,84754a,594e2f,2b2c16,47433f,2d2d2d",
				variants = {
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_COLOR", colors = "b1840b,582820,ad9862,939372,84754a,594e2f,2b2c16,47433f,2d2d2d"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BLUEISH_BROWN", colors = "b3785d,66333d,b3785d,997d76,997d76,57404e,242b4a,57404e,242b4a"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_REDDISH_GREEN", colors = "b17632,5e3535,c5956a,949473,91822f,525239,4f2d29,514a3f,4f2d29"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BROWNISH", colors = "c7772c,573436,b79c80,929466,8f6c61,6b4936,472b27,475044,472b27"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BLUEISH", colors = "997a6b,130d25,b3927e,997a6b,876f69,4e495f,0f2a3f,4e495f,0f2a3f"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BROWNISH_RED", colors = "ae6a42,662431,db9651,ae6a42,826e2f,75491e,3f1519,47213c,3f1519"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BLUEISH_BROWN_COMBO", colors = "b27e34,5f2e2f,b08860,968874,8f7960,58473f,282c30,4f4247,292c3c"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_REDDISH_GREEN_COMBO", colors = "b17d1f,5b2f2b,b99766,949473,8b7c3d,565034,3d2d20,4c473f,3e2d2b"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BROWNISH_COMBO", colors = "bc7e1c,582e2b,b29a71,93946c,8a7156,624c33,392c1f,474a42,3a2c2a"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BLUEISH_COMBO", colors = "a57f3b,361b23,b09570,96876f,86725a,544c47,1d2b2b,4b464f,1e2c36"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BROWNISH_RED_COMBO", colors = "b07727,5f2629,c4975a,a17f5a,83723d,674c27,352118,47323e,362123"},

					--rare colors
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BLUE_YELLOW", colors = "d08159,0d2b45,d08159,8d697a,8d697a,544e68,203c56,203c56,0d2b45"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_GREEN", colors = "7e921b,2e3e25,afa24e,999d4f,818442,5c572c,212e1a,41493a,23341f"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_BLUE", colors = "636f87,1d2336,8999b4,8999b4,50596e,273541,1d2336,273a48,1d2336"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_PURPLE", colors = "c8658c,332a36,dd8d9f,667db4,544c70,4f415a,332a36,4f415a,332a36"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_MOSS", colors = "77744f,3b2137,a19f7c,a19f7c,775c4f,603b3a,213b25,603b3a,2f213b"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_GREY", colors = "7a7a7a,373737,909090,909090,6f6f6f,434343,212121,434343,2c2c2c"},
					{ name = "BASE_NORTHERNER_ORCISH_ASSASSIN_MUMMY", colors = "F6F6DA,553939,E6E6CC,D5D3A1,D5D3A1,BAB98B,4B4142,717171,393939"}
				},
			},
		}
	},
	{
		name = "cloth", -- body_part
		data = {
			shaman = {
                unit_types = { "Orcish Shaman", "Orcish Adept", "Orcish Sorceress", "Afterlife Orcish Elder Witch2", "Afterlife Orcish Elder Witch2", "Afterlife Orcish Shamaness2" },
				base = "9AAB60,80813D,554C1B,524919,312B0A",
				variants = {
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_COLOR", colors = "9AAB60,80813D,554C1B,524919,312B0A"},

					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_DARKER", colors = "818442,5c572c,41493a,41493a,212e1a"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_GREENPURPLE", colors = "93a167,6e6962,433455,433455,000001"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_GREENRED", colors = "a19f7c,77744f,603b3a,603b3a,213b25"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_BROWNREDPURPLE", colors = "826e2f,75491e,47213c,47213c,3F1519"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_BROWNGREY", colors = "84754a,594e2f,47433f,47433f,2b2c16"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_DARKBROWN", colors = "a08662,796755,423934,423934,221c1a"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_LIGHTBROWN", colors = "cda184,93614a,653618,653618,38160a"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_BROWNGREYGREEN", colors = "8f6c61,6b4936,475044,475044,472b27"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_ORANGEBLUE", colors = "d08159,8d697a,203c56,203c56,0d2b45"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_BLUE", colors = "50596e,273541,273a48,273a48,1d2336"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_PURPLE", colors = "9d7d95,684e67,50445a,50445a,322a3f"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_GREY", colors = "909090,6f6f6f,434343,434343,212121"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_GREYBROWN", colors = "576d6d,8a7d5d,593f33,593f33,221e23"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_GREYRED", colors = "aaaa8e,717171,553939,553939,393939"},

					--faction clothing
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_DUNEBURNER", colors = "D5D3A1,A09F84,7F7165,7F7165,453843"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_DUNEHERBALIST", colors = "B8A641,798D63,535E2D,535E2D,303313"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_DARKDUNE", colors = "e6e6cc,aaaa8e,717171,717171,393939"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_LIGHTDUNE", colors = "f6f6da,d5d3a1,bab98b,bab98b,4b4142"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_REDMAGE", colors = "cabca2,a4977e,635841,635841,4b402b"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_HUMANMAGE", colors = "b18134,8a5c2f,7b4231,7b4231,4e3430"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_DARKADEPT", colors = "a5b89c,889880,506858,506858,283028"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_ELVISHSHAMAN", colors = "efff9c,9cde5a,529439,529439,4f7229"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_SAURIANAUGUR", colors = "ffffff,9b9c92,515249,515249,17212c"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_SAURIANORACLE", colors = "ffffff,8dc2c2,2c4c6c,2c4c6c,17212c"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_SAURIANPROPHET", colors = "ffd44a,ffe59d,bf6d00,bf6d00,581802"},
					{ name = "BASE_NORTHERNER_ORCISH_SHAMAN_CLOTH_SAURIANSEER", colors = "ffffff,ffd44a,bf6d00,bf6d00,581802"}
				},
			},
		}
	},
	{
		name = "skin", -- body_part
		data = {
			orc = {
                unit_types = { 
                    "Orcish Grunt", "Orcish Warrior", "Orcish Warlord", 
                    "Orcish Archer","Orcish Crossbowman", "Orcish Slurbow",
                    "Orcish Leader", "Orcish Ruler", "Orcish Sovereign",
                    "Afterlife Orcish Grunt", "Afterlife Orcish Warrior", "Afterlife Orcish Warlord", 
                    "Afterlife Orcish Archer","Afterlife Orcish Crossbowman", "Afterlife Orcish Slurbow",
                    "Afterlife Orcish Leader", "Afterlife Orcish Ruler", "Afterlife Orcish Sovereign",
					"Orcish Assassin", "Orcish Slayer", "Orcish Nightblade", "Afterlife Orcish Assassin",
					"Afterlife Orcish Slayer", "Afterlife Orcish Nightblade", "Orcish Shaman", "Orcish Adept",
					"Orcish Sorceress", "Afterlife Orcish Elder Witch2", "Afterlife Orcish Elder Witch2", "Afterlife Orcish Shamaness2"
                },
				base = "ffce39,c08008,985810,804018,582820",
				variants = {
					{ name = "BASE_NORTHERNER_ORCISH_SKIN_COLOR", colors = "ffce39,c08008,985810,804018,582820"},
					{ name = "BASE_NORTHERNER_HUMAN_SKIN_COLOR", colors = "d2d2d2,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "BASE_NORTHERNER_DUNEFOLK_SKIN_COLOR", colors = "d6bd8a,d0963a,ac7732,97560f,6e3417"},
					{ name = "BASE_NORTHERNER_SKELETON_SKIN_COLOR", colors = "ffffce,d6d69c,949473,525239,283028"},
					{ name = "BASE_NORTHERNER_WC_SKIN_COLOR", colors = "c4c3c1,a2a684,75826a,555e3e,524133"},
					{ name = "BASE_NORTHERNER_SOULLESS_SKIN_COLOR", colors = "cbcfc7,b0b3af,826c79,74687b,634258"},
					{ name = "BASE_NORTHERNER_AOA_MOUNTAINGOBLIN_SKIN_COLOR", colors = "ffd756,c2cd71,84873b,617f41,2f461d"}
				},
			},
		}
	}
}

_G.ucc_race_registry["orc"] = {
    body_parts = body_parts
}