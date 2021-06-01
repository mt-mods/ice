
-- Ice Brick

minetest.register_node("ice:brick", {
	description = "Ice Brick",
	tiles = {
		"ice_brick_tb.png",
		"ice_brick_tb.png",
		"ice_brick_sides.png"
	},
	is_ground_content = false,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 3, cools_lava = 1, slippery = 3},
	sounds = default.node_sound_ice_defaults(),
})

minetest.register_craft{
	output = "ice:brick",
	recipe = {
		{"default:ice", "default:ice"},
		{"default:ice", "default:ice"}
	}
}


-- Ice Brick Wall

walls.register(
	"ice:wall",
	"Ice Brick Wall",
	"ice_brick_sides.png",
	"ice:brick",
	default.node_sound_ice_defaults()
)

-- Fix groups (ice is not stone)
minetest.override_item("ice:wall", {
	groups = {cracky = 3, cools_lava = 1, slippery = 3, wall = 1}
})


-- Ice Door

doors.register("ice:door", {
	tiles = {"ice_door.png"},
	description = "Ice Door",
	inventory_image = "ice_door_inv.png",
	groups = {cracky = 3, cools_lava = 1, slippery = 3},
	sounds = default.node_sound_ice_defaults(),
	sound_open = "doors_glass_door_open",
	sound_close = "doors_glass_door_close",
	recipe = {
		{"default:ice", "default:ice"},
		{"default:ice", "default:ice"},
		{"default:ice", "default:ice"},
	}
})
