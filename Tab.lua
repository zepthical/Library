-- Tab.lua
local Button = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Button.lua"))()

return function(tabName, parent)
    local tab = {}

    local label = Instance.new("TextLabel", parent)
    label.Name = tabName .. "_Tab"
    label.Text = tabName
    label.Size = UDim2.new(1, 0, 0, 30)
    label.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BorderSizePixel = 0

    tab.Frame = label

    function tab:Button(config)
        return Button(config, label)
    end

    return tab
end
