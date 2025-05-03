# Zepthical UI Library

## Installation

```lua
local Zepth = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Init.lua"))()
```

## Window

```lua
local Window = Zepth.Window("Example UI")
```

## Tab

```lua
local Tab = Window.Tab("Example Tab", Window)
```
## Button

```lua
Tab.Button({
    Name = "Click Me",
    Callback = function()
        print("Button clicked!")
    end
})
```

We're updating...
