local DEFAULTS = {
	chunk_size		=	32,		--not to be modified since factorio use exactly this value
	region_size		=	1,		--chunks per region
	region_center	=	{0,0},	-- center of central region
	min_val			=	0,		--minimum allowed value for tiles
	max_val			=	1,		--maximum allowed value for tiles
	base_val		=	0,		--value of region borders 
	roughness		=	1,		--"sharpness" of generated values
	iterations		=	32,		--number of steps in "randomization"
	tick_treshold	=	30
}
--[[
Square-Diamond generator class
@param	table	generator config
@return	table	self-instance
--]]
local function Square_Diamond_Generator(config)

	local self = {
		stats = {
			calculated = {
				tiles	=	0,
				chunks	=	0,
				regions	=	0
			}
		}
	}
	
	local cache = {}
	local cache_lock = false
	
	local grid = {
		chunk_size	=	config.chunk_size or DEFAULTS.chunk_size,
		region_size	=	config.region_size or DEFAULTS.region_size,
		center		=	config.region_center or DEFAULTS.region_center
	}
	
	local gen_values = {
		seed		=	config.seed or math.random(1,1000000),
		iterations	=	config.iterations or DEFAULTS.iterations,
		min			=	config.min_val or DEFAULTS.min_val,
		max			=	config.max_val or DEFAULTS.max_val,
		base		=	config.base_val or DEFAULTS.base_val,
		roughness	=	config.roughness or DEFAULTS.roughness	
	}
	
	function self.calc_position(x,y,region,default)
		local index = x .. '_' .. y
		
		if val ~= nil then
			cache[index] = math.max(gen_values.min,math.min(gen_values.max,default))
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
	
	function step_square()
	end
	
	function step_diamond()
	end
	
	--[[
	Alternative for math.random. Get preserved seed and x,y coords to determination
	--]]
	function get_random_for_position(x,y)
		local xm7, xm13, xm1301081, ym8461, ym105467, ym105943
		for i = 0, gen_values.iterations do
			xm7 = x % 7
			xm13 = x % 13
			xm1301081 = x % 1301081
			ym8461 = y % 8461
			ym105467 = y % 105467
			ym105943 = y % 105943
			y = x + gen_values.seed
			x = x + xm7 + xm13 + xm1301081 + ym8461 + ym105467 + ym105943
		end
		return (xm7 + xm13 + xm1301081 + ym8461 + ym105467 + ym105943) / 1520972
	end
	
	function calc_chunk()
	end
	
	function self.calc_region()
	end
	
	function is_in_current_region(x,y,region)
		return x >= region.x 
	end
	
	function get_region_bbox(region)
		local region_center = 0
	end
	
	function self.flush_cache()
	end
	
	function self.tick_handler(event)
	end
		
end

return Square_Diamond_Generator