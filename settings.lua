require("defines")
require("settings/omnimatter")
require("settings/strange_matter")
require("settings/big_brother")
require("settings/toxic_jungle")
require("settings/mountains")
require("settings/geothermal")

data:extend({
{
	setting_type	=	"startup",
	name			=	fcm_defines.keys.names.settings.debug_mode,
	type			=	"bool-setting",
	default_value	=	false,
	order			=	"1"
}
})