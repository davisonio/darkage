if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("darkage", "basalt", "darkage:basalt", {
		description = "Basalt",
		tiles = {"darkage_basalt.png"},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

elseif minetest.get_modpath("stairs") then

	stairs.register_stair_and_slab("basalt", "darkage:basalt",
		{},
		{""},
		" Stair",
		" Slab",
		default.node_sound_stone_defaults())
			
end