local TabHandler = require(script.Parent.src.TabHandler)

-- Example UI elements
local Tab1Button = script.Parent.Tab1Button
local Tab2Button = script.Parent.Tab2Button
local Tab1Frame = script.Parent.Tab1Frame
local Tab2Frame = script.Parent.Tab2Frame
local TabContainer = script.Parent.MainFrame

-- Register tabs
TabHandler:CreateTab(Tab1Button, Tab1Frame, TabContainer)
TabHandler:CreateTab(Tab2Button, Tab2Frame, TabContainer)
