-- drake_data.lua
local body_parts = {
	{
		name = "drake_scales", -- body_part
		description = "Scales",
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
					{ name = "BROWNGREEN_DRAKE", description = "Browngreen Drake", colors = "D6D69C,949473,40513C,283028,525239,2C2E12"},
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
					{ name = "BROWNGREEN_DRAKE", description = "Browngreen Drake", colors = "D6D69C,949473,40513C,40513C,283028,525239,2C2E12"},
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
		name = "drake_eyes", -- body_part
		description = "Eyes",
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
					"Drake Fighter", "Drake Warrior", "Drake Blademaster",
					"Afterlife Drake Fighter", "Afterlife Drake Warrior", "Afterlife Drake Blademaster"
				},
				base = "F3A62C,FFF200,F7DF8E,C79962",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "F3A62C,FFF200,F7DF8E,C79962" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "FF0000,FF7762,DEDEDE,A4988F" }
				},
			},
			clasher = { -- archtype
				unit_types = { 
					"Drake Clasher", "Drake Thrasher", "Drake Arbiter", "Drake Warden", "Drake Enforcer",
					"Afterlife Drake Clasher", "Afterlife Drake Arbiter", "Afterlife Drake Thrasher", "Afterlife Drake Enforcer", "Afterlife Drake Warden"
				},
				base = "F3A62C,FFF200",
				variants = {
					{ name = "BASE", description = "Base Eyes", colors = "F3A62C,FFF200" },
					{ name = "ALBINO", description = "Albino Eyes", colors = "FF0000,FF7762" }
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
	},
	{
		name = "drake_armour", -- body_part
		description = "Armour",
		data = {
			clasher = { -- archtype
				unit_types = { 
					"Drake Clasher", "Drake Thrasher", "Drake Arbiter", "Drake Warden", "Drake Enforcer",
					"Afterlife Drake Clasher", "Afterlife Drake Arbiter", "Afterlife Drake Thrasher", "Afterlife Drake Enforcer", "Afterlife Drake Warden"
				},
				base = "D1E997,F7DF8E,C79962,996D24,AF3C18,4C3324,E2CD67,DB9B24,984824",
				variants = {
					{ name = "BASE", description = "Clasher Armour", colors = "D1E997,F7DF8E,C79962,996D24,AF3C18,4C3324,E2CD67,DB9B24,984824" },
					--blue armour
					{ name = "LOYALIST_BLUE", description = "Loyalist Blue", colors = "FFFFFF,C6E7E7,94C6C6,638C94,31526B,182931,94C6C6,638C94,31526B"},
					{ name = "LOYALIST_CAVALIER", description = "Cavalier", colors = "ECECEC,C6E7E7,A0B9B8,6E8387,3F505C,182931,A0B9B8,6E8387,3F505C"},
					{ name = "LOYALIST_GRAND_KNIGHT", description = "Grand Knight", colors = "FFFFFF,C6E7E7,C5CFDA,8F8895,3F505C,182931,C5CFDA,8F8895,3F505C"},
					{ name = "LOYALIST_PALADIN", description = "Paladin", colors = "FFFFFF,ECECEC,C5CFDA,66A5B2,31526B,3F505C,C5CFDA,66A5B2,31526B"},
					{ name = "KARRAG", description = "Karrag THoT", colors = "DBE6E8,ADCCD2,6799A2,3B6C75,213D43,182931,6799A2,3B6C75,213D43"},
					{ name = "WITNESS", description = "Witness THoT", colors = "FFFFFF,B1EBEC,79A9B3,4F6973,507059,1E3038,79A9B3,4F6973,507059"},

					--dark armour
					{ name = "SIR_GERRIK", description = "Sir Gerrik SG", colors = "C3D2EF,9FAECB,697895,3D4E69,293A55,11203D,697895,3D4E69,293A55"},
					{ name = "HEAVY_INFANTERY", description = "Heavy Infantry", colors = "ECECEC,A8A098,78655A,4D4541,2C2623,191919,78655A,4D4541,2C2623"},
					{ name = "ROYAL_WARRIOR", description = "Royal Warrior", colors = "DCCACA,A9A5AB,858086,5A565A,332D32,2C2623,858086,5A565A,332D32"},
					{ name = "CHEVALIER", description = "Chevalier (Rashy Era)", colors = "ECECCF,CCC2B9,A8A098,686058,3D3A37,151718,A8A098,686058,3D3A37"},
					{ name = "SEACAPTAIN_STEEL", description = "Sea Captain Steel SotA", colors = "FFFFFF,DCDBDF,B6B4BA,7B7B85,53535B,34343A,B6B4BA,7B7B85,53535B"},
					{ name = "BANNERET", description = "Banneret EI", colors = "ECECEC,CCC2B9,A8A098,686058,524E46,3D3A37,A8A098,686058,524E46"},

					--gold/bronze armour
					{ name = "GOLD_NEW", description = "Gold 1.18", colors = "FFFFFF,FFE38C,FFCC43,C67B02,804018,66211B,FFCC43,C67B02,804018"},
					{ name = "GOLD_OLD", description = "Gold 1.16", colors = "FFFFFF,ECECEC,D1B563,985810,512A13,2F1010,D1B563,985810,512A13"},
					{ name = "EE_PALADIN", description = "Paladin EI", colors = "FFFFFF,ECECEC,FFCC43,AF7A18,66211B,2F1010,FFCC43,AF7A18,66211B"},
					{ name = "BRONZE", description = "Siege Trooper Bronze", colors = "FFFFFF,CCB066,AA6A28,804018,74341C,13262E,AA6A28,804018,74341C"},

					--javeliner leather/orcish/assassin/dunefolk
					{ name = "LOYALIST_JAVELINEER", description = "Javelineer", colors = "FFFFFF,D6D69C,938D6D,525239,39382D,2F1010,938D6D,525239,39382D"},
					{ name = "DUNEFOLK", description = "Dunefolk", colors = "FFFFFF,FFF5A0,D6BD8A,888670,5C6339,3D3411,D6BD8A,888670,5C6339"},
					{ name = "ORC", description = "Orc", colors = "FFFFD5,FFDD88,AA9966,7F774C,515138,2D2D2D,AA9966,7F774C,515138"},
					{ name = "ASSASSIN", description = "Assassin", colors = "AAC0A0,889880,506858,333D33,273631,1C1B21,506858,333D33,273631"},

					--undead armour
					{ name = "SKELETON_RIDER", description = "Skeleton Rider", colors = "F8F8A0,CCB066,AA6A28,74341C,304860,13262E,AA6A28,74341C,304860"},
					{ name = "SKELETON", description = "Skeleton", colors = "FFFFFF,FFFFCE,D6D69C,C8D090,949473,525239,D6D69C,C8D090,949473"},
					{ name = "DEATHKNIGHT", description = "Death Knight", colors = "FFFFFF,E0E0E8,A3A7AB,73697E,5E3535,13262E,A3A7AB,73697E,5E3535"},
					{ name = "NECROMANCER", description = "Necromancer", colors = "FFFFFF,D2BDA9,A3A7AB,73697E,91822F,5E3535,A3A7AB,73697E,91822F"},
					{ name = "NECROMANCER_CTL", description = "Necromancer (CtL)", colors = "C3C1C1,9B9B9B,808080,484848,575757,1B1B1B,808080,484848,575757"},

					--GSE
					{ name = "GSE_MILITA", description = "Great Steppe Era Militia", colors = "FFFFFF,ABE5F6,69BBD9,2B52A9,121B5C,140036,69BBD9,2B52A9,121B5C"},
					{ name = "GSE_CANNONEER", description = "Great Steppe Era Cannoneer", colors = "FFFFFF,92D2BB,5BB19E,2D8569,125756,0A293B,5BB19E,2D8569,125756"},

					--wose/elf
					{ name = "WOSE", description = "Wose", colors = "FFFFCA,E6E6A6,C99462,835C35,573A14,352313,C99462,835C35,573A14"},
					{ name = "KALIAN_ELF", description = "Kalian Elf TroW", colors = "E8EBE7,D8C2AD,A28D62,896941,704D1F,47213C,A28D62,896941,704D1F"},
					{ name = "ELF_DARKER", description = "Elvish Armour Dark", colors = "E8EDD5,A4B496,687862,313B31,252A23,121311,687862,313B31,252A23"},
					{ name = "ELF_LIGHTER", description = "Elvish Armour Light", colors = "FFFFFF,E8EDD5,A4B496,687862,313B31,252A23,A4B496,687862,313B31"},

					--merfolk
					{ name = "MERFOLK", description = "Merfolk", colors = "FFFFFF,F2F2EA,D8C2AD,B3AE78,484B42,504137,D8C2AD,B3AE78,484B42"},
					{ name = "MERFOLK_MAGE", description = "Merfolk Siren", colors = "CDF8F8,F8F8F8,D8C2AD,A28D62,425838,382218,D8C2AD,A28D62,425838"},
					{ name = "MERFOLK_HOPLITE", description = "Merfolk Hoplite", colors = "cdf8f8,f2f2ea,b3ae78,a28d62,484b42,504137"},
					{ name = "AQUANA", description = "Aquana (Rashy Era)", colors = "FEFEFE,E5E2C2,D8CCAD,A2A062,746E47,383618,D8CCAD,A2A062,746E47"},
					{ name = "MERFOLK_JAVELINEER", description = "Merfolk Javelineer", colors = "F2F2EA,BDBEBD,979FA9,4D586D,586164,404444,979FA9,4D586D,586164"},

					--UTBS
					{ name = "DAWARF", description = "Dawarf", colors = "F8C8E8,DB98C6,C878B0,905080,583068,301030,C878B0,905080,583068"},
					{ name = "FLESHGOLEM", description = "Fleshgolem", colors = "DBD2A4,DCA993,DE8685,CA7559,A85C4E,824143,DE8685,CA7559,A85C4E"},
					{ name = "IXTHALA", description = "Ixthala", colors = "CECCEA,AFACD9,8A81B3,5E699C,474A6B,222438,8A81B3,5E699C,474A6B"},
					{ name = "DARK_ASSASSIN_MASK", description = "Dark Assassin Mask", colors = "ECC3C1,CC8F8C,9D6B6F,7D303B,57373B,342A29,9D6B6F,7D303B,57373B"},
					{ name = "DARK_ASSASSIN_CLOAK", description = "Dark Assassin Cloak", colors = "C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725,8F7A7A,74605D,5C4744"},
					{ name = "UTBS_HUMAN", description = "UtbS Human", colors = "FFFFFF,D1D199,999955,554C26,2C1A09,090602,999955,554C26,2C1A09"},
					{ name = "QUENOTH_RED", description = "Quenoth Red", colors = "FFFFFF,D9AEA6,BD696E,9F2133,6A343B,3F2A31,BD696E,9F2133,6A343B"},
					{ name = "QUENOTH_BLUE", description = "Quenoth Blue", colors = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62,78C1B2,4C91C9,4A707A"},

					--animal parts
					{ name = "JUMPING_SPIDER", description = "Jumping Spider", colors = "FFE6D6,DCD1FF,BBABED,6B57B9,5E4DA1,1E1348,BBABED,6B57B9,5E4DA1"},
					{ name = "SCORPLING", description = "Scorpling", colors = "FFFFFF,DAB6C4,C19FA5,A38583,7F615F,491D27,C19FA5,A38583,7F615F"},
					{ name = "TENTACLE", description = "Tentacle", colors = "FFFFFF,CDCDCD,94999A,68676F,4A5661,311A16,94999A,68676F,4A5661"},
					{ name = "SEASERPENT", description = "Sea Serpent", colors = "D9FFFF,ADCFCF,87A1A1,5B7F8A,405F72,384247,87A1A1,5B7F8A,405F72"},
					{ name = "SCARAB", description = "Scarab", colors = "FFFFFF,A5DEAB,74C67E,6CA26A,657E55,49613B,74C67E,6CA26A,657E55"},
					{ name = "SCORPIAN", description = "Scorpion", colors = "CDE5FE,B6C8DA,8384A3,5F607F,414C5E,1D2C49,8384A3,5F607F,414C5E"},
					{ name = "CRAB", description = "Crab", colors = "FFFFFF,DDD3CD,B6ACA4,917B4D,695937,261F10,B6ACA4,917B4D,695937"},
					{ name = "BAT", description = "Vampire Bat", colors = "E5A490,AD7569,84495E,794D44,592B3B,1B1B1B,84495E,794D44,592B3B"},
					{ name = "BLOODBAT", description = "Blood Bat", colors = "FB9254,EC7E3D,BA5520,963718,4D0000,350000,BA5520,963718,4D0000"},
					{ name = "DREADBAT", description = "Dread Bat", colors = "999999,707070,4E4E4E,353535,292929,191919,4E4E4E,353535,292929"},
					{ name = "DREADBAT_METAL", description = "Dread Bat Metal", colors = "CDCDCD,707070,4E4E4E,353535,292929,191919,4E4E4E,353535,292929"},
					{ name = "ANT", description = "Ant", colors = "B1D2D6,90A8B0,907AB5,706993,505870,550022,907AB5,706993,505870"},
					{ name = "FIREANT", description = "Fire Ant", colors = "FFE9B3,FFC843,FF4301,B02E00,821611,550022,FF4301,B02E00,821611"},

					--rashy era
					{ name = "DARDO", description = "Dardo (Rashy Era)", colors = "eacfc2,bd9785,8b6c71,593a3f,33282a,1f1f1a,8b6c71,593a3f,33282a"},
					{ name = "MARASHY", description = "Marashy (Rashy Era)", colors = "fdffea,bdd6e6,a28d62,3d5a4b,454545,232323,a28d62,3d5a4b,454545"},
					{ name = "LUZ", description = "Paladin Luz (Rashy Era)", colors = "ffffff,d6be6b,ad9748,88742f,5e4e1a,2f270a,ad9748,88742f,5e4e1a"},

					--Default grey troll
					{ name = "TROLL_GREY", description = "Troll Grey", colors = "D0CFBF,A8A8A8,747F73,616153,374336,172830,747F73,616153,374336" },

					--earthen/stone colors for the randomizer 
					{ name = "TROLL_LIGHTEARTHEN", description = "Light Earth", colors = "FAF3C9,F6D39B,C5956A,A9794F,7B4231,422110,C5956A,A9794F,7B4231" },
					{ name = "TROLL_WOODENEARTH", description = "Wooden Earth", colors = "E6E6A6,C99462,835C35,573A14,352313,131414,835C35,573A14,352313" },
					{ name = "TROLL_EARTHEN", description = "Earth", colors = "D9AC79,BC946B,B3785B,844C1F,462D1F,201810,B3785B,844C1F,462D1F" },
					{ name = "TROLL_GOBLINMUD", description = "Goblinmud", colors = "FFCE39,C08008,985810,804018,582820,281010,985810,804018,582820" },
					{ name = "TROLL_DARKERMUD", description = "Darker Mud", colors = "CBBC7F,918460,60573C,3C3623,22221A,191911,60573C,3C3623,22221A" },
					{ name = "TROLL_DARKMUD", description = "Dark Mud", colors = "FFD087,E2A76F,97663C,574D31,383838,3B3427,97663C,574D31,383838" },
					{ name = "TROLL_DARKGREEN", description = "Dark Green", colors = "889880,797979,506858,333D33,22221E,191915,506858,333D33,22221E" },
					{ name = "TROLL_DARKBRIGHTSTONE", description = "Dark Bright Stone", colors = "D5D59B,AA9966,939372,515138,2D2D2D,172830,939372,515138,2D2D2D" },
					{ name = "TROLL_SANDSTONE", description = "Sandstone", colors = "F8F8A0,FFFFCE,D6D69C,949473,525239,2D2E22,D6D69C,949473,525239" },
					{ name = "TROLL_TEAMCOLOR", description = "Teamcolor", colors = "F49AC1,EF5BA1,D6007F,9E005D,690039,55002A,D6007F,9E005D,690039" },
					{ name = "TROLL_MOLTEN", description = "Molten", colors = "F7DF8E,E2CD67,F3A62C,AF3C18,8E1A12,6F282B,F3A62C,AF3C18,8E1A12" },
					{ name = "TROLL_OLDGREEN", description = "1.0 Troll", colors = "90F8B8,6ECD8F,50A070,327855,185030,102810,50A070,327855,185030" },
					{ name = "TROLL_GRUU", description = "Grüü (SotBE)", colors = "d3bcc1,a8a8a8,817d71,635054,454133,172830,817d71,635054,454133" }
				},
			},
		}
	}
}

_G.ucc_race_registry["drake"] = {
    body_parts = body_parts
}