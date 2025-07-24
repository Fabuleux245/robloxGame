-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:42
-- Luau version 6, Types version 3
-- Time taken: 0.001983 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Promise_upvr = require(Parent.Promise)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatMessageFetchRetryDelayMs", 500)
local getNewestWithNilPreviousMessageId_upvr = require(AppChat.Components.ChatConversation.Utils.getNewestWithNilPreviousMessageId)
local function fetchNextBatch_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 15, Named "fetchNextBatch"
	--[[ Upvalues[7]:
		[1]: any_new_result1_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: AppChatNetworking_upvr (readonly)
		[4]: RoduxNetworking_upvr (readonly)
		[5]: game_DefineFastInt_result1_upvr (readonly)
		[6]: fetchNextBatch_upvr (readonly)
		[7]: getNewestWithNilPreviousMessageId_upvr (readonly)
	]]
	if arg4 <= arg5 then
		any_new_result1_upvr:info("Max depth reached ({}), stopping recursive message fetching", arg5)
		return Promise_upvr.resolve()
	end
	local ChatAppReducer = arg1:getState().ChatAppReducer
	if not ChatAppReducer or not ChatAppReducer.Conversations then
		any_new_result1_upvr:info("No conversations in state, stopping recursive message fetching")
		return Promise_upvr.resolve()
	end
	local var10 = ChatAppReducer.Conversations[arg3]
	if not var10 then
		any_new_result1_upvr:info("Conversation not found, stopping recursive message fetching")
		return Promise_upvr.resolve()
	end
	if var10.fetchedOldestMessage then
		any_new_result1_upvr:info("Already fetched oldest message, stopping recursive message fetching")
		return Promise_upvr.resolve()
	end
	local any_getState_result1 = arg1:getState()
	if AppChatNetworking_upvr.rodux.GetOlderMessages.getStatus(any_getState_result1, arg3) ~= RoduxNetworking_upvr.Enum.NetworkStatus.Fetching then
		any_getState_result1 = false
	else
		any_getState_result1 = true
	end
	if any_getState_result1 then
		any_new_result1_upvr:info("Messages are currently being fetched, waiting before trying again")
		return Promise_upvr.delay(game_DefineFastInt_result1_upvr / 1000):andThen(function() -- Line 51
			--[[ Upvalues[6]:
				[1]: fetchNextBatch_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
				[4]: arg3 (readonly)
				[5]: arg4 (readonly)
				[6]: arg5 (readonly)
			]]
			return fetchNextBatch_upvr(arg1, arg2, arg3, arg4, arg5)
		end)
	end
	any_new_result1_upvr:info("Fetching batch {} of older messages for conversation {}", arg5, arg3)
	return arg1:dispatch(arg2(arg3, getNewestWithNilPreviousMessageId_upvr(var10.messages), var10.nextCursor)):andThen(function() -- Line 61
		--[[ Upvalues[7]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: fetchNextBatch_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: arg2 (readonly)
			[6]: arg3 (readonly)
			[7]: arg4 (readonly)
		]]
		any_new_result1_upvr:info("Fetched batch {}, continuing to fetch next batch", arg5)
		return fetchNextBatch_upvr(arg1, arg2, arg3, arg4, arg5 + 1)
	end)
end
return function(arg1, arg2, arg3) -- Line 67
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: fetchNextBatch_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	any_new_result1_upvr:info("Starting to fetch all remaining older messages for conversation {}", arg2)
	return function(arg1_2) -- Line 69
		--[[ Upvalues[6]:
			[1]: fetchNextBatch_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: any_new_result1_upvr (copied, readonly)
			[6]: Promise_upvr (copied, readonly)
		]]
		return fetchNextBatch_upvr(arg1_2, arg1, arg2, arg3, 0):catch(function(arg1_3) -- Line 70
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			any_new_result1_upvr:warning("Error fetching all remaining older messages: {}", arg1_3)
			return Promise_upvr.reject(arg1_3)
		end)
	end
end