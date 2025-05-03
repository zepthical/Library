local Window = require(script.Window)
local Tab = require(script.Tab)

local UILibrary = {}

function UILibrary:CreateWindow(title)
    local window = Window.new(title)

    function window:CreateTab(tabName)
        return Tab.new(tabName, self.MainFrame)
    end

    return window
end

return UILibrary
