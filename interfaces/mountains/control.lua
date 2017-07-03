-- mountains object
local Mountains = {}

Mountains.allowed_surfaces = {}

Mountains.generate = function(event)
	local surface = event.surface
	local allowed = false

	if settings.global[fcm_defines.keys.names.settings.mountains_enabled].value then
		for _,s in pairs(Mountains.allowed_surfaces) do
			if surface.name == s then
				allowed = true
				break
			end
		end
	end

	if not allowed then 
		return
	end

	local counter = 0
	for key, entity in pairs(event.surface.find_entities(event.area)) do
		if entity.valid then
			if entity.type == "resource" then
				if entity.prototype.resource_category == "basic-solid" then
					if counter % settings.global[fcm_defines.keys.names.settings.mountains_density].value == 0 then
						local position = { x = entity.position.x, y = entity.position.y }
						event.surface.create_entity({
							name = "mountain",
							position = position
						})

						Mountains.place_small_stone(event.surface, entity.position)
					end

					counter = counter + 1
				end
			end
		end
	end
end

Mountains.place_small_stone = function(surface, position)
	for i=1, math.random(1, settings.global[fcm_defines.keys.names.settings.mountains_max_stone_particles].value), 1 do
		surface.create_entity({
			name = "small-minable-rock",
			position = { x = position.x + Mountains.get_random_offset(3), y = position.y + Mountains.get_random_offset(3) }
		})
	end
end

Mountains.get_random_offset = function(extraOffset)
	local signModifier = nil
	if math.random(0, 1) > 0 then
		signModifier = 1
	else
		signModifier = -1
	end

	randomOffset = (Mountains.round_decimal(math.random(), 1) + extraOffset) * signModifier

	return randomOffset
end

Mountains.round_decimal = function(num, idp)
	local mult = 10^(idp or 0)
	return math.floor(num * mult + 0.5) / mult
end


Mountains.register_surface = function(surface_name)
	if surface_name then
		Mountains.allowed_surfaces[#Mountains.allowed_surfaces+1] = surface_name
		log("Added mountains surface: "..surface_name)
	end
end

Mountains.unregister_surface = function(surface_name)
	if surface_name then
		for i,s in ipairs(Mountains.allowed_surfaces) do
			if surface_name == s then
				table.remove(Mountains.allowed_surfaces,i)
				log("Removed mountains surface: "..surface_name)
			end
		end
	end
end

script.on_event(defines.events.on_chunk_generated, Mountains.generate)

remote.add_interface("fcm_mountains",{
	register_surface = Mountains.register_surface,
	unregister_surface = Mountains.unregister_surface
})