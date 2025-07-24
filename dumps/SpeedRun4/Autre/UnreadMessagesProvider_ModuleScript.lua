-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:38
-- Luau version 6, Types version 3
-- Time taken: 0.000399 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local UnreadMessagesDispatchContext_upvr = require(script.Parent.UnreadMessagesDispatchContext)
return function(arg1) -- Line 11, Named "UnreadMessagesProvider"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: UnreadMessagesDispatchContext_upvr (readonly)
	]]
	return React_upvr.createElement(UnreadMessagesDispatchContext_upvr.Provider, {
		value = arg1.dispatch;
	}, arg1.children)
end