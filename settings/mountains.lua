data:extend({
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