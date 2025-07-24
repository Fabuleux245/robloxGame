-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:18
-- Luau version 6, Types version 3
-- Time taken: 0.000466 seconds

local reloadMessagesForConversations_upvr = require(script.Parent.reloadMessagesForConversations)
local Cryo_upvr = require(script:FindFirstAncestor("AppChat").Parent.Cryo)
return function() -- Line 7, Named "reloadAllMessages"
	--[[ Upvalues[2]:
		[1]: reloadMessagesForConversations_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	return function(arg1) -- Line 8
		--[[ Upvalues[2]:
			[1]: reloadMessagesForConversations_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
		]]
		return arg1:dispatch(reloadMessagesForConversations_upvr(Cryo_upvr.Dictionary.keys(arg1:getState().ChatAppReducer.Conversations)))
	end
end