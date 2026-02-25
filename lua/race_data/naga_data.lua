-- naga_data.lua
local body_parts = {
	{
		name = "Top scales", -- body_part
		data = {
			naga = {
                unit_types = {	"Naga Fighter", "Naga Warrior", "Naga Myrmidon", "Naga Guard", "Naga Shield Guard", "Naga High Guard",
								"Naga Dirkfang", "Naga Ringcaster", "Naga Ophidian", "Naga Sicarius", "Naga Zephyr", "Afterlife Naga Fighter",
								"Afterlife Naga Warrior", "Afterlife Naga Myrmidon", "Afterlife Naga Guard", "Afterlife Naga Shield Guard",
								"Afterlife Naga High Guard", "Afterlife Naga Dirkfang", "Afterlife Naga Ringcaster", "Afterlife Naga Ophidian",
								"Afterlife Naga Sicarius", "Afterlife Naga Zephyr"
				},
				base = "9edb5e,56963d,24753c,4c5b4c,124e24", 
				variants = {
					{ name = "DEFAULT_NAGA_TOP", description = "Default Green", colors = "9edb5e,56963d,24753c,4c5b4c,124e24"},
					--randomiser colors
					{ name = "NAGA_TOP_GREEN1", description = "Green 1", colors = "78b392,4c8f82,524a63,57404e,242b4a"},
					{ name = "NAGA_TOP_GREEN2", description = "Green 2", colors = "b8bf93,5e7564,5b604f,3b4d5d,353845"},
					{ name = "NAGA_TOP_GREEN3", description = "Green 3", colors = "8dcf6c,569254,225921,225921,10370f"},
					{ name = "NAGA_TOP_GREEN4", description = "Green 4", colors = "74db5e,3d9642,247557,4c5b51,124e38"},
					{ name = "NAGA_TOP_GREEN5", description = "Green 5", colors = "c8db5e,74963d,277524,515b4c,144e12"},
					--rare colors
					{ name = "NAGA_TOP_WHITE", description = "Albino", colors = "d9d9d9,a2a2a2,8c8c8c,8c8c8c,6a6a6a"},
					{ name = "NAGA_TOP_DESERT", description = "Desert", colors = "c08656,a55f3c,6a251f,5f1a15,53100b"},
					{ name = "NAGA_TOP_DEEPSEA", description = "Deep Sea", colors = "90a1bd,50596e,273a48,434962,273541"},
					--other colors
					{ name = "NAGA_TOP_GREY", description = "Grey", colors = "a6a6a6,6f6f6f,595959,595959,373737"},
					{ name = "NAGA_TOP_ORANGEBLUE", description = "Orangeblue", colors = "ffaa5e,8d697a,203c56,544e68,0d2b45"},
					{ name = "NAGA_TOP_YELLOWBROWN", description = "Yellowbrown", colors = "c9a659,8f7863,4f4f4f,3e5062,203329"},
					{ name = "NAGA_TOP_YELLOWBLUE", description = "Yellowblue", colors = "e7c19c,4d5675,50445a,684e67,322a3f"},
					{ name = "NAGA_TOP_YELLOW", description = "Yellow", colors = "e7c767,826e2f,75491e,75491e,321d0b"},
					{ name = "NAGA_TOP_YELLOWGREY", description = "Yellowgrey", colors = "fbdba2,717282,514343,514343,514343"},
					{ name = "NAGA_TOP_YELLOWGREEN", description = "Yellowgreen", colors = "ead585,618d8d,2c4c6c,2d4d6d,124218"},
					{ name = "NAGA_TOP_NEONPURPLE", description = "Neon Purple", colors = "efaac6,7a49b6,6346bd,7c249c,050505"},
					{ name = "NAGA_TOP_LIGHTPURPLE1", description = "Lightpurple 1", colors = "b28fb0,6c5870,5a4a5d,5a4a5d,312933"},
					{ name = "NAGA_TOP_LIGHTPURPLE2", description = "Lightpurple 2", colors = "c69fa5,5a5f92,494d7e,494d7e,272744"},
					{ name = "NAGA_TOP_LIGHTBROWN", description = "Lightbrown", colors = "bab98b,7f7165,5e5152,5e5152,4b4142"},
					{ name = "NAGA_TOP_BROWN", description = "Brown", colors = "cca88f,876f69,746266,746266,0f2a3f"},
					{ name = "NAGA_TOP_GREYBLUE", description = "Greyblue", colors = "c6e9bd,5f7b90,4d687c,313545,313545"},
					{ name = "NAGA_TOP_RED", description = "Red", colors = "9b173f,55173d,23173d,4b173d,0f173d"},
					{ name = "NAGA_TOP_PURPLE", description = "Purple", colors = "baa4c0,8c5862,4c3262,4c3262,3e2844"},
					{ name = "NAGA_TOP_ALGA", description = "Alga", colors = "bcbc7a,79794e,366b55,305e4a,224335"},
					{ name = "NAGA_TOP_BLUE", description = "Blue", colors = "98c1e8,44698c,2b4f70,193855,0d2a46"},
					--faction colors
					{ name = "NAGA_TOP_MERFOLK", description = "Merfolk", colors = "cdf8f8,add8f8,6da2e2,8a9db4,4d586d"},
					{ name = "NAGA_TOP_SAURIAN", description = "Saurian", colors = "85d64f,3f8b34,0d4218,0d4218,072f0f"},
					{ name = "NAGA_TOP_WYVERN", description = "Wyvern", colors = "e1a370,c08656,ac5f39,6a251f,53100b"},
					{ name = "NAGA_TOP_FIREDRAGON", description = "Fire Dragon", colors = "ffa32c,d26a2c,b83d00,872819,631205"},
					{ name = "NAGA_TOP_ARMAGEDDON", description = "Armageddon Drake", colors = "f55711,984824,8e1a12,6f282b,2c2e12"},
					{ name = "NAGA_TOP_INFERNO", description = "Inferno Drake", colors = "c79962,af3c18,8e1a12,6f282b,2c2e12"},
					{ name = "NAGA_TOP_FIREDRAKE", description = "Fire Drake", colors = "db9b24,984824,65564b,1c2f37,324634"},
					{ name = "NAGA_TOP_GLIDER", description = "Glider Drake", colors = "86ac53,40513c,324634,2c2e12,4c3324"},
					{ name = "NAGA_TOP_BURNER", description = "Burner Drake", colors = "a5876d,745b52,65564b,324634,2c2e12"}
				},
			},
		}
	},
	{
		name = "Belly scales", -- body_part
		data = {
			naga = { -- archtype
                 unit_types = {	"Naga Fighter", "Naga Warrior", "Naga Myrmidon", "Naga Guard", "Naga Shield Guard", "Naga High Guard",
								"Naga Dirkfang", "Naga Ringcaster", "Naga Ophidian", "Naga Sicarius", "Naga Zephyr", "Afterlife Naga Fighter",
								"Afterlife Naga Warrior", "Afterlife Naga Myrmidon", "Afterlife Naga Guard", "Afterlife Naga Shield Guard",
								"Afterlife Naga High Guard", "Afterlife Naga Dirkfang", "Afterlife Naga Ringcaster", "Afterlife Naga Ophidian",
								"Afterlife Naga Sicarius", "Afterlife Naga Zephyr"
				},
				base = "eaf89e,c1a77e,90765c,784838,562d1c",
				variants = {
					{ name = "DEFAULT_NAGA_BOTTOM", description = "Default Ocher", colors = "eaf89e,c1a77e,90765c,784838,562d1c"},
					--randomiser colors
					{ name = "NAGA_BOTTOM_OCHER1", description = "Ocher 1", colors = "fafac3,d6a57a,997d76,66333d,372840"},
					{ name = "NAGA_BOTTOM_OCHER2", description = "Ocher 2", colors = "f2ecc9,d49c8a,806e6b,7d3f4d,5b2c45"},
					{ name = "NAGA_BOTTOM_OCHER3", description = "Ocher 3", colors = "e2e19d,bbba6f,a6a551,907943,594f23"},
					{ name = "NAGA_BOTTOM_OCHER4", description = "Ocher 4", colors = "ccf89e,c1bd7e,90875c,785d38,56401c"},
					{ name = "NAGA_BOTTOM_OCHER5", description = "Ocher 5", colors = "f8e89e,c1917e,90655c,78383d,561c1e"},
					--rare colors
					{ name = "NAGA_BOTTOM_WHITE", description = "White", colors = "ffffff,e4e4e4,adadad,818181,5f5f5f"},
					{ name = "NAGA_BOTTOM_DESERT", description = "Desert", colors = "eaf89e,bf9d70,90765c,764a27,562d1c"},
					{ name = "NAGA_BOTTOM_DEEPSEA", description = "Deep Sea", colors = "b9f1f0,8999b4,636f87,434962,1d2336"},
					--other colors
					{ name = "NAGA_BOTTOM_GREY", description = "Grey", colors = "dedede,b1b1b1,7a7a7a,4e4e4e,2c2c2c"},
					{ name = "NAGA_BOTTOM_ORANGEBLUE", description = "Orangeblue", colors = "ffd4a3,d98f6a,d08159,544e68,0d2b45"},
					{ name = "NAGA_BOTTOM_YELLOWBROWN", description = "Yellowbrown", colors = "f7eab5,d79878,94694a,7f5c2f,4e2e17"},
					{ name = "NAGA_BOTTOM_YELLOWBLUE", description = "Yellowblue", colors = "fbe8ca,ea934e,9d7d95,50445a,322a3f"},
					{ name = "NAGA_BOTTOM_YELLOW", description = "Yellow", colors = "f3f4b5,df9859,ae6a42,904d39,571d22"},
					{ name = "NAGA_BOTTOM_YELLOWGREY", description = "Yellowgrey", colors = "fcf8ef,e59479,c66f86,514343,3b3131"},
					{ name = "NAGA_BOTTOM_YELLOWGREEN", description = "Yellowgreen", colors = "fcfbca,ca9767,b88656,7b5028,3f3a06"},
					{ name = "NAGA_BOTTOM_NEONPURPLE", description = "Neon Purple", colors = "fec6c7,c899d6,8379d0,7c249c,050505"},
					{ name = "NAGA_BOTTOM_LIGHTPURPLE1", description = "Lightpurple 1", colors = "dfd5e3,bfa5cc,856f8c,5a4a5d,312933"},
					{ name = "NAGA_BOTTOM_LIGHTPURPLE2", description = "Lightpurple 2", colors = "f2d3ab,c69fa5,8b6d9c,272744,272744"},
					{ name = "NAGA_BOTTOM_PURPLE", description = "Purple", colors = "c7faff,baa4de,935862,864444,3e2800"},
					{ name = "NAGA_BOTTOM_LIGHTBROWN", description = "Lightbrown", colors = "e6e6cc,b2b193,90847a,5e5152,4b4142"},
					{ name = "NAGA_BOTTOM_BROWN", description = "Brown", colors = "f6d6bd,b3927e,997a6b,4e495f,130d25"},
					{ name = "NAGA_BOTTOM_GREYBLUE", description = "Greyblue", colors = "fdffd6,84b8bf,4d687c,313545,1c1c33"},
					{ name = "NAGA_BOTTOM_RED", description = "Red", colors = "f51743,b91740,91173f,73173d,5f173d"},
					{ name = "NAGA_BOTTOM_ALGA", description = "Alga", colors = "f2f29c,aeae71,868657,5e5e3d,363623"},
					{ name = "NAGA_BOTTOM_BLUE", description = "Blue", colors = "d9edff,c977b5,8c457a,702b5f,541845"},
					--faction colors
					{ name = "NAGA_BOTTOM_MERFOLK", description = "Merfolk", colors = "add8f8,6da2e2,2d58ad,1d3971,222847"},
					{ name = "NAGA_BOTTOM_SAURIAN", description = "Saurian", colors = "cff521,85d64f,3f8b34,0d4218,072f0f"},
					{ name = "NAGA_BOTTOM_WYVERN", description = "Wyvern", colors = "ffd8b8,e1a370,c08656,ac5f39,6a251f"},
					{ name = "NAGA_BOTTOM_FIREDRAGON", description = "Fire Dragon", colors = "ffe39f,ffa32c,d26a2c,b83d00,872819"},
					{ name = "NAGA_BOTTOM_ARMAGEDDON", description = "Armageddon Drake", colors = "f3a62c,f55711,984824,8e1a12,6f282b"},
					{ name = "NAGA_BOTTOM_INFERNO", description = "Inferno Drake", colors = "e2cd67,c79962,af3c18,8e1a12,6f282b"},
					{ name = "NAGA_BOTTOM_FIREDRAKE", description = "Fire Drake", colors = "e2cd67,db9b24,984824,65564b,1c2f37"},
					{ name = "NAGA_BOTTOM_GLIDER", description = "Glider Drake", colors = "c1d553,86ac53,40513c,324634,2c2e12"},
					{ name = "NAGA_BOTTOM_BURNER", description = "Burner Drake", colors = "deb099,a5876d,745b52,65564b,324634"}
				},
			},
		}
	}
}

_G.ucc_race_registry["naga"] = {
    body_parts = body_parts
}