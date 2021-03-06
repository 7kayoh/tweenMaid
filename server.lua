local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Event = Instance.new("RemoteEvent")

function registerTweening(Object, InfoTable, Goal)
	Event:FireAllClients(Object, InfoTable, Goal)
	wait(InfoTable[1)
	for i,v in pairs(Goal) do
		Object[i] = v
	end
end

Event.Name = "tweenEvent"
Event.Parent = ReplicatedStorage
