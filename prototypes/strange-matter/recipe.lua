if mods[fcm_defines.mods_names.strange_matter] then

if mods[fcm_defines.mods_names.omnimatter] then
-- add omnite recipe
data:extend({
	{
		type = "recipe",
		name = "omnite-synthesis",
		energy_required = 1,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients =
		{
			{type="fluid", name="strange-matter", amount=.5}
		},
		result = "omnite",
		subgroup = "synthesis",
		order = "a-a"
	}
})

-- add some other recipes if possible
if not settings.startup[fcm_defines.keys.names.settings.strange_matter_only_omnite].value then
data:extend({
	{
		type = "recipe",
		name = "omnic-acid-synthesis",
		energy_required = 1,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="fluid", name="strange-matter", amount=.5}
		},
		results=
		{
			{type="fluid", name="omnic-acid", amount=10}
		},
		subgroup = "synthesis",
		order = "a-b"
	}
})
end
end

end