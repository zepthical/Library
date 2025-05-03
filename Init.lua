-- Load all parts from GitHub (example structure)
local base = "https://raw.githubusercontent.com/yourusername/Library/main/Library/"

local function import(path)
    return loadstring(game:HttpGet(base .. path))()
end

shared.UI = {}

import("Window.lua")
import("Tab.lua")
import("Elements/Button.lua")

return shared.UI
