local Window = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Window.lua"))()

local Library = {}
Library.__index = Library

function Library:Window(config)
    return Window(config)
end

return Library