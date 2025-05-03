local base = "https://raw.githubusercontent.com/zepthical/Library/main/Library/"

local function import(path)
    return loadstring(game:HttpGet(base .. path))()
end

local Library = {}
Library.__index = Library

function Library:Window(config)
    local window = import("Window.lua")(config)
    return window
end

return setmetatable({}, Library)
