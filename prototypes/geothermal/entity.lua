--[[
heatmap visuals
--]]
local colors = {
	{r=1.0, g=0.0, b=0.0, a=0.3},
	{r=1.0, g=0.47, b=0.0, a=0.3},
	{r=1.0, g=0.64, b=0.0, a=0.3},
	{r=1.0, g=0.85, b=0.0, a=0.3},
	{r=1.0, g=0.96, b=0.0, a=0.3},
	{r=0.85, g=1.0, b=0.0, a=0.3},
	{r=0.38, g=1.0, b=0.0, a=0.3},
	{r=0.0, g=1.0, b=0.64, a=0.3},
	{r=0.0, g=0.99, b=1.0, a=0.3},
	{r=0.0, g=0.75, b=1.0, a=0.3},
	{r=0.0, g=0.21, b=1.0, a=0.3}
}
for i = 1, 11, 1 do
data:extend({
--[[
{
	type = "simple-entity",
	name = "gt_overlay_"..i,
	flags = {"placeable-neutral", "player-creation"},
	icon = fcm_defines.mod_directory.."/graphics/geothermal/"..i..".png",
	minable = {mining_time=0.1,result=nil},

	max_health = 1,
	order = "fcm[geothermal-heatmap]",

	collision_mask = {"not-colliding-with-itself"},
	collision_box = {{-0.35, -0.35}, {0.35, 0.35}},

	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	--inventory_size = 1,
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
--]]
{
    type = "smoke-with-trigger",
    name = "gt-heatmap-cloud-"..i,
    show_when_smoke_off = true,
	icon = fcm_defines.mod_directory.."/graphics/geothermal/"..i..".png",
	flags = {"placeable-neutral","not-blueprintable","not-deconstructable","placeable-off-grid"},
	order = "fcm[geothermal-heatmap]",
    animation =
    {
		filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
		flags = { "compressed" },
		priority = "low",
		width = 256,
		height = 256,
		frame_count = 45,
		animation_speed = 0.1,
		line_length = 7,
		scale = 0.2,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 600,
    fade_away_duration = 0,
    spread_duration = 0,
    color = colors[i],
    action_cooldown = 0,
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
--[[
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
--]]
{
    type = "explosion",
    name = "geothermal-scanner-explosion",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__base__/graphics/entity/explosion/explosion-1.png",
        priority = "extra-high",
        width = 64,
        height = 59,
        frame_count = 16,
        animation_speed = 0.5
      },
    },
    light = {intensity = 1, size = 20, color = {r=1.0, g=1.0, b=1.0}},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
},
})