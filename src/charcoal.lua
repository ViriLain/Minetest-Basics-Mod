-- Charcoal: craft charcoal from saplings, charcoal blocks from trees

local S = core.get_translator("basics")

-- Items

core.register_craftitem("basics:charcoal", {
	description = S("Charcoal"),
	inventory_image = "default_coal_lump.png",
})

-- Blocks

core.register_node("basics:charcoal_block", {
	description = S("Charcoal Block"),
	tiles = {"default_coal_block.png"},
	groups = {cracky = 3, oddly_breakable_by_hand = 2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})

-- Cooking recipes

core.register_craft({
	type = "cooking",
	output = "basics:charcoal",
	recipe = "group:sapling",
	cooktime = 5,
})

core.register_craft({
	type = "cooking",
	output = "basics:charcoal_block",
	recipe = "group:tree",
	cooktime = 15,
})

-- Fuel recipes

core.register_craft({
	type = "fuel",
	recipe = "basics:charcoal",
	burntime = 40,
})

core.register_craft({
	type = "fuel",
	recipe = "basics:charcoal_block",
	burntime = 600,
})

-- Crafting recipes

core.register_craft({
	output = "default:torch 4",
	recipe = {
		{"basics:charcoal"},
		{"default:stick"},
	},
})

core.register_craft({
	output = "basics:charcoal_block",
	recipe = {
		{"basics:charcoal", "basics:charcoal", "basics:charcoal"},
		{"basics:charcoal", "basics:charcoal", "basics:charcoal"},
		{"basics:charcoal", "basics:charcoal", "basics:charcoal"},
	},
})

core.register_craft({
	type = "shapeless",
	output = "basics:charcoal 9",
	recipe = {"basics:charcoal_block"},
})
