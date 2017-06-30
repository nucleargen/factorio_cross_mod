require("defines")

script.on_init(function()
	offworld_resources_setup()
end)

--script.on_event(defines.events.on_configuration_changed, function()
--	offworld_resources_setup()
--end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function()
	offworld_resources_setup()
end)

function offworld_resources_setup()

	if game.active_mods[fcm_defines.mods_names.omnimatter] and game.active_mods[fcm_defines.mods_names.portal_research] then

		remote.call(fcm_defines.mods_interfaces.portal_research, "clear_offworld_resources")
		if not settings.global[fcm_defines.keys.names.settings.only_omnite].value then
			remote.call(fcm_defines.mods_interfaces.portal_research, "clear_offworld_resources")
			for _, resource in pairs(fcm_defines.defaults.default_offworld_resources) do
				remote.call(
					fcm_defines.mods_interfaces.portal_research, 
					"add_offworld_resource",
					resource.name,
					resource.weight,
					resource.richness
				)
			end
		end

		local omnite_weight = settings.global[fcm_defines.keys.names.settings.omnite_weight].value
		if not omnite_weight then
			omnite_weight = fcm_defines.defaults.offworld_omnite.weight
		end
		remote.call(
			fcm_defines.mods_interfaces.portal_research, 
			"add_offworld_resource",
			fcm_defines.defaults.offworld_omnite.name,
			omnite_weight,
			fcm_defines.defaults.offworld_omnite.richness
		)

	end

	if game.active_mods[fcm_defines.mods_names.portal_research] then
		if not settings.global[fcm_defines.keys.names.settings.only_omnite].value then
			if settings.global[fcm_defines.keys.names.settings.offworld_factorium_ore].value then
				remote.call(
					fcm_defines.mods_interfaces.portal_research, 
					"add_offworld_resource",
					fcm_defines.defaults.offworld_factorium_ore.name,
					fcm_defines.defaults.offworld_factorium_ore.weight,
					fcm_defines.defaults.offworld_factorium_ore.richness
				)
			end
		end
	end

end