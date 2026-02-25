-- goblin_data.lua
local body_parts = {
	{
		name = "Armor", -- body_part
		data = {
			goblin = {
				unit_types = { "Goblin Spearman","Goblin Impaler","Goblin Rouser", "Afterlife Goblin Spearman","Afterlife Goblin Impaler","Afterlife Goblin Rouser" },
				base = "FFFFD5,FFFFCE,F0E9AE,D5D59B,FFDD88,AA9966,79746D,84754A,939372,66663E,555533,515138,2B2C16,333333,2D2D2D", 
				variants = {
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_COLLECTION_COLOR", description = "Default orcish armour", colors = "FFFFFF,FFFFD5,FFFFCE,D5D59B,FFDD88,AA9966,79746D,84754A,939372,66663E,555533,515138,2B2C16,333333,2D2D2D"},

					--randomiser
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR10_COLOR", description = "Colorshift 1", colors = "FFFFFF,ffffef,ffffef,efefb5,fff7a2,c4b380,c4b380,c4b380,adad8c,6e6e4c,6e6e4c,6e6e4c,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_10_COLOR", description = "Colorshift 2", colors = "FFFFFF,e6e6bc,e6e6bc,bcbc82,e6c46f,90804c,90804c,90804c,7a7a58,3c3c1a,3c3c1a,3c3c1a,141414,141414,141414"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR25_COLOR", description = "Colorshift 3", colors = "FFFFFF,ffffcc,ffffcc,d7d78e,ffdd73,ae9959,ae9959,ae9959,94946b,56562b,56562b,56562b,2d2d2d,2d2d2d,2d2d2d"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR2510_COLOR", description = "Colorshift 4", colors = "FFFFFF,ffffe6,ffffe6,f1f1a8,fff78d,c8b372,c8b372,c8b372,aeae84,707044,707044,707044,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR25_10_COLOR", description = "Colorshift 5", colors = "FFFFFF,e6e6b2,e6e6b2,bebe75,e6c45a,948040,948040,948040,7b7b52,3d3d12,3d3d12,3d3d12,141414,141414,141414"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR50_COLOR", description = "Colorshift 6", colors = "FFFFFF,ffffc2,ffffc2,d8d881,ffdd5d,b3994d,b3994d,b3994d,959563,575724,575724,575724,2d2d2d,2d2d2d,2d2d2d"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR5010_COLOR", description = "Colorshift 7", colors = "FFFFFF,ffffdc,ffffdc,f2f29b,fff777,cdb366,cdb366,cdb366,afaf7c,70703d,70703d,70703d,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR50_10_COLOR", description = "Colorshift 8", colors = "FFFFFF,e6e6a8,e6e6a8,bebe68,e6c444,9a8034,9a8034,9a8034,7c7c4a,3e3e0a,3e3e0a,3e3e0a,141414,141414,141414"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_25_COLOR", description = "Colorshift 9", colors = "FFFFFF,fefede,fefede,d3d3a8,f7dd9d,a69973,a69973,a69973,929279,54543b,54543b,54543b,2d2d2d,2d2d2d,2d2d2d"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_2510_COLOR", description = "Colorshift 10", colors = "FFFFFF,fffff8,fffff8,ededc2,fff7b7,c0b38c,c0b38c,c0b38c,acac92,6e6e54,6e6e54,6e6e54,464646,464646,464646"},
					{ name = "BASE_NORTHERNER_ORCISH_ARMOUR_25_10_COLOR", description = "Colorshift 11", colors = "FFFFFF,e4e4c4,e4e4c4,baba8e,dec484,8c805a,8c805a,8c805a,797960,3b3b21,3b3b21,3b3b21,141414,141414,141414"},

					--rare armour
					{ name = "BASE_NORTHERNER_DARK_LOYALIST_ARMOUR_COLOR", description = "Darker Loyalist armour", colors = "FFFFFF,ffffff,ffffff,94c6c6,c6e7e7,638c94,638c94,638c94,6799a2,31526b,31526b,31526b,182931,182931,182931"},
					{ name = "BASE_NORTHERNER_HEAVY_INFANTERY_ARMOUR_COLOR", description = "Heavy Infantry armour", colors = "FFFFFF,ececec,ececec,a8a098,cac6c2,78655a,78655a,78655a,7a726c,4d4541,4d4541,4d4541,2c2623,2c2623,2c2623"},
					{ name = "BASE_NORTHERNER_LIGHT_LOYALIST_ARMOUR_COLOR", description = "Lighter Loyalist armour", colors = "FFFFFF,ffffff,ffffff,add6d6,c6e7e7,94c6c6,94c6c6,94c6c6,7ba9ad,638c94,638c94,638c94,31526b,31526b,31526b"},
					{ name = "BASE_NORTHERNER_MEDIUM_LOYALIST_ARMOUR_COLOR", description = "Medium Loyalist armour", colors = "FFFFFF,ffffff,ffffff,A1CECE,C6E7E7,7CA9AD,7CA9AD,7CA9AD,71A1A8,4A6F80,4A6F80,4A6F80,253E4E,253E4E,253E4E"},
					{ name = "BASE_NORTHERNER_ELVISH_ARMOUR_COLOR", description = "Elvish armour", colors = "FFFFFF,e8edd5,e8edd5,a4b496,86967c,687862,687862,687862,4c5949,313b31,313b31,313b31,252a23,252a23,252a23"},
					{ name = "BASE_NORTHERNER_DUNEFOLK_ARMOUR_COLOR", description = "Dunefolk armour", colors = "FFFFFF,ffffff,ffffff,f5e5c2,cfb99f,a79e7e,a79e7e,a79e7e,7f7165,625454,625454,625454,453843,453843,453843"}, 

					--rusty armour
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_GREYBLUE", description = "Rusty Greyblue", colors = "e0e0e8,b1a58d,b1a58d,8c806a,5c8b93,c87020,c87020,c87020,a55d19,5d7275,5d7275,5d7275,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_BROWN", description = "Rusty Brown", colors = "e0e0e8,cda184,cda184,b1876b,93614a,c87020,c87020,c87020,a55d19,875c3c,875c3c,875c3c,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_ORANGE", description = "Rusty Orange", colors = "e0e0e8,e3986d,e3986d,c27a51,ab5635,c87020,c87020,c87020,a55d19,9c5324,9c5324,9c5324,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_PURPLE", description = "Rusty Purple", colors = "e0e0e8,879ea7,879ea7,8c806a,667f89,c87020,c87020,c87020,a55d19,5d4852,5d4852,5d4852,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_RED", description = "Rusty Red", colors = "e0e0e8,ff8d8d,ff8d8d,db6b6b,922e2e,c87020,c87020,c87020,a55d19,742b2b,742b2b,742b2b,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_GREEN", description = "Rusty Green", colors = "a3a7ab,a3a7ab,a3a7ab,7d848c,5f685a,c87020,c87020,c87020,a55d19,525239,525239,525239,5e3535,5e3535,5e3535"},
					{ name = "BASE_NORTHERNER_ARMOUR_RUSTY_JADEGREEN", description = "Rusty Jade Green", colors = "84c6c4,7d848c,7d848c,8c806a,569988,be6859,be6859,be6859,a04e40,345c51,345c51,345c51,5e3535,5e3535,5e3535"},

					--faction colors
					{ name = "BASE_NORTHERNER_DARK_QUENOTH_ARMOUR_COLOR", description = "Dark Quenoth armour", colors = "ffffff,d9aea6,d9aea6,a65055,bd696e,9f2133,9f2133,9f2133,822837,6a343b,6a343b,6a343b,3f2a31,3f2a31,3f2a31"},
					{ name = "BASE_NORTHERNER_LIGHT_QUENOTH_ARMOUR_COLOR", description = "Light Quenoth armour", colors = "ffffff,eaccc6,eaccc6,c6958d,d9aea6,bd696e,bd696e,bd696e,a44b51,9f2133,9f2133,9f2133,6a343b,6a343b,6a343b"},
					{ name = "BASE_NORTHERNER_QUENOTHWEAPN1_ARMOUR_COLOR", description = "Quenoth weapon armour 1", colors = "ffffff,e7ffce,e7ffce,8cda85,a4f19d,4c91c9,4c91c9,4c91c9,78c1b2,4a707a,4a707a,4a707a,4a2e62,4a2e62,4a2e62"},
					{ name = "BASE_NORTHERNER_QUENOTHWEAPN2_ARMOUR_COLOR", description = "Quenoth weapon armour 2", colors = "ffffff,e7ffce,e7ffce,8cda85,a4f19d,78c1b2,78c1b2,78c1b2,4c91c9,4a707a,4a707a,4a707a,4a2e62,4a2e62,4a2e62"},
					{ name = "BASE_NORTHERNER_IXTHALA_ARMOUR_COLOR", description = "Ixthala armour", colors = "ffffff,ceccea,ceccea,8e8abf,afacd9,8a81b3,8a81b3,8a81b3,5e699c,474a6b,474a6b,474a6b,222438,222438,222438"},
					{ name = "BASE_NORTHERNER_GIANT_ANT_ARMOUR_COLOR", description = "Giant Ant armour", colors = "ffffff,b1d2d6,b1d2d6,78949d,90a8b0,907ab5,907ab5,907ab5,706993,505870,505870,505870,550022,550022,550022"},
					{ name = "BASE_NORTHERNER_FIRE_ANT_ARMOUR_COLOR", description = "Fire Ant armour", colors = "ffffff,ffe9b3,ffe9b3,ecb535,ffc843,ff4301,ff4301,ff4301,b02e00,821611,821611,821611,550022,550022,550022"},
					{ name = "BASE_NORTHERNER_QUENOTH_ASSASSIN_CLOTH_ARMOUR_COLOR", description = "Quenoth Assassin armour", colors = "ffffff,c3a89f,c3a89f,897373,9c8b8b,8f7a7a,8f7a7a,8f7a7a,74605d,5c4744,5c4744,5c4744,372725,372725,372725"},
					{ name = "BASE_NORTHERNER_MERFOLK_JAVELIN_ARMOUR_COLOR", description = "Merfolk Javelin armour", colors = "ffffff,f2f2ea,f2f2ea,a7afa7,bdbebd,979fa9,979fa9,979fa9,4d586d,586164,586164,586164,404444,404444,404444"},
					{ name = "BASE_NORTHERNER_DRAKE_ARMOUR_COLOR", description = "Drake armour", colors = "ffffff,ecfdc6,ecfdc6,bbd57f,d1e997,c79962,c79962,c79962,996d24,af3c18,af3c18,af3c18,4c3324,4c3324,4c3324"},
					{ name = "BASE_NORTHERNER_GOLD_ARMOUR_COLOR", description = "Gold armour", colors = "ffffff,ffe38c,ffe38c,eab932,ffcc43,c67b02,c67b02,c67b02,aa5a0c,804018,804018,804018,66211b,66211b,66211b"},
					{ name = "BASE_NORTHERNER_BRONZE_ARMOUR_COLOR", description = "Bronze armour", colors = "ffffff,e3c981,e3c981,bfa254,ccb066,aa6a28,aa6a28,aa6a28,804018,74341c,74341c,74341c,13262e,13262e,13262e"},
					{ name = "BASE_NORTHERNER_SKELETONRIDER_ARMOUR_COLOR", description = "Skeleton Rider armour", colors = "ffffff,f8f8a0,f8f8a0,bfa254,ccb066,aa6a28,aa6a28,aa6a28,74341c,304860,304860,304860,13262e,13262e,13262e"},
					{ name = "BASE_NORTHERNER_DEATHKNIGHT_ARMOUR_COLOR", description = "Deathknight armour", colors = "ffffff,e0e0e8,e0e0e8,8d939a,a3a7ab,73697e,73697e,73697e,644b5f,5e3535,5e3535,5e3535,13262e,13262e,13262e"},
					{ name = "BASE_NORTHERNER_GSE_BLUE_ARMOUR_COLOR", description = "Great Steppe Era Blue armour", colors = "ffffff,abe5f6,abe5f6,55a9c7,69bbd9,2b52a9,2b52a9,2b52a9,1e3289,121b5c,121b5c,121b5c,140036,140036,140036"},
					{ name = "BASE_NORTHERNER_GSE_GREEN_ARMOUR_COLOR", description = "Great Steppe Era Green armour", colors = "ffffff,92d2bb,92d2bb,499c8a,5bb19e,2d8569,2d8569,2d8569,1e6e5f,125756,125756,125756,0a293b,0a293b,0a293b"},
					{ name = "BASE_NORTHERNER_WOSE_ARMOUR_COLOR", description = "Wose armour", colors = "ffffca,e6e6a6,e6e6a6,b7814f,c99462,835c35,835c35,835c35,693e23,573a14,573a14,573a14,352313,352313,352313"},
					{ name = "BASE_NORTHERNER_GREY_ARMOUR_COLOR", description = "Grey armour", colors = "ffffff,fafafa,fafafa,cfcfcf,dedede,989898,989898,989898,8f8f8f,515151,515151,515151,2d2d2d,2d2d2d,2d2d2d"}
				},
			},
		}
	},
}

_G.ucc_race_registry["goblin"] = {
    body_parts = body_parts
}