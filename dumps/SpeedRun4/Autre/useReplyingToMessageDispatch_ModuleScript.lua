-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:37
-- Luau version 6, Types version 3
-- Time taken: 0.000498 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local ReplyingToMessageDispatchContext_upvr = require(script.Parent.ReplyingToMessageDispatchContext)
return function() -- Line 7, Named "useReplyingToMessageDispatch"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ReplyingToMessageDispatchContext_upvr (readonly)
	]]
	return React_upvr.useContext(ReplyingToMessageDispatchContext_upvr)
end