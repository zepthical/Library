local Window = {}
Window.__index = Window

function Window.new(title)
    local self = setmetatable({}, Window)

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "CustomUI"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 400, 0, 300)
    mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.Parent = screenGui

    self.Gui = screenGui
    self.MainFrame = mainFrame
    self.Title = title

    return self
end

return Window
