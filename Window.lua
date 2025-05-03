local Tab = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/Tab.lua"))()

return function(config)
    local self = {}
    self.__index = self

    local gui = Instance.new("ScreenGui")
    gui.Name = config.Name or "UI"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    gui.ResetOnSpawn = false

    local UIS = game:GetService("UserInputService")

    local frame = Instance.new("Frame")
    frame.Name = "MainFrame"
    frame.Size = UDim2.new(0, 400, 0, 300)
    frame.Position = UDim2.new(0.5, -200, 0.5, -150)
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = false -- we use custom drag logic
    frame.Parent = gui

    -- Header (drag area)
    local header = Instance.new("Frame")
    header.Name = "Header"
    header.Size = UDim2.new(1, 0, 0, 40)
    header.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    header.BorderSizePixel = 0
    header.Parent = frame

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -80, 1, 0)
    title.Position = UDim2.new(0, 10, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = config.Name or "UI"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 20
    title.Parent = header

    -- Close Button ("X")
    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.new(0, 30, 0, 30)
    closeBtn.Position = UDim2.new(1, -35, 0, 5)
    closeBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.Text = "X"
    closeBtn.Font = Enum.Font.SourceSansBold
    closeBtn.TextSize = 18
    closeBtn.Parent = header

    -- Minimize Button ("-")
    local minimizeBtn = Instance.new("TextButton")
    minimizeBtn.Size = UDim2.new(0, 30, 0, 30)
    minimizeBtn.Position = UDim2.new(1, -70, 0, 5)
    minimizeBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
    minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    minimizeBtn.Text = "-"
    minimizeBtn.Font = Enum.Font.SourceSansBold
    minimizeBtn.TextSize = 18
    minimizeBtn.Parent = header

    -- Content Frame (below header)
    local contentHolder = Instance.new("Frame")
    contentHolder.Name = "Content"
    contentHolder.Size = UDim2.new(1, 0, 1, -40)
    contentHolder.Position = UDim2.new(0, 0, 0, 40)
    contentHolder.BackgroundTransparency = 1
    contentHolder.Parent = frame

    -- Close logic
    closeBtn.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    -- Minimize logic
    minimizeBtn.MouseButton1Click:Connect(function()
        contentHolder.Visible = not contentHolder.Visible
    end)

    -- Drag logic
    local dragging, dragInput, dragStart, startPos

    header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    header.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)

    function self:Tab(tabConfig)
        return Tab(tabConfig, contentHolder)
    end

    return setmetatable(self, self)
end
