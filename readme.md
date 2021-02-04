# tweenMaid
A dual-context sided system to assist you with handling replicated tween without relying on the server for tweening


## Requirements
* Know how to code (obviously)
* Roblox Studio
* A `RemoteEvent` called `tweenEvent` in `ReplicatedStorage`

## Setup

Simply drag the `server.lua` to ServerScriptService, and drag the `client.lua` to somewhere for players, like `StarterPlayerScript`

## Usage
You can create a tween request by calling the function `registerTweening` in `server.lua`. Here's an example:

```lua
registerTweening(workspace.Baseplate, {4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut}, {Size = Vector3.new(25, 25, 25)})
```

> For some reason, TweenInfo **can not** be passed to the client in a RemoteEvent (which is a bit dumb in my opinion). Hence, you need to return a table of the TweenInfo configuration, basically a TweenInfo without the `TweenInfo.new` but wrapped in a table.

## License

This repository is licensed under MIT license.
