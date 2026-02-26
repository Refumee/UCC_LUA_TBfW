-- drake_data.lua
local body_parts = {
	{
		name = "Scales", -- body_part
		data = {
			glider = {
				unit_types = { 
					"Drake Glider", "Sky Drake", "Hurricane Drake","Afterlife Drake Glider", "Afterlife Sky Drake", "Afterlife Hurricane Drake",
					"WoF Sky Drake","WoF Hurricane Drake"
				},
				base = "DEB099,C1D553,C7D95E,86AC53,40513C,324634,4C3324,2C2E12,65564B,A5876D", 
				variants = {
					{ name = "GLIDER_DRAKE", description = "Glider Drake", colors = "DEB099,C1D553,C7D95E,86AC53,40513C,324634,4C3324,2C2E12,65564B,A5876D"},
					{ name = "FIGHTER_DRAKE", description = "Fighter Drake", colors = "DEB099,C7D95E,C7D95E,86AC53,65564B,324634,573D2D,2C2E12,65564B,A5876D"},
					{ name = "BURNER_DRAKE", description = "Burner Drake", colors = "DEB099,DEB099,DEB099,A5876D,745B52,324634,4C3324,2C2E12,65564B,A5876D"},
					{ name = "BROWNGREEN_DRAKE", description = "Browngreen Drake", colors = "DEB099,D6D69C,D6D69C,949473,40513C,283028,525239,2C2E12,40513C,949473"},
					{ name = "BROWN_DRAKE", description = "Brown Drake", colors = "CFC69F,B7A88E,B7A88E,937362,5D3B38,4C3233,4C3324,2C2E12,5D3B38,937362"},
					{ name = "SAURIAN_DRAKE", description = "Saurian Drake", colors = "CFF521,85D64F,85D64F,3F8B34,0D4218,324634,4C3324,2C2E12,65564B,A5876D"},
					{ name = "NAGA_DRAKE", description = "Naga Drake", colors = "EAF89E,9EDB5E,9EDB5E,56963D,124E24,324634,4C3324,2C2E12,65564B,A5876D"},
					{ name = "WOSEBROWN_DRAKE", description = "Wose Drake", colors = "E6E6A6,C99462,C99462,835C35,573A14,352313,4C3324,2C2E12,65564B,A5876D"},
					{ name = "WYVERN_DRAKE", description = "Wyvern Drake", colors = "FFD8B8,E1A370,E1A370,C08656,8B482C,6A251F,4C3324,1C2F37,65564B,A5876D"},
					--morph
					{ name = "ASHEN_DRAKE", description = "Ashen Hearts Drake", colors = "CAC5B2,B0A99C,B0A99C,87776E,51403E,433636,42362E,1C2F37,51403E,87776E"},
					{ name = "GSE_DRAKE", description = "Great Steppe Era Drake", colors = "A496A2,84747F,84747F,67515F,483240,2E1B27,2E1B27,1B0903,483240,67515F"},
					{ name = "FIREDRAKE_DRAKE", description = "Fire Drake", colors = "DEB099,E2CD67,E2CD67,DB9B24,984824,65564B,6F282B,1C2F37,65564B,A5876D"},
					{ name = "INFERNO_DRAKE", description = "Inferno Drake", colors = "DEB099,C79962,C79962,AF3C18,8E1A12,6F282B,4C3324,2C2E12,65564B,A5876D"},
					{ name = "ARMAGEDDON_DRAKE", description = "Armageddon Drake", colors = "DEB099,F3A62C,F3A62C,F55711,984824,8E1A12,6F282B,2C2E12,65564B,A5876D"},
					--albino
					{ name = "ALBINO_DRAKE", description = "Albino Drake", colors = "C5C5C5,CCCCCC,CCCCCC,989898,6E6E6E,414141,373432,222222,6E6E6E,989898"}
				},
			},
			fighter = {
				unit_types = { 
					"Drake Fighter", "Drake Warrior", "Drake Blademaster", "Drake Clasher", "Drake Thrasher", 
					"Drake Arbiter", "Drake Warden", "Drake Enforcer", "Afterlife Drake Clasher", 
					"Afterlife Drake Fighter", "Afterlife Drake Arbiter", "Afterlife Drake Thrasher", 
					"Afterlife Drake Warrior", "Afterlife Drake Blademaster", "Afterlife Drake Enforcer", "Afterlife Drake Warden" 
				},
				base = "DEB099,C1D553,C7D95E,86AC53,40513C,324634,2C2E12,4C3324,65564B,573D2D",
				variants = {
					{ name = "GLIDER_DRAKE", description = "Glider Drake", colors = "DEB099,C1D553,C7D95E,86AC53,40513C,324634,2C2E12,4C3324,40513C,4C3324"},
					{ name = "FIGHTER_DRAKE", description = "Fighter Drake", colors = "DEB099,C1D553,C7D95E,86AC53,40513C,324634,2C2E12,4C3324,65564B,573D2D"},
					{ name = "BURNER_DRAKE", description = "Burner Drake", colors = "DEB099,DEB099,DEB099,A5876D,40513C,324634,2C2E12,573D2D,745B52,573D2D"},
					{ name = "BROWNGREEN_DRAKE", description = "Browngreen Drake", colors = "A5B89C,D6D69C,D6D69C,949473,40513C,283028,2C2E12,525239,5D624C,525239"},
					{ name = "BROWN_DRAKE", description = "Brown Drake", colors = "CFC69F,B7A88E,B7A88E,937362,5D3B38,4C3233,2C2E12,4C3324,5D624C,4C3324"},
					{ name = "SAURIAN_DRAKE", description = "Saurian Drake", colors = "CFF521,85D64F,85D64F,3F8B34,0D4218,324634,2C2E12,0D4218,0D4218,0D4218"},
					{ name = "NAGA_DRAKE", description = "Naga Drake", colors = "EAF89E,9EDB5E,9EDB5E,56963D,124E24,324634,2C2E12,4C3324,124E24,573D2D"},
					{ name = "WOSEBROWN_DRAKE", description = "Wose Drake", colors = "E6E6A6,C99462,C99462,835C35,573A14,352313,2C2E12,352313,573A14,352313"},
					{ name = "WYVERN_DRAKE", description = "Wyvern Drake", colors = "FFD8B8,E1A370,E1A370,C08656,8B482C,6A251F,1C2F37,4C3324,8B482C,573D2D"},
					--morph
					{ name = "ASHEN_DRAKE", description = "Ashen Hearts Drake", colors = "CAC5B2,B0A99C,B0A99C,87776E,51403E,433636,1C2F37,42362E,5D624C,42362E"},
					{ name = "GSE_DRAKE", description = "Great Steppe Era Drake", colors = "A496A2,84747F,84747F,67515F,483240,2E1B27,1B0903,2E1B27,483240,2E1B27"},
					{ name = "FIREDRAKE_DRAKE", description = "Fire Drake", colors = "DEB099,E2CD67,E2CD67,DB9B24,984824,1C2F37,2C2E12,6F282B,65564B,6F282B"},
					{ name = "INFERNO_DRAKE", description = "Inferno Drake", colors = "DEB099,C79962,C79962,AF3C18,8E1A12,6F282B,2C2E12,4C3324,8E1A12,573D2D"},
					{ name = "ARMAGEDDON_DRAKE", description = "Armageddon Drake", colors = "DEB099,F3A62C,F3A62C,F55711,984824,6F282B,2C2E12,4C3324,8E1A12,573D2D"},
					--albino
					{ name = "ALBINO_DRAKE", description = "Albino Drake", colors = "C5C5C5,CCCCCC,CCCCCC,989898,6E6E6E,414141,222222,373432,6E6E6E,373432"}
				},
			},
			burner = {
				unit_types = { 
					"Drake Burner", "Drake Flare", "Drake Flameheart", "Afterlife Drake Burner", 
					"Afterlife Drake Flare", "Afterlife Drake Flameheart" 
				},
				base = "DEB099,A5876D,745B52,573D2D,65564B,324634,2C2E12,40513C,4C3324",
				variants = {
					{ name = "GLIDER_DRAKE", description = "Glider Drake", colors = "C1D553,86AC53,40513C,2C2E12,324634,324634,2C2E12,40513C,324634"},
					{ name = "FIGHTER_DRAKE", description = "Fighter Drake", colors = "C7D95E,86AC53,40513C,4C3324,65564B,324634,2C2E12,40513C,324634"},
					{ name = "BURNER_DRAKE", description = "Burner Drake", colors = "DEB099,A5876D,745B52,573D2D,65564B,324634,2C2E12,40513C,4C3324"},
					{ name = "BROWNGREEN_DRAKE", description = "Browngreen Drake", colors = "A5B89C,949473,5D624C,40513C,525239,324634,2C2E12,40513C,324634"},
					{ name = "BROWN_DRAKE", description = "Brown Drake", colors = "CFC69F,937362,5D3B38,4C3233,65564B,324634,2C2E12,40513C,4C3324"},
					{ name = "SAURIAN_DRAKE", description = "Saurian Drake", colors = "CFF521,85D64F,3F8B34,0D4218,0D4218,324634,2C2E12,40513C,0D4218"},
					{ name = "NAGA_DRAKE", description = "Naga Drake", colors = "EAF89E,9EDB5E,56963D,124E24,124E24,324634,2C2E12,40513C,124E24"},
					{ name = "WOSEBROWN_DRAKE", description = "Wose Drake", colors = "C99462,835C35,573A14,352313,573A14,352313,2C2E12,352313,573A14"},
					{ name = "WYVERN_DRAKE", description = "Wyvern Drake", colors = "E1A370,C08656,AC5F39,53100B,8B482C,6A251F,1C2F37,8B482C,6A251F"},
					--morph
					{ name = "ASHEN_DRAKE", description = "Ashen Hearts Drake", colors = "CAC5B2,87776E,51403E,433636,65564B,42362E,1C2F37,65564B,51403E"},
					{ name = "GSE_DRAKE", description = "Great Steppe Era Drake", colors = "A496A2,84747F,67515F,483240,2E1B27,2E1B27,1B0903,2E1B27,67515F"},
					{ name = "FIREDRAKE_DRAKE", description = "Fire Drake", colors = "E2CD67,DB9B24,984824,6F282B,984824,65564B,1C2F37,1C2F37,65564B"},
					{ name = "INFERNO_DRAKE", description = "Inferno Drake", colors = "E2CD67,C79962,AF3C18,6F282B,8E1A12,6F282B,2C2E12,2C2E12,6F282B"},
					{ name = "ARMAGEDDON_DRAKE", description = "Armageddon Drake", colors = "F3A62C,F55711,984824,6F282B,8E1A12,6F282B,2C2E12,2C2E12,6F282B"},
					--albino
					{ name = "ALBINO_DRAKE", description = "Albino Drake", colors = "CCCCCC,989898,6E6E6E,414141,414141,222222,222222,373432,373432"}
				},
			},
			fire = {
				unit_types = { "Fire Drake", "Afterlife Fire Drake" },
				base = "65564B,324634,AF3C18,1C2F37,E2CD67,DB9B24,984824",
				variants = {
					{ name = "GLIDER_DRAKE", description = "Glider Drake", colors = "324634,324634,40513C,2C2E12,C7D95E,86AC53,40513C"},
					{ name = "FIGHTER_DRAKE", description = "Fighter Drake", colors = "65564B,324634,AF3C18,2C2E12,C7D95E,86AC53,40513C"},
					{ name = "BURNER_DRAKE", description = "Burner Drake", colors = "324634,324634,AF3C18,2C2E12,A5876D,745B52,65564B"},
					{ name = "BROWNGREEN_DRAKE", description = "Browngreen Drake", colors = "2C2E12,283028,40513C,283028,D6D69C,949473,40513C"},
					{ name = "BROWN_DRAKE", description = "Brown Drake", colors = "4C3233,4C3324,4C3324,2C2E12,B7A88E,937362,5D3B38"},
					{ name = "SAURIAN_DRAKE", description = "Saurian Drake", colors = "2C2E12,324634,4C3324,324634,85D64F,3F8B34,0D4218"},
					{ name = "NAGA_DRAKE", description = "Naga Drake", colors = "2C2E12,324634,4C3324,324634,9EDB5E,56963D,124E24"},
					{ name = "WOSEBROWN_DRAKE", description = "Wose Drake", colors = "352313,324634,4C3324,2C2E12,C99462,835C35,573A14"},
					{ name = "WYVERN_DRAKE", description = "Wyvern Drake", colors = "6A251F,4C3324,8B482C,1C2F37,E1A370,C08656,8B482C"},
					--morph
					{ name = "ASHEN_DRAKE", description = "Ashen Hearts Drake", colors = "433636,42362E,51403E,1C2F37,B0A99C,87776E,51403E"},
					{ name = "GSE_DRAKE", description = "Great Steppe Era Drake", colors = "1B0903,2E1B27,2E1B27,2E1B27,84747F,67515F,483240"},
					{ name = "FIREDRAKE_DRAKE", description = "Fire Drake", colors = "65564B,324634,AF3C18,1C2F37,E2CD67,DB9B24,984824"},
					{ name = "INFERNO_DRAKE", description = "Inferno Drake", colors = "6F282B,6F282B,AF3C18,2C2E12,C79962,AF3C18,8E1A12"},
					{ name = "ARMAGEDDON_DRAKE", description = "Armageddon Drake", colors = "8E1A12,6F282B,AF3C18,2C2E12,F3A62C,F55711,984824"},
					--albino
					{ name = "ALBINO_DRAKE", description = "Albino Drake", colors = "414141,222222,6E6E6E,222222,CCCCCC,989898,6E6E6E"}
				},
			},
			inferno = {
				unit_types = { "Inferno Drake", "Afterlife Inferno Drake" },
				base = "E2CD67,C79962,AF3C18,8E1A12,6F282B,2C2E12",
				variants = {
					{ name = "GLIDER_DRAKE", description = "Glider Drake", colors = "E2CD67,C1D553,86AC53,40513C,324634,2C2E12"},
					{ name = "FIGHTER_DRAKE", description = "Fighter Drake", colors = "C7D95E,86AC53,65564B,573D2D,324634,2C2E12"},
					{ name = "BURNER_DRAKE", description = "Burner Drake", colors = "DEB099,A5876D,745B52,65564B,4C3324,2C2E12"},
					{ name = "BROWNGREEN_DRAKE ", description = "Browngreen Drake", colors = "D6D69C,949473,40513C,283028,525239,2C2E12"},
					{ name = "BROWN_DRAKE", description = "Brown Drake", colors = "B7A88E,937362,5D3B38,4C3233,4C3324,2C2E12"},
					{ name = "SAURIAN_DRAKE", description = "Saurian Drake", colors = "85D64F,3F8B34,0D4218,324634,324634,2C2E12"},
					{ name = "NAGA_DRAKE", description = "Naga Drake", colors = "9EDB5E,56963D,124E24,324634,324634,2C2E12"},
					{ name = "WOSEBROWN_DRAKE", description = "Wose Drake", colors = "C99462,835C35,573A14,352313,4C3324,2C2E12"},
					{ name = "WYVERN_DRAKE", description = "Wyvern Drake", colors = "FFD8B8,C08656,AC5F39,8B482C,744F3E,1C2F37"},
					--morph
					{ name = "ASHEN_DRAKE", description = "Ashen Hearts Drake", colors = "B0A99C,87776E,51403E,433636,42362E,1C2F37"},
					{ name = "GSE_DRAKE", description = "Great Steppe Era Drake", colors = "84747F,67515F,483240,2E1B27,2E1B27,1B0903"},
					{ name = "FIREDRAKE_DRAKE", description = "Fire Drake", colors = "FDE9F1,E2CD67,DB9B24,984824,65564B,1C2F37"},
					{ name = "INFERNO_DRAKE", description = "Inferno Drake", colors = "E2CD67,C79962,AF3C18,8E1A12,6F282B,2C2E12"},
					{ name = "ARMAGEDDON_DRAKE", description = "Armageddon Drake", colors = "F3A62C,F55711,984824,8E1A12,6F282B,2C2E12"},
					--albino
					{ name = "ALBINO_DRAKE", description = "Albino Drake", colors = "DEDEDE,CCCCCC,989898,6E6E6E,414141,222222"}
				},
			},
			armageddon = {
				unit_types = { "Armageddon Drake", "Afterlife Armageddon Drake" },
				base = "F3A62C,F55711,984824,AF3C18,8E1A12,6F282B,2C2E12",
				variants = {
					{ name = "GLIDER_DRAKE", description = "Glider Drake", colors = "E2CD67,C1D553,86AC53,86AC53,40513C,324634,2C2E12"},
					{ name = "FIGHTER_DRAKE", description = "Fighter Drake", colors = "C7D95E,86AC53,65564B,65564B,573D2D,324634,2C2E12"},
					{ name = "BURNER_DRAKE", description = "Burner Drake", colors = "DEB099,A5876D,745B52,745B52,65564B,4C3324,2C2E12"},
					{ name = "BROWNGREEN_DRAKE ", description = "Browngreen Drake", colors = "D6D69C,949473,40513C,40513C,283028,525239,2C2E12"},
					{ name = "BROWN_DRAKE", description = "Brown Drake", colors = "B7A88E,937362,5D3B38,5D3B38,4C3233,4C3324,2C2E12"},
					{ name = "SAURIAN_DRAKE", description = "Saurian Drake", colors = "85D64F,3F8B34,0D4218,0D4218,324634,324634,2C2E12"},
					{ name = "NAGA_DRAKE", description = "Naga Drake", colors = "9EDB5E,56963D,124E24,124E24,324634,324634,2C2E12"},
					{ name = "WOSEBROWN_DRAKE", description = "Wose Drake", colors = "C99462,835C35,573A14,573A14,352313,4C3324,2C2E12"},
					{ name = "WYVERN_DRAKE", description = "Wyvern Drake", colors = "FFD8B8,C08656,AC5F39,AC5F39,8B482C,744F3E,1C2F37"},
					--morph
					{ name = "ASHEN_DRAKE", description = "Ashen Hearts Drake", colors = "B0A99C,87776E,51403E,51403E,433636,42362E,1C2F37"},
					{ name = "GSE_DRAKE", description = "Great Steppe Era Drake", colors = "84747F,67515F,483240,483240,2E1B27,2E1B27,1B0903"},
					{ name = "FIREDRAKE_DRAKE", description = "Fire Drake", colors = "FDE9F1,E2CD67,DB9B24,DB9B24,984824,65564B,1C2F37"},
					{ name = "INFERNO_DRAKE", description = "Inferno Drake", colors = "E2CD67,C79962,AF3C18,AF3C18,8E1A12,6F282B,2C2E12"},
					{ name = "ARMAGEDDON_DRAKE", description = "Armageddon Drake", colors = "F3A62C,F55711,984824,AF3C18,8E1A12,6F282B,2C2E12"},
					--albino
					{ name = "ALBINO_DRAKE", description = "Albino Drake", colors = "DEDEDE,CCCCCC,989898,989898,6E6E6E,414141,222222"}
				},
			},
		}
	},
	{
		name = "Eyes", -- body_part
		data = {
			glider = { -- archtype
				unit_types = { 
					"Drake Glider", "Sky Drake", "Hurricane Drake", "Afterlife Drake Glider", "Afterlife Sky Drake", "Afterlife Hurricane Drake" 
				},
				base = "C67862,FFF200,F6DB84,C79962",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "C67862,FFF200,F6DB84,C79962" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "FF0000,FF7762,DEDEDE,A4988F" }
				},
			},
			fighter = { -- archtype
				unit_types = { 
					"Drake Fighter", "Drake Warrior", "Drake Blademaster", "Drake Clasher", "Drake Thrasher", 
					"Drake Arbiter", "Drake Warden", "Drake Enforcer", "Afterlife Drake Clasher", 
					"Afterlife Drake Fighter", "Afterlife Drake Arbiter", "Afterlife Drake Thrasher", 
					"Afterlife Drake Warrior", "Afterlife Drake Blademaster", "Afterlife Drake Enforcer", "Afterlife Drake Warden" 
				},
				base = "F3A62C,FFF200,F7DF8E,C79962",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "F3A62C,FFF200,F7DF8E,C79962" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "FF0000,FF7762,DEDEDE,A4988F" }
				},
			},
			burner = { -- archtype
				unit_types = { 
					"Drake Burner", "Drake Flare", "Drake Flameheart", "Afterlife Drake Burner", 
					"Afterlife Drake Flare", "Afterlife Drake Flameheart" 
				},
				base = "F3A62C,FFF200,F7DF8E,C79962",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "F3A62C,FFF200,F7DF8E,C79962" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "FF0000,FF7762,DEDEDE,A4988F" }
				},
			},
			fire = { -- archtype
				unit_types = { "Fire Drake", "Afterlife Fire Drake" },
				base = "DEB099,F3A62C,D1E997,FDE9F1,C79962",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "DEB099,F3A62C,D1E997,FDE9F1,C79962" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "989898,FF0000,FF7762,DEDEDE,A4988F" }
				},
			},
			inferno = { -- archtype
				unit_types = { "Inferno Drake", "Afterlife Inferno Drake" },
				base = "4C3324,F55711,FFF200",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "4C3324,F55711,FFF200" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "414141,FF0000,FF7762" }
				},
			},
			armageddon = { -- archtype
				unit_types = { "Armageddon Drake", "Afterlife Armageddon Drake" },
				base = "4C3324,DB9B24",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "4C3324,DB9B24" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "414141,FF0000" }
				},
			},
		}
	}
}

_G.ucc_race_registry["drake"] = {
    body_parts = body_parts
}