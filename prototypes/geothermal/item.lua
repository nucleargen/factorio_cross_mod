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
{
	type = "item",
	name = "geothermal-scanner",
    icon = fcm_defines.mod_directory.."/graphics/geothermal/icons/geothermal-scanner.png",
    flags = {"goes-to-quickbar"},
	subgroup = "tool",
	order = "b[geothermal-scanner]",
	place_result = "geothermal-scanner",
	stack_size = 1
}
})