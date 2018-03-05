Factorio Cross Mod
===
Adds cross-support between some other mods. You can use any mix of supported mods. Also includes several old simple mods. Contains russian locale for all supported mods. Customizable behaviour through mod settings.

+ Name: Factorio Cross Mod (factorio_cross_mod)
+ Category: compilation, mod pack, localization, other
+ MOD Version: 1.2.2
+ Factorio Version: 0.16.X
+ Latest Release: 05 Mar 2018
+ Dependencies: All are optional, full list see below
+ Website: [Mod Portal](https://mods.factorio.com/mods/nucleargen/factorio_cross_mod)
+ Factorio forums: [thread](https://forums.factorio.com/viewtopic.php?f=94&t=50522)
+ Source code: [GitHub](https://github.com/nucleargen/factorio_cross_mod)
+ Author: nucleargen
+ Contact: [by pm on factorio forums](https://forums.factorio.com/ucp.php?i=pm&mode=compose&u=20136), [factorio mod portal discussions](https://mods.factorio.com/mods/nucleargen/factorio_cross_mod/discussion)
+ Tags: cross-support, omnimatter, strange matter, russian, mod-pack, toxic jungle, mountains
+ License: [MIT](https://opensource.org/licenses/MIT)

## List of supported mods:
### 1. Cross-link:
+ [Omnimatter](https://mods.factorio.com/mods/EmperorZelos/omnimatter)
+ [StrangeMatter](https://mods.factorio.com/mods/5cript/StrangeMatter) - linked with Omnimatter
+ [Big Brother](https://mods.factorio.com/mods/Afforess/Big_Brother) - extended by optional tweaks
+ [RealisticOres](https://mods.factorio.com/mods/ouk_ouk/RealisticOres) - linked with [Angels Infinite Ores](https://mods.factorio.com/mod/Arch666Angel/angelsinfiniteores): infinite versions of iron, copper and uranium now have realistic look too.
### 2. RU-locale (including mod names and descriptions):
+ [Omnimatter](https://mods.factorio.com/mods/EmperorZelos/omnimatter) *up to date with v1.2.5*
+ [Strange Matter](https://mods.factorio.com/mods/5cript/StrangeMatter) *up to date with v0.1.6*
+ [Big Brother](https://mods.factorio.com/mods/Afforess/Big_Brother) *up to date with v0.4.3*
+ [DayPhaseAdjuster](https://mods.factorio.com/mods/AliceTheGorgon/DayPhaseAdjuster) *up to date with v1.0.1*
+ [EvoGUI - Evolution Factor Indicator and more](https://mods.factorio.com/mods/Narc/EvoGUI) *up to date with v0.4.205*
+ [Expanded Color Lamps](https://mods.factorio.com/mods/Klonan/Expanded_Color_Lamps) *up to date with v0.1.2*
+ [Fully Automated Rail Layer](https://mods.factorio.com/mods/Choumiko/FARL) *up to date with v1.1.6*
+ [Flare Stack](https://mods.factorio.com/mods/GotLag/Flare%20Stack) *up to date with v2.1.4*
+ [Infinite Inserter Capacity Research](https://mods.factorio.com/mods/Emmote/InfiniteInserterCapacity_Research) *up to date with v0.1.1*
+ [KS Power](https://mods.factorio.com/mods/Klonan/KS_Power) *up to date with v0.1.12*
+ [Noxys Waterfill](https://mods.factorio.com/mods/CobaltSky/Noxys_Waterfill) *up to date with v0.0.4*
+ [Nuclear Locomotives](https://mods.factorio.com/mods/GotLag/Nuclear%20Locomotives) *up to date with v1.1.2*
+ [Orbital Ion Cannon](https://mods.factorio.com/mods/Supercheese/Orbital%20Ion%20Cannon) *up to date with v1.5.2*
+ [Power Armor MK3](https://mods.factorio.com/mods/jimmy_1283/Power%20Armor%20MK3) *up to date with v0.1.2*
+ [Space Extension Mod](https://mods.factorio.com/mods/LordKTor/SpaceMod) *up to date with v0.3.0*
+ [Warehousing Mod](https://mods.factorio.com/mods/kingarthur/Warehousing%20v15) *up to date with v0.0.14*
+ [YARM - Resource Monitor](https://mods.factorio.com/mods/Narc/YARM) *up to date with v0.7.203*
+ [Air filtering](https://mods.factorio.com/mods/Schorty/air-filtering) *up to date with v0.5.0*
+ [Alien Biomes](https://mods.factorio.com/mods/Earendel/alien-biomes) *up to date with v0.2.7*
+ [Angel's Infinite Ores](https://mods.factorio.com/mods/Arch666Angel/angelsinfiniteores) *up to date with v0.6.11*
+ [Better Cable and Steel Making](https://mods.factorio.com/mods/LaVADraGoN/cableSteelMaking) *up to date with v1.0.2*
+ [Creative Mode](https://mods.factorio.com/mods/Mooncat/creative-mode) *partially up to date with v0.1.2*
+ [Shuttle Train Lite](https://mods.factorio.com/mods/folk/folk-shuttle) *up to date with v0.1.12*
+ [Resource Spawner Overhaul](https://mods.factorio.com/mods/orzelek/rso-mod) *up to date with v3.5.6*
+ [Omniwood](https://mods.factorio.com/mods/EmperorZelos/omnimatter_wood) *up to date with v0.1.8*
+ [Factorissimo 2](https://mods.factorio.com/mods/MagmaMcFry/Factorissimo2) *up to date with v2.1.8*
+ [The Ruins Mod](https://mods.factorio.com/mods/Gangsir/Ruins) *up to date with v0.1.2*
+ [Robot Battery Research](https://mods.factorio.com/mods/Klonan/Robot_Battery_Research) *up to date with v0.1.0*

**Corrected (when needed) EN-locale provided for all supported mods.**

## Other features:
+ Includes reworked [Toxic-jungle](https://mods.factorio.com/mods/nucleargen/toxic-jungle) mod. Enables by runtime setting. Customizable jungle density.
Contains remote interface: remote.call("fcm_jungle","register_surface",surface_name) and remote.call("fcm_jungle","unregister_surface",surface_name) for controlling jungle generation on modded surfaces. By default, generation allowed only on "nauvis"
+ Includes reworked [Mountains](https://mods.factorio.com/mods/nucleargen/Mountains-up) mod. Enables by runtime setting. Customizable mountain density and hardness.
Contains remote interface: remote.call("fcm_mountains","register_surface",surface_name) and remote.call("fcm_mountains","unregister_surface",surface_name) for controlling mountains generation on modded surfaces. By default, generation allowed only on "nauvis"
+ Includes reworked [Big Brother Tweaked](https://mods.factorio.com/mods/nucleargen/Big_Brother_Tweaked) mod. Enables by startup setting. Available if Big Brother mod active. Changes radius, scan time and power consuption of Big Brother's radars and survelliance cameras.
+ Includes reworked [BigBags](https://mods.factorio.com/mod/binbinhfr/BigBags) mod. Rework done for supporting mod settings. Minor techs changes. Stack and magazine factors moved to startup mod settings. Can be enabled via startup mod settings.
+ Adds option for researching science packs itself. Each science pack (excl. science pack 1) must be researched. New techs have low cost and dependencies from pack`s components.

## Mod settings:
+ [startup] **Debug mode** Beware! Enabled debug mode cause huge log-file!
+ [startup] **Strange matter to omnite only** - when enabled - only omnite can be retrieved from strange matter. *Available if both StrangeMatter and Omnimatter mods active*
+ [startup] **Big brother's radars tweak** - activates tweaks for Big brother's radars. *Available if Big Brother mod active*
+ [startup] **BB's radar scan base time** - Scanning time on 0 radar effeciency level. Vanilla time is ~33.3s. *Available if Big Brother mod active*
+ [startup] **BB's radar scan time exponent** - Determines how fast scan time decreases depending on radar effeciency researches. Value = 0 results in scan time has no change from its basis (always equal base time), value = 0.5 results in very fast descreased time. *Available if Big Brother mod active*
+ [startup] **BigBags: enable** Enable big bags features
+ [startup] **BigBags: magazine factor** Multiplies all ammo magazines capacity by this value
+ [startup] **BigBags: stack factor** Multiplies all item stacks capacity by this value
+ [startup] **Simple Science** Enables researching science packs. All science packs, excluding Science pack 1, must be researched in new techs. Techs have low cost and dependencies from science packs components.
+ [runtime-global] **Enable toxic jungles** - If enabled - generate high-density forests anywhere on registered surfaces
+ [runtime-global] **Density of toxic jungles** - How dense jungles is
+ [runtime-global] **Enable Mountains** - If enabled - generate mountains over any solid resource patches on registered surfaces
+ [runtime-global] **Maximum stone particles per mountain** - Maximum for number of generated stone particles per each generated mountain
+ [runtime-global] **Density of mountains on resources patches** - Less number - more density

## Incompatibilities:
+ [Russian locale for some mods](https://mods.factorio.com/mods/nucleargen/factorio-ru)
+ [Portal Research Addon](https://mods.factorio.com/mod/nucleargen/portal-research-addon)
+ [Toxic Jungle](https://mods.factorio.com/mods/nucleargen/toxic-jungle)
+ [Mountains](https://mods.factorio.com/mods/nucleargen/Mountains-up)
+ [Noxys Extra Settings Info](https://mods.factorio.com/mods/CobaltSky/Noxys_Extra_Settings_Info)
+ [Big Brother Tweaked](https://mods.factorio.com/mods/nucleargen/Big_Brother_Tweaked)
+ [BigBags](https://mods.factorio.com/mod/binbinhfr/BigBags)

If you found other incompatibilities - tell me, i'll resolve it or add to list

## Known issues:
Not full localization of Creative mode and other mods
Missings locale string in mod-setting-description when original mod doesn't have descriptions. Affects any non-supported mod

## Future plans:
+ Moar customizable features
+ Maybe cross-integrate/localize other mods (possibly by community request)
+ RSO-like resource generator based on remote interfaces and per-surface settings, including AngelsInfiniteOres-like spawning (also fully customizable)

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
+ [Afforess](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=7073), for Big Brother mod and StdLib project
+ [GotLag](https://forums.factorio.com/memberlist.php?mode=viewprofile&u=1561), for his mods
+ [CobaltSky](https://mods.factorio.com/mods/CobaltSky), for his mods
+ All other modders, who develop mods that i'm localizing


ChangeLog
---
+ **1.2.2** | *05.03.2018* - Big Bags features can now be enabled via startup mod settings
+ **1.2.1** | *07.02.2018* - BigBags mod features: inventory, toolbelt, reach, robot capacity and logisitic slots techs, slightly modified; configurable via startup mod settings (isntead config file) stack and ammo magazine factor. Cross support between Realistic ores and Angels Infinite ores mods: infinite ores (iron, copper and uranium) now have realistic look too. New techs: science pack now must be researched directly in tech tree. Approprite techs have low cost and dependencies from all science packs components. This feature can be enabled in startup mod settings. corrected incompatibility list in info.json for 0.16 changes. FCM now incompatible with BigBags mod
+ **1.2.0** | *22.01.2018* - Factorio v0.16 support. Removed support of Portal Research mod, since it no longer maintained. Began maintaining changelog.txt for display in-game after updates
+ **1.1.2** | *11.07.2017* - Minor issue fix
+ **1.1.1** | *11.07.2017* - Bugfix for Jungle and Mountains generations. Now it's generated slightly after chunk generation (at least after 30 ticks), but provide more correct generation. If Mountains enabled or RSO removing trees - no trees will be spawned on ore patches. Also guarantees that RSO trees removal removes ALL trees. Also, with Omnimatter - Mountains mining result now is omnite.
+ **1.1.0** | *06.07.2017* - Included rewritten radars tweaks from Big Brother Tweaked. Now enables by mod setting with active Big Brother mod. Debug mode setting are now startup.
+ **1.0.3** | *05.07.2017* - Bugfix with offworld factorium ore. Bugfix with jungle generation when mountains enabled too. Added debug mode setting.
+ **1.0.2** | *05.07.2017* - Removed dependency from Noxys Extra Settings Info - code merged and reworked to be more informative and totally localized. Updated localizations of all supported mods and added localization for: Omniwood, Factorissimo2 (minor locale fixes), The Ruins Mod and Robot Battery Research. Localization now includes mod names and descriptions.
+ **1.0.1** | *04.07.2017* - Dependency from Noxys Extra Settings Info - very useful in mod settings. Fixed remote.calls since release [0.15.27](https://forums.factorio.com/viewtopic.php?f=3&t=50528)
+ **1.0.0** | *03.07.2017* - Merged portal_research_addon and factorio-ru in single mod, added and reworked toxic-jungle and mountains mods, added new graphics for omnitractors