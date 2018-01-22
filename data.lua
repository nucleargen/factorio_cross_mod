require("defines")
require("functions")
fcm_debug = settings.startup[fcm_defines.keys.names.settings.debug_mode].value

require("prototypes/geothermal/entity")

require("prototypes/mountains/entity")
require("prototypes/strange-matter/recipe")
require("prototypes/strange-matter/technology")

require("prototypes/geothermal/resource-category")
require("prototypes/geothermal/resource")
require("prototypes/geothermal/projectile")
require("prototypes/geothermal/item")
require("prototypes/geothermal/entity")
require("prototypes/geothermal/recipe")

if not fcm_registry then fcm_registry = {} end 