-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:46
-- Luau version 6, Types version 3
-- Time taken: 0.000607 seconds

local getDeepValue_upvr = require(script:FindFirstAncestor("AppChat").Utils.getDeepValue)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: getDeepValue_upvr (readonly)
	]]
	local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1, string.format("ChatAppReducer.Conversations.%s", arg2 or ""))
	if not getDeepValue_upvr_result1 or not getDeepValue_upvr_result1.usersTyping or not arg1.Users then
		return {}
	end
	for i, v in pairs(getDeepValue_upvr_result1.usersTyping) do
		if i ~= arg1.LocalUserId and v then
			table.insert({}, arg1.Users[i])
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end