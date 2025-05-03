return function(config, parent)
    local tab = {}
    tab.__index = tab

    local section = Instance.new("Frame")
    section.Name = config.Name or "Tab"
    section.Size = UDim2.new(1, 0, 0, 300)
    section.BackgroundTransparency = 1
    section.Parent = parent

    -- Create Tab Button
    local tabButton = Instance.new("TextButton")
    tabButton.Size = UDim2.new(1, 0, 0, 40)
    tabButton.BackgroundTransparency = 1
    tabButton.Text = ""
    tabButton.Parent = parent

    -- Icon
    if config.Icon then
        local icon = Instance.new("ImageLabel")
        icon.Size = UDim2.new(0, 20, 0, 20)
        icon.Position = UDim2.new(0, 10, 0.5, -10)
        icon.BackgroundTransparency = 1
        icon.Image = config.Icon
        icon.Parent = tabButton
    end

    -- Label
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -40, 1, 0)
    label.Position = UDim2.new(0, 40, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = config.Name or "Tab"
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.SourceSansBold
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = tabButton

    -- Locking
    if config.Locked then
        tabButton.AutoButtonColor = false
        label.TextTransparency = 0.6
        if icon then
            icon.ImageTransparency = 0.6
        end
    end

    -- Tab Click Behavior
    tabButton.MouseButton1Click:Connect(function()
        if not config.Locked then
            for _, child in ipairs(parent:GetChildren()) do
                if child:IsA("Frame") then
                    child.Visible = false
                end
            end
            section.Visible = true
        end
    end)

    -- Initially hide section
    section.Visible = false

    -- Button creation
    function tab:Button(buttonConfig)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 120, 0, 30)
        button.Position = UDim2.new(0, 10, 0, 10 + (#section:GetChildren() - 1) * 35)
        button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.Text = buttonConfig.Name or "Button"
        button.Font = Enum.Font.SourceSansBold
        button.TextSize = 14
        button.Parent = section

        button.MouseButton1Click:Connect(function()
            if buttonConfig.Callback then
                buttonConfig.Callback()
            end
        end)
    end

    return setmetatable(tab, tab)
end
