-- ogre_data.lua
local body_parts = {
	{
		name = "orc_skin", -- body_part
		description = "Skin",
		data = {
			orc = {
				unit_types = { "Young Ogre", "Ogre", "Great Ogre", "Ancient Ogre"},
				base = "FFD087,F3B368,E2A76F,97663C,574D31,3B3427",
				variants = {
					{ name = "BASE_NORTHERNER_ORCISH_SKIN_COLOR", description = "Orc Skin", colors = "ffce39,F8C842,c08008,985810,804018,582820"},
					{ name = "BASE_NORTHERNER_HUMAN_SKIN_COLOR", description = "Human Skin", colors = "d2d2d2,d2d2d2,f6d39b,e8b374,ce8f50,753c32"},
					{ name = "BASE_NORTHERNER_DUNEFOLK_SKIN_COLOR", description = "Dunefolk Skin", colors = "d6bd8a,d6bd8a,d0963a,ac7732,97560f,6e3417"},
					{ name = "BASE_NORTHERNER_SKELETON_SKIN_COLOR", description = "Skeleton Bone Skin", colors = "ffffce,ffffce,d6d69c,949473,525239,283028"},
					{ name = "BASE_NORTHERNER_WC_SKIN_COLOR", description = "Walking Corpse Skin", colors = "c4c3c1,c4c3c1,a2a684,75826a,555e3e,524133"},
					{ name = "BASE_NORTHERNER_SOULLESS_SKIN_COLOR", description = "Soulless Skin", colors = "cbcfc7,cbcfc7,b0b3af,826c79,74687b,634258"},
					{ name = "BASE_NORTHERNER_AOA_MOUNTAINGOBLIN_SKIN_COLOR", description = "AoA Mountain Goblin Skin", colors = "ffd756,ffd756,c2cd71,84873b,617f41,2f461d"},
					{ name = "BASE_NORTHERNER_ANBENNAR_GREEN_SKIN_COLOR", description = "Anbennar Green Skin", colors = "9CCE36,9CCE36,87B02F,709427,4E671E,3A4A1A"}
				},
			},
		}
	}
}

_G.ucc_race_registry["ogre"] = {
    body_parts = body_parts
}