-- wose_data.lua
local body_parts = {
	{
		name = "Bark", -- body_part
		data = {
			wose = {
				unit_types = { "Wose Sapling", "Wose", "Elder Wose", "Ancient Wose", "Wose Shaman","Afterlife Wose Sapling", "Afterlife Wose", "Afterlife Elder Wose", "Afterlife Ancient Wose", "Afterlife Wose Shaman" },
				-- Your DEFAULT_WOSE_BARK
				base = "e6e6a6,c99462,835c35,573a14,352313", 
				variants = {
					{ name = "DEFAULT_WOSE_BARK", description = "Default Wose Bark", colors = "e6e6a6,c99462,835c35,573a14,352313" },
					{ name = "BARK_CS1", description = "Colorshift 1", colors = "e6c5a6,c96263,833535,571914,351315" },
					{ name = "BARK_CS2", description = "Colorshift 2", colors = "e6d0a6,c97262,834235,572414,351713" },
					{ name = "BARK_CS3", description = "Colorshift 3", colors = "e6dba6,c98362,834f35,572f14,351d13" },
					{ name = "BARK_CS4", description = "Colorshift 4", colors = "dbe6a6,c9a562,836935,574514,352913" },
					{ name = "BARK_CS5", description = "Colorshift 5", colors = "bcd6b2,b9a27b,7a5941,383122,383122" },
					{ name = "BARK_CS6", description = "Colorshift 6", colors = "bcd6b2,bdb96d,686b50,6b4936,383122" },
					{ name = "BARK_BROWNER", description = "Browner", colors = "efd8a1,927e6a,684c3c,45230d,36170c" },
					{ name = "BARK_LIGHTBROWN_GREEN1", description = "Lightbrown Green 1", colors = "efd8a1,efb775,a56243,39571c,392a1c" },
					{ name = "BARK_LIGHTBROWN_GREEN2", description = "Lightbrown Green 2", colors = "efd8a1,efb775,a58c27,39571c,392a1c" },
					{ name = "BARK_LIGHTBROWN", description = "Lightbrown", colors = "dcdcdc,ead585,b88656,7b5028,3f3a06" },
					{ name = "BARK_BIRCH", description = "Birch", colors = "383122,d5d5d5,bcbcbc,7a7a7a,383122" },
					{ name = "BARK_DARKGREY", description = "Darkgrey", colors = "cbcbcb,818181,4c4c4c,2b2b2b,1d1d1d" },
					{ name = "BARK_GREY", description = "Grey", colors = "d3d3d3,9b9b9b,595959,373737,212121" },
					{ name = "BARK_LIGHTGREY", description = "Lightgrey", colors = "d5d5d5,bcbcbc,7a7a7a,4e4e4e,313131" },
					{ name = "BARK_ORANGEBLUE", description = "Orangeblue", colors = "ffd4a3,ffaa5e,8d697a,203c56,0d2b45" },
					{ name = "BARK_ROTTEN1", description = "Rotten 1", colors = "c0d1cc,a19f7c,775c4f,603b3a,170e19" },
					{ name = "BARK_ROTTEN2", description = "Rotten 2", colors = "c0d1cc,a0b9ba,77744f,603b3a,213b25" },
					{ name = "BARK_ROTTEN3", description = "Rotten 3", colors = "c0d1cc,a19f7c,603b3a,3b2137,170e19" },
					{ name = "BARK_REDDISH_PURPLE", description = "Reddish Purple", colors = "ecd1be,ea934e,b2454a,50445a,322a3f" },
					{ name = "BARK_BLUE1", description = "Blue 1", colors = "b9f1f0,636f87,273541,1d1935,17132e" },
					{ name = "BARK_BLUE2", description = "Blue 2", colors = "b9f1f0,8999b4,50596e,273541,1d2336" },
					{ name = "BARK_BLUE3", description = "Blue 3", colors = "90cbe8,90a1bd,50596e,273541,1d2336" },
					{ name = "BARK_REDDISH", description = "Reddish", colors = "fae98f,ff8e48,ac2a32,5a1c29,3a1622" },
					{ name = "BARK_DUNEFOLK1", description = "Dunefolk 1", colors = "f6f6da,a09f84,5e5152,453843,312a38" },
					{ name = "BARK_DUNEFOLK2", description = "Dunefolk 2", colors = "f6f6da,d5d3a1,7f7165,453843,312a38" },
					{ name = "BARK_DUNEFOLK3", description = "Dunefolk 3", colors = "ced4b6,b8bf93,8a8c6c,463f43,2d1835" },
					{ name = "BARK_RED", description = "Red", colors = "f51743,cd173f,87173e,55173d,37173d" },
					{ name = "BARK_PINK_PURPLE", description = "Pink Purple", colors = "ffd9f5,c977b5,8c457a,541845,2e0423" },
					{ name = "BARK_GREEN1", description = "Green 1", colors = "e6ca62,968a48,5c572c,1f2c1b,131b11" },
					{ name = "BARK_GREEN2", description = "Green 2", colors = "e6ca62,afa24e,665f32,394c1c,212e1a" },
					{ name = "BARK_GREEN3", description = "Green 3", colors = "d0e6a6,c9b662,837635,575014,352f13" },
					{ name = "BARK_GREEN4", description = "Green 4", colors = "c5e6a6,c9c762,838335,535714,353513" }
				},
			},
		}
	},
	{
		name = "Leaf", -- body_part
		data = {
			wose = { -- archtype
				unit_types = { "Wose Sapling", "Wose", "Elder Wose", "Ancient Wose", "Wose Shaman","Afterlife Wose Sapling", "Afterlife Wose", "Afterlife Elder Wose", "Afterlife Ancient Wose", "Afterlife Wose Shaman" },
				-- Your DEFAULT_WOSE_LEAF
				base = "fefe72,f5da30,0b7a6d,235355,b3f08b,68c552,4cc934,81a435,718204,466818,3b5f0e,0d3d02,1f4b1f",
				variants = {
					{ name = "DEFAULT_WOSE_LEAF", description = "Default Wose Leaf", colors = "fefe72,f5da30,0b7a6d,235355,b3f08b,68c552,4cc934,81a435,718204,466818,3b5f0e,0d3d02,1f4b1f" },
					{ name = "LEAF_CS1", description = "Colorshift 1", colors = "feb872,f57730,0b7a35,23553e,e6f08b,a1c552,97c934,a48f35,825404,686218,5f5a0e,2b3d02,354b1f" },
					{ name = "LEAF_CS2", description = "Colorshift 2", colors = "fecf72,f59830,0b7a48,235546,d5f08b,8ec552,7ec934,a4a235,826904,616818,565f0e,213d02,2e4b1f" },
					{ name = "LEAF_CS3", description = "Colorshift 3", colors = "fee772,f5b930,0b7a5a,23554f,c4f08b,7bc552,65c934,94a435,827e04,536818,495f0e,173d02,264b1f" },
					{ name = "LEAF_CS4", description = "Colorshift 4", colors = "e7fe72,eff530,0b757a,234b55,a2f08b,55c552,34c935,6ea435,5c8204,396818,2e5f0e,033d02,1f4b26" },
					{ name = "LEAF_CS5", description = "Colorshift 5", colors = "d0fe72,cef530,0b627a,234355,91f08b,52c562,34c94e,5ca435,478204,2c6818,205f0e,023d0b,1f4b2d" },
					{ name = "LEAF_CS6", description = "Colorshift 6", colors = "b9fe72,adf530,0b4f7a,233b55,8bf096,52c575,34c967,4aa435,328204,1f6818,125f0e,023d15,1f4b34" },
					{ name = "LEAF_BROWNGREEN", description = "Brown Green", colors = "eeeec7,ddcf95,4a806b,384d52,ddcf95,5fa367,5fa367,94725d,94725d,384d52,3e2d2e,3e2d2e,3e2d2e" },
					{ name = "LEAF_TROPICAL", description = "Tropical", colors = "e6ca62,e6c961,376538,314c33,92c36b,68be6b,76a62a,81a435,6c891e,46621e,395d0c,1c4e09,20461f" },
					{ name = "LEAF_DARK_GREEN1", description = "Dark Green 1", colors = "bdb96d,e8b323,506b65,394d4f,bcd6b2,8fb88c,668b72,929466,7a5941,4e523f,4e523f,383122,383b34" },
					{ name = "LEAF_DARK_GREEN2", description = "Dark Green 2", colors = "f8f8a0,f8d040,506858,506858,d6d69c,889880,72806b,949473,525239,525239,525239,2d2e22,283028" },
					{ name = "LEAF_GREY", description = "Grey", colors = "dedede,bcbcbc,646464,4e4e4e,c8c8c8,9b9b9b,7a7a7a,858585,595959,434343,373737,212121,373737" },
					{ name = "LEAF_DARK_PURPLE_BLUE", description = "Dark Purple Blue", colors = "ffd3a3,e6cc8a,357985,3d3957,b5e0ba,78b392,4c8f82,997d76,9c4f41,57404e,57404e,372840,242b4a" },
					{ name = "LEAF_PURPLE", description = "Purple", colors = "bf8bc9,fea813,4c778a,3c3452,a690d1,4c778a,4c778a,77796c,cd7e2f,4f3454,2d2b45,2d2b45,2d2b45" },
					{ name = "LEAF_BLUE", description = "Blue", colors = "b9f1f0,90a1bd,3a5688,434962,b9f1f0,636f87,636f87,8999b4,50596e,273a48,273541,122336,273541" },
					{ name = "LEAF_RED", description = "Red", colors = "ff1744,f51743,0f173d,23173d,e1173f,91173f,7d173e,a5173f,87173e,5f173d,55173d,23173d,2d173d" },
					{ name = "LEAF_DARK_TURQUOISE", description = "Dark Turquoise", colors = "d7d78b,bcbc7a,305e4a,224335,7af2bf,58ae8a,58ae8a,44866a,515134,295140,224335,142820,224335" },
					{ name = "LEAF_DARK_OLIVE", description = "Dark Olive", colors = "d7d78b,a1a168,305e4a,295140,f2f29c,bcbc7a,aeae71,949460,515134,5e5e3d,515134,28281a,43432b" },
					{ name = "LEAF_PURPLE_DARK_GREEN", description = "Purple Dark Green", colors = "ced4b6,b8bf93,454e6b,38304f,b8bf93,82a196,5a8683,5e7564,5b604f,463f43,353845,353845,463f43" },
					{ name = "LEAF_DARK_OLIVE_SALMON", description = "Dark Olive Salmon", colors = "dbaca2,bf7973,3b4d5d,353845,edd7ab,b8bf93,85987d,8a8c6c,9e4a47,5b604f,463f43,2d1835,463f43" },
					{ name = "LEAF_AUTUMN1", description = "Autumn 1", colors = "e7c19c,dd745e,50445a,50445a,ecd1be,e7c19c,ea934e,c66135,b2454a,684e67,50445a,322a3f,322a3f" },
					{ name = "LEAF_AUTUMN2", description = "Autumn 2", colors = "f5c37a,e7805e,826e2f,47213c,f6d39b,e7c767,e7c767,ae6a42,904d39,75491e,75491e,321d0b,75491e" },
					{ name = "LEAF_AUTUMN3", description = "Autumn 3", colors = "ffac7f,f54f4f,357985,3d3957,ffd3a3,d6a57a,d6a57a,b3785d,9c4f41,9c4f41,66333d,372840,372840" },
					{ name = "LEAF_AUTUMN4", description = "Autumn 4", colors = "f5a097,fa6a0a,1a7a3e,24523b,f4d29c,c7b08b,9cdb43,a08662,71413b,5a4e44,71413b,322b28,423934" },
					{ name = "LEAF_AUTUMN5", description = "Autumn 5", colors = "f4d29c,dba463,1a7a3e,24523b,e4d2aa,9cdb43,59c135,a08662,8e5252,5a4e44,5a4e44,221c1a,24523b" },
					{ name = "LEAF_AUTUMN6", description = "Autumn 6", colors = "f4d29c,f9a31b,1a7a3e,24523b,e4d2aa,59c135,59c135,a08662,bb7547,5a4e44,24523b,122020,423934" },
					{ name = "LEAF_WINTER1", description = "Winter 1", colors = "ffffff,ffffff,979797,858585,ffffff,dcdcdc,d3d3d3,cdcdcd,afafaf,959595,8b8b8b,686868,797979" },
					{ name = "LEAF_WINTER2", description = "Winter 2", colors = "aff5f5,f0dada,027a7a,024747,71e6e6,3bd3d3,12b2b2,027a7a,024747,024747,024747,011a1a,024747" }
				},
			},
		}
	}
}

_G.ucc_race_registry["wose"] = {
    body_parts = body_parts
}