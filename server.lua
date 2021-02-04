local HttpService = game:GetService("HttpService")
local Event = game:GetService("ReplicatedStorage").tweenEvent
local t = {}

function registerTweening(Object, InfoTable, Goal)
	local GUID = HttpService:GenerateGUID()
	t[GUID] = {
		["Object"] = Object,
		Start = tick(),
		Duration = InfoTable[1],
		["Goal"] = Goal
	}
	
	Event:FireAllClients(GUID, Object, InfoTable, Goal)
end

Event.OnServerEvent:Connect(function(Client, GUID)
	if t[GUID] and tick() - t[GUID].Start >= t[GUID].Duration then
		for i,v in pairs(t[GUID].Goal) do
			t[GUID].Object[i] = v
		end

		t[GUID] = nil
	end
end)