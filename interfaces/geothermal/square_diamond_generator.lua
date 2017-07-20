local DEFAULTS = {
	chunk_size		=	32,		--not to be modified since factorio use exactly this value
	region_size		=	4,		--chunks per region
	region_center	=	{0,0},	-- center of central region
	min_val			=	0,		--minimum allowed value for tiles
	max_val			=	1,		--maximum allowed value for tiles
	base_val		=	0,		--value of region borders 
	roughness		=	1		--"sharpness" of generated values
}
--[[
Square-Diamond generator class
@param	table	generator config
@return	table	self-instance
--]]
local function Square_Diamond_Generator(config)

	local self = {
		cache = {},
		cache_locked = false,
		stats = {
			calculated = {
				tiles	=	0,
				chunks	=	0,
				regions	=	0
			}
		}
	}
	
	local grid = {
		chunk_size	=	config.chunk_size or DEFAULTS.chunk_size,
		region_size	=	config.region_size or DEFAULTS.region_size
	}
	
	local gen_values = {
	
	}
	
	function self.calc_position()
	end
	
	function self.step_square()
	end
	
	function self.step_diamond()
	end
	
	function self.get_random_for_position()
	end
	
	function self.calc_chunk()
	end
	
	function self.flush_cache()
	end
	
	function self.tick_handler(event)
	end
		
end
local chunk_size = 32
local seed
local gensize = 256 -- 8 chunks
local base_temp = 25
local max_temp = 500
local min_temp = 15
local roughness = 5
local geothermal_source_temp_treshold = 450
local geothermal_source_probability = 0.3
local scanner_radius = 16


