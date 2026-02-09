-- troll_data.lua
local body_parts = {
	{
		name = "skin", -- body_part
		data = {
			wose = {
				unit_types = {	"Troll", "Troll Whelp", "Troll Rocklobber", "Troll Warrior", "Great Troll", "Troll Shaman", "Troll Hero",
								"Afterlife Troll", "Afterlife Troll Whelp", "Afterlife Troll Rocklobber", "Afterlife Troll Warrior", "Great Afterlife Troll", "Afterlife Troll Shaman", "Afterlife Troll Hero",
								"Troll Initiate","Troll Earth-Shaker"
				},
				-- Your DEFAULT_WOSE_BARK
				base = "d0cfbf,a8a8a8,747f73,616153,374336,172830", 
				variants = {
					-- Default grey troll
					{ name = "TROLL_GREY", colors = "d0cfbf,a8a8a8,747f73,616153,374336,172830" },

					-- earthen/stone colors for the randomizer ##################
					{ name = "TROLL_LIGHTEARTHEN", colors = "faf3c9,f6d39b,c5956a,a9794f,7b4231,422110" },
					{ name = "TROLL_WOODENEARTH", colors = "e6e6a6,c99462,835c35,573a14,352313,131414" },
					{ name = "TROLL_EARTHEN", colors = "d9ac79,bc946b,b3785b,844c1f,462d1f,201810" },
					{ name = "TROLL_GOBLINMUD", colors = "ffce39,c08008,985810,804018,582820,281010" },
					{ name = "TROLL_DARKERMUD", colors = "cbbc7f,918460,60573c,3c3623,22221a,191911" },
					{ name = "TROLL_DARKMUD", colors = "ffd087,e2a76f,97663c,574d31,383838,3b3427" },
					{ name = "TROLL_DARKGREEN", colors = "889880,797979,506858,333d33,22221e,191915" },
					{ name = "TROLL_DARKBRIGHTSTONE", colors = "d5d59b,aa9966,939372,515138,2d2d2d,172830" },
					{ name = "TROLL_SANDSTONE", colors = "f8f8a0,ffffce,d6d69c,949473,525239,2d2e22" },
					{ name = "TROLL_TEAMCOLOR", colors = "f49ac1,ef5ba1,d6007f,9e005d,690039,55002a" },
					{ name = "TROLL_MOLTEN", colors = "f7df8e,e2cd67,f3a62c,af3c18,8e1a12,6f282b" },
					{ name = "TROLL_OLDGREEN", colors = "90F8B8,6ECD8F,50A070,327855,185030,102810" },
					{ name = "TROLL_GRUU", colors = "d3bcc1,a8a8a8,817d71,635054,454133,172830" }
				},
			},
		}
	}
}

_G.ucc_race_registry["troll"] = {
    body_parts = body_parts
}