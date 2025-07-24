-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:53
-- Luau version 6, Types version 3
-- Time taken: 0.001794 seconds

local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local Utils_upvr = require(script.Parent.Parent.Utils)
local module = {}
local function _(arg1) -- Line 12, Named "queueUserIdling"
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: BatchHTTP_upvr (readonly)
	]]
	Utils_upvr.pprint("[SuperBiz] Queue user idling.")
	local tbl = {
		event_type = "user_idling";
	}
	tbl.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl)
end
local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local merge_upvr = Utils_upvr.merge
local function getUserIdlingStats_upvr(arg1, arg2) -- Line 19, Named "getUserIdlingStats"
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
	]]
	local module_2 = {
		timestamp = os.time();
	}
	module_2.time_idling = arg2
	return merge_upvr(merge_upvr(module_2, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStats(arg1))
end
local RateLimiter_upvr = require(script.Parent.Parent.Utils.RateLimiter)
local function userIdlingFired_upvr(arg1, arg2) -- Line 30, Named "userIdlingFired"
	--[[ Upvalues[4]:
		[1]: RateLimiter_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: getUserIdlingStats_upvr (readonly)
		[4]: BatchHTTP_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then
	else
		Utils_upvr.pprint("[SuperBiz] User idling fired.")
		Utils_upvr.pprint("[SuperBiz] Queue user idling.")
		table.insert(BatchHTTP_upvr.eventQueue, {
			event_type = "user_idling";
			data = getUserIdlingStats_upvr(arg1, arg2);
		})
	end
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
function module.init() -- Line 40
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: userIdlingFired_upvr (readonly)
	]]
	ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").UserIdlingEvent.OnServerEvent:Connect(userIdlingFired_upvr)
end
return module