-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:56
-- Luau version 6, Types version 3
-- Time taken: 0.000517 seconds

local module_upvr = {
	playerStats = {};
}
local merge_upvr = require(script.Parent.Parent.Utils).merge
local function newPlayerFired_upvr(arg1, arg2) -- Line 10, Named "newPlayerFired"
	--[[ Upvalues[2]:
		[1]: merge_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	module_upvr.playerStats[arg1.UserId] = merge_upvr(arg2, require(script.Parent):getPlayerStats(arg1))
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
function module_upvr.init() -- Line 16
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: newPlayerFired_upvr (readonly)
	]]
	ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").NewPlayerEvent.OnServerEvent:Connect(newPlayerFired_upvr)
end
return module_upvr