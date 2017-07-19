data:extend({
{
    type = "projectile",
    name = "geothermal-scanner",
    flags = {"not-on-map"},
    acceleration = 0.005,
    light = {intensity = 0.5, size = 4},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "geothermal-scanner-explosion",
			trigger_created_entity = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    }
}
})
