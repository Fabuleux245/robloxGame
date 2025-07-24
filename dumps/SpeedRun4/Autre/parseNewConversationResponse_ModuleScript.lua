-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:02
-- Luau version 6, Types version 3
-- Time taken: 0.001364 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Promise_upvr = require(AppChat.Parent.Promise)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local CreateConversationError_upvr = require(AppChat.Analytics.Enums.CreateConversationError)
local EventNames_upvr = require(AppChat.Analytics.EventNames)
return function(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: ConversationChannels_upvr (readonly)
		[3]: CreateConversationError_upvr (readonly)
		[4]: EventNames_upvr (readonly)
	]]
	if not arg1 then
		return Promise_upvr.reject("No conversation returned.")
	end
	if arg1.status == "failed" then
		return Promise_upvr.reject("Failed to create conversation.")
	end
	local var7 = arg1
	local any_fromChannelsApi_result1 = ConversationChannels_upvr.fromChannelsApi(var7)
	if arg2 then
		if not any_fromChannelsApi_result1 then
			var7 = CreateConversationError_upvr.InvalidResponse
		else
			var7 = arg1.status
		end
		arg2.fireAnalyticsEvent(EventNames_upvr.NewConversationCreated, {
			conversationId = any_fromChannelsApi_result1.id;
			createConversationResult = var7;
			participantsCount = #any_fromChannelsApi_result1.participants;
			createdReason = arg3 or "unknown";
		})
	end
	return any_fromChannelsApi_result1
end