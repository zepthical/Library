local Button = {}
Button.__index = Button

function Button.new(options, parent)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 40)
    button.Position = UDim2.new(0, 10, 0, 10) -- You can improve layout logic later
    button.Text = options.Name or "Button"
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    button.Parent = parent

    if options.Callback then
        button.MouseButton1Click:Connect(function()
            options.Callback()
        end)
    end
end

return Button
