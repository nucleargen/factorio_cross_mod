if settings.startup[fcm_defines.keys.names.settings.big_bags_enable].value then
function new_size( oldvalue, offset, factor )
	if oldvalue == nil then oldvalue = 1 end
	local v = offset + oldvalue * factor
	if v > oldvalue then
		return( v )
	else
		return oldvalue
	end
end

-- item stacks
local my_stack_factor = settings.startup[fcm_defines.keys.names.settings.big_bags_stack_factor].value
local my_mag_factor = settings.startup[fcm_defines.keys.names.settings.big_bags_magazine_factor].value

for _,dat in pairs(data.raw) do
	for _,item in pairs(dat) do
		if item.stack_size and type(item.stack_size) == "number" and item.stack_size > 1 then
			item.stack_size = new_size( item.stack_size, 0, my_stack_factor )
		end
	end
end

-- ammo stacks
for _, ammo in pairs(data.raw.ammo) do
	ammo.magazine_size = new_size( ammo.magazine_size, 0, my_mag_factor )	
end

-- module stacks
for _, modu in pairs(data.raw["module"]) do
	modu.stack_size = new_size( modu.stack_size, 0, my_stack_factor )	
end

-- capsule stacks
for _, caps in pairs(data.raw["capsule"]) do
	caps.stack_size = new_size( caps.stack_size, 0, my_stack_factor )	
end

end