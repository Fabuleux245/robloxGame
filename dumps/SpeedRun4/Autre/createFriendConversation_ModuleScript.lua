-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:05
-- Luau version 6, Types version 3
-- Time taken: 0.001015 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local getOtherParticipants_upvr = require(AppChat.Conversations.getOtherParticipants)
local createConversation_upvr = require(script.Parent.createConversation)
local FriendConversationCreated_upvr = require(AppChat.Conversations.Actions.FriendConversationCreated)
return function(arg1, arg2) -- Line 9, Named "createFriendConversation"
	--[[ Upvalues[4]:
		[1]: any_new_result1_upvr (readonly)
		[2]: getOtherParticipants_upvr (readonly)
		[3]: createConversation_upvr (readonly)
		[4]: FriendConversationCreated_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: any_new_result1_upvr (copied, readonly)
			[3]: getOtherParticipants_upvr (copied, readonly)
			[4]: createConversation_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: FriendConversationCreated_upvr (copied, readonly)
		]]
		local any_getState_result1 = arg1_2:getState()
		local var8 = any_getState_result1.ChatAppReducer.Conversations[arg1]
		if not var8 then
			any_new_result1_upvr:error("Could not find friendConversationId {} in store state. Unable to create converstation.", arg1)
			return
		end
		local getOtherParticipants_upvr_result1 = getOtherParticipants_upvr(var8, any_getState_result1.LocalUserId)
		if 1 < #getOtherParticipants_upvr_result1 then
			any_new_result1_upvr:error("friendConversationId {} has more than 2 participants. Unable to create one-to-one conversation.", arg1)
			return
		end
		return arg1_2:dispatch(createConversation_upvr("one_to_one", {tostring(getOtherParticipants_upvr_result1[1])}, arg2, "userSentMessageToFriendPlaceholder")):tap(function(arg1_3) -- Line 41
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: FriendConversationCreated_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			local tbl = {
				newConversationId = arg1_3.id;
			}
			tbl.oldFriendConversationId = arg1
			arg1_2:dispatch(FriendConversationCreated_upvr(tbl))
		end)
	end
end