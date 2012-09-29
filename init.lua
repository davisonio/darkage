print (" ---- Dark Age is Loading! ---- ")
-- dofile(minetest.get_modpath("darkage").."/mapgen.lua")

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

minetest.register_node("darkage:gneiss", {
  description = "Gneiss",
	tiles = {"darkage_gneiss.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get cobbles with 1/3 chance
				items = {'darkage:gneiss_cobble'},
				rarity = 3,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'darkage:gneiss'},
			}
		}
	},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:gneiss_cobble", {
  description = "Gneiss Cobble",
	tiles = {"darkage_gneiss_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:mud", {
  description = "Mud",
	tiles = {"darkage_mud_up.png","darkage_mud.png"},
	is_ground_content = true,
	groups = {crumbly=3},
  drop = 'darkage:mud_lump 4',
	sounds = default.node_sound_dirt_defaults({
		footstep = "",
	}),
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

minetest.register_node("darkage:shale", {
  description = "Shale",
	tiles = {"darkage_shale.png","darkage_shale.png","darkage_shale_side.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:schist", {
  description = "Schist",
	tiles = {"darkage_schist.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})


minetest.register_node("darkage:slate", {
  description = "Slate",
	tiles = {"darkage_slate.png","darkage_slate.png","darkage_slate_side.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:silt", {
  description = "Silt",
	tiles = {"darkage_silt.png"},
	is_ground_content = true,
	groups = {crumbly=3},
  drop = 'darkage:silt_lump 4',
	sounds = default.node_sound_dirt_defaults({
		footstep = "",
	}),
})

---------------
-- Crafts Items
---------------
minetest.register_craftitem("darkage:mud_lump", {
	description = "Mud Lump",
	inventory_image = "darkage_mud_lump.png",
})

minetest.register_craftitem("darkage:silt_lump", {
	description = "Silt Lump",
	inventory_image = "darkage_silt_lump.png",
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

minetest.register_craft({
	output = 'darkage:silt 2',
	recipe = {
    {'default:sand','default:sand'},
		{'default:clay_lump','default:clay_lump'},
	}
})

minetest.register_craft({
	output = 'darkage:silt',
	recipe = {
    {'darkage:silt_lump','darkage:silt_lump'},
		{'darkage:silt_lump','darkage:silt_lump'},
	}
})


minetest.register_craft({
	output = 'darkage:mud 3',
	recipe = {
    {'default:dirt','default:dirt'},
		{'default:clay_lump','darkage:silt_lump'},
	}
})

minetest.register_craft({
	output = 'darkage:mud',
	recipe = {
    {'darkage:mud_lump','darkage:mud_lump'},
    {'darkage:mud_lump','darkage:mud_lump'},
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
	output = "darkage:gneiss",
	recipe = "darkage:schist",
})

minetest.register_craft({
	type = "cooking",
	output = "darkage:gneiss",
	recipe = "darkage:gneiss_cobble",
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

minetest.register_craft({
	type = "cooking",
	output = "darkage:schist",
	recipe = "darkage:slate",
})

minetest.register_craft({
	type = "cooking",
	output = "darkage:shale",
	recipe = "darkage:mud",
})

minetest.register_craft({
	type = "cooking",
	output = "darkage:slate",
	recipe = "darkage:shale",
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
