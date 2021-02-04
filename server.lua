local HttpService = game:GetService("HttpService")
local Event = game:GetService("ReplicatedStorage").tweenEvent
local t = {}

function registerTweening(Object, TweenInfo, Goal)
	local GUID = HttpService:GenerateGUID()
	t[GUID] = {
		["Object"] = Object,
		Start = tick(),
		Duration = TweenInfo.Time,
		["Goal"] = Goal
	}
	
	Event:FireAllClients(GUID, Object, TweenInfo, Goal)
end

Event.OnServerEvent:Connect(Client, GUID)
	if t[GUID] and tick() - t[GUID].Start >= t[GUID].Duration then
		for i,v in pairs(t[GUID].Goal) do
			t[GUID].Object[i] = v
		end
		
		t[GUID] = nil
	end
end)