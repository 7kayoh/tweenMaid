local TweenService = game:GetService("TweenService")

Event.OnClientEvent:Connect(function(GUID, Object, InfoTable, Goal)
	TweenService:Create(Object, TweenInfo.new(table.unpack(InfoTable)), Goal):Play()
end)
