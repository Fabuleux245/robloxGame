-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:03
-- Luau version 6, Types version 3
-- Time taken: 0.004891 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local FFlagAppChatEnableGroupedMessageBubbles_upvr = require(AppChat.Flags.FFlagAppChatEnableGroupedMessageBubbles)
local getThumbnailsForUserIds_upvr = require(AppChat.Users.getThumbnailsForUserIds)
local Conversation_upvr = require(AppChat.Models.Conversation)
local MessageModel_upvr = require(AppChat.Models.MessageModel)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local Cryo_upvr = require(AppChat.Parent.Cryo)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 33
	--[[ Upvalues[7]:
		[1]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[2]: FFlagAppChatEnableGroupedMessageBubbles_upvr (readonly)
		[3]: getThumbnailsForUserIds_upvr (readonly)
		[4]: Conversation_upvr (readonly)
		[5]: MessageModel_upvr (readonly)
		[6]: any_new_result1_upvr (readonly)
		[7]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 182 start (CF ANALYSIS FAILED)
	if arg2.senderTargetId == tostring(arg1.LocalUserId) then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 182 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 180 start (CF ANALYSIS FAILED)
	if arg2.repliesTo == nil then
	else
	end
	-- KONSTANTERROR: [15] 12. Error Block 180 end (CF ANALYSIS FAILED)
end