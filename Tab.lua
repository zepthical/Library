local Button = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Elements/Button.lua"))()

return function(config, parent)
    local self = {}
    self.__index = self

    local label = Instance.new("TextLabel", parent)
    label.Name = config.Name .. "_Tab"
    label.Text = config.Name
    label.Size = UDim2.new(1, 0, 0, 30)
    label.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BorderSizePixel = 0

    function self:Button(buttonConfig)
        return Button(buttonConfig, label)
    end

    return setmetatable(self, self)
end
