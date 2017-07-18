if mods[fcm_defines.mods_names.omnimatter] and mods[fcm_defines.mods_names.strange_matter] then
data:extend({
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.strange_matter_only_omnite,
	type = "bool-setting",
	default_value = false,
	order = "om+sm-smoo"
}
})
end