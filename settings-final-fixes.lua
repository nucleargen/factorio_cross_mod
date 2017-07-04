-- Make all mod settings descriptions be more informative
if data.raw["bool-setting"] then
	for k,v in pairs(data.raw["bool-setting"]) do
		if v.default_value ~= nil then
			v.localised_description = {
				"miscellaneous.merge_3",
				{"mod-setting-description." .. v.name},
				"\n\n",
				{"mod-setting-extra-info.default",{"miscellaneous.bool-state." .. tostring(v.default_value)}}
			}
		end
	end
end
for _,s in pairs{"int-setting", "double-setting"} do
	if data.raw[s] then
		for k,v in pairs(data.raw[s]) do
			local localised_description = {
				"miscellaneous.merge_2",
				{"mod-setting-description." .. v.name},
				"\n"
			}
			if v.minimum_value ~= nil then
				localised_description = {
					"miscellaneous.merge_3",
					localised_description,
					"\n",
					{"mod-setting-extra-info.minimum_value",v.minimum_value}
				}
			end
			if v.default_value ~= nil then
				localised_description = {
					"miscellaneous.merge_3",
					localised_description,
					"\n",
					{"mod-setting-extra-info.default",v.default_value}
				}
			end
			if v.maximum_value ~= nil then
				localised_description = {
					"miscellaneous.merge_3",
					localised_description,
					"\n",
					{"mod-setting-extra-info.maximum_value",v.maximum_value}
				}
			end
			if v.allowed_values ~= nil then
				localised_description = {
					"miscellaneous.merge_3",
					localised_description,
					"\n",
					{"mod-setting-extra-info.allowed_values",table.concat(v.allowed_values,"; ")}
				}
			end
			v.localised_description = localised_description
		end
	end
end
if data.raw["string-setting"] then
	for k,v in pairs(data.raw["string-setting"]) do
		local localised_description = {
			"miscellaneous.merge_2",
			{"mod-setting-description." .. v.name},
			"\n"
		}
		if v.default_value ~= nil  then
			localised_description = {
				"miscellaneous.merge_3",
				localised_description,
				"\n",
				{"mod-setting-extra-info.default",v.default_value}
			}
		end
		if v.allowed_values ~= nil then
			localised_description = {
				"miscellaneous.merge_3",
				localised_description,
				"\n",
				{"mod-setting-extra-info.allowed_values",table.concat(v.allowed_values,"; ")}
			}
		end
		if v.allow_blank == true then
			localised_description = {
				"miscellaneous.merge_3",
				localised_description,
				"\n",
				{"mod-setting-extra-info.allow_blank"}
			}
		elseif v.allow_blank == false then
			localised_description = {
				"miscellaneous.merge_3",
				localised_description,
				"\n",
				{"mod-setting-extra-info.disallow_blank"}
			}
		end
		v.localised_description = localised_description
	end
end
