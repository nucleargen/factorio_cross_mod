data:extend({
{
    type = "recipe",
    name = "geothermal-well",
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 5},
      {"pipe", 10},
    },
    result = "geothermal-well",
    enabled = true
},
{
	type = "recipe",
	name = "geothermal-scanner",
	ingredients = {{"electronic-circuit",10},{"copper-cable",20}},
	result = "geothermal-scanner",
	result_count = 1,
	enabled = "true"
}
})