-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:29
-- Luau version 6, Types version 3
-- Time taken: 0.001141 seconds

local module = {}
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local Utils_upvr = require(script.Parent.Utils)
local BatchHTTP_upvr = require(script.Parent.BatchHTTP)
local function queueButtonImpression_upvr(arg1, arg2) -- Line 9, Named "queueButtonImpression"
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
	]]
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "gui_button_press";
		data = Utils_upvr.merge(Utils_upvr.merge(arg2, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStatsWithClientStatsYielding(arg1));
	})
end
local function onBatchGuiImpressions_upvr(arg1, arg2) -- Line 17, Named "onBatchGuiImpressions"
	--[[ Upvalues[1]:
		[1]: queueButtonImpression_upvr (readonly)
	]]
	for _, v in arg2 do
		queueButtonImpression_upvr(arg1, v)
	end
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
function module.init() -- Line 23
	--[[ Upvalues[2]:
		[1]: onBatchGuiImpressions_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "OnSendGuiImpressions"
	RemoteEvent.OnServerEvent:Connect(onBatchGuiImpressions_upvr)
	RemoteEvent.Parent = ReplicatedStorage_upvr.BloxbizRemotes
end
return module