if mods[fcm_defines.mods_names.portal_research] then
data:extend({
--{
--	setting_type = "startup",
--	name = fcm_defines.keys.names.settings.factorium_ore_graphics,
--	type = "bool-setting",
--	default_value = true,
--	order = "ps-fog"
--},
{
	setting_type = "runtime-global",
	name = fcm_defines.keys.names.settings.offworld_factorium_ore,
	type = "bool-setting",
	default_value = false,
	order = "ps-ofo"
}
})
end