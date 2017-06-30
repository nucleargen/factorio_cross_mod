require("defines")

if mods[fcm_defines.mods_names.strange_matter] and mods[fcm_defines.mods_names.omnimatter] then
if settings.startup[fcm_defines.keys.names.settings.strange_matter_only_omnite].value then
-- remove disabled recipes and technologies

data.raw.recipe["wood-synthesis"] = nil;
data.raw.recipe["stone-synthesis"] = nil;
data.raw.recipe["iron-synthesis"] = nil;
data.raw.recipe["copper-synthesis"] = nil;
data.raw.recipe["coal-synthesis"] = nil;
data.raw.recipe["uranium-synthesis"] = nil;
data.raw.recipe["oil-synthesis"] = nil;
data.raw.recipe["heavy-oil-synthesis"] = nil;
data.raw.recipe["light-oil-synthesis"] = nil;
data.raw.recipe["petroleum-gas-synthesis"] = nil;
data.raw.recipe["sulfuric-acid-synthesis"] = nil;

data.raw.technology["wood-synthesis"] = nil;
data.raw.technology["stone-synthesis"] = nil;
data.raw.technology["iron-synthesis"] = nil;
data.raw.technology["copper-synthesis"] = nil;
data.raw.technology["coal-synthesis"] = nil;
data.raw.technology["uranium-synthesis"] = nil;
data.raw.technology["oil-synthesis"] = nil;
data.raw.technology["heavy-oil-synthesis"] = nil;
data.raw.technology["light-oil-synthesis"] = nil;
data.raw.technology["petroleum-gas-synthesis"] = nil;
data.raw.technology["sulfuric-acid-synthesis"] = nil;

end
end

require("prototypes/omnimatter/entity")