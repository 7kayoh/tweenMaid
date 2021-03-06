local TweenService = game:GetService("TweenService")
local Event = game:GetService("ReplicatedStorage"):WaitForChild("tweenEvent")

Event.OnClientEvent:Connect(function(GUID, Object, InfoTable, Goal)
	local tween = TweenService:Create(Object, TweenInfo.new(table.unpack(InfoTable)), Goal)
	tween.Completed:Connect(function()
		tween:Destroy()		
		tween = nil
	end)
		
	tween:Play()
end)
