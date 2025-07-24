-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:23
-- Luau version 6, Types version 3
-- Time taken: 0.000567 seconds

local isUserInConversation_upvr = require(script.Parent.isUserInConversation)
local populateUserWithState_upvr = require(script:FindFirstAncestor("AppChat").Users.populateUserWithState)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: isUserInConversation_upvr (readonly)
		[2]: populateUserWithState_upvr (readonly)
	]]
	for _, v in pairs(arg1.Users) do
		if v.id ~= tostring(arg1.LocalUserId) and v.isFriend and not isUserInConversation_upvr(v.id, arg2) then
			({})[v.id] = populateUserWithState_upvr(arg1, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end