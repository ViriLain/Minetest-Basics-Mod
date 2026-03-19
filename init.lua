-- Joes-Basics-Mod: Charcoal and kindling crafting systems

local modname = core.get_current_modname()
local modpath = core.get_modpath(modname)

dofile(modpath .. "/src/charcoal.lua")
dofile(modpath .. "/src/kindling.lua")

core.log("action", "[MOD] " .. modname .. " loaded")
