--[[
heatmap visuals
--]]
local colors = {
	{r=1.0, g=0.0, b=0.0},
	{r=1.0, g=0.47, b=0.0},
	{r=1.0, g=0.64, b=0.0},
	{r=1.0, g=0.85, b=0.0},
	{r=1.0, g=0.96, b=0.0},
	{r=0.85, g=1.0, b=0.0},
	{r=0.38, g=1.0, b=0.0},
	{r=0.0, g=1.0, b=0.64},
	{r=0.0, g=0.99, b=1.0},
	{r=0.0, g=0.75, b=1.0},
	{r=0.0, g=0.21, b=1.0}
}
for i = 1, 11, 1 do
data:extend({
    {
        type = "container",
        name = "gt_overlay_"..i,
        flags = {"placeable-neutral", "not-repairable"},
        icon = fcm_defines.mod_directory.."/graphics/geothermal/"..i..".png",

        max_health = 1,
        order = "fcm[geothermal-heatmap]",

        collision_mask = {"resource-layer"},
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},

        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        inventory_size = 1,
        picture =
        {
			filename = fcm_defines.mod_directory.."/graphics/geothermal/"..i..".png",
            priority = "extra-high",
            width = 32,
            height = 32,
            shift = {0.0, 0.0}
        },
	    map_color = colors[i],

    }
})
end

data:extend({
{
    type = "mining-drill",
    name = "geothermal-well",
    icon = fcm_defines.mod_directory.."/graphics/geothermal/icons/geothermal-well.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "geothermal-well"},
    resource_categories = {"geothermal-fluid"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "90kW",
    mining_speed = 1,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 1
    },
    radius_visualisation_picture =
    {
      filename = fcm_defines.mod_directory.."/graphics/geothermal/entity/geothermal-well-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_picture =
    {
      sheet =
      {
        filename = fcm_defines.mod_directory.."/graphics/geothermal/entity/geothermal-well-base.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = util.by_pixel(6, -0.5)
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = util.by_pixel(4, -23),
        filename = fcm_defines.mod_directory.."/graphics/geothermal/entity/geothermal-well-animation.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "geothermal-well",
    circuit_wire_connection_points =
    {
      get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
      get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
      get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
      get_circuit_connector_wire_shifting_for_connector({0.15625, -1.0625}, {0.15625, -1.0625}, 2)
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
      get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
      get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2),
      get_circuit_connector_sprites({0.15625, -1.0625}, {0.15625, -1.0625}, 2)
    },
    circuit_wire_max_distance = 9,
},
{
	type = "container",
	name = "geothermal-scanner",
	icon = "__YARM__/graphics/resource-monitor.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 1, result = "resource-monitor"},
	max_health = 100,
	corpse = "small-remnants",
	resistances ={{type = "fire",percent = 80}},
	collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
	collision_mask = {"floor-layer"},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	inventory_size = 1,
	picture =
	{
		filename = "__YARM__/graphics/resource-monitor.png",
		priority = "extra-high",
		width = 32,
		height = 32,
		shift = {0.0, 0.0}
	}
},
})