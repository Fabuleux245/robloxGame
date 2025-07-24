-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:43
-- Luau version 6, Types version 3
-- Time taken: 0.002062 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local Promise_upvr = require(Parent.Promise)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
local getNewestWithNilPreviousMessageId_upvr = require(AppChat.Components.ChatConversation.Utils.getNewestWithNilPreviousMessageId)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[5]:
		[1]: any_new_result1_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: AppChatNetworking_upvr (readonly)
		[4]: RoduxNetworking_upvr (readonly)
		[5]: getNewestWithNilPreviousMessageId_upvr (readonly)
	]]
	any_new_result1_upvr:info("Maybe getting older messages for {}", arg2)
	return function(arg1_2) -- Line 13
		--[[ Upvalues[7]:
			[1]: Promise_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: RoduxNetworking_upvr (copied, readonly)
			[5]: any_new_result1_upvr (copied, readonly)
			[6]: getNewestWithNilPreviousMessageId_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		local ChatAppReducer = arg1_2:getState().ChatAppReducer
		if not ChatAppReducer or not ChatAppReducer.Conversations then
			return Promise_upvr.resolve()
		end
		local var11 = ChatAppReducer.Conversations[arg2]
		local any_getState_result1 = arg1_2:getState()
		if AppChatNetworking_upvr.rodux.GetOlderMessages.getStatus(any_getState_result1, arg2) ~= RoduxNetworking_upvr.Enum.NetworkStatus.Fetching then
			any_getState_result1 = false
		else
			any_getState_result1 = true
		end
		if not var11 then
			any_new_result1_upvr:info("Canceling since conversation id {} is not in local state", arg2)
			return Promise_upvr.resolve()
		end
		if any_getState_result1 then
			any_new_result1_upvr:info("Canceling since we are already fetching older messages for conversation id {}", arg2)
			return Promise_upvr.resolve()
		end
		if var11.fetchedOldestMessage then
			any_new_result1_upvr:info("Canceling since we have already fetched the oldest message for conversation id {}", arg2)
			return Promise_upvr.resolve()
		end
		return arg1(arg2, getNewestWithNilPreviousMessageId_upvr(var11.messages), var11.nextCursor)
	end
end