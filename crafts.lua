minetest.register_craft({
	output = 'darkage:glow_glass 1',
	recipe = {
		{'darkage:glass', '', ''},
		{'default:torch', '', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'darkage:glass 1',
	recipe = {
		{'darkage:glow_glass'},
	}
})


minetest.register_craft({
	output = 'darkage:glass 8',
	recipe = {
		{'default:glass', 'default:steel_ingot', 'default:glass'},
		{'default:steel_ingot', 'default:glass', 'default:steel_ingot'},
		{'default:glass', 'default:steel_ingot', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'darkage:reinforced_chalk',
	recipe = {
	{'default:stick','','default:stick'},
	{'','darkage:chalk',''},
	{'default:stick','','default:stick'},
	}
})

minetest.register_craft({
	output = 'darkage:chalk',
	recipe = {
	{'darkage:chalk_powder','darkage:chalk_powder',''},
	{'darkage:chalk_powder','darkage:chalk_powder',''},
	{'','',''},
	}
})

minetest.register_craft({
	output = 'darkage:reinforced_wood',
	recipe = {
	{'default:stick','','default:stick'},
	{'','default:wood',''},
	{'default:stick','','default:stick'},
	}
})

minetest.register_craft({
	output = 'default:wood',
	recipe = {
	{'darkage:reinforced_wood'},
	}
})

minetest.register_craft({
	output = 'darkage:reinforced_wood_left',
	recipe = {
	{'default:stick','',''},
	{'','default:wood',''},
	{'','','default:stick'},
	}
})

minetest.register_craft({
	output = 'default:wood',
	recipe = {
	{'darkage:reinforced_wood_left'},
	}
})

minetest.register_craft({
	output = 'darkage:reinforced_wood_right',
	recipe = {
	{'','','default:stick'},
	{'','default:wood',''},
	{'default:stick','',''},
	}
})

minetest.register_craft({
	output = 'default:wood',
	recipe = {
	{'darkage:reinforced_wood_right'},
	}
})

minetest.register_craft({
	output = 'darkage:glow_glass 1',
	recipe = {
		{'darkage:glass', '', ''},
		{'default:torch', '', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'darkage:glass 1',
	recipe = {
		{'darkage:glow_glass'},
	}
})


minetest.register_craft({
	output = 'darkage:glass 8',
	recipe = {
		{'default:glass', 'default:steel_ingot', 'default:glass'},
		{'default:steel_ingot', 'default:glass', 'default:steel_ingot'},
		{'default:glass', 'default:steel_ingot', 'default:glass'},
	}
})
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
	{'darkage:iron_stick'},
	{'darkage:iron_stick'},	
	{'darkage:iron_stick'},	
	}
})

minetest.register_craft({
	output = 'darkage:iron_bars 2',
	recipe = {
	{'darkage:iron_stick','','darkage:iron_stick'},
	{'darkage:iron_stick','','darkage:iron_stick'},	
	{'darkage:iron_stick','','darkage:iron_stick'},	
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

minetest.register_craft({
	output = 'darkage:lamp',
	recipe = {
	{'default:stick','','default:stick'},
	{'','default:torch',''},
	{'default:stick','','default:stick'},
	}
})

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
	output = 'darkage:wood_shelves',
	recipe = {
	{'darkage:box'},
	{'darkage:box'},
	}
})

minetest.register_craft({
	output = 'darkage:wood_frame',
	recipe = {
	{'default:stick','','default:stick'},
	{'','default:glass',''},
	{'default:stick','','default:stick'},
	}
})

-- Cookings
minetest.register_craft({
	type = "cooking",
	output = "default:glass",
	recipe = "darkage:wood_frame",
})

minetest.register_craft({
	output = 'darkage:adobe 4',
	recipe = {
	{'default:sand','default:sand'},
		{'default:clay_lump','darkage:straw'},
	}
})


minetest.register_craft({
	output = 'darkage:basalt_cobble 4',
	recipe = {
	{'default:cobble','default:cobble'},
		{'default:coal_lump','default:coal_lump'},
	}
})

minetest.register_craft({
	output = 'darkage:cobble_with_plaster 2',
	recipe = {
	{'default:cobble','darkage:chalk_powder'},
		{'default:cobble','darkage:chalk_powder'},
	}
})

minetest.register_craft({
	output = 'darkage:chalk 2',
	recipe = {
	{'darkage:chalk_powder','darkage:chalk_powder'},
	{'darkage:chalk_powder','darkage:chalk_powder'},
	}
})

minetest.register_craft({
	output = 'darkage:cobble_with_plaster 2',
	recipe = {
	{'darkage:chalk_powder','default:cobble'},
		{'darkage:chalk_powder','default:cobble'},
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

minetest.register_craft({
	output = 'darkage:ors 4',
	recipe = {
	{'default:sandstone','default:sandstone'},
		{'default:iron_lump','default:sandstone'},
	}
})

minetest.register_craft({
	output = 'darkage:silt 3',
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
	output = 'darkage:slate_tile 2',
	recipe = {
	{'darkage:slate_cobble','darkage:slate_cobble'},
		{'darkage:slate_cobble','darkage:slate_cobble'},
	}
})

minetest.register_craft({
	output = 'darkage:stone_brick 9',--changed bacause conflicts with moreblocks
	recipe = {
	{'default:cobble','default:cobble','default:cobble'},--changed bacause conflicts with moreblocks
	{'default:cobble','default:cobble','default:cobble'},--changed bacause conflicts with moreblocks
	{'default:cobble','default:cobble','default:cobble'},--changed bacause conflicts with moreblocks
	}
})

minetest.register_craft({
	output = 'darkage:straw 2',
	recipe = {
	{'default:dry_shrub','default:dry_shrub'},
		{'default:dry_shrub','default:dry_shrub'},
	}
})

minetest.register_craft({
	output = 'darkage:straw 2',
	recipe = {
	{'darkage:dry_leaves','darkage:dry_leaves'},
		{'darkage:dry_leaves','darkage:dry_leaves'},
	}
})

if minetest.get_modpath("farming") then
--only if farming installed
minetest.register_craft({
	output = 'darkage:straw 4',
	recipe = {
	{'farming:wheat_harvested','farming:wheat_harvested'},
	{'farming:wheat_harvested','farming:wheat_harvested'},
	}
})
else
--nothing else
end

minetest.register_craft({
	output = 'darkage:straw_bale',
	recipe = {
	{'darkage:straw','darkage:straw'},
	{'darkage:straw','darkage:straw'},
	}
})

minetest.register_craft({
	output = 'darkage:iron_stick 4',
	recipe = {
	{'default:steel_ingot'},
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
	output = "darkage:dry_leaves",
	recipe = "default:leaves",
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

minetest.register_craft({
	type = "cooking",
	output = "darkage:slate",
	recipe = "darkage:slate_cobble",
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
