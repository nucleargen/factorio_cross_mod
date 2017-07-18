-- workaround to return geothermal sources spawning
if mods[fcm_defines.mods_names.omnimatter] then
data.raw.resource["geothermal-source"] = 
{
    type = "resource",
    name = "geothermal-source",
    icon = fcm_defines.mod_directory.."/graphics/geothermal/icons/geothermal-source.png",
    flags = {"placeable-neutral"},
    category = "geothermal-fluid",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 100,
    normal = 100,
    infinite_depletion_amount = 0,
    resource_patch_search_radius = 12,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "steam",
          amount_min = 100,
          amount_max = 100,
          probability = 1,
		  temperature = 500
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = fcm_defines.mod_directory.."/graphics/geothermal/entity/geothermal-source.png",
        priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=1.0, g=1.0, b=1.0},
    map_grid = false
}
end