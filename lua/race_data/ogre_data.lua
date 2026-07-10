-- ogre_data.lua
local body_parts = {
	{
		name = "ogre_skin", -- body_part
		description = "Skin",
		data = {
			orc = {
				unit_types = { "Young Ogre", "Ogre", "Great Ogre", "Ancient Ogre"},
				base = "FFD087,F3B368,E2A76F,BA9863,97663C,574D31,3B3427", -- color 2 for Great/Ancient Ogre and color 4 for Ancient Ogre
				variants = {
					{ name = "OGRE_SKIN_OGRE", description = "Ogre", colors = "FFD087,F3B368,E2A76F,BA9863,97663C,574D31,3B3427"},
					{ name = "OGRE_SKIN_SUNBURNOGRE", description = "Sunburn Ogre", colors = "D6BD8A,C29A5E,AC7732,AC7732,97560F,6E3417,502413"},
					{ name = "OGRE_SKIN_ORCISH", description = "Orc", colors = "ffce39,F8C842,c08008,c08008,985810,804018,582820"},
					{ name = "OGRE_SKIN_HUMAN", description = "Human", colors = "d2d2d2,d2d2d2,f6d39b,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "OGRE_SKIN_DUNEFOLK", description = "Dunefolk", colors = "d6bd8a,d6bd8a,d0963a,d0963a,ac7732,97560f,6e3417"},
					{ name = "OGRE_SKIN_SKELETON", description = "Skeleton Bone", colors = "ffffce,ffffce,d6d69c,d6d69c,949473,525239,283028"},
					{ name = "OGRE_SKIN_WC", description = "Walking Corpse", colors = "c4c3c1,c4c3c1,a2a684,a2a684,75826a,555e3e,524133"},
					{ name = "OGRE_SKIN_SOULLESS", description = "Soulless", colors = "cbcfc7,cbcfc7,b0b3af,b0b3af,826c79,74687b,634258"},
					{ name = "OGRE_SKIN_AOA_MOUNTAINGOBLIN", description = "AoA Mountain Goblin", colors = "ffd756,ffd756,c2cd71,c2cd71,84873b,617f41,2f461d"},
					{ name = "OGRE_SKIN_ANBENNAR_GREEN", description = "Anbennar Green", colors = "9CCE36,9CCE36,87B02F,87B02F,709427,4E671E,3A4A1A"}
				},
			},
		}
	}
}

_G.ucc_race_registry["ogre"] = {
    body_parts = body_parts
}