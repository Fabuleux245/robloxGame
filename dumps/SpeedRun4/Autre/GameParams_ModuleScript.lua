-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:28
-- Luau version 6, Types version 3
-- Time taken: 0.001756 seconds

local module_upvr = {
	new = function() -- Line 15, Named "new"
		return {
			referralPage = "LuaChat";
		}
	end;
}
function module_upvr.fromPlaceId(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.placeId = arg1
	return any_new_result1_2
end
local EnableOptionalPlaceIdForUserIdGameJoins_upvr = require(script:FindFirstAncestor("ExperienceService").Parent.SharedFlags).EnableOptionalPlaceIdForUserIdGameJoins
function module_upvr.fromUserId(arg1, arg2) -- Line 31
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: EnableOptionalPlaceIdForUserIdGameJoins_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.userId = arg1
	if EnableOptionalPlaceIdForUserIdGameJoins_upvr() then
		any_new_result1.placeId = arg2
	end
	return any_new_result1
end
function module_upvr.fromPlaceInstance(arg1, arg2) -- Line 42
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_3 = module_upvr.new()
	any_new_result1_3.placeId = arg1
	any_new_result1_3.gameInstanceId = arg2
	return any_new_result1_3
end
function module_upvr.fromConversationId(arg1, arg2) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_4 = module_upvr.new()
	any_new_result1_4.placeId = arg1
	any_new_result1_4.conversationId = arg2
	return any_new_result1_4
end
function module_upvr.fromParams(arg1) -- Line 60
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_5 = module_upvr.new()
	for i, v in pairs(arg1) do
		any_new_result1_5[i] = v
	end
	return any_new_result1_5
end
return module_upvr