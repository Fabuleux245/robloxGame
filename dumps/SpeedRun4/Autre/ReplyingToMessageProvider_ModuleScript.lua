-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:36
-- Luau version 6, Types version 3
-- Time taken: 0.000570 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local ReplyingToMessageContext_upvr = require(script.Parent.ReplyingToMessageContext)
local ReplyingToMessageDispatchContext_upvr = require(script.Parent.ReplyingToMessageDispatchContext)
return function(arg1) -- Line 13, Named "ReplyingToMessageProvider"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ReplyingToMessageContext_upvr (readonly)
		[3]: ReplyingToMessageDispatchContext_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState(nil)
	return React_upvr.createElement(ReplyingToMessageContext_upvr.Provider, {
		value = any_useState_result1;
	}, {
		ReplyingToMessageDispatch = React_upvr.createElement(ReplyingToMessageDispatchContext_upvr.Provider, {
			value = any_useState_result2;
		}, arg1.children);
	})
end