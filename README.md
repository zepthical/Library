# Zepthical UI Library

## Installation

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Init.lua"))()
```

## Example Usage

```lua
local win = Library.Window("My UI")
local tab = Library.Tab("Main Tab", win)

Library.Button({
    Name = "Click Me",
    Callback = function()
        print("Button clicked!")
    end
}, tab)
```
