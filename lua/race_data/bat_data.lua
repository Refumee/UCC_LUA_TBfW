-- bat_data.lua
local body_parts = {
	{
		name = "bat_leather", -- body_part
		description = "Skin",
		data = {
			vampire_bat = {
				unit_types = {	"Vampire Bat","SotA Vampire Bat","Afterlife Vampire Bat"	},
				base = "E5A490,AD7569,794D44,84495E,592B3B", 
				variants = {
					-- Default
					{ name = "BAT_VAMPIRE", description = "Vampire Bat", colors = "E5A490,AD7569,794D44,84495E,592B3B" },
					{ name = "BAT_BLOOD", description = "Blood Bat", colors = "EC7E3D,BA5520,963718,963718,4D0000" },
					{ name = "BAT_DREAD", description = "Dread Bat", colors = "707070,4E4E4E,353535,353535,191919" },
					-- mixed
					{ name = "BAT_MIX_SANGUINE", description = "Sanguine Bat", colors = "E89166,C46544,88422E,8D403A,53151D" },
					{ name = "BAT_MIX_ASHEN_BLOOD", description = "Ashen Blood Bat", colors = "AD9B95,846860,65423B,65423B,330D0D" },
					{ name = "BAT_MIX_GRAVE", description = "Grave Bat", colors = "AB8A8A,7E6262,574141,5E404E,38222B" },
					-- new
					{ name = "BAT_ALBINO", description = "Albino Cave Bat", colors = "FFF0F0,EBC3C3,C28F8F,A86677,733D50" },
					{ name = "BAT_PLAGUE", description = "Plague Bat", colors = "C2B58A,948A63,635C40,5C454B,3B262E" },
					{ name = "BAT_NETHER", description = "Nether Bat", colors = "5C5C7A,3D3D5C,24243D,24243D,0F0F1A" },
					{ name = "BAT_DUSK", description = "Wild Dusk Bat", colors = "9E7A5A,7A593E,573D29,422C1C,26180E" },
					-- test
					--{ name = "BAT_RAVEN", description = "Raven Bat", colors = "A0A7FB,A59BB7,8D83A0,716587,5C5073,493C61,2B194C" },
					{ name = "BAT_RAVEN", description = "Raven Bat", colors = "A59BB7,8D83A0,716587,5C5073,2B194C" },
				},
			},
			blood_bat = {
				unit_types = {	"Blood Bat","SotA Blood Bat","Afterlife Blood Bat"	},
				base = "EC7E3D,BA5520,963718,4D0000", 
				variants = {
					-- Default
					{ name = "BAT_VAMPIRE", description = "Vampire Bat", colors = "E5A490,AD7569,794D44,592B3B" },
					{ name = "BAT_BLOOD", description = "Blood Bat", colors = "EC7E3D,BA5520,963718,4D0000" },
					{ name = "BAT_DREAD", description = "Dread Bat", colors = "707070,4E4E4E,353535,191919" },
					-- mixed
					{ name = "BAT_MIX_SANGUINE", description = "Sanguine Bat", colors = "E89166,C46544,88422E,53151D" },
					{ name = "BAT_MIX_ASHEN_BLOOD", description = "Ashen Blood Bat", colors = "AD9B95,846860,65423B,330D0D" },
					{ name = "BAT_MIX_GRAVE", description = "Grave Bat", colors = "AB8A8A,7E6262,574141,38222B" },
					-- new
					{ name = "BAT_ALBINO", description = "Albino Cave Bat", colors = "FFF0F0,EBC3C3,C28F8F,733D50" },
					{ name = "BAT_PLAGUE", description = "Plague Bat", colors = "C2B58A,948A63,635C40,3B262E" },
					{ name = "BAT_NETHER", description = "Nether Bat", colors = "5C5C7A,3D3D5C,24243D,0F0F1A" },
					{ name = "BAT_DUSK", description = "Wild Dusk Bat", colors = "9E7A5A,7A593E,573D29,26180E" },
					-- test
					{ name = "BAT_RAVEN", description = "Raven Bat", colors = "A59BB7,716587,5C5073,2B194C" },
				},
			},
			dread_bat = {
				unit_types = {	"Dread Bat","SotA Dread Bat","Afterlife Dread Bat"	},
				base = "707070,4E4E4E,353535,191919", 
				variants = {
					-- Default
					{ name = "BAT_VAMPIRE", description = "Vampire Bat", colors = "E5A490,AD7569,794D44,592B3B" },
					{ name = "BAT_BLOOD", description = "Blood Bat", colors = "EC7E3D,BA5520,963718,4D0000" },
					{ name = "BAT_DREAD", description = "Dread Bat", colors = "707070,4E4E4E,353535,191919" },
					-- mixed
					{ name = "BAT_MIX_SANGUINE", description = "Sanguine Bat", colors = "E89166,C46544,88422E,53151D" },
					{ name = "BAT_MIX_ASHEN_BLOOD", description = "Ashen Blood Bat", colors = "AD9B95,846860,65423B,330D0D" },
					{ name = "BAT_MIX_GRAVE", description = "Grave Bat", colors = "AB8A8A,7E6262,574141,38222B" },
					-- new
					{ name = "BAT_ALBINO", description = "Albino Cave Bat", colors = "FFF0F0,EBC3C3,C28F8F,733D50" },
					{ name = "BAT_PLAGUE", description = "Plague Bat", colors = "C2B58A,948A63,635C40,3B262E" },
					{ name = "BAT_NETHER", description = "Nether Bat", colors = "5C5C7A,3D3D5C,24243D,0F0F1A" },
					{ name = "BAT_DUSK", description = "Wild Dusk Bat", colors = "9E7A5A,7A593E,573D29,26180E" },
					--test
					{ name = "BAT_RAVEN", description = "Raven Bat", colors = "A59BB7,716587,5C5073,2B194C" },
				},
			},
		}
	}
}

_G.ucc_race_registry["bats"] = {
    body_parts = body_parts
}