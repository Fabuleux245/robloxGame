-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:37
-- Luau version 6, Types version 3
-- Time taken: 0.012728 seconds

local SocialContextToasts = script:FindFirstAncestor("SocialContextToasts")
local Parent = SocialContextToasts.Parent
local Cryo_upvr = require(Parent.Cryo)
local UserProfiles_upvr = require(Parent.UserProfiles)
local SocialContextToastDiagKeys_upvr = require(SocialContextToasts.Enums.SocialContextToastDiagKeys)
local SetToastContent_upvr = require(SocialContextToasts.Actions.SetToastContent)
local ToastTypes_upvr = require(SocialContextToasts.Enums.ToastTypes)
local SocialContextToastAnalyticsActionTypes_upvr = require(SocialContextToasts.Enums.SocialContextToastAnalyticsActionTypes)
local SocialContextToastEvents_upvr = require(SocialContextToasts.SocialContextToastEvents)
local GetFFlagShowSocialContextToastToAll_upvr = require(Parent.SharedFlags).GetFFlagShowSocialContextToastToAll
local GetFFlagSocialContextToastEventStream_upvr = require(Parent.SharedFlags).GetFFlagSocialContextToastEventStream
local GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr = require(Parent.SharedFlags).GetFFlagEnableReferredPlayerJoinRemoteEvent
local function _(arg1) -- Line 51, Named "canShowToasts"
	--[[ Upvalues[1]:
		[1]: GetFFlagShowSocialContextToastToAll_upvr (readonly)
	]]
	if GetFFlagShowSocialContextToastToAll_upvr() then
		return true
	end
	local pcall_result1_5, pcall_result2_5 = pcall(function() -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:GetLayerData("PlayerApp.GameJoin.UX")
	end)
	if pcall_result1_5 and pcall_result2_5 and pcall_result2_5.IsInformationalSCTEnabled then
		return true
	end
	return false
end
local var17_upvw
if GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr() then
	local GetFFlagEnableReferredPlayerJoinRemoteEventForAll_upvr = require(Parent.SharedFlags).GetFFlagEnableReferredPlayerJoinRemoteEventForAll
	function var17_upvw(arg1) -- Line 69
		--[[ Upvalues[1]:
			[1]: GetFFlagEnableReferredPlayerJoinRemoteEventForAll_upvr (readonly)
		]]
		if GetFFlagEnableReferredPlayerJoinRemoteEventForAll_upvr() then
			return true
		end
		local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 74
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:GetLayerData("PlayerApp.GameJoin.UX")
		end)
		if pcall_result1_2 and pcall_result2_2 and pcall_result2_2.IsInviteeJoinedYouToastEnabled then
			return true
		end
		return false
	end
end
local Promise_upvr = require(Parent.Promise)
local getCombinedNameFromId_upvr = UserProfiles_upvr.Selectors.getCombinedNameFromId
local function getNames_upvr(arg1, arg2) -- Line 85, Named "getNames"
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: UserProfiles_upvr (readonly)
		[3]: getCombinedNameFromId_upvr (readonly)
	]]
	local tbl_5_upvr = {}
	for i = 1, #arg2 do
		tbl_5_upvr[i] = tostring(arg2[i])
	end
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 90
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: UserProfiles_upvr (copied, readonly)
			[3]: tbl_5_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: getCombinedNameFromId_upvr (copied, readonly)
		]]
		arg1:query({
			query = UserProfiles_upvr.Queries.userProfilesAllNamesByUserIds;
			variables = {
				userIds = tbl_5_upvr;
			};
		}):andThen(function(arg1_3) -- Line 98
			--[[ Upvalues[3]:
				[1]: arg2 (copied, readonly)
				[2]: getCombinedNameFromId_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
			]]
			local tbl_6 = {}
			for i_2 = 1, #arg2 do
				table.insert(tbl_6, {
					userId = arg2[i_2];
					name = getCombinedNameFromId_upvr(arg1_3.data, arg2[i_2]);
				})
			end
			arg1_2(tbl_6)
		end)
	end)
end
local function _(arg1, arg2, arg3) -- Line 111, Named "sortFriendsList"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if not arg3 then
		return arg1
	end
	local any_removeValue_result1 = Cryo_upvr.List.removeValue(arg1, arg2)
	table.insert(any_removeValue_result1, 1, arg2)
	return any_removeValue_result1
end
local function showYouJoinedFriendsToast_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 121, Named "showYouJoinedFriendsToast"
	--[[ Upvalues[8]:
		[1]: SetToastContent_upvr (readonly)
		[2]: SocialContextToastDiagKeys_upvr (readonly)
		[3]: GetFFlagSocialContextToastEventStream_upvr (readonly)
		[4]: SocialContextToastEvents_upvr (readonly)
		[5]: ToastTypes_upvr (readonly)
		[6]: SocialContextToastAnalyticsActionTypes_upvr (readonly)
		[7]: Cryo_upvr (readonly)
		[8]: getNames_upvr (readonly)
	]]
	local var36
	if #arg4 == 0 then
		return arg2(SetToastContent_upvr(nil))
	end
	arg1.analytics.Diag:reportCounter(SocialContextToastDiagKeys_upvr.YouJoinedFriends, 1)
	if GetFFlagSocialContextToastEventStream_upvr() then
		local tbl_8 = {
			toastType = ToastTypes_upvr.YouJoinedFriends;
			friendId = table.concat(var36, ',');
		}
		tbl_8.universeId = arg6
		tbl_8.placeId = arg7
		tbl_8.actionType = SocialContextToastAnalyticsActionTypes_upvr.Shown
		SocialContextToastEvents_upvr(arg1.eventIngest, tbl_8)
	end
	if 0 < arg3 then
		if not arg5 then
			var36 = var36
		else
			local any_removeValue_result1_2 = Cryo_upvr.List.removeValue(var36, arg3)
			table.insert(any_removeValue_result1_2, 1, arg3)
			var36 = any_removeValue_result1_2
		end
	end
	return getNames_upvr(arg1.apolloClient, var36):andThen(function(arg1_4) -- Line 148
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: SetToastContent_upvr (copied, readonly)
			[3]: ToastTypes_upvr (copied, readonly)
		]]
		local tbl_15 = {
			toastType = ToastTypes_upvr.YouJoinedFriends;
		}
		tbl_15.userList = arg1_4
		arg2(SetToastContent_upvr(tbl_15))
	end)
end
local UsersGetPresence_upvr = require(Parent.UserLib).Requests.UsersGetPresence
local SocialContextToastIxpConfig_upvr = require(Parent.SharedFlags).SocialContextToastIxpConfig
local SetConfirmationModal_upvr = require(SocialContextToasts.Actions.SetConfirmationModal)
local JoinExperience_upvr = require(Parent.NotificationsCommon).JoinExperience
local PostSendExperienceInvite_upvr = require(Parent.GameInvite).PostSendExperienceInvite
local function handleFollowedPlayerDisconnected_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 156, Named "handleFollowedPlayerDisconnected"
	--[[ Upvalues[13]:
		[1]: UsersGetPresence_upvr (readonly)
		[2]: SocialContextToastDiagKeys_upvr (readonly)
		[3]: GetFFlagSocialContextToastEventStream_upvr (readonly)
		[4]: SocialContextToastEvents_upvr (readonly)
		[5]: ToastTypes_upvr (readonly)
		[6]: SocialContextToastAnalyticsActionTypes_upvr (readonly)
		[7]: getNames_upvr (readonly)
		[8]: SetToastContent_upvr (readonly)
		[9]: SocialContextToastIxpConfig_upvr (readonly)
		[10]: SetConfirmationModal_upvr (readonly)
		[11]: JoinExperience_upvr (readonly)
		[12]: showYouJoinedFriendsToast_upvr (readonly)
		[13]: PostSendExperienceInvite_upvr (readonly)
	]]
	local analytics_upvr_2 = arg1.analytics
	local tbl_11 = {}
	tbl_11[1] = arg3
	UsersGetPresence_upvr(arg1.networking, tbl_11):andThen(function(arg1_5) -- Line 159
		--[[ Upvalues[19]:
			[1]: arg5 (readonly)
			[2]: analytics_upvr_2 (readonly)
			[3]: SocialContextToastDiagKeys_upvr (copied, readonly)
			[4]: GetFFlagSocialContextToastEventStream_upvr (copied, readonly)
			[5]: SocialContextToastEvents_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: ToastTypes_upvr (copied, readonly)
			[8]: arg3 (readonly)
			[9]: arg6 (readonly)
			[10]: SocialContextToastAnalyticsActionTypes_upvr (copied, readonly)
			[11]: getNames_upvr (copied, readonly)
			[12]: arg2 (readonly)
			[13]: SetToastContent_upvr (copied, readonly)
			[14]: SocialContextToastIxpConfig_upvr (copied, readonly)
			[15]: SetConfirmationModal_upvr (copied, readonly)
			[16]: JoinExperience_upvr (copied, readonly)
			[17]: showYouJoinedFriendsToast_upvr (copied, readonly)
			[18]: arg4 (readonly)
			[19]: PostSendExperienceInvite_upvr (copied, readonly)
		]]
		if not arg1_5.responseBody or not arg1_5.responseBody.userPresences or #arg1_5.responseBody.userPresences == 0 then return end
		local _1_upvr = arg1_5.responseBody.userPresences[1]
		local universeId = _1_upvr.universeId
		if tostring(universeId) == tostring(arg5) then
			analytics_upvr_2.Diag:reportCounter(SocialContextToastDiagKeys_upvr.FollowedFriendInOtherPlace, 1)
			if GetFFlagSocialContextToastEventStream_upvr() then
				local tbl_3 = {
					toastType = ToastTypes_upvr.FriendInNonRootPlace;
					friendId = tostring(arg3);
				}
				tbl_3.universeId = arg5
				tbl_3.placeId = arg6
				tbl_3.actionType = SocialContextToastAnalyticsActionTypes_upvr.Shown
				SocialContextToastEvents_upvr(arg1.eventIngest, tbl_3)
			end
			local module_2 = {}
			module_2[1] = arg3
			return getNames_upvr(arg1.apolloClient, module_2):andThen(function(arg1_6) -- Line 184
				--[[ Upvalues[4]:
					[1]: arg2 (copied, readonly)
					[2]: SetToastContent_upvr (copied, readonly)
					[3]: ToastTypes_upvr (copied, readonly)
					[4]: arg3 (copied, readonly)
				]]
				if #arg1_6 == 0 then
				else
					local tbl = {
						toastType = ToastTypes_upvr.FriendInNonRootPlace;
					}
					tbl.joinerUserId = arg3
					tbl.joinerName = arg1_6[1].name
					arg2(SetToastContent_upvr(tbl))
				end
			end)
		end
		if universeId ~= nil then
			if SocialContextToastIxpConfig_upvr.CheckIsActionableToastEnabled() then
				analytics_upvr_2.Diag:reportCounter(SocialContextToastDiagKeys_upvr.FollowedFriendInOtherUniverse, 1)
				if GetFFlagSocialContextToastEventStream_upvr() then
					local tbl_20 = {
						toastType = ToastTypes_upvr.FollowYourFriend;
						friendId = tostring(arg3);
					}
					tbl_20.universeId = arg5
					tbl_20.placeId = arg6
					tbl_20.actionType = SocialContextToastAnalyticsActionTypes_upvr.Shown
					SocialContextToastEvents_upvr(arg1.eventIngest, tbl_20)
				end
				local function onInviteBackButtonClick_upvr(arg1_7) -- Line 206, Named "closeCallback"
					--[[ Upvalues[13]:
						[1]: arg2 (copied, readonly)
						[2]: SetConfirmationModal_upvr (copied, readonly)
						[3]: analytics_upvr_2 (copied, readonly)
						[4]: SocialContextToastDiagKeys_upvr (copied, readonly)
						[5]: GetFFlagSocialContextToastEventStream_upvr (copied, readonly)
						[6]: SocialContextToastEvents_upvr (copied, readonly)
						[7]: arg1 (copied, readonly)
						[8]: arg3 (copied, readonly)
						[9]: arg5 (copied, readonly)
						[10]: arg6 (copied, readonly)
						[11]: SocialContextToastAnalyticsActionTypes_upvr (copied, readonly)
						[12]: _1_upvr (readonly)
						[13]: JoinExperience_upvr (copied, readonly)
					]]
					if not arg1_7 then
						arg2(SetConfirmationModal_upvr(false))
					else
						analytics_upvr_2.Diag:reportCounter(SocialContextToastDiagKeys_upvr.ConfirmLeaveGameButtonClicked, 1)
						if GetFFlagSocialContextToastEventStream_upvr() then
							local tbl_9 = {
								toastType = "LeaveGameConfirmationModal";
								friendId = tostring(arg3);
							}
							tbl_9.universeId = arg5
							tbl_9.placeId = arg6
							tbl_9.actionType = SocialContextToastAnalyticsActionTypes_upvr.ButtonClicked
							SocialContextToastEvents_upvr(arg1.eventIngest, tbl_9)
						end
						JoinExperience_upvr(string.format("roblox://userid=%s&placeid=%s", tostring(arg3), _1_upvr.placeId), true)
					end
				end
				local function onJoinFriendButtonClick_upvr() -- Line 229, Named "onJoinFriendButtonClick"
					--[[ Upvalues[13]:
						[1]: analytics_upvr_2 (copied, readonly)
						[2]: SocialContextToastDiagKeys_upvr (copied, readonly)
						[3]: GetFFlagSocialContextToastEventStream_upvr (copied, readonly)
						[4]: SocialContextToastEvents_upvr (copied, readonly)
						[5]: arg1 (copied, readonly)
						[6]: ToastTypes_upvr (copied, readonly)
						[7]: arg3 (copied, readonly)
						[8]: arg5 (copied, readonly)
						[9]: arg6 (copied, readonly)
						[10]: SocialContextToastAnalyticsActionTypes_upvr (copied, readonly)
						[11]: arg2 (copied, readonly)
						[12]: SetConfirmationModal_upvr (copied, readonly)
						[13]: onInviteBackButtonClick_upvr (readonly)
					]]
					analytics_upvr_2.Diag:reportCounter(SocialContextToastDiagKeys_upvr.JoinFriendButtonClicked, 1)
					if GetFFlagSocialContextToastEventStream_upvr() then
						local tbl_18 = {
							toastType = ToastTypes_upvr.FollowYourFriend;
							friendId = tostring(arg3);
						}
						tbl_18.universeId = arg5
						tbl_18.placeId = arg6
						tbl_18.actionType = SocialContextToastAnalyticsActionTypes_upvr.ButtonClicked
						SocialContextToastEvents_upvr(arg1.eventIngest, tbl_18)
					end
					arg2(SetConfirmationModal_upvr(true, onInviteBackButtonClick_upvr))
				end
				local module = {}
				module[1] = arg3
				return getNames_upvr(arg1.apolloClient, module):andThen(function(arg1_8) -- Line 243
					--[[ Upvalues[6]:
						[1]: arg2 (copied, readonly)
						[2]: SetToastContent_upvr (copied, readonly)
						[3]: ToastTypes_upvr (copied, readonly)
						[4]: arg3 (copied, readonly)
						[5]: _1_upvr (readonly)
						[6]: onJoinFriendButtonClick_upvr (readonly)
					]]
					if #arg1_8 == 0 then
					else
						local tbl_17 = {
							toastType = ToastTypes_upvr.FollowYourFriend;
						}
						tbl_17.joinerUserId = arg3
						tbl_17.joinerName = arg1_8[1].name
						tbl_17.experienceName = _1_upvr.lastLocation
						tbl_17.onActivated = onJoinFriendButtonClick_upvr
						arg2(SetToastContent_upvr(tbl_17))
					end
				end)
			end
			onInviteBackButtonClick_upvr = showYouJoinedFriendsToast_upvr
			onJoinFriendButtonClick_upvr = arg1
			onInviteBackButtonClick_upvr = onInviteBackButtonClick_upvr(onJoinFriendButtonClick_upvr, arg2, arg3, arg4, false, arg5, arg6)
			return onInviteBackButtonClick_upvr
		end
		onJoinFriendButtonClick_upvr = SocialContextToastIxpConfig_upvr
		onInviteBackButtonClick_upvr = onJoinFriendButtonClick_upvr.CheckIsActionableToastEnabled()
		if onInviteBackButtonClick_upvr then
			onJoinFriendButtonClick_upvr = analytics_upvr_2
			onInviteBackButtonClick_upvr = onJoinFriendButtonClick_upvr.Diag:reportCounter
			onInviteBackButtonClick_upvr(SocialContextToastDiagKeys_upvr.FollowedFriendNotInGame, 1)
			onInviteBackButtonClick_upvr = GetFFlagSocialContextToastEventStream_upvr()
			if onInviteBackButtonClick_upvr then
				onInviteBackButtonClick_upvr = SocialContextToastEvents_upvr
				onJoinFriendButtonClick_upvr = arg1.eventIngest
				local tbl_7 = {
					toastType = ToastTypes_upvr.InviteBack;
					friendId = tostring(arg3);
				}
				tbl_7.universeId = arg5
				tbl_7.placeId = arg6
				tbl_7.actionType = SocialContextToastAnalyticsActionTypes_upvr.Shown
				onInviteBackButtonClick_upvr(onJoinFriendButtonClick_upvr, tbl_7)
			end
			function onInviteBackButtonClick_upvr() -- Line 270, Named "onInviteBackButtonClick"
				--[[ Upvalues[13]:
					[1]: analytics_upvr_2 (copied, readonly)
					[2]: SocialContextToastDiagKeys_upvr (copied, readonly)
					[3]: GetFFlagSocialContextToastEventStream_upvr (copied, readonly)
					[4]: SocialContextToastEvents_upvr (copied, readonly)
					[5]: arg1 (copied, readonly)
					[6]: ToastTypes_upvr (copied, readonly)
					[7]: arg3 (copied, readonly)
					[8]: arg5 (copied, readonly)
					[9]: arg6 (copied, readonly)
					[10]: SocialContextToastAnalyticsActionTypes_upvr (copied, readonly)
					[11]: PostSendExperienceInvite_upvr (copied, readonly)
					[12]: arg2 (copied, readonly)
					[13]: SetToastContent_upvr (copied, readonly)
				]]
				analytics_upvr_2.Diag:reportCounter(SocialContextToastDiagKeys_upvr.InviteBackButtonClicked, 1)
				if GetFFlagSocialContextToastEventStream_upvr() then
					local tbl_2 = {
						toastType = ToastTypes_upvr.InviteBack;
						friendId = tostring(arg3);
					}
					tbl_2.universeId = arg5
					tbl_2.placeId = arg6
					tbl_2.actionType = SocialContextToastAnalyticsActionTypes_upvr.ButtonClicked
					SocialContextToastEvents_upvr(arg1.eventIngest, tbl_2)
				end
				PostSendExperienceInvite_upvr(arg1.networking, tostring(arg3), tostring(arg6), "SocialContextToast"):andThen(function(arg1_9) -- Line 286
					--[[ Upvalues[3]:
						[1]: arg2 (copied, readonly)
						[2]: SetToastContent_upvr (copied, readonly)
						[3]: ToastTypes_upvr (copied, readonly)
					]]
					arg2(SetToastContent_upvr({
						toastType = ToastTypes_upvr.InviteSuccess;
					}))
				end, function(arg1_10) -- Line 290
					--[[ Upvalues[3]:
						[1]: arg2 (copied, readonly)
						[2]: SetToastContent_upvr (copied, readonly)
						[3]: ToastTypes_upvr (copied, readonly)
					]]
					arg2(SetToastContent_upvr({
						toastType = ToastTypes_upvr.InviteFailure;
					}))
				end)
			end
			onJoinFriendButtonClick_upvr = getNames_upvr
			local tbl_4 = {}
			tbl_4[1] = arg3
			onJoinFriendButtonClick_upvr = onJoinFriendButtonClick_upvr(arg1.apolloClient, tbl_4)
			onJoinFriendButtonClick_upvr = onJoinFriendButtonClick_upvr:andThen(function(arg1_11) -- Line 298
				--[[ Upvalues[5]:
					[1]: arg2 (copied, readonly)
					[2]: SetToastContent_upvr (copied, readonly)
					[3]: ToastTypes_upvr (copied, readonly)
					[4]: arg3 (copied, readonly)
					[5]: onInviteBackButtonClick_upvr (readonly)
				]]
				if #arg1_11 == 0 then
				else
					local tbl_10 = {
						toastType = ToastTypes_upvr.InviteBack;
					}
					tbl_10.joinerUserId = arg3
					tbl_10.joinerName = arg1_11[1].name
					tbl_10.onActivated = onInviteBackButtonClick_upvr
					arg2(SetToastContent_upvr(tbl_10))
				end
			end)
			return onJoinFriendButtonClick_upvr
		end
		onInviteBackButtonClick_upvr = showYouJoinedFriendsToast_upvr
		onJoinFriendButtonClick_upvr = arg1
		onInviteBackButtonClick_upvr = onInviteBackButtonClick_upvr(onJoinFriendButtonClick_upvr, arg2, arg3, arg4, false, arg5, arg6)
		return onInviteBackButtonClick_upvr
	end, function(arg1_12) -- Line 314
		--[[ Upvalues[2]:
			[1]: analytics_upvr_2 (readonly)
			[2]: SocialContextToastDiagKeys_upvr (copied, readonly)
		]]
		analytics_upvr_2.Diag:reportCounter(SocialContextToastDiagKeys_upvr.ErrorFetchingPresence, 1)
	end)
end
local React_upvr = require(Parent.React)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local DEPRECATED_FriendsGetFriendStatuses_upvr = require(Parent.Http).Requests.DEPRECATED_FriendsGetFriendStatuses
local GetFIntMaxReferredPlayerJoinToasts_upvr = require(Parent.SharedFlags).GetFIntMaxReferredPlayerJoinToasts
local game_DefineFastInt_result1_upvr = game:DefineFastInt("SocialContextToastDelay", 10)
function SocialContextToastDispatcher(arg1) -- Line 320
	--[[ Upvalues[17]:
		[1]: React_upvr (readonly)
		[2]: GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: DEPRECATED_FriendsGetFriendStatuses_upvr (readonly)
		[5]: handleFollowedPlayerDisconnected_upvr (readonly)
		[6]: showYouJoinedFriendsToast_upvr (readonly)
		[7]: SocialContextToastDiagKeys_upvr (readonly)
		[8]: GetFFlagSocialContextToastEventStream_upvr (readonly)
		[9]: SocialContextToastEvents_upvr (readonly)
		[10]: ToastTypes_upvr (readonly)
		[11]: SocialContextToastAnalyticsActionTypes_upvr (readonly)
		[12]: getNames_upvr (readonly)
		[13]: SetToastContent_upvr (readonly)
		[14]: GetFIntMaxReferredPlayerJoinToasts_upvr (readonly)
		[15]: game_DefineFastInt_result1_upvr (readonly)
		[16]: GetFFlagShowSocialContextToastToAll_upvr (readonly)
		[17]: var17_upvw (read and write)
	]]
	local services_upvr = arg1.services
	local playersService_upvr = services_upvr.playersService
	local var78_upvr
	local var79_upvr
	if var79_upvr then
		var79_upvr = React_upvr
		var78_upvr = var79_upvr.useRef
		var79_upvr = nil
		var78_upvr = var78_upvr(var79_upvr)
	else
		var78_upvr = nil
	end
	if GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr() then
		var79_upvr = React_upvr.useRef(0)
	else
		var79_upvr = nil
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local networking_upvr = services_upvr.networking
	local function showToastOnJoin_upvr() -- Line 339, Named "showToastOnJoin"
		--[[ Upvalues[8]:
			[1]: playersService_upvr (readonly)
			[2]: DEPRECATED_FriendsGetFriendStatuses_upvr (copied, readonly)
			[3]: networking_upvr (readonly)
			[4]: handleFollowedPlayerDisconnected_upvr (copied, readonly)
			[5]: services_upvr (readonly)
			[6]: useDispatch_upvr_result1_upvr (readonly)
			[7]: arg1 (readonly)
			[8]: showYouJoinedFriendsToast_upvr (copied, readonly)
		]]
		local tbl_12 = {}
		for _, v in pairs(playersService_upvr:GetPlayers()) do
			table.insert(tbl_12, v.UserId)
		end
		local FollowUserId_upvr = playersService_upvr.LocalPlayer.FollowUserId
		local var92_upvw = false
		local tbl_13_upvr = {}
		DEPRECATED_FriendsGetFriendStatuses_upvr(networking_upvr, tbl_12):andThen(function(arg1_13) -- Line 351
			--[[ Upvalues[8]:
				[1]: FollowUserId_upvr (readonly)
				[2]: var92_upvw (read and write)
				[3]: tbl_13_upvr (readonly)
				[4]: handleFollowedPlayerDisconnected_upvr (copied, readonly)
				[5]: services_upvr (copied, readonly)
				[6]: useDispatch_upvr_result1_upvr (copied, readonly)
				[7]: arg1 (copied, readonly)
				[8]: showYouJoinedFriendsToast_upvr (copied, readonly)
			]]
			if arg1_13 and arg1_13.responseBody and arg1_13.responseBody.data then
				for i_4, v_2 in pairs(arg1_13.responseBody.data) do
					local id = v_2.id
					if id == FollowUserId_upvr then
						var92_upvw = true
					end
					if v_2.status == "Friends" then
						table.insert(tbl_13_upvr, id)
					end
				end
				if 0 < FollowUserId_upvr and not var92_upvw then
					i_4 = FollowUserId_upvr
					v_2 = tbl_13_upvr
					return handleFollowedPlayerDisconnected_upvr(services_upvr, useDispatch_upvr_result1_upvr, i_4, v_2, arg1.gameId, arg1.placeId)
				end
				i_4 = FollowUserId_upvr
				v_2 = tbl_13_upvr
				return showYouJoinedFriendsToast_upvr(services_upvr, useDispatch_upvr_result1_upvr, i_4, v_2, var92_upvw, arg1.gameId, arg1.placeId)
			end
		end)
	end
	local analytics_upvr = services_upvr.analytics
	local function onPlayerAdded_upvr(arg1_14) -- Line 387, Named "onPlayerAdded"
		--[[ Upvalues[12]:
			[1]: playersService_upvr (readonly)
			[2]: analytics_upvr (readonly)
			[3]: SocialContextToastDiagKeys_upvr (copied, readonly)
			[4]: GetFFlagSocialContextToastEventStream_upvr (copied, readonly)
			[5]: SocialContextToastEvents_upvr (copied, readonly)
			[6]: services_upvr (readonly)
			[7]: ToastTypes_upvr (copied, readonly)
			[8]: arg1 (readonly)
			[9]: SocialContextToastAnalyticsActionTypes_upvr (copied, readonly)
			[10]: getNames_upvr (copied, readonly)
			[11]: useDispatch_upvr_result1_upvr (readonly)
			[12]: SetToastContent_upvr (copied, readonly)
		]]
		local LocalPlayer_upvr_2 = playersService_upvr.LocalPlayer
		if arg1_14.FollowUserId == LocalPlayer_upvr_2.UserId then
			local pcall_result1_6, pcall_result2_6 = pcall(function() -- Line 390
				--[[ Upvalues[2]:
					[1]: LocalPlayer_upvr_2 (readonly)
					[2]: arg1_14 (readonly)
				]]
				return LocalPlayer_upvr_2:IsFriendsWith(arg1_14.UserId)
			end)
			if pcall_result1_6 and pcall_result2_6 then
				analytics_upvr.Diag:reportCounter(SocialContextToastDiagKeys_upvr.YouWereFollowed, 1)
				if GetFFlagSocialContextToastEventStream_upvr() then
					SocialContextToastEvents_upvr(services_upvr.eventIngest, {
						toastType = ToastTypes_upvr.FriendJoinedYou;
						friendId = tostring(arg1_14.UserId);
						universeId = arg1.gameId;
						placeId = arg1.placeId;
						actionType = SocialContextToastAnalyticsActionTypes_upvr.Shown;
					})
				end
				getNames_upvr(services_upvr.apolloClient, {arg1_14.UserId}):andThen(function(arg1_16) -- Line 408
					--[[ Upvalues[4]:
						[1]: arg1_14 (readonly)
						[2]: useDispatch_upvr_result1_upvr (copied, readonly)
						[3]: SetToastContent_upvr (copied, readonly)
						[4]: ToastTypes_upvr (copied, readonly)
					]]
					local name_2 = arg1_16[1].name
					if name_2 == nil then
						name_2 = arg1_14.DisplayName
					end
					useDispatch_upvr_result1_upvr(SetToastContent_upvr({
						toastType = ToastTypes_upvr.FriendJoinedYou;
						joinerUserId = arg1_14.UserId;
						joinerName = name_2;
					}))
				end)
			end
		end
	end
	local var119_upvw
	if GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr() then
		var119_upvw = React_upvr.useCallback(function(arg1_17) -- Line 426
			--[[ Upvalues[5]:
				[1]: var79_upvr (readonly)
				[2]: GetFIntMaxReferredPlayerJoinToasts_upvr (copied, readonly)
				[3]: useDispatch_upvr_result1_upvr (readonly)
				[4]: SetToastContent_upvr (copied, readonly)
				[5]: ToastTypes_upvr (copied, readonly)
			]]
			if GetFIntMaxReferredPlayerJoinToasts_upvr() <= var79_upvr.current then
			else
				var79_upvr.current += 1
				useDispatch_upvr_result1_upvr(SetToastContent_upvr({
					toastType = ToastTypes_upvr.InviteeJoinedYou;
					joinerUserId = arg1_17.UserId;
					joinerName = arg1_17.DisplayName;
				}))
			end
		end, {})
	end
	local ixpService_upvr = services_upvr.ixpService
	local any_createRef_result1_upvr = React_upvr.createRef()
	local any_useRef_result1_upvr = React_upvr.useRef(var78_upvr)
	React_upvr.useEffect(function() -- Line 441
		--[[ Upvalues[13]:
			[1]: game_DefineFastInt_result1_upvr (copied, readonly)
			[2]: ixpService_upvr (readonly)
			[3]: GetFFlagShowSocialContextToastToAll_upvr (copied, readonly)
			[4]: any_createRef_result1_upvr (readonly)
			[5]: playersService_upvr (readonly)
			[6]: showToastOnJoin_upvr (readonly)
			[7]: any_useRef_result1_upvr (readonly)
			[8]: onPlayerAdded_upvr (readonly)
			[9]: GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr (copied, readonly)
			[10]: services_upvr (readonly)
			[11]: var17_upvw (copied, read and write)
			[12]: var78_upvr (readonly)
			[13]: var119_upvw (read and write)
		]]
		task.delay(game_DefineFastInt_result1_upvr, function() -- Line 444
			--[[ Upvalues[12]:
				[1]: ixpService_upvr (copied, readonly)
				[2]: GetFFlagShowSocialContextToastToAll_upvr (copied, readonly)
				[3]: any_createRef_result1_upvr (copied, readonly)
				[4]: playersService_upvr (copied, readonly)
				[5]: showToastOnJoin_upvr (copied, readonly)
				[6]: any_useRef_result1_upvr (copied, readonly)
				[7]: onPlayerAdded_upvr (copied, readonly)
				[8]: GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr (copied, readonly)
				[9]: services_upvr (copied, readonly)
				[10]: var17_upvw (copied, read and write)
				[11]: var78_upvr (copied, readonly)
				[12]: var119_upvw (copied, read and write)
			]]
			local var131
			if GetFFlagShowSocialContextToastToAll_upvr() then
				var131 = true
			else
				local pcall_result1_3, pcall_result2 = pcall(function() -- Line 56
					--[[ Upvalues[1]:
						[1]: ixpService_upvr (readonly)
					]]
					return ixpService_upvr:GetLayerData("PlayerApp.GameJoin.UX")
				end)
				if pcall_result1_3 and pcall_result2 and pcall_result2.IsInformationalSCTEnabled then
					var131 = true
				else
					var131 = false
				end
			end
			if not var131 then
			else
				var131 = any_createRef_result1_upvr.current
				if not var131 then
					var131 = #playersService_upvr:GetPlayers()
					if 0 < var131 then
						var131 = showToastOnJoin_upvr
						var131()
					end
					var131 = any_useRef_result1_upvr
					var131.current = playersService_upvr.PlayerAdded:Connect(onPlayerAdded_upvr)
					var131 = GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr()
					if var131 then
						var131 = services_upvr.referredPlayerJoinRemoteEvent
						if var131 then
							var131 = var17_upvw(ixpService_upvr)
							if var131 then
								var131 = var78_upvr
								var131.current = services_upvr.referredPlayerJoinRemoteEvent.OnClientEvent:Connect(var119_upvw)
							end
						end
					end
				end
			end
		end)
		return function() -- Line 468
			--[[ Upvalues[4]:
				[1]: any_createRef_result1_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr (copied, readonly)
				[3]: GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr (copied, readonly)
				[4]: var78_upvr (copied, readonly)
			]]
			any_createRef_result1_upvr.current = true
			if any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:disconnect()
			end
			if GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr() and var78_upvr.current then
				var78_upvr.current:disconnect()
			end
		end
	end, {playersService_upvr, var119_upvw, services_upvr.referredPlayerJoinRemoteEvent})
end
return SocialContextToastDispatcher