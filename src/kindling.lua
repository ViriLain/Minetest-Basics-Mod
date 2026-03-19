-- Kindling: dry grass and wheat blocks as fuel

local S = core.get_translator("basics")

-- Blocks

core.register_node("basics:wheat_block", {
	description = S("Wheat Block"),
	tiles = {"default_dry_grass.png"},
	groups = {cracky = 3, oddly_breakable_by_hand = 2},
	is_ground_content = false,
	sounds = default.node_sound_leaves_defaults(),
})

-- Cooking recipes

core.register_craft({
	type = "cooking",
	output = "default:dry_grass_1",
	recipe = "default:grass_1",
	cooktime = 3,
})

-- Fuel recipes

core.register_craft({
	type = "fuel",
	recipe = "basics:wheat_block",
	burntime = 40,
})

-- Crafting recipes

core.register_craft({
	output = "basics:wheat_block",
	recipe = {
		{"default:dry_grass_5", "default:dry_grass_5", "default:dry_grass_5"},
		{"default:dry_grass_5", "default:dry_grass_5", "default:dry_grass_5"},
		{"default:dry_grass_5", "default:dry_grass_5", "default:dry_grass_5"},
	},
})

core.register_craft({
	type = "shapeless",
	output = "default:dry_grass_5 9",
	recipe = {"basics:wheat_block"},
})
