if mods[fcm_defines.mods_names.strange_matter] then

if mods[fcm_defines.mods_names.omnimatter] then

-- add omnite synthesis tech
data:extend({
	{
		type = "technology",
		name = "omnite-synthesis",
		prerequisites = {"quantum-chromodynamics"},
		icon = fcm_defines.mod_directory .. "/graphics/technology/omnite-synthesis.png",
		icon_size = 64,
		unit = 
		{
			count = 800,
			-- count = 1,
			ingredients = 
			{
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 2},
				{"high-tech-science-pack", 1}
			},
			time = 45
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "omnite-synthesis"
			}
		},
		order = "e-g-a-a"
	}
})
tech_add_prerequisite("oil-synthesis","omnite-synthesis")
tech_add_prerequisite("wood-synthesis","omnite-synthesis")

end

-- add some other techs if possible
if mods[fcm_defines.mods_names.strange_matter] and mods[fcm_defines.mods_names.omnimatter] and not settings.startup[fcm_defines.keys.names.settings.strange_matter_only_omnite].value then
data:extend({
	{
		type = "technology",
		name = "omnic-acid-synthesis",
		prerequisites = {"omnite-synthesis"},
		icon = fcm_defines.mod_directory .. "/graphics/technology/omnic-acid-synthesis.png",
		icon_size = 64,
		unit = 
		{
			count = 1000,
			-- count = 1,
			ingredients = 
			{
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 2},
				{"high-tech-science-pack", 1}
			},
			time = 45
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "omnic-acid-synthesis"
			}
		},
		order = "e-g-a-b"
	}
})
end

end