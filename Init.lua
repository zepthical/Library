local Library = {}

function Library:Load()
    local base = "https://raw.githubusercontent.com/zepthical/Library/main/"

    local function import(path)
        return loadstring(game:HttpGet(base .. path))()
    end

    Library.Window = import("Window.lua")
    Library.Tab = import("Tab.lua")
    Library.Button = import("Elements/Button.lua")
    -- Add other elements as needed

    return Library
end

return Library
