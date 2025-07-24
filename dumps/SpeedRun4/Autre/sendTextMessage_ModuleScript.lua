-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:22
-- Luau version 6, Types version 3
-- Time taken: 0.000496 seconds

local SendChatTextMessagePolicy_upvr = require(script.Parent.SendPolicies.SendChatTextMessagePolicy)
local SendMessageUsingPolicy_upvr = require(script.Parent.SendMessageUsingPolicy)
return function(arg1, arg2, arg3, arg4) -- Line 4
	--[[ Upvalues[2]:
		[1]: SendChatTextMessagePolicy_upvr (readonly)
		[2]: SendMessageUsingPolicy_upvr (readonly)
	]]
	return SendMessageUsingPolicy_upvr(SendChatTextMessagePolicy_upvr:new(arg1, arg2, arg3, arg4))
end