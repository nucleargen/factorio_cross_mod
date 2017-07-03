Factorio Cross Mod
===
Adds cross-support between some other mods. You can use any mix of supported mods. Customizable behaviour through mod settings. Also includes several old simple mods (customizable!). Contains russian locale for all supported mods.

All mod dependencies are optional - use any mix of them.

+ Name: Factorio Cross Mod (factorio_cross_mod)
+ Category: compilation, mod pack, localization, other
+ MOD Version: 0.15.0
+ Factorio Version: 0.15.X
+ Latest Release: 03 Jul 2017
+ Dependencies: all are optional, full list see below
+ Website: [Mod Portal](https://mods.factorio.com/mods/nucleargen/factorio_cross_mod)
+ Factorio forums: [thread]()
+ Source code: [GitHub](https://github.com/nucleargen/factorio_cross_mod)
+ Author: nucleargen
+ Contact: [by pm on factorio forums](https://forums.factorio.com/ucp.php?i=pm&mode=compose&u=20136), [factorio mod portal discussions](https://mods.factorio.com/mods/nucleargen/factorio_cross_mod/discussion)
+ Tags: cross-support, portal-research, omnimatter, strange matter, russian, mod-pack
+ License: [MIT](https://opensource.org/licenses/MIT)

## List of supported mods:
### 1. Cross-link:
+ [Omnimatter](https://mods.factorio.com/mods/EmperorZelos/omnimatter).
Additionally contains slightly modified, recipe depended and hd graphics for Omnitractors
+ [Portal Research](https://mods.factorio.com/mods/docpaisley/portal-research).
Additionally contains changes graphics for Factorium ore
+ [StrangeMatter](https://mods.factorio.com/mods/5cript/StrangeMatter)
### 2. RU-locale:
+ [Omnimatter](https://mods.factorio.com/mods/EmperorZelos/omnimatter)
+ [Portal Research](https://mods.factorio.com/mods/docpaisley/portal-research)
+ [Strange Matter](https://mods.factorio.com/mods/5cript/StrangeMatter)
+ [Big Bags (more space in bags +longer reach)](https://mods.factorio.com/mods/binbinhfr/BigBags)
+ [Big Brother](https://mods.factorio.com/mods/Afforess/Big_Brother)
+ [DayPhaseAdjuster](https://mods.factorio.com/mods/AliceTheGorgon/DayPhaseAdjuster)
+ [EvoGUI - Evolution Factor Indicator and more](https://mods.factorio.com/mods/Narc/EvoGUI)
+ [Expanded Color Lamps](https://mods.factorio.com/mods/Klonan/Expanded_Color_Lamps)
+ [Fully Automated Rail Layer](https://mods.factorio.com/mods/Choumiko/FARL)
+ [Flare Stack](https://mods.factorio.com/mods/GotLag/Flare%20Stack)
+ [Infinite Inserter Capacity Research](https://mods.factorio.com/mods/Emmote/InfiniteInserterCapacity_Research)
+ [KS Power](https://mods.factorio.com/mods/Klonan/KS_Power)
+ [Noxys Waterfill](https://mods.factorio.com/mods/CobaltSky/Noxys_Waterfill)
+ [Nuclear Locomotives](https://mods.factorio.com/mods/GotLag/Nuclear%20Locomotives)
+ [Orbital Ion Cannon](https://mods.factorio.com/mods/Supercheese/Orbital%20Ion%20Cannon)
+ [Power Armor MK3](https://mods.factorio.com/mods/jimmy_1283/Power%20Armor%20MK3)
+ [Space Extension Mod](https://mods.factorio.com/mods/LordKTor/SpaceMod)
+ [Warehousing Mod](https://mods.factorio.com/mods/kingarthur/Warehousing%20v15)
+ [YARM - Resource Monitor](https://mods.factorio.com/mods/Narc/YARM)
+ [Air filtering](https://mods.factorio.com/mods/Schorty/air-filtering)
+ [Alien Biomes](https://mods.factorio.com/mods/Earendel/alien-biomes)
+ [Angel's Infinite Ores](https://mods.factorio.com/mods/Arch666Angel/angelsinfiniteores)
+ [Better Cable and Steel Making](https://mods.factorio.com/mods/LaVADraGoN/cableSteelMaking)
+ [Creative Mode](https://mods.factorio.com/mods/Mooncat/creative-mode)
+ [Shuttle Train Lite](https://mods.factorio.com/mods/folk/folk-shuttle)
+ [Resource Spawner Overhaul](https://mods.factorio.com/mods/orzelek/rso-mod)

** Corrected (when needed) EN-locale provided for all supported mods.**

## Other features:
+ Includes reworked [Toxic-jungle](https://mods.factorio.com/mods/nucleargen/toxic-jungle) mod. Enables by runtime setting. Customizable jungle density.
Contains remote interface: remote.call("fcm_jungle","register_surface",surface_name) and remote.call("fcm_jungle","unregister_surface",surface_name) for controlling jungle generation on modded surfaces. By default, generation allowed only on "nauvis"
+ Includes reworked [Mountains](https://mods.factorio.com/mods/nucleargen/Mountains-up) mod. Enables by runtime setting. Customizable mountain density and hardness.
Contains remote interface: remote.call("fcm_mountains","register_surface",surface_name) and remote.call("fcm_mountains","unregister_surface",surface_name) for controlling mountains generation on modded surfaces. By default, generation allowed only on "nauvis"

## Mod settings:
+ [startup] **Factorium ore omnitraction tier** - sets up omnitraction recipes tier of Factorium ore from omnite. *Requires both Portal Research and Omnimatter mods*
+ [startup] **Strange matter to omnite only** - when enabled - only omnite can be retrieved from strange matter. *Requires both StrangeMatter and Omnimatter mods*
+ [runtime-global] **Offworld resources: only omnite** - when enabled - only omnite can be found on offworld sites. *Requires both Portal Research and Omnimatter mods*
+ [runtime-global] **Omnite generation weight** - if only omnite option disabled - defines possibility to find other solid ores on offworld sites. Smaller value - higher possibility. *Requires both Portal Research and Omnimatter mods*
+ [runtime-global] **Offworld Factorium ore** - if enabled - makes possible to find factorium ore on offworld sites. *Requires only Portal Research mod*. If Omnimatter present and only omnite option enabled - this setting will be omitted.
+ [runtime-global] **Enable toxic jungles** - If enabled - generate high-density forests anywhere on registered surfaces
+ [runtime-global] **Density of toxic jungles** - How dense jungles is
+ [runtime-global] **Enable Mountains** - If enabled - generate mountains over any solid resource patches on registered surfaces
+ [runtime-global] **Maximum stone particles per mountain** - Maximum for number of generated stone particles per each generated mountain
+ [runtime-global] **Density of mountains on resources patches** - Less number - more density

## Incompatibilities:
+ [Russian locale for some mods](https://mods.factorio.com/mods/nucleargen/factorio-ru)
+ [Portal Research Addon](https://mods.factorio.com/mods/nucleargen/portal-research-addon)
+ [Toxic Jungle](https://mods.factorio.com/mods/nucleargen/toxic-jungle)
+ [Mountains](https://mods.factorio.com/mods/nucleargen/Mountains-up)

All of these mods are added to mod dependecies with < 0.0.1 version to prevent startup with it.
If you found other incompatibilities - tell, i'll resolve it or add to list

## Known issues:
Some locale string are missing

## Future plans:
+ Add settings for turn on/off updated graphics for other mods
+ Include Big_Brother_Tweaked mod as part of these mod
+ Update localizations
+ Moar customizable features
+ Maybe cross-integrate/localize other mods (possibly by community request)
+ RSO-like resource generator based on remote interfaces and per-surface settings, including AngelsInfiniteOres-like spawning (also fully customizable)
+ Include optional plutonium workarounds like some other mods (mostly like in GotLag's [Reactors](https://mods.factorio.com/mods/GotLag/Reactors), but not the same
+ Rework Air Filtering and include it in pack

## Disclaimer:
All changes in graphics, localizations and behaviours i've made firstly for myself, not for others. You can disagree with it, but it is so. I don't like to use mods that adds too much complexity in game, so you can't find bob's and angel's mods integration soon. But maybe later...

## Credits and special thanks:
+ Factorio dev-team, for awesome game and modding capabilities
+ [orzelek](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=6678), for RSO-mod
+ [EmprerorZelos](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=14860), for Omnimatter mod
+ [Arch666Angel](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=10813), for Angel's Infinite Ores mod
+ [Strontium](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=5715), for original Toxic jungle mod
+ [devilwarriors](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=12534), for original Mountains mod
+ [5cript](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=25384), for Strange Matter mod
+ [docpaisley](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=17116), for Portal Research mod
+ [Afforess](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=7073), for Big Brother mod and StdLib project
+ [GotLag](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=1561), for his mods
+ All other modders, who develop mods that i'm localizing


ChangeLog
---

+  **0.15.0** | *03.07.2017* - merged portal_research_addon and factorio-ru in single mod, added and reworked toxic-jungle and mountains mods, added new graphics for omnitractos