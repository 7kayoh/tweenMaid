# tweenMaid
A dual-context sided system to assist you with handling replicated tween without relying on the server for tweening


## Requirements
* Know how to code (obviously)
* Roblox Studio

## Setup

Simply drag the `server.lua` to ServerScriptService, and drag the `client.lua` to somewhere for players, like `StarterPlayerScript`

## Usage
You can create a tween request by calling the function `registerTweening` in `server.lua`. Here's an example:

```lua
registerTweening(workspace.Baseplate, {4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut}, {Size = Vector3.new(25, 25, 25)})
```

## License

This repository is licensed under MIT license.
