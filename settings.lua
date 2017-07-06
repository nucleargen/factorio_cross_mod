require("defines")

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

data:extend({
{
	setting_type	=	"startup",
	name			=	fcm_defines.keys.names.settings.debug_mode,
	type			=	"bool-setting",
	default_value	=	false,
	order			=	"1"
},
{
	setting_type	=	"runtime-global",
	name			=	fcm_defines.keys.names.settings.jungle_enabled,
	type			=	"bool-setting",
	default_value	=	false,
	order			=	"tj-a"
},
{
	setting_type	=	"runtime-global",
	name			=	fcm_defines.keys.names.settings.jungle_density,
	type			=	"double-setting",
	default_value	=	0.6,
	minimum_value	=	0,
	maximum_value	=	1,
	order			=	"tj-b"
},
{
	setting_type	=	"runtime-global",
	name			=	fcm_defines.keys.names.settings.mountains_enabled,
	type			=	"bool-setting",
	default_value	=	false,
	order			=	"mt-a"
},
{
	setting_type	=	"runtime-global",
	name			=	fcm_defines.keys.names.settings.mountains_max_stone_particles,
	type			=	"int-setting",
	default_value	=	6,
	minimum_value	=	1,
	maximum_value	=	10,
	order			=	"mt-b"
},
{
	setting_type	=	"runtime-global",
	name			=	fcm_defines.keys.names.settings.mountains_density,
	type			=	"int-setting",
	default_value	=	1,
	minimum_value	=	1,
	maximum_value	=	16,
	order			=	"mt-c"
}
})