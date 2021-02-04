local TweenService = game:GetService("TweenService")
local Event = game:GetService("ReplicatedStorage"):WaitForChild("tweenEvent")

Event.OnClientEvent:Connect(function(GUID, Object, InfoTable, Goal)
	TweenService:Create(Object, TweenInfo.new(table.unpack(InfoTable)), Goal):Play()
	wait(InfoTable[1])
	Event:FireServer(GUID)
end)