-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:00
-- Luau version 6, Types version 3
-- Time taken: 0.000757 seconds

local llama_upvr = require(script:FindFirstAncestor("FriendsRodux").Parent.llama)
local removeUser_upvr = require(script.Parent.removeUser)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: llama_upvr (readonly)
		[2]: removeUser_upvr (readonly)
	]]
	local tostring_result1 = tostring(arg2.additionalData.currentUserId)
	local tostring_result1_2 = tostring(arg2.namedIds.users)
	local any_join_result1 = llama_upvr.Dictionary.join(arg1, {
		[tostring_result1] = removeUser_upvr(arg1[tostring_result1], tostring_result1_2);
		[tostring_result1_2] = removeUser_upvr(arg1[tostring_result1_2], tostring_result1);
	})
	any_join_result1[tostring_result1_2] = nil
	return any_join_result1
end