local chunk_size = 32
local seed
local gensize = 256 -- 8 chunks
local base_temp = 25
local max_temp = 500
local min_temp = 15
local roughness = 5

Square_Diamond_Gen = {}
Square_Diamond_Gen.cache = {}
Square_Diamond_Gen.cache_locked = false
Square_Diamond_Gen.chunks_generated = 0

Square_Diamond_Gen.get_value = function(x,y,val,region)
	local index = x .. '_' .. y
	-- if fcm_debug then log("gv: requested "..x..","..y) end
	if val ~= nil then
		Square_Diamond_Gen.cache[index] = math.max(min_temp,math.min(max_temp,val))
	-- divide whole map into square regions with size = gensize and centered in map center
	-- if fcm_debug then if x > -128 and x < 128 and y > -128 and y < 128 then log("gen modulo for "..x..","..y..": "..x % gensize * x / math.abs(x)..","..y % gensize * y / math.abs(y)..";"..gensize/2) end end
	elseif x <= (region.x-1/2)*gensize or y <= (region.y-1/2)*gensize or x >= (region.x+1/2)*gensize or y >= (region.y+1/2)*gensize then
		Square_Diamond_Gen.cache[index] = math.max(min_temp,math.min(max_temp,base_temp))
	elseif Square_Diamond_Gen.cache[index] == nil then
		local base = 1
		-- recalc coords to basis
		lx = x % gensize + gensize/2
		ly = y % gensize + gensize/2

		while bit32.band(lx,base) == 0 and bit32.band(ly,base) == 0 do
			-- if fcm_debug then log("gv: lshift "..base..","..bit32.band(lx,base)..","..bit32.band(ly,base)) end
			base = bit32.lshift(base,1)
		end
		if  bit32.band(lx,base) ~= 0 and bit32.band(ly,base) ~= 0 then
			Square_Diamond_Gen.square_step(x,y,base,region)
		else
			Square_Diamond_Gen.diamond_step(x,y,base,region)
		end
	end
	return Square_Diamond_Gen.cache[index]
end

Square_Diamond_Gen.displace = function(val,block_size,x,y)
	return math.floor(val + (Square_Diamond_Gen.rand_from_pair(x,y,seed) - 0.5) * (max_temp - min_temp) * block_size * 2 / gensize * roughness);
end

Square_Diamond_Gen.square_step = function(x,y,block_size,region)
	-- if fcm_debug then log("sq step:"..x..","..y) end
	if Square_Diamond_Gen.cache[x .. '_' .. y] == nil then
		Square_Diamond_Gen.get_value(x,y,Square_Diamond_Gen.displace((
			Square_Diamond_Gen.get_value(x-block_size,y-block_size,nil,region) +
			Square_Diamond_Gen.get_value(x+block_size,y-block_size,nil,region) +
			Square_Diamond_Gen.get_value(x-block_size,y+block_size,nil,region) +
			Square_Diamond_Gen.get_value(x+block_size,y+block_size,nil,region)
		)/4,block_size,x,y),region)
	end
end
Square_Diamond_Gen.diamond_step = function(x,y,block_size,region)
	-- if fcm_debug then log("dia step:"..x..","..y) end
	if Square_Diamond_Gen.cache[x .. '_' .. y] == nil then
		Square_Diamond_Gen.get_value(x,y,Square_Diamond_Gen.displace((
			Square_Diamond_Gen.get_value(x-block_size,y,nil,region) +
			Square_Diamond_Gen.get_value(x+block_size,y,nil,region) +
			Square_Diamond_Gen.get_value(x,y-block_size,nil,region) +
			Square_Diamond_Gen.get_value(x,y+block_size,nil,region)
		)/4,block_size,x,y),region)
	end
end

Square_Diamond_Gen.rand_from_pair = function(x,y,seed)
	local xm7, xm13, xm1301081, ym8461, ym105467, ym105943
	for i = 0, 32, 1 do
		xm7 = x % 7
		xm13 = x % 13
		xm1301081 = x % 1301081
		ym8461 = y % 8461
		ym105467 = y % 105467
		ym105943 = y % 105943
		y = x + seed
		x = x + xm7 + xm13 + xm1301081 + ym8461 + ym105467 + ym105943
	end
	return (xm7 + xm13 + xm1301081 + ym8461 + ym105467 + ym105943) / 1520972
end

Square_Diamond_Gen.process_chunk = function(event)
	if seed == nil then
		seed = game.surfaces.nauvis.map_gen_settings.seed
	end
	--if Square_Diamond_Gen.chunks_generated > 4 then
	--	return
	--end
	-- top left of the chunk
	local minx = event.area.left_top.x
	local miny = event.area.left_top.y

	-- bottom right of the chunk
	local maxx = event.area.right_bottom.x
	local maxy = event.area.right_bottom.y
	-- x = minx
	-- y = miny
	local region = {
		x	=	math.floor((minx + gensize/2)/gensize),
		y	=	math.floor((miny + gensize/2)/gensize),
	}
	--if fcm_debug then 
	log("geothermal region: "..region.x..","..region.y) 
	--end
	-- iterate left to right
	for x = minx, maxx do
		-- iterate up to down
		for y = miny, maxy do
			local value = Square_Diamond_Gen.get_value(x,y,nil,region)
			if fcm_debug then log("x,y:"..x..","..y..":value:"..value) end
			local color_index = math.floor(10 * (1 - (value - min_temp) / (max_temp - min_temp))) + 1
			local overlay = event.surface.create_entity{
				name = "gt_overlay_"..color_index,
				force = game.forces.neutral,
				position = {x,y}
			}
			overlay.minable = false
			overlay.destructible = false
			overlay.operable = false
			--overlay.bar = Square_Diamond_Gen.get_value(x,y)
		end
	end
	Square_Diamond_Gen.chunks_generated = Square_Diamond_Gen.chunks_generated + 1
end

fcm_registry.events.on_chunk_generated[#fcm_registry.events.on_chunk_generated+1] = Square_Diamond_Gen.process_chunk