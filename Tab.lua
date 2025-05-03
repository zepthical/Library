local Button = require(script.Parent.Elements.Button)

local Tab = {}
Tab.__index = Tab

function Tab.new(title, parentFrame)
    local self = setmetatable({}, Tab)

    local tabFrame = Instance.new("Frame")
    tabFrame.Size = UDim2.new(1, 0, 1, 0)
    tabFrame.BackgroundTransparency = 1
    tabFrame.Name = title
    tabFrame.Parent = parentFrame

    self.Frame = tabFrame
    self.Title = title

    return self
end

function Tab:Button(options)
    Button.new(options, self.Frame)
end

return Tab
