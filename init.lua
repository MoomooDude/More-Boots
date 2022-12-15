-- Speed Boots
	armor:register_armor("speed_boots:boots_speed", {
		description = "Boots of Swiftness",
		inventory_image = "speed_boots_inv.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=1000, physics_speed=1.25, physics_jump=0.3},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_speed",
		recipe = {
			{"", "", ""},
			{"speed_boots:silk", "", "speed_boots:silk"},
			{"default:gold_ingot", "", "default:gold_ingot"}
		}
	})
	
-- Silk
	minetest.register_craftitem("speed_boots:silk", {
		description = "Silk",
		inventory_image = "speed_boots_silk.png"
	})
	
	minetest.register_craft({
		output = "speed_boots:silk",
		recipe = {
			{"farming:string", "farming:string"},
			{"farming:string", "farming:string"}
		}
	})
	minetest.register_craftitem("speed_boots:silk", {
		description = "Silk",
		inventory_image = "speed_boots_silk.png"
	})
-- Ultra Boots
	armor:register_armor("speed_boots:boots_ultra", {
		description = "Boots of Ultra Swiftness",
		inventory_image = "ultra_boots_inv.png",
		groups = {armor_feet=1, armor_heal=100, armor_use=1000, physics_speed=10, physics_jump=0.7},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_ultra",
		recipe = {
			{"", "", ""},
			{"speed_boots:silk", "", "speed_boots:silk"},
			{"default:diamondblock", "", "default:diamondblock"}
		}
	})
-- Rocket Boots
	armor:register_armor("speed_boots:boots_rocket", {
		description = "Rocket Boots",
		inventory_image = "rocket_boots_inv.png",
		groups = {armor_feet=1, armor_heal=25, armor_use=1000, physics_speed=0.1, physics_jump=10},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_rocket",
		recipe = {
			{"speed_boots:rocket_booster", "3d_armor:boots_steel", "speed_boots:rocket_booster"},
		}
	})
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_rocket",
		recipe = {
			{"default:steel_ingot", "", "default:steel_ingot"},
			{"default:steel_ingot", "", "default:steel_ingot"},
			{"speed_boots:rocket_booster", "", "speed_boots:rocket_booster"}
		}
	})
-- Slow Boots
	armor:register_armor("speed_boots:boots_slow", {
		description = "Slow Boots",
		inventory_image = "slow_boots_inv.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=1000, physics_speed=-0.5, physics_jump=0.1},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_slow",
		recipe = {
			{"", "", ""},
			{"speed_boots:silk", "", "speed_boots:silk"},
			{"default:coalblock", "", "default:coalblock"}
		}
	})
-- Bouncy Boots Level 1
	armor:register_armor("speed_boots:boots_bouncy", {
		description = "Bouncy Boots Level 1",
		inventory_image = "bouncy_boots_inv.png",
		groups = {armor_feet=1, armor_heal=8, armor_use=1000, physics_speed=0.1, physics_jump=1.2},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_bouncy",
		recipe = {
			{"speed_boots:spring", "", "speed_boots:spring"},
			{"speed_boots:silk", "", "speed_boots:silk"},
			{"wool:red", "", "wool:red"}
		}
	})
-- Bouncy Boots Level 2
	armor:register_armor("speed_boots:boots_bouncy_2", {
		description = "Bouncy Boots Level 2",
		inventory_image = "bouncy_boots_2_inv.png",
		groups = {armor_feet=1, armor_heal=8, armor_use=1000, physics_speed=0.1, physics_jump=2.2},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	})
	
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:boots_bouncy_2",
		recipe = {
			{"", "speed_boots:spring", ""},
			{"", "speed_boots:boots_bouncy", ""},
			{"", "wool:green", ""}
		}
	})
-- Spring
	minetest.register_craftitem("speed_boots:spring", {
		description = "Spring",
		inventory_image = "speed_boots_spring.png"
	})
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:spring",
		recipe = {
			{"", "default:steel_ingot", ""},
			{"", "farming:string", ""},
			{"", "default:steel_ingot", ""}
		}
	})
	
	-- Rocket Booster
	minetest.register_craftitem("speed_boots:rocket_booster", {
		description = "Rocket Booster",
		inventory_image = "speed_boots_rocket_booster.png"
	})
	minetest.register_craft({
		type = "shaped",
		output = "speed_boots:rocket_booster",
		recipe = {
			{"", "default:steel_ingot", ""},
			{"", "speed_boots:spring", ""},
			{"default:steel_ingot", "default:flint", "default:steel_ingot"}
		}
	})
	-- Bonus Rocket Hammer
	minetest.register_craft({
    output = "speed_boots:rocket_hammer",
    recipe = {
        {"default:steel_ingot", "speed_boots:rocket_booster", ""},
        {"", "default:stick", ""},
        {"", "default:stick", ""},
    }
})

minetest.register_tool("speed_boots:rocket_hammer", {
    description = "Rocket Hammer",
    inventory_image = "speed_boots_rocket_hammer.png",
    range = 8,
    groups = {not_in_creative_inventory=1},
    tool_capabilities = {
        full_punch_interval = 0.5,
        damage_groups = {fleshy=250},
        uses = 100,
        maxlevel = 3,
        max_drop_level = 1,
    },
    sound = {breaks = "default_tool_breaks", gain = 2.0},
})

