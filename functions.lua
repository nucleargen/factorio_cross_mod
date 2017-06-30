function tech_add_prerequisite(technology, prerequisite)
	if data.raw.technology[technology] and data.raw.technology[prerequisite] then
		local add = true
		if data.raw.technology[technology].prerequisites then
			for i, check in ipairs(data.raw.technology[technology].prerequisites) do
				if check == prerequisite then add = false end
			end
		else
			data.raw.technology[technology].prerequisites = {}
		end
		if add then table.insert(data.raw.technology[technology].prerequisites, prerequisite) end
	else
		if not data.raw.technology[technology] then
			-- log("Tech " .. technology .. " does not exist.")
		end
		if not data.raw.technology[prerequisite] then
			-- log("Tech " .. prerequisite .. " does not exist.")
		end
	end
end
