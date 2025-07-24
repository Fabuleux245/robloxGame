-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:03
-- Luau version 6, Types version 3
-- Time taken: 0.002694 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Conversation = require(AppChat.SocialLibraries).Conversation
local Cryo_upvr = require(AppChat.Parent.Cryo)
local getOtherParticipant_upvr = Conversation.getOtherParticipant
local RoduxPresence_upvr = require(AppChat.Http.RoduxPresence)
local userPresenceUtils_upvr = require(AppChat.Users.userPresenceUtils)
local FFlagAppChatRemoveUserProfileTitles_upvr = require(AppChat.Flags.FFlagAppChatRemoveUserProfileTitles)
local getConversationTitle_upvr = require(AppChat.Conversations.getConversationTitle)
local getConversationDisplayTitle_upvr = Conversation.getConversationDisplayTitle
local populateUserIdsWithState_upvr = require(script.Parent.populateUserIdsWithState)
local getLastMessageContent_upvr = require(script.Parent.getLastMessageContent)
local getThumbnailsForUserIds_upvr = require(AppChat.Users.getThumbnailsForUserIds)
local getConversationGameId_upvr = Conversation.getConversationGameId
return function(arg1, arg2) -- Line 40
	--[[ Upvalues[11]:
		[1]: Cryo_upvr (readonly)
		[2]: getOtherParticipant_upvr (readonly)
		[3]: RoduxPresence_upvr (readonly)
		[4]: userPresenceUtils_upvr (readonly)
		[5]: FFlagAppChatRemoveUserProfileTitles_upvr (readonly)
		[6]: getConversationTitle_upvr (readonly)
		[7]: getConversationDisplayTitle_upvr (readonly)
		[8]: populateUserIdsWithState_upvr (readonly)
		[9]: getLastMessageContent_upvr (readonly)
		[10]: getThumbnailsForUserIds_upvr (readonly)
		[11]: getConversationGameId_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local participants = arg2.participants
	if not participants then
		participants = {}
	end
	local any_filter_result1 = Cryo_upvr.List.filter(participants, function(arg1_2) -- Line 42
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var25
		if arg1_2 == arg1.LocalUserId then
			var25 = false
		else
			var25 = true
		end
		return var25
	end)
	local var27
	if arg2.conversationType == "OneToOneConversation" then
		var27 = userPresenceUtils_upvr.getUserDisplayPresence(RoduxPresence_upvr.Selectors.getUserPresenceByUserId(arg1, getOtherParticipant_upvr(arg1, arg2.participants)))
	end
	for _, v in pairs(participants) do
		({})[v] = arg1.Users[v]
		local _
	end
	local module_2 = {}
	if arg2.lastUpdated then
	end
	module_2.shortRelativeTime = arg2.lastUpdated:GetShortRelativeTime()
	if arg2.lastUpdated then
	end
	module_2.longRelativeTime = arg2.lastUpdated:GetLongRelativeTime()
	if arg2.lastUpdated then
	end
	module_2.unixTime = arg2.lastUpdated:GetUnixTimestamp()
	local module = {}
	local id = arg2.id
	module.id = id
	if FFlagAppChatRemoveUserProfileTitles_upvr then
	else
	end
	module.title = getConversationDisplayTitle_upvr(arg2)
	module.participants = populateUserIdsWithState_upvr(arg1, participants)
	module.otherParticipants = any_filter_result1
	module.isDefaultTitle = arg2.isDefaultTitle
	module.hasGroupUp = arg2.hasGroupUp
	module.lastMessageContent = getLastMessageContent_upvr(arg2) or ""
	module.hasUnreadMessages = arg2.hasUnreadMessages or false
	module.thumbnails = getThumbnailsForUserIds_upvr(any_filter_result1)
	local var35 = var27
	if var35 then
		var35 = var27.text
	end
	module.presenceText = var35
	var35 = var27
	local var36 = var35
	if var36 then
		var36 = var27.image
	end
	module.presenceImage = var36
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.gameId = getConversationGameId_upvr(arg2, arg1.LocalUserId, {})
	module.serverState = arg2.serverState
	module.moderationType = arg2.moderationType
	module.userPendingStatus = arg2.userPendingStatus
	module.conversationType = arg2.conversationType
	return Cryo_upvr.Dictionary.join(module, module_2)
end