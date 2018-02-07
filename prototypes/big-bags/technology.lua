-- vanilla player data :
-- inventory_size = 60,
-- build_distance = 6,
-- drop_item_distance = 6,
-- reach_distance = 6,
-- item_pickup_distance = 1,
-- reach_resource_distance = 2.7,
-- loot_pickup_distance = 2,
		
---------------------------------------------------------------------
local func_techno

local function check_science_pack(arr,name)
	for _,item in pairs(arr) do
		if item[1] == name then
			return false
		end
	end
	return true
end
		
local function add_techno_level(name,n1,n,add_ingrs)
	local techno = func_techno(n,n-n1)
	
	techno.type = "technology"
	techno.upgrade = true
	
	if n > 1 then
		techno.name = name .. "-" .. n
		if n == 2 then
			techno.prerequisites = {name}
		else
		techno.prerequisites = {name .. "-" .. (n-1)}
		end
	else
		techno.name = name
	end
	
	if add_ingrs ~= -1 then
		if n+add_ingrs >= 1 then
			if check_science_pack(techno.unit.ingredients,"science-pack-1") then
				table.insert(techno.unit.ingredients,{"science-pack-1", 1})
			end
		end
		if n+add_ingrs >= 2 then
			if check_science_pack(techno.unit.ingredients,"science-pack-2") then
				table.insert(techno.unit.ingredients,{"science-pack-2", 1})
			end
		end
		if n+add_ingrs >= 3 then
			if check_science_pack(techno.unit.ingredients,"science-pack-3") then
				table.insert(techno.unit.ingredients,{"science-pack-3", 1})
			end
		end
		if n+add_ingrs >= 4 then
			if check_science_pack(techno.unit.ingredients,"production-science-pack") then
				table.insert(techno.unit.ingredients,{"production-science-pack", 1})
			end
		end
		if n+add_ingrs >= 5 then
			if check_science_pack(techno.unit.ingredients,"high-tech-science-pack") then
				table.insert(techno.unit.ingredients,{"high-tech-science-pack", 1})
			end
		end
		if n+add_ingrs >= 6 then
			if check_science_pack(techno.unit.ingredients,"space-science-pack") then
				table.insert(techno.unit.ingredients,{"space-science-pack", 1})
			end
		end
	end
	
	data:extend({techno})
end

local function add_technos(name,n1,n2,add_ingrs)
	for n=n1,n2 do
		add_techno_level(name,n1,n,add_ingrs)
	end
end

---------------------------------------------------------------------
-- inventory

func_techno = function(n,inc)
	return {
		icon = fcm_defines.mod_directory .. "/graphics/technology/inventory.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-inventory-slots-bonus",
				modifier = 10
			}
		},
		unit =
		{
			count = 100+50*inc,
			ingredients = {},
			time = 20+5*inc
		},
		order = "c-k-l..n",
	}
end

add_technos("inventory-size",1,10,0)

---------------------------------------------------------------------
-- toolbelt

data.raw.technology["toolbelt"].upgrade = true

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/toolbelt.png",
		icon_size = 128,
		effects =
		{
			{
				type = "quick-bar-count",
				modifier = 1
			}
		},
		unit =
		{
			count = 200+50*inc,
			ingredients = {},
			time = 35+5*inc
		},
		order = "c-k-m..n"
	}
end

add_technos("toolbelt",2,3,1)

---------------------------------------------------------------------
-- pickstick

func_techno = function(n,inc)
	return {
		icon = fcm_defines.mod_directory .. "/graphics/technology/pickstick.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-build-distance",
				modifier = 4*n
			},
			{
				type = "character-item-drop-distance",
				modifier = 4*n
			},
			{
				type = "character-reach-distance",
				modifier = 4*n
			},
			{
				type = "character-resource-reach-distance",
				modifier = 4*n
			},
			{
				type = "character-loot-pickup-distance",
				modifier = 0.4
			},
		},
		unit =
		{
			count = 100+50*inc,
			ingredients = {},
			time = 30 + 10*inc
		},
		order = "c-k-n"..n,
	}
end

add_technos("pickstick",1,10,0)

---------------------------------------------------------------------
-- character-logistic-slots

-- correction of vanilla cost
data.raw.technology["character-logistic-slots-5"].unit.count = 200

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/character-logistic-slots.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-logistic-slots",
				modifier = 6,
			}
		},
		unit =
		{
			count = 250+50*inc,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 1},
			},
			time = 30 + 5*inc,
		},
		order = "c-k-e-f"..n
	}
end

add_technos("character-logistic-slots",6,10,0)

---------------------------------------------------------------------
-- character-logistic-trash-slots

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/character-logistic-trash-slots.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-logistic-trash-slots",
				modifier = 6
			}
		},
		prerequisites = {"character-logistic-trash-slots-2"},
		unit =
		{
			count = 200+100*inc,
			ingredients = {},
			time = 35 + 5*inc,
		},
		order = "c-k-f-e"..n
	}
end

add_technos("character-logistic-trash-slots",3,5,0)

---------------------------------------------------------------------
-- worker-robots-storage

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/worker-robots-storage.png",
		icon_size = 128,
		effects = {
			{
				type = "worker-robot-storage",
				modifier = "1"
			}
		},
		unit = {
			count = 500+inc*100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 1},
				{"high-tech-science-pack", 1},
			},
			time = 60
		},
		order = "c-k-g-d"..n
	}
end

add_technos("worker-robots-storage",4,9,01)