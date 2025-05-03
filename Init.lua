local base = "https://raw.githubusercontent.com/zepthical/Library/main/Library/"

local function import(path)
    return loadstring(game:HttpGet(base .. path))()
end

local Library = {
    Window = import("Window.lua"),
    Tab = import("Tab.lua"),
    Button = import("Elements/Button.lua")
}

return Library
