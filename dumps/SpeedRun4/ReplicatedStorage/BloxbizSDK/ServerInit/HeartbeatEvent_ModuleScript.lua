-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:17
-- Luau version 6, Types version 3
-- Time taken: 0.001207 seconds

local module = {}
local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local Utils_upvr = require(script.Parent.Parent.Utils)
local function sendEvent_upvr() -- Line 8, Named "sendEvent"
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: BatchHTTP_upvr (readonly)
		[3]: Utils_upvr (readonly)
	]]
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "heart_beat";
		data = {
			timestamp = os.time();
			game = AdRequestStats_upvr:getGameStats();
			players = AdRequestStats_upvr:getAllPlayerStatsWithClientStats();
		};
	})
	Utils_upvr.pprint("[SuperBiz] Heart beat sent.")
end
local InternalConfig_upvr = require(script.Parent.Parent.InternalConfig)
local function backgroundProcess_upvr() -- Line 19, Named "backgroundProcess"
	--[[ Upvalues[2]:
		[1]: sendEvent_upvr (readonly)
		[2]: InternalConfig_upvr (readonly)
	]]
	while true do
		sendEvent_upvr()
		task.wait(InternalConfig_upvr.TIME_BETWEEN_HEART_BEAT)
	end
end
function module.init() -- Line 26
	--[[ Upvalues[1]:
		[1]: backgroundProcess_upvr (readonly)
	]]
	task.spawn(backgroundProcess_upvr)
end
return module