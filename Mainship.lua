--[[
SERVERSCRIPTSERVICE

If you aint a scripter dont touch this

]]--

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local NotificationEvent = ReplicatedStorage:WaitForChild("NotificationEvent2")

local function createNotification(player, config)
	NotificationEvent:FireClient(player, config)
end

NotificationEvent.OnServerEvent:Connect(function(player, config)
	if typeof(config) == "table" then
		createNotification(player, config)
	else
		warn("Invalid notification request received by user:", player.Name)
	end
end)
