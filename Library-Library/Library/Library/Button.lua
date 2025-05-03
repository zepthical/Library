return function(config, parent)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 120, 0, 30)
    button.Position = UDim2.new(0, 10, 0, 10 + (#parent:GetChildren() - 1) * 35)
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = config.Name or "Button"
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 14
    button.Parent = parent

    button.MouseButton1Click:Connect(function()
        if config.Callback then
            config.Callback()
        end
    end)
end