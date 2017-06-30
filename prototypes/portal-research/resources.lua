if mods[fcm_defines.mods_names.portal_research] then
if settings.startup[fcm_defines.keys.names.settings.factorium_ore_graphics].value then

data.raw.resource["factorium-ore"].icon = fcm_defines.mod_directory .. "/graphics/icons/factorium-ore.png"
data.raw.resource["factorium-ore"].stages.sheet.filename = fcm_defines.mod_directory .. "/graphics/factorium-ore/factorium-ore.png"
data.raw.resource["factorium-ore"].stages.sheet.hr_version.filename = fcm_defines.mod_directory .. "/graphics/factorium-ore/hr-factorium-ore.png"
data.raw.resource["factorium-ore"].stages_effect.sheet.filename = fcm_defines.mod_directory .. "/graphics/factorium-ore/factorium-ore-glow.png"
data.raw.resource["factorium-ore"].stages_effect.sheet.hr_version.filename = fcm_defines.mod_directory .. "/graphics/factorium-ore/hr-factorium-ore-glow.png"
data.raw.resource["factorium-ore"].map_color = fcm_defines.misc.factorium_ore_color.rgb

end
end