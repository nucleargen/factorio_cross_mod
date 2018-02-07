if settings.startup[fcm_defines.keys.names.settings.simple_science_enabled].value then
-- remove science pack from vanilla techs

data.raw.recipe["science-pack-2"].enabled = false
for key, effect in pairs(data.raw.technology["advanced-electronics"].effects) do
	if effect.recipe and effect.recipe == "science-pack-3" then
		table.remove(data.raw.technology["advanced-electronics"].effects,key)
	end
end
for key, effect in pairs(data.raw.technology["military-2"].effects) do
	if effect.recipe and effect.recipe == "military-science-pack" then
		table.remove(data.raw.technology["military-2"].effects,key)
	end
end
for key, effect in pairs(data.raw.technology["advanced-material-processing-2"].effects) do
	if effect.recipe and effect.recipe == "production-science-pack" then
		table.remove(data.raw.technology["advanced-material-processing-2"].effects,key)
	end
end
for key, effect in pairs(data.raw.technology["advanced-electronics-2"].effects) do
	if effect.recipe and effect.recipe == "high-tech-science-pack" then
		table.remove(data.raw.technology["advanced-electronics-2"].effects,key)
	end
end

end