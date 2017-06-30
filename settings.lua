require("defines")

if mods[fcm_defines.mods_names.portal_research] then
data:extend({
	{
		setting_type = "startup",
		name = fcm_defines.keys.names.settings.factorium_ore_graphics,
		type = "bool-setting",
		default_value = true,
		order = "a-a"
	},
	{
		setting_type = "runtime-global",
		name = fcm_defines.keys.names.settings.offworld_factorium_ore,
		type = "bool-setting",
		default_value = false,
		order = "a-c"
	}
})
end

if mods[fcm_defines.mods_names.omnimatter] and mods[fcm_defines.mods_names.portal_research] then
data:extend({
	{
		setting_type = "startup",
		name = fcm_defines.keys.names.settings.factorium_ore_omnitraction_tier,
		type = "int-setting",
		default_value = fcm_defines.defaults.factorium_ore.omnitraction_tier,
		minimum_value = 1,
		maximum_value = 3,
		order = "a-b"
	},
	{
		setting_type = "runtime-global",
		name = fcm_defines.keys.names.settings.only_omnite,
		type = "bool-setting",
		default_value = true,
		order = "a-a"
	},
	{
		setting_type = "runtime-global",
		name = fcm_defines.keys.names.settings.omnite_weight,
		type = "int-setting",
		default_value = fcm_defines.defaults.offworld_omnite.weight,
		minimum_value = 1,
		order = "a-b"
	}
})
end


if mods[fcm_defines.mods_names.omnimatter] and mods[fcm_defines.mods_names.strange_matter] then
data:extend({
	{
		setting_type = "startup",
		name = fcm_defines.keys.names.settings.strange_matter_only_omnite,
		type = "bool-setting",
		default_value = false,
		order = "a-c"
	}
})
end