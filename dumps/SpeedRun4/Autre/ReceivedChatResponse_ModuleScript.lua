-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:17
-- Luau version 6, Types version 3
-- Time taken: 0.000701 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local MessageModel_upvr = require(AppChat.Models.MessageModel)
local reportAnalyticsForNewMessages_upvr = require(AppChat.Utils.reportAnalyticsForNewMessages)
local ReceivedMessages_upvr = require(AppChat.Conversations.Actions.ReceivedMessages)
return function(arg1, arg2, arg3) -- Line 8
	--[[ Upvalues[3]:
		[1]: MessageModel_upvr (readonly)
		[2]: reportAnalyticsForNewMessages_upvr (readonly)
		[3]: ReceivedMessages_upvr (readonly)
	]]
	return function(arg1_2) -- Line 9
		--[[ Upvalues[6]:
			[1]: MessageModel_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
			[4]: arg3 (readonly)
			[5]: reportAnalyticsForNewMessages_upvr (copied, readonly)
			[6]: ReceivedMessages_upvr (copied, readonly)
		]]
		local any_fromSentChannelsApi_result1 = MessageModel_upvr.fromSentChannelsApi(arg2, arg1, arg3)
		if not any_fromSentChannelsApi_result1 then
		else
			reportAnalyticsForNewMessages_upvr(any_fromSentChannelsApi_result1, arg1)
			local var8 = arg1_2:getState().ChatAppReducer.Conversations[arg1]
			if 0 < var8.messages:Length() then
				any_fromSentChannelsApi_result1.previousMessageId = var8.messages:Last().id
			end
			arg1_2:dispatch(ReceivedMessages_upvr(arg1, {any_fromSentChannelsApi_result1}))
		end
	end
end