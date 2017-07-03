if mods[fcm_defines.mods_names.omnimatter] then

for _,entity in pairs(data.raw["assembling-machine"]) do
	if string.find(entity.name,".*omnitractor.*") then
		data.raw["assembling-machine"][entity.name].animation = {
		layers = {
			{
				filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/omnitractor.png",
				priority = "high",
				line_length = 8,
				width = 119,
				height = 107,
				frame_count = 64,
				animation_speed = 0.5,
				hr_version =
				{
					filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/hr-omnitractor.png",
					priority = "high",
					scale = 0.5,
					line_length = 8,
					width = 237,
					height = 214,
					frame_count = 64,
					animation_speed = 0.5,
				}
			},
			{
				filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/omnitractor-shadow.png",
				draw_as_shadow = true,
				priority = "high",
				line_length = 8,
				width = 132,
				height = 74,
				frame_count = 64,
				animation_speed = 0.5,
				shift = util.by_pixel(20, 15),
				hr_version =
				{
					filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/hr-omnitractor-shadow.png",
					draw_as_shadow = true,
					priority = "high",
					scale = 0.5,
					line_length = 8,
					width = 279,
					height = 152,
					frame_count = 64,
					animation_speed = 0.5,
					shift = util.by_pixel(16.75, 15),
				}
			}
		}
		}
		data.raw["assembling-machine"][entity.name].working_visualisations = {
		{
			effect = "uranium-glow", -- changes alpha based on energy source light intensity
			light = {intensity = 0.5, size = 7.5, shift = {0.0, 0.0}, color = {r=0.34, g=0.00, b=0.51}} -- #570083 - omnite color
		},
		{
			north_position = util.by_pixel(0, -6),
			west_position = util.by_pixel(0, -6),
			south_position = util.by_pixel(0, -6),
			east_position = util.by_pixel(0, -6),
			apply_recipe_tint = "primary",
			animation =	{
				filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/extraction-patch.png",
				frame_count = 32,
				width = 10,
				height = 8,
				animation_speed = 0.3,
				hr_version = {
					filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/hr-extraction-patch.png",
					frame_count = 32,
					width = 20,
					height = 16,
					scale = 0.5,
					animation_speed = 0.3,
				}
			}
		},
		{
			north_position = util.by_pixel(0, -6),
			west_position = util.by_pixel(0, -6),
			south_position = util.by_pixel(0, -6),
			east_position = util.by_pixel(0, -6),
			apply_recipe_tint = "secondary",
			animation = {
				filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/extraction-patch-mask.png",
				frame_count = 32,
				width = 10,
				height = 8,
				animation_speed = 0.3,
				hr_version = {
					filename = fcm_defines.mod_directory .. "/graphics/entity/omnitractor/hr-extraction-patch-mask.png",
					frame_count = 32,
					width = 20,
					height = 16,
					scale = 0.5,
					animation_speed = 0.3,
				}
			}
		}
		}
	end
end

end