darkage = {}

function darkage.register_stairs(modname, item, groups, images, description)
local recipeitem = modname..":"..item
local itemname = modname..":stair_"..item
	minetest.register_node(itemname, {
		description = description.." stair",
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
	})

	minetest.register_craft({
		output = itemname .. ' 4',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})

	-- Flipped recipe for the silly minecrafters
	minetest.register_craft({
		output = itemname .. ' 4',
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})

itemname=modname..":slab_" .. item

	minetest.register_node(itemname, {
		description = description.." slab",
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local n0 = minetest.env:get_node(p0)
			local n1 = minetest.env:get_node(p1)
			if n0.name == itemname then
				slabpos = p0
				slabnode = n0
			elseif n1.name == itemname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_craft({
		output = itemname .. ' 3',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

darkage.register_stairs("darkage","basalt_cobble",
	{cracky=3},
	{"darkage_basalt_cobble.png"},
	"Basalt Cobble"
)

darkage.register_stairs("darkage","slate_tile",
	{cracky=3},
	{"darkage_slate_tile.png"},
	"Slate Tile"
)

darkage.register_stairs("darkage","straw",
	{snappy=3, flammable=2},
	{"darkage_straw.png"},
	"Straw"
)

darkage.register_stairs("darkage","stone_brick",
	{cracky=3},
	{"darkage_stone_brick.png"},
	"Stone Brick"
)

darkage.register_stairs("darkage","marble",
	{cracky=3},
	{"darkage_marble.png"},
	"Marble"
)

darkage.register_stairs("darkage","marble_tile",
	{cracky=3},
	{"darkage_marble_tile.png"},
	"Marble Tile"
)

darkage.register_stairs("darkage","ors_cobble",
	{cracky=3},
	{"darkage_ors_cobble.png"},
	"Old Red Sandstone"
)

darkage.register_stairs("darkage","serpentine",
{cracky=3},
{"darkage_serpentine.png"},
"Serpentine"
)

--slate Cobble
stairsplus:register_all("darkage", "slate_cobble", "darkage:slate_cobble", {
description = "Slate Cobble",
tiles = {"darkage_slate_cobble.png"},
groups = {cracky=2},
sounds = default.node_sound_stone_defaults(),
})

--slate
stairsplus:register_all("darkage", "slate", "darkage:slate", {
description = "Slate",
tiles = {"darkage_slate.png","darkage_slate.png","darkage_slate_side.png"},
groups = {cracky=2},
sounds = default.node_sound_stone_defaults(),
})

--slate tile
stairsplus:register_all("darkage", "slate_tile", "darkage:slate_tile", {
description = "Slate Tale",
tiles = {"darkage_slate_tile.png"},
groups = {cracky=2},
sounds = default.node_sound_stone_defaults(),
})

--marble
stairsplus:register_all("darkage", "marble", "darkage:marble", {
description = "Marble",
tiles = {"darkage_marble.png"},
groups = {cracky=2},
sounds = default.node_sound_stone_defaults(),
})

--stone brick
stairsplus:register_all("darkage", "stone_brick", "darkage:stone_brick", {
description = "Stone Brick",
tiles = {"darkage_stone_brick.png"},
groups = {cracky=3},
sounds = default.node_sound_stone_defaults(),
})

--straw
stairsplus:register_all("darkage", "straw", "darkage:straw", {
description = "Straw",
tiles = {"darkage_straw.png"},
groups = {snappy=3, flammable=2},
sounds = default.node_sound_leaves_defaults(),
})

--straw_bale
stairsplus:register_all("darkage", "straw_bale", "darkage:straw_bale", {
description = "Straw Bale",
tiles = {"darkage_straw_bale.png"},
groups = {snappy=2, flammable=2},
sounds = default.node_sound_leaves_defaults(),
})

--serpentine
stairsplus:register_all("darkage", "serpentine", "darkage:serpentine", {
description = "Serpentine",
tiles = {"darkage_serpentine.png"},
groups = {cracky=3},
sounds = default.node_sound_stone_defaults(),
})

--shist
stairsplus:register_all("darkage", "schist", "darkage:schist", {
description = "Schist",
tiles = {"darkage_schist.png"},
groups = {cracky=3},
sounds = default.node_sound_stone_defaults(),
})

--gneiss
stairsplus:register_all("darkage", "gneiss", "darkage:gneiss", {
description = "Gneiss",
tiles = {"darkage_gneiss.png"},
groups = {cracky=3},
sounds = default.node_sound_stone_defaults(),
})

--gneiss_cobble
stairsplus:register_all("darkage", "gneiss_cobble", "darkage:gneiss_cobble", {
description = "Gneiss Cobble",
tiles = {"darkage_gneiss_cobble.png"},
groups = {cracky=3},
sounds = default.node_sound_stone_defaults(),
})

--basalt
stairsplus:register_all("darkage", "basalt", "darkage:basalt", {
description = "Basalt",
tiles = {"darkage_basalt.png"},
groups = {cracky=3},
sounds = default.node_sound_stone_defaults(),
})

--basalt cobble
stairsplus:register_all("darkage", "basalt_cobble", "darkage:basalt_cobble", {
description = "Basalt Cobble",
tiles = {"darkage_basalt_cobble.png"},
groups = {cracky=3},
sounds = default.node_sound_stone_defaults(),
})

--shale
stairsplus:register_all("darkage", "shale", "darkage:shale", {
description = "Shale",
tiles = {"darkage_shale.png","darkage_shale.png","darkage_shale_side.png"},
groups = {crumbly=2,cracky=2},
sounds = default.node_sound_stone_defaults(),
})


--old red sandstone
stairsplus:register_all("darkage", "ors", "darkage:ors", {
description = "Old Red Sandstone",
tiles = {"darkage_ors.png"},
groups = {crumbly=2,cracky=2},
sounds = default.node_sound_stone_defaults(),
})

--old red sandstone cobble
stairsplus:register_all("darkage", "ors_cobble", "darkage:ors_cobble", {
description = "Old Red Sandstone Cobble",
tiles = {"darkage_ors_cobble.png"},
groups = {crumbly=2,cracky=2},
sounds = default.node_sound_stone_defaults(),
})

--Serpentine
stairsplus:register_all("darkage", "serpentine", "darkage:serpentine", {
description = "Serpentine",
tiles = {"darkage_serpentine.png"},
groups = {crumbly=2,cracky=2},
sounds = default.node_sound_stone_defaults(),
})
