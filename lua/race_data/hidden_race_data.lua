-- hidden_race.lua
local body_parts = {
	{
		name = "quenoth_skin", -- body_part
		description = "Skin",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked" },
				base = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,8C445A,9F6050,7F4436,7F4436,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,C8715D,9F6050,9F6050,6C3427,6C3427,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,E98F7A,F6D39B,C8715D,C8715D,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,5B2619,391F12,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,784739,764637,764538,65372A,55291D,432720" },
				},
			},
		}
	},
	{
		name = "quenoth_blue_cloth", -- body_part
		description = "Blue Cloth",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked"},
				base = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
		}
	},
	{
		name = "quenoth_blue_metal", -- body_part
		description = "Blue Metal",
		data = {
			assassin = {
				unit_types = { 	"Dark Assassin Cloaked"},
				base = "A4F19D,8B9A88,585E74,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "A4F19D,8B9A88,585E74,4A2E62" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,78C1B2,4C91C9,4A2E62" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,8A4C4C,664B50,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,D9AEA6,9F2133,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,BCA39D,CC8F8C,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B397,800A12,61464B,3B2328" },
				},
			},
		}
	},
	{
		name = "quenoth_red_metal", -- body_part
		description = "Red Metal",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked" },
				base = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,7D303B,57373B,3F2A31",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,7D303B,57373B,3F2A31" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,B38E8E,8A4C4C,8A4C4C,664B50,664B50,50363B,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,E7FFCE,A4F19D,78C1B2,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,8B9A88,585E74,585E74,4A2E62,4A2E62" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B397,C3B397,9D5875,9D5875,800A12,61464B,3B2328,3B2328" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_cape", -- body_part
		description = "Tan Cape",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked"},
				base = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,EDDDC8,C1B69A,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,FCFFDC,BDD6E6,89BBB5,8592B9,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,705B49,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,C9C49E,A3AB5B,898B5F,62754A,62754A,436448,494428,313926" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,DBC5AF,C3A89F,9C8B8B,8F7A7A,8F7A7A,74605D,5C4744,372725" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_headscarf", -- body_part
		description = "Tan Headscarf",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Cloaked"},
				base = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
				},
			},
		}
	},
}

_G.ucc_race_registry["hidden_race"] = {
    body_parts = body_parts
}