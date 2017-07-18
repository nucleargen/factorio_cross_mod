data:extend({
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
}
})