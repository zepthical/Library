return function(config, parent)
    local button = Instance.new("TextButton", parent)
    button.Name = config.Name or "Button"
    button.Size = UDim2.new(0, 200, 0, 40)
    button.Position = UDim2.new(0, 100, 0, 100)
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = config.Name or "Button"

    button.MouseButton1Click:Connect(function()
        if config.Callback then
            config.Callback()
        end
    end)

    return button
end
