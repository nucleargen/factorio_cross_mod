if mods[fcm_defines.mods_names.omnimatter] then

for _,recipe in pairs(data.raw.recipe) do
--if string.find(recipe.name, ".*extraction.*") then
	--log(recipe.name)
	--log(recipe.category)
	if recipe.category == "omnite-extraction" or recipe.category == "omnite-extraction-burner" or recipe.category == "omnite-extraction-both" then
		local main_result = {
			name	=	"stone"
		}
		local max_amount = 0
		for _,result in pairs(recipe.results) do
			if result.name ~= "stone" and result.name ~= "stone-crushed" then
				if result.amount then
					if result.amount > max_amount then
						main_result = result
						max_amount = result.amount
					end
				elseif result.amount_max then
					if result.amount_max > max_amount then
						main_result = result
						max_amount = result.amount_max
					end
				end
			end
		end
		--log(main_result.name)
		if fcm_defines.data.colors[main_result.name] then
			data.raw.recipe[recipe.name].crafting_machine_tint = {
				primary = fcm_defines.data.colors[main_result.name],
				secondary = fcm_defines.data.colors[main_result.name]
			}
			if fcm_debug then log("tinted omnitractor recipe: "..recipe.name) end
		end
	end
--end
end

end