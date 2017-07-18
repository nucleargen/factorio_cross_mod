if mods[fcm_defines.mods_names.big_brother] then
data:extend({
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.big_brother_tweaks,
	type = "bool-setting",
	default_value = true,
	order = "bb-at"
},
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.big_brother_base_time,
	type = "double-setting",
	minimum_value = 10,
	maximum_value = 300,
	default_value = 33.3, -- vanilla radar scan time
	order = "bb-bt"
},
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.big_brother_exponent,
	type = "double-setting",
	minimum_value = -0.5,
	maximum_value = 0,
	default_value = -0.232,
	order = "bb-exp"
}
})
end