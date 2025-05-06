local TabHandler = {}

function TabHandler:CreateTab(tabButton, tabFrame, tabContainer)
    tabContainer._tabs = tabContainer._tabs or {}
    table.insert(tabContainer._tabs, { Button = tabButton, Frame = tabFrame })

    tabButton.MouseButton1Click:Connect(function()
        for _, tab in ipairs(tabContainer._tabs) do
            tab.Frame.Visible = false
            tab.Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- inactive
        end
        tabFrame.Visible = true
        tabButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180) -- active
    end)
end

return TabHandler
