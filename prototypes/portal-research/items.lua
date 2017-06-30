if mods[fcm_defines.mods_names.portal_research] then
if settings.startup[fcm_defines.keys.names.settings.factorium_ore_graphics].value then

data.raw.item["factorium-ore"].icon = fcm_defines.mod_directory .. "/graphics/icons/factorium-ore.png"
data.raw.item["large-factorium-crystal"].icon = fcm_defines.mod_directory .. "/graphics/icons/factorium-crystal-large.png"
data.raw.item["medium-factorium-crystal"].icon = fcm_defines.mod_directory .. "/graphics/icons/factorium-crystal-medium.png"
data.raw.item["small-factorium-crystal"].icon = fcm_defines.mod_directory .. "/graphics/icons/factorium-crystal-small.png"

end
end