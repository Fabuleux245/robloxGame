-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:41
-- Luau version 6, Types version 3
-- Time taken: 0.004323 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local fetchLatestConversationDetails_upvr = require(AppChat.Conversations.Thunks.fetchLatestConversationDetails)
local Conversation_upvr = require(AppChat.Models.Conversation)
local expandToGroupConversation_upvr = require(AppChat.Conversations.Thunks.expandToGroupConversation)
local useGetConversationHasGroupUpFromId_upvr = require(AppChat.Hooks.useGetConversationHasGroupUpFromId)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local useIsUserPending_upvr = require(AppChat.Hooks.useIsUserPending)
local ModerationType_upvr = require(AppChat.Models.ConversationChannels).ModerationType
local FFlagAppChatRemoveUserProfileTitles_upvr = require(AppChat.Flags.FFlagAppChatRemoveUserProfileTitles)
local getConversationTitle_upvr = require(AppChat.Conversations.getConversationTitle)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local UserProfiles_upvr = require(Parent.UserProfiles)
local getOtherParticipants_upvr = require(AppChat.Conversations.getOtherParticipants)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local FFlagReadAppChatFetchingVariable_upvr = require(Parent.SharedFlags).FFlagReadAppChatFetchingVariable
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local RetrievalStatus_upvr = require(Parent.Http).Enum.RetrievalStatus
local module = {
	fetchParentChannelDetails = function(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: fetchLatestConversationDetails_upvr (readonly)
		]]
		return arg1(fetchLatestConversationDetails_upvr(arg2))
	end;
	inviteToParentChannel = function(arg1, arg2, arg3) -- Line 35
		--[[ Upvalues[3]:
			[1]: Conversation_upvr (readonly)
			[2]: AppChatNetworking_upvr (readonly)
			[3]: expandToGroupConversation_upvr (readonly)
		]]
		if arg2.conversationType == Conversation_upvr.Type.MULTI_USER_CONVERSATION then
			return arg1(AppChatNetworking_upvr.rodux.AddUserToConversation.API(arg2.id, arg3)):andThen(function() -- Line 39
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				return arg2.id
			end)
		end
		return arg1(expandToGroupConversation_upvr(arg2.id, arg3)):andThen(function(arg1_2) -- Line 45
			return arg1_2.id
		end)
	end;
	navigateIntoSquadLobby = require(AppChat.Conversations.Thunks.NavigateIntoSquadLobby);
	removeUserFromParentChannel = function(arg1, arg2, arg3) -- Line 51
		--[[ Upvalues[1]:
			[1]: AppChatNetworking_upvr (readonly)
		]]
		return arg1(AppChatNetworking_upvr.rodux.RemoveUserFromConversation.API(arg2, arg3))
	end;
	createConversation = require(AppChat.Conversations.Thunks.createConversation);
	createFriendConversation = require(AppChat.Conversations.Thunks.createFriendConversation);
	useGetConversationFromId = useGetConversationFromId_upvr;
	useParentChannelHasGroupUp = function(arg1) -- Line 55
		--[[ Upvalues[1]:
			[1]: useGetConversationHasGroupUpFromId_upvr (readonly)
		]]
		return useGetConversationHasGroupUpFromId_upvr(arg1)
	end;
	useParentChannelHasSquadAccess = function(arg1) -- Line 59
		--[[ Upvalues[3]:
			[1]: useGetConversationFromId_upvr (readonly)
			[2]: ConversationChannels_upvr (readonly)
			[3]: useIsUserPending_upvr (readonly)
		]]
		if arg1 == nil then
		else
		end
		assert(true, "Missing parent channel ID")
		if not useGetConversationFromId_upvr(arg1) then
			local tbl_2 = {}
		end
		if tbl_2.source == "friends" then
			return true
		end
		if tbl_2.participantPendingStatus ~= ConversationChannels_upvr.UserPendingStatus.Pending then
		else
		end
		local var19 = not useIsUserPending_upvr(tbl_2)
		if var19 then
			var19 = not true
		end
		return var19
	end;
	useParentChannelIsPartyVoiceEligible = function(arg1) -- Line 77
		--[[ Upvalues[2]:
			[1]: useGetConversationFromId_upvr (readonly)
			[2]: ModerationType_upvr (readonly)
		]]
		local var4_result1_2 = useGetConversationFromId_upvr(arg1)
		if var4_result1_2 then
			local moderationType_2 = var4_result1_2.moderationType
			if moderationType_2 ~= nil then
				if var4_result1_2.moderationType ~= ModerationType_upvr.TrustedComms then
					moderationType_2 = false
				else
					moderationType_2 = true
				end
				return moderationType_2
			end
		end
		return nil
	end;
	useParentChannelTitleSelector = function(arg1) -- Line 85
		--[[ Upvalues[6]:
			[1]: useGetConversationFromId_upvr (readonly)
			[2]: FFlagAppChatRemoveUserProfileTitles_upvr (readonly)
			[3]: getConversationTitle_upvr (readonly)
			[4]: useLocalUserId_upvr (readonly)
			[5]: UserProfiles_upvr (readonly)
			[6]: getOtherParticipants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local useGetConversationFromId_upvr_result1 = useGetConversationFromId_upvr(arg1)
		local var33
		if FFlagAppChatRemoveUserProfileTitles_upvr then
			return getConversationTitle_upvr(useGetConversationFromId_upvr_result1)
		end
		local var34 = tonumber(useLocalUserId_upvr()) or 0
		local tbl = {}
		var33 = var34
		tbl.userIds = getOtherParticipants_upvr(useGetConversationFromId_upvr_result1, var33)
		var33 = UserProfiles_upvr
		tbl.query = var33.Queries.userProfilesCombinedNameAndUsernameByUserIds
		local any_useUserProfilesFetch_result1 = UserProfiles_upvr.Hooks.useUserProfilesFetch(tbl)
		local var37 = UserProfiles_upvr
		local tbl_3 = {}
		var33 = 0
		if var33 < var34 then
			var37 = {}
			var33 = tostring(var34)
			var37[1] = var33
		else
			var37 = {}
		end
		tbl_3.userIds = var37
		var33 = UserProfiles_upvr.Queries
		tbl_3.query = var33.userProfilesCombinedNameAndUsernameByUserIds
		var33 = any_useUserProfilesFetch_result1.data
		if var33 then
			var33 = any_useUserProfilesFetch_result1.data.userProfiles
		end
		if var37.Hooks.useUserProfilesFetch(tbl_3).data then
		else
		end
		return getConversationTitle_upvr(useGetConversationFromId_upvr_result1, var33, "")
	end;
}
local var48
if require(Parent.SharedFlags).FFlagSquadThirdPartySettingsChangesEnabled then
	var48 = require(AppChat.Hooks.useIsChatEnabled)
else
	var48 = nil
end
module.useIsChatEnabled = var48
function module.useIsLoadingChatSettings() -- Line 111
	--[[ Upvalues[4]:
		[1]: useSelector_upvr (readonly)
		[2]: FFlagReadAppChatFetchingVariable_upvr (readonly)
		[3]: getDeepValue_upvr (readonly)
		[4]: RetrievalStatus_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 112
		--[[ Upvalues[3]:
			[1]: FFlagReadAppChatFetchingVariable_upvr (copied, readonly)
			[2]: getDeepValue_upvr (copied, readonly)
			[3]: RetrievalStatus_upvr (copied, readonly)
		]]
		if FFlagReadAppChatFetchingVariable_upvr then
			local var46 = arg1
			if getDeepValue_upvr(var46, "ChatAppReducer.ChatSettings.retrievalStatus") == RetrievalStatus_upvr.Done then
				var46 = false
			else
				var46 = true
			end
			return var46
		end
		return nil
	end)
end
return module