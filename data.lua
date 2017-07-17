require("defines")
require("functions")
fcm_debug = settings.startup[fcm_defines.keys.names.settings.debug_mode].value

require("prototypes/geothermal/entity")

require("prototypes/mountains/entity")

require("prototypes/portal-research/item")
require("prototypes/portal-research/recipe")
require("prototypes/portal-research/technology")
require("prototypes/portal-research/resource")

require("prototypes/strange-matter/recipe")
require("prototypes/strange-matter/technology")

if not fcm_registry then fcm_registry = {} end 

if mods[fcm_defines.mods_names.omnimatter] and mods[fcm_defines.mods_names.portal_research] then
	local factorium_ore_omnitraction_tier = settings.startup[fcm_defines.keys.names.settings.factorium_ore_omnitraction_tier].value
	if not factorium_ore_omnitraction_tier then 
		factorium_ore_omnitraction_tier = fcm_defines.defaults.factorium_ore.omnitraction_tier
	end

	omni.add_resource(
		data.raw.item["factorium-ore"],
		factorium_ore_omnitraction_tier,
		nil,
		fcm_defines.mod_name
	)
end