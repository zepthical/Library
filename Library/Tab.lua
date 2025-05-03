local Button = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Button.lua"))()

return function(config, parent)
    local tab = {}
    tab.__index = tab

    local section = Instance.new("Frame")
    section.Name = config.Name or "Tab"
    section.Size = UDim2.new(1, 0, 0, 300)
    section.BackgroundTransparency = 1
    section.Parent = parent

    function tab:Button(buttonConfig)
        return Button(buttonConfig, section)
    end

    return setmetatable(tab, tab)
end