if mods[fcm_defines.mods_names.big_brother] and settings.startup[fcm_defines.keys.names.settings.big_brother_tweaks] then
	for radar_amplification_type = 0, 9 do
		for radar_efficiency_type = 0, 9 do

			local max_distance_of_sector_revealed = data.raw.radar.radar.max_distance_of_sector_revealed + radar_amplification_type * 1
			local max_distance_of_nearby_sector_revealed = data.raw.radar.radar.max_distance_of_nearby_sector_revealed + radar_amplification_type * 1
			-- define energy usage as supporting energy to reveal all sectors in radius (which count is 2n+1, where n - radius) + fixed energy for supporting radar itself. for 0,0 upgrades this formula equals to vanilla radar.
			local energy_usage_itself = 6 -- kW
			local energy_usage_per_revealed_sector = 6 -- kW per revealed sector
			local energy_usage = energy_usage_itself + energy_usage_per_revealed_sector * math.pow(2 * max_distance_of_nearby_sector_revealed + 1,2)

			-- base time to scan is ~40s
			-- energy per scanning sector formula is simple: E =  Eu * t, where Eu - current energy usage, t - desired time to scan, defined to be
			-- using exponential formula with manually picked coefficients: t = 49,668*exp(-0,232*x)
			-- only dependent on radar effeciency tech. On 0 effeceincy level time is ~40s, on 9 - ~5s
			local desired_time = 49,668 * math.exp(-0.232 * radar_efficiency_type)

			local energy_per_sector = energy_usage * desired_time

			local current_name = 'big_brother-radar_ra-' .. radar_amplification_type .. '_re-' .. radar_efficiency_type
			local radar = data.raw.radar[current_name]
			radar.max_distance_of_sector_revealed = max_distance_of_sector_revealed
			radar.max_distance_of_nearby_sector_revealed = max_distance_of_nearby_sector_revealed
			radar.energy_per_sector = energy_per_sector .. "kJ"
			radar.energy_usage = energy_usage .. "kW"
			data.raw.radar[current_name] = radar
		end
	end
	data.raw.radar["big_brother-surveillance-small"].energy_usage = "5kW"
end