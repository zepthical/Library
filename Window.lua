local Tab = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Tab.lua"))()

return function(config)
    local self = {}
    self.__index = self

    local gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
    gui.Name = config.Name or "UI"

    local frame = Instance.new("Frame", gui)
    frame.Name = "MainFrame"
    frame.Size = UDim2.new(0, 400, 0, 300)
    frame.Position = UDim2.new(0.5, -200, 0.5, -150)
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    frame.BorderSizePixel = 0

    function self:Tab(tabConfig)
        return Tab(tabConfig, frame)
    end

    return setmetatable(self, self)
end
