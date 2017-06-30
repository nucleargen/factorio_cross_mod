data.raw["assembling-machine"]["omnitractor-1"].always_draw_idle_animation = true
data.raw["assembling-machine"]["omnitractor-1"].idle_animation = {
	layers = {
        -- Centrifuge C
        {
          filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          --shift = util.by_pixel(-0.5, -26.5),
          hr_version =
          {
            filename = fcm_defines.mod_directory .. "/graphics/entity/hr-omnitractor.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            --shift = util.by_pixel(-0.25, -26.5),
          }
        },
        {
          filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          --shift = util.by_pixel(20, -10),
          hr_version =
          {
            filename = fcm_defines.mod_directory .. "/graphics/entity/hr-omnitractor-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            --shift = util.by_pixel(16.75, -10),
          }
        },
	}
}
data.raw["assembling-machine"]["omnitractor-1"].animation = {
	layers = {
        -- Centrifuge C
        {
          filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 96,
          height = 104,
          frame_count = 64,
          --shift = util.by_pixel(0, -27),

          hr_version =
          {
            filename = fcm_defines.mod_directory .. "/graphics/entity/hr-omnitractor-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 190,
            height = 207,
            frame_count = 64,
            --shift = util.by_pixel(0, -27.25),
          }
		}
	}
}
data.raw["assembling-machine"]["omnitractor-1"].working_visualisations = {
    {
        apply_recipe_tint = "primary",
        animation =
        {
          filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor-light.png",
          width = 96,
          height = 104,
          frame_count = 64,
          line_length = 8,
          animation_speed = 0.5,
          hr_version = {
            filename = fcm_defines.mod_directory .. "/graphics/entity/hr-omnitractor-light.png",
            width = 190,
            height = 207,
            frame_count = 64,
            line_length = 8,
            animation_speed = 0.5,
            scale = 0.5
          }
        }
    }
}
data.raw.recipe["omni-iron-general-1"].crafting_machine_tint = {
      primary = {r = 1.0, g = 0.0, b = 0.000, a = 0.000}, -- #ff000000
}