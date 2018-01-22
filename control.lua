require("defines")
require("functions")

fcm_debug = settings.startup[fcm_defines.keys.names.settings.debug_mode].value
fcm_registry = fcm_registry or {}
fcm_registry.events = fcm_registry.events or {}
fcm_registry.events.on_chunk_generated = fcm_registry.events.on_chunk_generated or {}
fcm_registry.ticks = fcm_registry.ticks or {}
fcm_registry.ticks.chunk_generated = fcm_registry.ticks.chunk_generated or {}

require("interfaces/mountains/control")
require("interfaces/toxic-jungle/control")

function init()
	if game then

		--nauvis registered by default by hardcode. may be unregistered by remove call
		--remote.call("fcm_jungle","register_surface","nauvis")
		--remote.call("fcm_mountains","register_surface","nauvis")
	end
end

script.on_init(init)
script.on_load(init)

script.on_event(defines.events.on_runtime_mod_setting_changed, function()
end)

script.on_event(defines.events.on_chunk_generated, function(event)
	fcm_registry.ticks.chunk_generated[#fcm_registry.ticks.chunk_generated+1] = event
	--if fcm_debug then log("Event.on_chunk_generated: remaining chunk ticks: "..#fcm_registry.ticks.chunk_generated) end
end)

script.on_event(defines.events.on_tick,function(event)
	--if fcm_debug then log("Count registered on chunk generated handlers: " .. #fcm_registry.events.on_chunk_generated.."; current tick: "..event.tick..", modulo: "..(event.tick % fcm_defines.defaults.chunk_generation_tick_treshhold)) end
	
	if (event.tick % fcm_defines.defaults.chunk_generation_tick_treshhold) == 0 then
		for i,chunk_event in ipairs(fcm_registry.ticks.chunk_generated) do
			--if fcm_debug then log("Count registered on chunk generated handlers: " .. #fcm_registry.events.on_chunk_generated.."; chunk_event.tick: "..chunk_event.tick.."; check tick: "..(event.tick - fcm_defines.defaults.chunk_generation_tick_treshhold)) end
			if chunk_event.tick < (event.tick - fcm_defines.defaults.chunk_generation_tick_treshhold) then
				for _,fn in pairs(fcm_registry.events.on_chunk_generated) do
					fn(chunk_event)
				end
				table.remove(fcm_registry.ticks.chunk_generated,i)
				--if fcm_debug then log("remaining chunk ticks: "..#fcm_registry.ticks.chunk_generated) end
			end
		end
	end
end)