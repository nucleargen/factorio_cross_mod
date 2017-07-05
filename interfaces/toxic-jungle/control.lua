-- toxic jungle object
local Jungle = {}

-- list of tree entities
Jungle.allowed_trees = {
	--"dead-dry-hairy-tree",
	--"dead-grey-trunk",
	--"dead-tree",
	--"dry-hairy-tree",
	--"dry-tree",
	--"green-coral",
	"tree-01",
	"tree-02",
	"tree-02-red",
	"tree-03",
	"tree-04",
	"tree-05",
	"tree-06",
	"tree-06-brown",
	"tree-07",
	"tree-08",
	"tree-08-brown",
	"tree-08-red",
	"tree-09",
	"tree-09-brown",
	"tree-09-red"
}

-- list of surfaces allowed for jungles
Jungle.allowed_surfaces = {
	"nauvis"
}

Jungle.generate_trees = function(event)
	local surface = event.surface
	local allowed = false
	
	if settings.global[fcm_defines.keys.names.settings.jungle_enabled].value then
		for _,s in pairs(Jungle.allowed_surfaces) do
			if surface.name == s then
				allowed = true
				break
			end
		end
	end
	if fcm_debug then log("Jungle: generation on chunk ready: "..tostring(allowed).."; mountains enabled: "..tostring(settings.global[fcm_defines.keys.names.settings.mountains_enabled].value)) end
	if not allowed then 
		return
	end

	-- top left of the chunk
	local minx = event.area.left_top.x
	local miny = event.area.left_top.y

	-- bottom right of the chunk
	local maxx = event.area.right_bottom.x
	local maxy = event.area.right_bottom.y

	local density = settings.global[fcm_defines.keys.names.settings.jungle_density].value
	-- iterate left to right
	for x = minx, maxx do

		-- iterate up to down
		for y = miny, maxy do

			if math.random() < density then
				-- chose random tree type
				local tree_type = Jungle.allowed_trees[math.random(#Jungle.allowed_trees)]

				-- spawn tree
				local check_for_resources = surface.count_entities_filtered({type = "resource", position = {x,y}})
				--if fcm_debug then log("Jungle: tile have resources: "..check_for_resources) end
				if check_for_resources == 0 or not settings.global[fcm_defines.keys.names.settings.mountains_enabled].value then
					if fcm_debug then log("Jungle: Mountains disabled or tile is not resource") end
					if surface.can_place_entity{name = tree_type, position = {x, y}} then
						if fcm_debug then log("Jungle: can place_tree at "..x..","..y) end
						surface.create_entity{name = tree_type, position = {x, y}}
					end
				end
			end
		end
	end
end

Jungle.register_surface = function(surface_name)
	if surface_name then
		Jungle.allowed_surfaces[#Jungle.allowed_surfaces+1] = surface_name
		if fcm_debug then log("Added jungle surface: "..surface_name) end
	end
end

Jungle.unregister_surface = function(surface_name)
	if surface_name then
		for i,s in ipairs(Jungle.allowed_surfaces) do
			if surface_name == s then
				table.remove(Jungle.allowed_surfaces,i)
				if fcm_debug then log("Removed jungle surface: "..surface_name) end
			end
		end
	end
end

fcm_registry.events.on_chunk_generated[#fcm_registry.events.on_chunk_generated+1] = Jungle.generate_trees

remote.add_interface("fcm_jungle",{
	register_surface = Jungle.register_surface,
	unregister_surface = Jungle.unregister_surface
})