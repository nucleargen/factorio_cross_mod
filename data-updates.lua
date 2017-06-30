require("defines")

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