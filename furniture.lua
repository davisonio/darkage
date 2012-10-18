minetest.register_node("darkage:chain", {
	description = "Chain",
	drawtype = "signlike",
	tiles = {"darkage_chain.png"},
	inventory_image = "darkage_chain.png",
	wield_image = "darkage_chain.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {snappy=1,cracky=2,oddly_breakable_by_hand=2},
	legacy_wallmounted = true
})

minetest.register_node('darkage:box', {
	description = "Box",
	tiles = { 'darkage_box_top.png','darkage_box_top.png','darkage_box.png'},
	sunlight_propagates = false,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = { snappy = 3 },
	sounds = default.node_sound_leaves_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"size[8,8]"..
				"list[current_name;main;0,0;8,3;]"..
				"list[current_player;main;0,4;8,4;]")
		meta:set_string("infotext", "Box")
		local inv = meta:get_inventory()
		inv:set_size("main", 16)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in box at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to box at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from box at "..minetest.pos_to_string(pos))
	end,
})

--minetest.register_node("darkage:rosace", {
--	description = "Rose Window",
--	tiles = {"darkage_rosace.png"},
--	is_ground_content = true,
--	groups = {cracky=3},
--	sounds = default.node_sound_stone_defaults()
--})

minetest.register_node("darkage:iron_bars", {
	description = "Iron Bars",
  drawtype = "glasslike",
	tiles = {"darkage_iron_bars.png"},
  inventory_image = "darkage_iron_bars.png",
	wield_image = "darkage_iron_bars.png",
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:iron_grille", {
	description = "Iron Grille",
  drawtype = "glasslike",
	tiles = {"darkage_iron_grille.png"},
  inventory_image = "darkage_iron_grille.png",
	wield_image = "darkage_iron_grille.png",
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:wood_bars", {
	description = "Wood Bars",
  drawtype = "glasslike",
	tiles = {"darkage_wood_bars.png"},
  inventory_image = "darkage_wood_bars.png",
	wield_image = "darkage_wood_bars.png",
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=1,choppy=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:wood_grille", {
	description = "Wooden Grille",
  drawtype = "glasslike",
	tiles = {"darkage_wood_grille.png"},
  inventory_image = "darkage_wood_grille.png",
	wield_image = "darkage_wood_grille.png",
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=1,choppy=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("darkage:wood_frame", {
	description = "Wood Frame",
  drawtype = "glasslike",
	tiles = {"darkage_wood_frame.png"},
  inventory_image = "darkage_wood_frame.png",
	wield_image = "darkage_wood_frame.png",
	is_ground_content = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy=1,choppy=2},
	sounds = default.node_sound_stone_defaults()
})
---------------
-- Crafts Item
---------------


----------
-- Crafts 
----------

minetest.register_craft({
	output = 'darkage:box',
	recipe = {
    {'default:wood','','default:wood'},
    {'','',''},
		{'default:wood','','default:wood'},
	}
})

minetest.register_craft({
	output = 'darkage:chain 2',
	recipe = {
    {'default:steel_ingot'},
    {'default:steel_ingot'},
    {'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'darkage:iron_bars 2',
	recipe = {
    {'default:steel_ingot','','default:steel_ingot'},
    {'default:steel_ingot','','default:steel_ingot'},
    {'default:steel_ingot','','default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'darkage:iron_grille 3',
	recipe = {
    {'','darkage:iron_bars',''},
    {'darkage:iron_bars','','darkage:iron_bars'},
    {'','darkage:iron_bars',''},
	}
})

-- minetest.register_craft({
-- 	output = 'darkage:scroll 2',
-- 	recipe = {
--     {'default:paper','default:paper','default:paper'},
--     {'default:paper','',''},
--     {'default:paper','paper',''},
-- 	}
-- })

minetest.register_craft({
	output = 'darkage:wood_bars 2',
	recipe = {
    {'default:stick','','default:stick'},
    {'default:stick','','default:stick'},
    {'default:stick','','default:stick'},
	}
})

minetest.register_craft({
	output = 'darkage:wood_grille 3',
	recipe = {
    {'','darkage:wood_bars',''},
    {'darkage:wood_bars','','darkage:wood_bars'},
    {'','darkage:wood_bars',''},
	}
})

minetest.register_craft({
	output = 'darkage:wood_frame',
	recipe = {
    {'default:stick','default:stick','default:stick'},
    {'default:stick','default:glass','default:stick'},
    {'default:stick','default:stick','default:stick'},
	}
})

--minetest.register_craft({
--	output = 'darkage:rosace',
--	recipe = {
--    {'default:cobble','','default:cobble'},
--    {'','default:cobble',''},
--    {'default:cobble','','default:cobble'},
--	}
--})
