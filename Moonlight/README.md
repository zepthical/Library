# LunarisUI

A modular, tab-based UI framework for Roblox, inspired by WindUI but with original styling.

## 📁 Structure
- `src/MainUI.lua`: Main window logic.
- `src/TabHandler.lua`: Handles tab creation and switching.
- `src/Components/Button.lua`: Base button logic.
- `ExampleApp.lua`: Example usage in Roblox Studio.

## 🧪 Usage
```lua
local TabHandler = require(path.to.TabHandler)
TabHandler:CreateTab(Tab1Button, Tab1Frame, TabContainer)
```
