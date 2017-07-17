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