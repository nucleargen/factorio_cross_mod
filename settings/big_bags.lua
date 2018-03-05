data:extend({
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.big_bags_enable,
	type = "bool-setting",
	default_value = false,
	order = "bb-e"
},
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.big_bags_stack_factor,
	type = "int-setting",
	default_value = 1,
	minimum_value	=	1,
	maximum_value	=	100,
	order = "bb-sf"
},
{
	setting_type = "startup",
	name = fcm_defines.keys.names.settings.big_bags_magazine_factor,
	type = "int-setting",
	default_value = 1,
	minimum_value	=	1,
	maximum_value	=	100,
	order = "bb-mf"
}
})