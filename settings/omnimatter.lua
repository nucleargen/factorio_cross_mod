if mods[fcm_defines.mods_names.omnimatter] and mods[fcm_defines.mods_names.portal_research] then
data:extend({
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.factorium_ore_omnitraction_tier,
	type = "int-setting",
	default_value = fcm_defines.defaults.factorium_ore.omnitraction_tier,
	minimum_value = 1,
	maximum_value = 3,
	order = "om+ps-foot"
},
{
	setting_type = "runtime-global",
	name = fcm_defines.keys.names.settings.only_omnite,
	type = "bool-setting",
	default_value = true,
	order = "om+ps-oo"
},
{
	setting_type = "runtime-global",
	name = fcm_defines.keys.names.settings.omnite_weight,
	type = "int-setting",
	default_value = fcm_defines.defaults.offworld_omnite.weight,
	minimum_value = 1,
	order = "om+ps-oow"
}
})
end