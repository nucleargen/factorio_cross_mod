if settings.startup[fcm_defines.keys.names.settings.simple_science_enabled].value then
data:extend({
	{
		type = "technology",
		name = "green-science-pack",
		prerequisites = {"automation-2"},
		icon = "__base__/graphics/icons/science-pack-2.png",
		icon_size = 32,
		unit = 
		{
			count = 10,
			ingredients = 
			{
				{"science-pack-1", 1}
			},
			time = 20
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-pack-2"
			}
		},
		order = "s-s-1"
	},
	{
		type = "technology",
		name = "grey-science-pack",
		prerequisites = {"military-2","turrets","green-science-pack"},
		icon = "__base__/graphics/icons/military-science-pack.png",
		icon_size = 32,
		unit = 
		{
			count = 10,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 20
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "military-science-pack"
			}
		},
		order = "s-s-2"
	},
	{
		type = "technology",
		name = "blue-science-pack",
		prerequisites = {"advanced-electronics","engine","green-science-pack"},
		icon = "__base__/graphics/icons/science-pack-3.png",
		icon_size = 32,
		unit = 
		{
			count = 10,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 20
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-pack-3"
			}
		},
		order = "s-s-3"
	},
	{
		type = "technology",
		name = "purple-science-pack",
		prerequisites = {"advanced-material-processing-2","electric-engine","green-science-pack","blue-science-pack"},
		icon = "__base__/graphics/icons/production-science-pack.png",
		icon_size = 32,
		unit = 
		{
			count = 10,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 20
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "production-science-pack"
			}
		},
		order = "s-s-4"
	},
	{
		type = "technology",
		name = "yellow-science-pack",
		prerequisites = {"advanced-electronics-2","battery","speed-module","green-science-pack","blue-science-pack"},
		icon = "__base__/graphics/icons/high-tech-science-pack.png",
		icon_size = 32,
		unit = 
		{
			count = 10,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 20
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "high-tech-science-pack"
			}
		},
		order = "s-s-5"
	}
})
end