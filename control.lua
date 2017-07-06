require("defines")
require("functions")

fcm_debug = settings.startup[fcm_defines.keys.names.settings.debug_mode].value
if not fcm_registry then fcm_registry = {} end 
if not fcm_registry.events then fcm_registry.events = {} end
if not fcm_registry.events.on_chunk_generated then fcm_registry.events.on_chunk_generated = {} end

require("interfaces/mountains/control")
require("interfaces/toxic-jungle/control")

script.on_init(function()
	offworld_resources_setup()

	--nauvis registered by default by hardcode. may be unregistered by remove call
	--remote.call("fcm_jungle","register_surface","nauvis")
	--remote.call("fcm_mountains","register_surface","nauvis")
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function()
	offworld_resources_setup()
end)

script.on_event(defines.events.on_chunk_generated, function(event)
	if fcm_debug then log("Count registered on chunk generated handlers: " .. #fcm_registry.events.on_chunk_generated) end
	for _,fn in pairs(fcm_registry.events.on_chunk_generated) do
		fn(event)
	end
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
		if not game.active_mods[fcm_defines.mods_names.omnimatter] or not settings.global[fcm_defines.keys.names.settings.only_omnite].value then
			if settings.global[fcm_defines.keys.names.settings.offworld_factorium_ore].value then
				remote.call(
					fcm_defines.mods_interfaces.portal_research, 
					"add_offworld_resource",
					fcm_defines.defaults.factorium_ore.name,
					fcm_defines.defaults.factorium_ore.weight,
					fcm_defines.defaults.factorium_ore.richness
				)
			end
		end
	end

end