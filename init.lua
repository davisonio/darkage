print (" ---- Dark Age is Loading! ---- ")

----------
-- Items
----------
minetest.register_node("darkage:basalt", {
  description = "Basalt",
	tiles = {"darkage_basalt.png"},
	is_ground_content = true,
  drop = 'darkage:basalt_cobble',
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:basalt_cobble", {
  description = "Basalt Cobble",
	tiles = {"darkage_basalt_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:darkdirt", {
	description = "Dark Dirt",
	tiles = {"darkage_darkdirt.png"},
	is_ground_content = true,
	groups = {crumbly=2},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("darkage:ors", {
  description = "Old Red Sandstone",
	tiles = {"darkage_ors.png"},
	is_ground_content = true,
  drop = 'darkage:ors_cobble',
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:ors_cobble", {
  description = "Old Red Sandstone Cobble",
	tiles = {"darkage_ors_cobble.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:sandstone_cobble", {
  description = "Sandstone Cobble",
	tiles = {"darkage_sandstone_cobble.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})



----------
-- Crafts
----------
minetest.register_craft({
	output = 'darkage:basalt_cobble 4',
	recipe = {
    {'default:cobble','default:cobble'},
		{'default:coal_lump','default:coal_lump'},
	}
})

minetest.register_craft({
	output = 'darkage:darkdirt 4',
	recipe = {
    {'default:dirt','default:dirt'},
		{'default:gravel','default:gravel'},
	}
})

minetest.register_craft({
	output = 'darkage:ors 4',
	recipe = {
    {'default:sandstone','default:sandstone'},
		{'default:iron_lump','default:sandstone'},
	}
})

minetest.register_craft({
	output = 'darkage:ors_cobble 4',
	recipe = {
    {'darkage:sandstone_cobble','darkage:sandstone_cobble'},
		{'default:iron_lump','darkage:sandstone_cobble'},
	}
})


-- Cookings
minetest.register_craft({
	type = "cooking",
	output = "darkage:basalt",
	recipe = "darkage:basalt_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "darkage:ors",
	recipe = "darkage:ors_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "darkage:sandstone_cobble",
	recipe = "default:sandstone",
})


-- Desert
minetest.register_craft({
	type = "cooking",
	output = "darkage:ors_cobble",
	recipe = "default:desert_stone",
})

minetest.register_craft({
	output = 'default:desert_stone 2',
	recipe = {
    {'default:desert_sand','default:desert_sand'},
		{'default:desert_sand','default:desert_sand'},
	}
})


print (" ---- END of Dark Age ---- ")
