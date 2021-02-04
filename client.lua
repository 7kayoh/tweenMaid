local TweenService = game:GetService("TweenService")
local Event = game:GetService("ReplicatedStorage"):WaitForChild("tweenEvent")

Event.OnClientEvent:Connect(function(GUID, Object, TweenInfo, Goal)
	TweenService:Create(Object, TweenInfo, Goal):Play()
	wait(TweenInfo.Time)
	Event:FireServer(GUID)
end)