-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:55
-- Luau version 6, Types version 3
-- Time taken: 0.000880 seconds

local module = {
	init = function() -- Line 5, Named "init"
	end;
}
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
function module.checkReward(arg1, arg2) -- Line 9
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl = {}
	tbl.reward_id = arg2
	tbl.player_id = arg1.UserId
	local any_request_result1, any_request_result2 = BatchHTTP_upvr.request("post", "/rewards/sdk/check-user-reward", tbl)
	local var6
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var6 = any_request_result2.reward
		return var6
	end
	if not any_request_result1 or not INLINED() then
		var6 = any_request_result2
	end
	return any_request_result1, var6
end
return module