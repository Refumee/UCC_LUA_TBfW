-- quenoth_data.lua
local body_parts = {
	{
		name = "quenoth_hair", -- body_part
		description = "Hair",
		data = {
			youth = {
				unit_types = { "Quenoth Youth" },
				base = "C3B397,D0C4AE,958F8D,897A5A,585E74,61464B,4A332B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B397,D0C4AE,958F8D,897A5A,585E74,61464B,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E74,585E74,585E74" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E74,585E74,585E74" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,D6BCFA,8A92CD,8A92CD,60586E,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E74,61464B,5D474B,35323A,35323A" },
					{ name = "SUN", description = "Sun Hair", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B,33152B" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E74,585E74,61464B,61464B,37122C" },
				},
			},
			fighter = {
				unit_types = { "Quenoth Fighter","Quenoth Warrior","Quenoth Champion","Corrupted Quenoth Elf" },
				base = "9D9F90,818584,585E74",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "9D9F90,818584,585E74" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,897A5A,61464B" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,938091,585E74" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "8A92CD,75759D,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "897A5A,585E74,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,3E2745" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,61464B,37122C" },
				},
			},
			flanker = {
				unit_types = { "Quenoth Flanker","Quenoth Ranger" },
				base = "C3B8C2,938091,585E74",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B8C2,938091,585E74" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,897A5A,61464B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,818584,585E74" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "8A92CD,75759D,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "897A5A,585E74,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,3E2745" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,61464B,37122C" },
				},
			},
			mystic = {
				unit_types = { "Quenoth Mystic","Quenoth Shaman" },
				base = "D6BCFA,8A92CD,60586E,262328",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D6BCFA,8A92CD,60586E,262328" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,958F8D,897A5A,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,818584,818584,585E74" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,938091,938091,585E74" },
					{ name = "DRUID", description = "Druid Hair", colors = "D6BCFA,AFA6E3,8A92CD,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E74,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,894C5D,3E2745" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,585E74,61464B,37122C" },
				},
			},
			druid = {
				unit_types = { "Quenoth Druid" },
				base = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1E6FF,D6BCFA,AFA6E3,8A92CD,60586E,75759D,35323B" },
					{ name = "YOUTH", description = "Youth Hair", colors = "C3B397,D0C4AE,958F8D,897A5A,585E74,61464B,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E74,585E74,585E74" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E74,585E74,585E74" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,D6BCFA,8A92CD,8A92CD,60586E,60586E,262328" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E74,61464B,5D474B,35323A,35323A" },
					{ name = "SUN", description = "Sun Hair", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B,33152B" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E74,585E74,61464B,61464B,37122C" },
				},
			},
			shyde = {
				unit_types = { "Quenoth Shyde" },
				base = "9D9F90,897A5A,585E74,61464B,5D474B,35323A",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "9D9F90,897A5A,585E74,61464B,5D474B,35323A" },
					{ name = "YOUTH", description = "Youth Hair", colors = "C3B397,D0C4AE,958F8D,897A5A,585E74,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E74,585E74" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E74,585E74" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,D6BCFA,8A92CD,8A92CD,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "F1E6FF,D6BCFA,8A92CD,60586E,75759D,35323B" },
					{ name = "SUN", description = "Sun Hair", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E74,61464B,61464B,37122C" },
				},
			},
			sun = {
				unit_types = { "Quenoth Sun Singer","Quenoth Sun Sylph"},
				base = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F3F3BB,F6CA83,D77470,894C5D,3E2745,33152B" },
					{ name = "YOUTH", description = "Youth Hair", colors = "C3B397,D0C4AE,958F8D,897A5A,585E74,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,9D9F90,818584,818584,585E74,585E74" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,C3B8C2,938091,938091,585E74,585E74" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,8A92CD,8A92CD,60586E,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "F1E6FF,D6BCFA,8A92CD,60586E,75759D,35323B" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E74,61464B,5D474B,35323A" },
					{ name = "ASSASSIN", description = "Assassin Hair", colors = "958F8D,958F8D,585E74,61464B,61464B,37122C" },
				},
			},
			assassin_uncloak = {
				unit_types = { "Dark Assassin Uncloaked" },
				base = "958F8D,585E74,61464B,37122C",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "958F8D,585E74,61464B,37122C" },
					{ name = "YOUTH", description = "Youth Hair", colors = "D0C4AE,958F8D,897A5A,4A332B" },
					{ name = "FIGHTER", description = "Fighter Hair", colors = "9D9F90,818584,818584,585E74" },
					{ name = "FLANKER", description = "Flanker Hair", colors = "C3B8C2,938091,938091,585E74" },
					{ name = "MYSTIC", description = "Mystic Hair", colors = "D6BCFA,8A92CD,60586E,262328" },
					{ name = "DRUID", description = "Druid Hair", colors = "D6BCFA,AFA6E3,8A92CD,60586E" },
					{ name = "SHYDE", description = "Shyde Hair", colors = "9D9F90,897A5A,585E74,5D474B" },
					{ name = "SUN", description = "Sun Hair", colors = "F6CA83,D77470,894C5D,3E2745" },
				},
			},
		}
	},
	{
		name = "quenoth_skin", -- body_part
		description = "Skin",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth",
								"Quenoth Scout","Quenoth Pathfinder",
								"Tauroch Rider","Tauroch Vanguard","Tauroch Flagbearer","Tauroch Stalwart","Tauroch Protector"},
				base = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,C8715D,9F6050,9F6050,6C3427,6C3427,511F13" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,8E755C,9F6050,9F6050,6C3427,5B261A,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,88503E,6C3426,65372A,55291D,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,764637,65372A,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,9F6050,6C3427,5B261A,382800" },
				},
			},
			fighter = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger"},
				base = "DF9859,C8715D,9F6050,6C3427,511F13",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,9F6050,6C3427,511F13" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,C8715D,9F6050,7F4436,5B261A" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,9F6050,6C3427,5B261A,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,E98F7A,C8715D,6C3427,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,88503E,65372A,55291D,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,976353,764637,65372A,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,DF9859,9F6050,5B261A,382800" },
				},
			},
			corrupted = {
				unit_types = { "Corrupted Quenoth Elf" },
				base = "AC8D5C,8E755C,9F6050,6C3427,5B261A,511F13",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "AC8D5C,8E755C,9F6050,6C3427,5B261A,511F13" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,C8715D,9F6050,9F6050,6C3427,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F9BAAC,E98F7A,C8715D,6C3427,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,9F6050,88503E,65372A,55291D,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,764637,65372A,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,9F6050,5B261A,382800" },
				},
			},
			archer = {
				unit_types = {	"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider"},
				base = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A,46261F",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A,46261F" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,9F6050,6C3427,6C3427,511F13,511F13" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,8E755C,9F6050,9F6050,6C3427,6C3427,5B261A,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,784739,764637,55291D,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,5B261A,382800" },
				},
			},
			mystic = {
				unit_types = { "Quenoth Mystic","Quenoth Shaman","Quenoth Druid" },
				base = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,C8715D,9F6050,9F6050,6C3427,6C3427,511F13" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,8E755C,9F6050,9F6050,6C3427,5B261A,511F13" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,88503E,6C3426,65372A,55291D,310D02" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,764637,65372A,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,9F6050,6C3427,5B261A,382800" },
				},
			},
			shyde = {
				unit_types = { "Quenoth Shyde" },
				base = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,5B2619,55291D,391F12,310D02",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,5B2619,55291D,391F12,310D02" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,C8715D,8C445A,9F6050,9F6050,7F4436,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,C8715D,9F6050,9F6050,6C3427,6C3427,511F13,511F13,511F13" },
					{ name = "CORRUPTED", description = "Corrupted Skin", colors = "AC8D5C,AC8D5C,8E755C,8E755C,9F6050,9F6050,6C3427,6C3427,5B261A,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,F9BAAC,E98F7A,F6D39B,C8715D,C8715D,6C3427,662431,662431" },
					{ name = "SUN_SINGER", description = "Sun Singer Skin", colors = "D69B63,BD7562,976353,88503E,784739,764637,764538,65372A,55291D,432720,432720" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800,382800" },
				},
			},
			sun_singer = {
				unit_types = { "Quenoth Sun Singer"},
				base = "D69B63,BD7562,976353,88503E,784739,764637,764538,65372A,55291D,432720",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D69B63,BD7562,976353,88503E,784739,764637,764538,65372A,55291D,432720" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,8C445A,9F6050,7F4436,7F4436,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,C8715D,9F6050,9F6050,6C3427,6C3427,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,E98F7A,F6D39B,C8715D,C8715D,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,6C3426,65372A,5B2619,391F12,310D02" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,7F4436,6C3427,5B261A,46261F,382800" },
				},
			},
			sun_sylph = {
				unit_types = { "Quenoth Sun Sylph"},
				base = "D69B63,BD7562,976353,88503E,784739,764538,65372A,55291D,391F12",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D69B63,BD7562,976353,88503E,784739,764538,65372A,55291D,391F12" },
					{ name = "YOUTH", description = "Youth Skin", colors = "DF9859,DF9859,C8715D,8C445A,9F6050,7F4436,6C3427,5B261A,5B261A" },
					{ name = "FIGHTER", description = "Fighter Skin", colors = "DF9859,DF9859,C8715D,9F6050,9F6050,6C3427,6C3427,511F13,511F13" },
					{ name = "MYSTIC", description = "Mystic Skin", colors = "F1B892,F1B892,F9BAAC,E98F7A,F6D39B,C8715D,6C3427,662431,662431" },
					{ name = "SHYDE", description = "Shyde Skin", colors = "DF9859,C8715D,9F6050,88503E,7F4436,65372A,5B2619,391F12,310D02" },
					{ name = "ASSASSIN", description = "Assassin Skin", colors = "DBA67F,C17662,DF9859,C8715D,9F6050,6C3427,5B261A,46261F,382800" },
				},
			},
			assassin = {
				unit_types = { "Dark Assassin Uncloaked" },
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
		name = "quenoth_tan_cloth", -- body_part
		description = "Tan Cloth",
		data = {
			youth = {
				unit_types = { "Quenoth Youth"},
				base = "F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Cloth Youth", colors = "FCFFDC,FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "BLUE_CLOTH_ASSASSIN", description = "Blue Cloth Assassin", colors = "9098AC,9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			fighter = {
				unit_types = {	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Quenoth Scout","Quenoth Pathfinder","Quenoth Outrider"},
				base = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CORRUPTED", description = "Tan Corrupted Cloth", colors = "C3B397,AF986E,897A5A,897A5A,5B4D32,46261F,46261F" },
					{ name = "BLUE_CLOTH", description = "Blue Cloth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			corrupted = {
				unit_types = { "Corrupted Quenoth Elf" },
				base = "C3B397,AF986E,897A5A,5B4D32,46261F",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B397,AF986E,897A5A,5B4D32,46261F" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,BCAE7E,A1966F,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,A1966F,827A54,574D34,382800" },
					{ name = "BLUE_CLOTH", description = "Blue Cloth", colors = "FCFFDC,89BBB5,8592B9,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,BCAE7E,A1966F,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,BFAFAB,A79790,6F615E,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,9C8B8B,8F7A7A,5C4744,372725" },
				},
			},
		}
	},
	{
		name = "quenoth_blue_cloth", -- body_part
		description = "Blue Cloth",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth",
								"Quenoth Archer","Quenoth Marksman"},
				base = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_ASSASSIN", description = "Blue Assassin", colors = "9098AC,6C748C,54596E,454A5B,363B48,001038,000F36" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			assassin = {
				unit_types = { "Dark Assassin Uncloaked"},
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
		name = "quenoth_mystic_robe", -- body_part
		description = "Mystic Robe",
		data = {
			mystic = {
				unit_types = {	"Quenoth Mystic","Quenoth Shaman"},
				base = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,A1966F,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "MYSTIC_SINGER", description = "Sun Singer Robe", colors = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F" },
					{ name = "MYSTIC_SYLPH", description = "Sun Sylph Robe", colors = "BBB389,BBB389,A29D66,877C43,6E5F24,51461B,362F10" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			druid = {
				unit_types = {	"Quenoth Druid" },
				base = "F1D8B3,C5C892,BCAE7E,8E9E72,A1966F,8E755C,536C4A,705B49,534338,2F3B30,02292C",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1D8B3,C5C892,BCAE7E,8E9E72,A1966F,8E755C,536C4A,705B49,534338,2F3B30,02292C" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,F8F0E4,ECD7B8,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338,534338,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,EDDDC8,EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800,382800,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,FCFFDC,BDD6E6,89BBB5,8592B9,8592B9,7C7F82,716565,4F4E3A,4F4E3A,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,705B49,534338,534338,534338" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,C9C49E,A3AB5B,A3AB5B,898B5F,62754A,436448,494428,313926,313926,313926" },
					{ name = "MYSTIC_SINGER", description = "Sun Singer Robe", colors = "D8D4AC,D8D4AC,BDBE86,BDBE86,9FA563,898A40,726F20,545218,37370F,37370F,37370F" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,EFD9CB,CBBEB9,BFAFAB,A79790,907F79,6F615E,544C46,483D3A,342A29,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,DBC5AF,C3A89F,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725,372725,372725" },
				},
			},
			shyde = {
				unit_types = {	"Quenoth Shyde" },
				base = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,A1966F,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SINGER", description = "Sun Singer Robe", colors = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			sun_singer = {
				unit_types = {	"Quenoth Sun Singer"},
				base = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "D8D4AC,BDBE86,9FA563,898A40,726F20,545218,37370F" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,827A54,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,8592B9,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,BCAE7E,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,A1966F,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,436448,494428,313926" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,A79790,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,74605D,5C4744,372725" },
				},
			},
			sun_sylph = {
				unit_types = {	"Quenoth Sun Sylph"},
				base = "BBB389,A29D66,877C43,6E5F24,51461B,362F10",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "BBB389,A29D66,877C43,6E5F24,51461B,362F10" },
					{ name = "TAN_YOUTH", description = "Tan Youth Cloth", colors = "F8F0E4,D4C29B,BCAE7E,8E755C,705B49,534338" },
					{ name = "TAN_FIGHTER", description = "Tan Fighter Cloth", colors = "EDDDC8,C1B69A,A1966F,6C6344,574D34,382800" },
					{ name = "BLUE_CLOTH_YOUTH", description = "Blue Youth", colors = "FCFFDC,BDD6E6,89BBB5,7C7F82,716565,4F4E3A" },
					{ name = "MYSTIC_ROBE", description = "Mystic Robe", colors = "F1D8B3,D1B6A3,A1966F,8E755C,705B49,534338" },
					{ name = "MYSTIC_DRUID", description = "Druid Robe", colors = "F1D8B3,BCAE7E,8E9E72,536C4A,705B49,02292C" },
					{ name = "MYSTIC_SHYDE", description = "Shyde Robe", colors = "C9C49E,A3AB5B,898B5F,62754A,494428,313926" },
					{ name = "TAN_CAPE", description = "Tan Cape", colors = "EFD9CB,CBBEB9,BFAFAB,6F615E,483D3A,342A29" },
					{ name = "TAN_HEADSCARF", description = "Tan Headscarf", colors = "DBC5AF,C3A89F,9C8B8B,8F7A7A,5C4744,372725" },
				},
			},
		}
	},
	{
		name = "quenoth_shyde_wing", -- body_part
		description = "Mystic Wing",
		data = {
			shyde = {
				unit_types = {	"Quenoth Shyde"	},
				base = "F9FDDF,E5FAB4,CEE4A5,BBC392,5D6564",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "F9FDDF,E5FAB4,CEE4A5,BBC392,5D6564" },
					{ name = "SYLPH", description = "Quenoth Sun Sylph", colors = "C8FCFE,B7D5B8,80B3B6,6786A2,2E6272" },
				},
			},
			sun_sylph = {
				unit_types = {	"Quenoth Sun Sylph"},
				base = "C8FCFE,E6E9BA,B7D5B8,80B3B6,6786A2,2E6272",
				variants = {
					-- Default
					{ name = "DEFAULT", description = "Default", colors = "C8FCFE,E6E9BA,B7D5B8,80B3B6,6786A2,2E6272" },
					{ name = "SHYDE", description = "Quenoth Shyde", colors = "F9FDDF,E5FAB4,CEE4A5,BBC392,8C947B,5D6564" },
				},
			},
		}
	},
	{
		name = "quenoth_blue_metal", -- body_part
		description = "Blue Metal",
		data = {
			youth = {
				unit_types = {	"Quenoth Youth"},
				base = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,8B9A88,585E74,4A2E62" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,B38E8E,8A4C4C,664B50,50363B,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,EACCC6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B397,C3B397,9D5875,800A12,61464B,3B2328" },
				},
			},
			fighter = {
				unit_types = { 	"Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Corrupted Quenoth Elf"},
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
			archer = {
				unit_types = { 	"Quenoth Scout",
								"Quenoth Archer","Quenoth Marksman",
								"Quenoth Outrider","Quenoth Pathfinder"},
				base = "FCFFDC,FFE593,A4F19D,A4F29D,8B9A88,4C91C9,4A707A,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "FCFFDC,FFE593,A4F19D,A4F29D,8B9A88,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,E7FFCE,A4F19D,78C1B2,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,8B9A88,585E74,585E74,4A2E62,4A2E62" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,B38E8E,8A4C4C,8A4C4C,664B50,664B50,50363B,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,7D303B,57373B,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B397,C3B397,9D5875,9D5875,800A12,61464B,3B2328,3B2328" },
				},
			},
			tauroch = {
				unit_types = {	"Tauroch Rider",
								"Tauroch Vanguard","Tauroch Flagbearer",
								"Tauroch Stalwart","Tauroch Protector"},
				base = "FFE593,A4F19D,A4F29D,78C1B2,8B9A88,4C91C9,BDD6E6,89BBB5,8592B9,4A707A,4A2E62",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "FFE593,A4F19D,A4F29D,78C1B2,8B9A88,4C91C9,BDD6E6,89BBB5,8592B9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,A4F19D,8B9A88,8B9A88,8B9A88,585E74,585E74,585E74,4A2E62,4A2E62" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,F1DDD9,EACCC6,EACCC6,D9AEA6,BD696E,9F2133,9F2133,6A343B,6A343B,3F2A31" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B397,C3B397,C3B397,9D5875,9D5875,800A12,800A12,61464B,61464B,3B2328,3B2328" },
				},
			},
		}
	},
	{
		name = "quenoth_red_metal", -- body_part
		description = "Red Metal",
		data = {
			youth = {
				unit_types = { "Quenoth Youth"},
				base = "B38E8E,8A4C4C,664B50,50363B",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "B38E8E,8A4C4C,664B50,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,D9AEA6,9F2133,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,BCA39D,CC8F8C,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,78C1B2,4C91C9,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,8B9A88,585E74,4A2E62" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B397,800A12,61464B,3B2328" },
				},
			},
			fighter = {
				unit_types = { "Quenoth Fighter","Quenoth Warrior","Quenoth Champion",
								"Quenoth Flanker","Quenoth Ranger",
								"Corrupted Quenoth Elf",
								"Quenoth Scout","Quenoth Pathfinder"},
				base = "F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1DDD9,EACCC6,D9AEA6,BD696E,9F2133,6A343B,3F2A31" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,B38E8E,8A4C4C,8A4C4C,664B50,50363B,50363B" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,ECC3C1,BCA39D,CC8F8C,9D6B6F,57373B,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,E7FFCE,A4F19D,78C1B2,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,A4F19D,8B9A88,8B9A88,585E74,585E74,4A2E62" },
					{ name = "CORRUPTED", description = "Corrupted Metal", colors = "C3B397,C3B397,9D5875,800A12,61464B,61464B,3B2328" },
				},
			},
			assassin = {
				unit_types = { "Dark Assassin Uncloaked" },
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
		name = "quenoth_corrupted_red_metal", -- body_part
		description = "Corrupted Red Metal",
		data = {
			corrupted = {
				unit_types = { "Corrupted Quenoth Elf" },
				base = "C3B397,9D5875,800A12,61464B,3B2328",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "C3B397,9D5875,800A12,61464B,3B2328" },
					{ name = "RED_YOUTH", description = "Red Youth Metal", colors = "B38E8E,8A4C4C,664B50,664B50,50363B" },
					{ name = "RED_FIGHTER", description = "Red Fighter Metal", colors = "F1DDD9,EACCC6,BD696E,9F2133,3F2A31" },
					{ name = "RED_ASSASSIN", description = "Red Assassin Metal", colors = "EACCC6,BCA39D,CC8F8C,57373B,3F2A31" },
					{ name = "BLUE_YOUTH", description = "Blue Youth Metal", colors = "E7FFCE,A4F19D,4C91C9,4A707A,4A2E62" },
					{ name = "BLUE_FIGHTER", description = "Blue Fighter Metal", colors = "A4F19D,8B9A88,8B9A88,585E74,4A2E62" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_leather", -- body_part
		description = "Tan Leather",
		data = {
			tauroch = {
				unit_types = { "Tauroch Protector"},
				base = "F1DBBE,C6B7AB,7F7165,534338",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "F1DBBE,C6B7AB,7F7165,534338" },
					{ name = "TAN_LEATHER_ARCHER", description = "Tan Leather Archer", colors = "ECDED9,D7C4BD,9A796C,2E2020" },
					{ name = "TAN_HIDE_TAUROCH", description = "Tan Hide Tauroch", colors = "E3D89C,BA9C55,746646,4F4E3A" },
					{ name = "TAN_HIDE_ARCHER", description = "Tan Hide Archer", colors = "E3D89C,D9A06E,A76326,341713" },
				},
			},
			archer = {
				unit_types = { "Quenoth Outrider","Quenoth Pathfinder"},
				base = "ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020" },
					{ name = "TAN_LEATHER_TAUROCH", description = "Tan Leather Tauroch", colors = "F1DBBE,F1DBBE,C6B7AB,C6B7AB,7F7165,7F7165,534338" },
					{ name = "TAN_HIDE_TAUROCH", description = "Tan Hide Tauroch", colors = "E3D89C,E3D89C,BA9C55,BA9C55,746646,746646,4F4E3A" },
					{ name = "TAN_HIDE_ARCHER", description = "Tan Hide Archer", colors = "E3D89C,D9A06E,BF8149,A76326,746646,5A2827,341713" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_hide", -- body_part
		description = "Tan Hide",
		data = {
			scout = {
				unit_types = { "Quenoth Scout"},
				base = "E3D89C,BA9C55,746646,4F4E3A",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "E3D89C,BA9C55,746646,4F4E3A" },
					{ name = "TAN_HIDE_ARCHER", description = "Tan Hide Archer", colors = "E3D89C,D9A06E,A76326,341713" },
					{ name = "TAN_LEATHER_TAUROCH", description = "Tan Leather Tauroch", colors = "F1DBBE,C6B7AB,7F7165,534338" },
					{ name = "TAN_LEATHER_ARCHER", description = "Tan Leather Archer", colors = "ECDED9,D7C4BD,9A796C,2E2020" },
				},
			},
			archer = {
				unit_types = {"Quenoth Outrider","Quenoth Pathfinder"},
				base = "E3D89C,D9A06E,BF8149,A76326,746646,4F4E3A,5A2827,341713",
				variants = {
					{ name = "DEFAULT", description = "Default", colors = "E3D89C,D9A06E,BF8149,A76326,746646,4F4E3A,5A2827,341713" },
					{ name = "TAN_HIDE_TAUROCH", description = "Tan Hide Tauroch", colors = "E3D89C,E3D89C,BA9C55,BA9C55,746646,746646,4F4E3A,4F4E3A" },
					{ name = "TAN_LEATHER_TAUROCH", description = "Tan Leather Tauroch", colors = "F1DBBE,F1DBBE,C6B7AB,C6B7AB,7F7165,7F7165,534338,534338" },
					{ name = "TAN_LEATHER_ARCHER", description = "Tan Leather Archer", colors = "ECDED9,ECDED9,D7C4BD,BAA298,9A796C,6D5353,4D3939,2E2020" },
				},
			},
		}
	},
	{
		name = "quenoth_tan_cape", -- body_part
		description = "Tan Cape",
		data = {
			assassin = {
				unit_types = { "Dark Assassin Uncloaked"},
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
				unit_types = { "Dark Assassin Uncloaked"},
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

_G.ucc_race_registry["quenoth"] = {
    body_parts = body_parts
}