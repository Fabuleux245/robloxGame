-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:09
-- Luau version 6, Types version 3
-- Time taken: 0.000780 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Conversation_upvr = require(AppChat.Models.Conversation)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: Conversation_upvr (readonly)
		[2]: ConversationChannels_upvr (readonly)
	]]
	if arg1.conversationType ~= Conversation_upvr.Type.MULTI_USER_CONVERSATION then
		return false
	end
	if arg1.userPendingStatus == ConversationChannels_upvr.UserPendingStatus.Pending then
		return true
	end
	if arg1.userPendingStatus == ConversationChannels_upvr.UserPendingStatus.Invalid and arg1.moderationType == ConversationChannels_upvr.ModerationType.TrustedComms then
		return true
	end
	return false
end