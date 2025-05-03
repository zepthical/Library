# Zepthical UI Library

## Installation

```lua
local Zepth = loadstring(game:HttpGet("https://raw.githubusercontent.com/zepthical/Library/main/Library/Init.lua"))()
```

## Window

```lua
local Window = Zepth:Window({
    Name = "Example",
    Theme = "Dark",
})
```

## Tab

```lua
local Tab = Window:Tab({Name = "Main",})
```
## Button

```lua
local Button = Tab:Button({
    Name = "Click Me",
    Callback = function()
        print("Clicked!")
    end
})
```

To delete it you can use
```lua
Zepth:Destroy()
```

We're updating...
