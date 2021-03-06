local HttpService = game:GetService("HttpService")

function registerTweening(Object, InfoTable, Goal)
	Event:FireAllClients(Object, InfoTable, Goal)
	wait(InfoTable[1)
	for i,v in pairs(Goal) do
		Object[i] = v
	end
end
