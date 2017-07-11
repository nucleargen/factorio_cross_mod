data:extend({
{
    type = "simple-entity",
    name = "small-minable-rock",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/small-stone-rock.png",
    subgroup = "grass",
    order = "b[decorative]-k[stone-rock]-b[small]",
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
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-01.png",
			width = 47,
			height = 37,
			shift = {0.21, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-02.png",
			width = 46,
			height = 38,
			shift = {0.25, -0.1}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-03.png",
			width = 48,
			height = 42,
			shift = {0.28, -0.21}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-04.png",
			width = 56,
			height = 39,
			shift = {0.28, -0.12}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-05.png",
			width = 54,
			height = 36,
			shift = {0.34, -0.125}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-06.png",
			width = 32,
			height = 26,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-07.png",
			width = 33,
			height = 28,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-08.png",
			width = 35,
			height = 26,
			shift = {0.15, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-09.png",
			width = 35,
			height = 23,
			shift = {0.125, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-10.png",
			width = 21,
			height = 21,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-11.png",
			width = 24,
			height = 16,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-12.png",
			width = 19,
			height = 17,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-13.png",
			width = 23,
			height = 15,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-14.png",
			width = 44,
			height = 42,
			shift = {0.28, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-15.png",
			width = 51,
			height = 41,
			shift = {0.31, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-16.png",
			width = 55,
			height = 40,
			shift = {0.25, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-17.png",
			width = 52,
			height = 44,
			shift = {0.37, -0.21}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-18.png",
			width = 57,
			height = 39,
			shift = {0.46, -0.15}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-19.png",
			width = 20,
			height = 23,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-20.png",
			width = 25,
			height = 22,
			shift = {0.0, -0.37}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-21.png",
			width = 31,
			height = 16,
			shift = {0.0, 0.25}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-22.png",
			width = 29,
			height = 16,
			shift = {0.25, -0.25}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-23.png",
			width   = 21,
			height = 20,
			shift = {-0.1, -0.18}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-24.png",
			width = 47,
			height = 29,
			shift = {0.25, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-25.png",
			width = 34,
			height = 33,
			shift = {0.0, -0.12}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-26.png",
			width = 38,
			height = 28,
			shift = {0.06, -0.25}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-27.png",
			width = 31,
			height = 26,
			shift = {0.0, 0}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-28.png",
			width = 45,
			height = 24,
			shift = {0.18, -0.09}
		},
		{
			filename = "__base__/graphics/decorative/small-stone-rock/small-stone-rock-29.png",
			width = 48,
			height = 26,
			shift = {0.21, -0.09}
		}
    }
},
{
    type = "simple-entity",
    name = "mountain",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/stone-rock.png",
    subgroup = "grass",
    order = "b[decorative]-k[stone-rock]-a[big]",
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
			filename = "__base__/graphics/decorative/stone-rock/stone-rock-01.png",
			width = 76,
			height = 60,
			shift = {0.1, 0}
		},
		{
			filename = "__base__/graphics/decorative/stone-rock/stone-rock-02.png",
			width = 83,
			height = 86,
			shift = {0.2, 0}
		},
		{
			filename = "__base__/graphics/decorative/stone-rock/stone-rock-03.png",
			width = 126,
			height = 98,
			shift = {0.7, 0}
		},
		{
			filename = "__base__/graphics/decorative/stone-rock/stone-rock-04.png",
			width = 92,
			height = 108,
			shift = {0.1, 0}
		},
		{
			filename = "__base__/graphics/decorative/stone-rock/stone-rock-05.png",
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