data:extend({
{
    type = "simple-entity",
    name = "small-minable-rock",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/rock-big-icon.png",
	icon_size = 32,
    subgroup = "grass",
    order = "b[decorative]-k[rock-huge]-b[small]",
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {
		mining_particle = "stone-particle",
		mining_time = 1,
		result = "stone",
		count = 5
    },
    loot = {
		{item = "stone", probability = 1, count_min = 1, count_max = 5}
    },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    render_layer = "decorative",
    max_health = 25,
    resistances = {
		{
		  type = "fire",
		  percent = 100
		}
    },
    pictures = {
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-01.png",
			width = 47,
			height = 37,
			shift = {0.21, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-02.png",
			width = 46,
			height = 38,
			shift = {0.25, -0.1}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-03.png",
			width = 48,
			height = 42,
			shift = {0.28, -0.21}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-04.png",
			width = 56,
			height = 39,
			shift = {0.28, -0.12}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-05.png",
			width = 54,
			height = 36,
			shift = {0.34, -0.125}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-06.png",
			width = 32,
			height = 26,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-07.png",
			width = 33,
			height = 28,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-08.png",
			width = 35,
			height = 26,
			shift = {0.15, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-09.png",
			width = 35,
			height = 23,
			shift = {0.125, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-10.png",
			width = 21,
			height = 21,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-11.png",
			width = 24,
			height = 16,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-12.png",
			width = 19,
			height = 17,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-13.png",
			width = 23,
			height = 15,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-14.png",
			width = 44,
			height = 42,
			shift = {0.28, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-15.png",
			width = 51,
			height = 41,
			shift = {0.31, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/rock-small/rock-small-16.png",
			width = 55,
			height = 40,
			shift = {0.25, -0.18}
		}
    }
},
{
    type = "simple-entity",
    name = "mountain",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/rock-huge-icon.png",
	icon_size = 32,
    subgroup = "grass",
    order = "b[decorative]-k[rock-huge]-a[big]",
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.3, -1.3}, {1.3, 1.3}},
    minable = {
		mining_particle = "stone-particle",
		mining_time = 8,
		result = "stone",
		count = 20
    },
    loot = {
		{item = "stone", probability = 1, count_min = 5, count_max = 10}
    },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    render_layer = "object",
    max_health = 200,
    resistances = {
		{
		  type = "fire",
		  percent = 100
		}
    },
    pictures = {
		{
			filename = "__base__/graphics/decorative/rock-huge/rock-huge-05.png",
			width = 76,
			height = 60,
			shift = {0.1, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-huge/rock-huge-06.png",
			width = 83,
			height = 86,
			shift = {0.2, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-huge/rock-huge-07.png",
			width = 126,
			height = 98,
			shift = {0.7, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-huge/rock-huge-08.png",
			width = 92,
			height = 108,
			shift = {0.1, 0}
		},
		{
			filename = "__base__/graphics/decorative/rock-huge/rock-huge-09.png",
			width = 140,
			height = 99,
			shift = {0.5, 0}
		}
    }
},
})
if mods[fcm_defines.mods_names.omnimatter] then
	data.raw["simple-entity"]["small-minable-rock"].minable.result = "omnite"
	data.raw["simple-entity"]["mountain"].minable.result = "omnite"
end