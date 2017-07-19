data:extend({
{
    type = "item",
    name = "geothermal-well",
    icon = fcm_defines.mod_directory.."/graphics/geothermal/icons/geothermal-well.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b[fluids]-b[geothermal-well]",
    place_result = "geothermal-well",
    stack_size = 20
},
--[[
{
	type = "item",
	name = "geothermal-scanner",
    icon = fcm_defines.mod_directory.."/graphics/geothermal/icons/geothermal-scanner.png",
    flags = {"goes-to-quickbar"},
	subgroup = "tool",
	order = "b[geothermal-scanner]",
	place_result = "geothermal-scanner",
	stack_size = 1
},
--]]
{
    type = "capsule",
    name = "geothermal-scanner",
    icon = fcm_defines.mod_directory.."/graphics/geothermal/icons/geothermal-scanner.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 60,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "geothermal-scanner",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "tool",
    order = "c[geothermal-scanner]",
    stack_size = 100
}
})