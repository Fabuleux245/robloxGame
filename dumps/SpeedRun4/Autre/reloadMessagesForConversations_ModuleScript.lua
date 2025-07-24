-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:19
-- Luau version 6, Types version 3
-- Time taken: 0.000854 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Cryo_upvr = require(AppChat.Parent.Cryo)
local ReloadedMessagesForConversations_upvr = require(AppChat.Conversations.Actions.ReloadedMessagesForConversations)
local multiGetConversationDetails_upvr = require(AppChat.Conversations.Thunks.multiGetConversationDetails)
return function(arg1) -- Line 9, Named "reloadMessagesForConversations"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: ReloadedMessagesForConversations_upvr (readonly)
		[3]: multiGetConversationDetails_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[4]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ReloadedMessagesForConversations_upvr (copied, readonly)
			[4]: multiGetConversationDetails_upvr (copied, readonly)
		]]
		local Conversations_upvr = arg1_2:getState().ChatAppReducer.Conversations
		local any_filter_result1 = Cryo_upvr.List.filter(arg1, function(arg1_3) -- Line 14
			--[[ Upvalues[1]:
				[1]: Conversations_upvr (readonly)
			]]
			local var8 = Conversations_upvr[arg1_3]
			if var8 and var8.source == "channels" and var8.messages and var8.messages.Length and 0 < var8.messages:Length() then
				return true
			end
			return false
		end)
		if #any_filter_result1 == 0 then return end
		arg1_2:dispatch(ReloadedMessagesForConversations_upvr(any_filter_result1))
		return arg1_2:dispatch(multiGetConversationDetails_upvr(any_filter_result1))
	end
end