-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:14
-- Luau version 6, Types version 3
-- Time taken: 0.009952 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Constants_upvr = require(AppChat.Constants)
local React_upvr = require(Parent.React)
local UserProfiles_upvr = require(Parent.UserProfiles)
local tbl_3_upvr = {
	minSelections = 1;
	maxSelections = Constants_upvr.MIN_PARTICIPANT_COUNT;
	maxConversationSize = Constants_upvr.MAX_PARTICIPANT_COUNT;
	canOnlyCreateOneToOneChat = false;
	filterPredicate = require(script.Parent.Utils.searchFilterPredicate);
	sortComparator = require(script.Parent.Utils.sortComparator);
	conversation = {
		participants = {};
	};
	navigateToToast = function(arg1) -- Line 71, Named "navigateToToast"
	end;
	selectedUsersChanged = function(arg1, arg2) -- Line 72, Named "selectedUsersChanged"
	end;
	isDebugEnabled = false;
}
local Cryo_upvr = require(Parent.Cryo)
local useIsFriendRenameActive_upvr = require(AppChat.Hooks.useIsFriendRenameActive)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local useFetchPaginatedFriends_upvr = require(script.Parent.useFetchPaginatedFriends)
local useUserProfilesFetch_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch
local isUserInConversation_upvr = require(script.Parent.Utils.isUserInConversation)
local Promise_upvr = require(Parent.Promise)
local isUserInList_upvr = require(script.Parent.Utils.isUserInList)
local usePrevious_upvr = require(Parent.RoactUtils).Hooks.usePrevious
local Responsive_upvr = require(Parent.Responsive)
local View_upvr = require(Parent.Foundation).View
local SelectChatMembers_upvr = require(script.Parent.SelectChatMembers)
function SelectChatMembersContainer(arg1) -- Line 77
	--[[ Upvalues[18]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useIsFriendRenameActive_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[7]: SquadExperimentation_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: useFetchPaginatedFriends_upvr (readonly)
		[10]: useUserProfilesFetch_upvr (readonly)
		[11]: UserProfiles_upvr (readonly)
		[12]: isUserInConversation_upvr (readonly)
		[13]: Promise_upvr (readonly)
		[14]: isUserInList_upvr (readonly)
		[15]: usePrevious_upvr (readonly)
		[16]: Responsive_upvr (readonly)
		[17]: View_upvr (readonly)
		[18]: SelectChatMembers_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_3_upvr, arg1)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState({})
	local var9_result1 = useIsFriendRenameActive_upvr()
	local tbl_2 = {}
	local var27
	if var9_result1 then
		var27 = "Feature.Chat.Label.SearchConnections"
	else
		var27 = "Feature.Friends.Label.SearchFriends"
	end
	tbl_2.searchFriendsText = var27
	var27 = "Common.Presence.Label.Offline"
	tbl_2.offlinePresenceText = var27
	var27 = "Common.Presence.Label.Online"
	tbl_2.onlinePresenceText = var27
	var27 = {}
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		if var9_result1 then
		else
		end
	elseif var9_result1 then
	else
	end
	var27[1] = "Feature.Chat.Message.ToastText"
	var27.friendNum = Constants_upvr.MAX_PARTICIPANT_COUNT
	var27.connectionsNum = Constants_upvr.MAX_PARTICIPANT_COUNT
	tbl_2.tooManyFriendsText = var27
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		if var9_result1 then
			var27 = "Feature.Chat.Message.AddConnectionsPartyLimitSingular"
		else
			var27 = "Feature.Chat.Message.PartyGroupLimitSingular"
		end
	elseif var9_result1 then
		var27 = "Feature.Chat.Message.GroupConnectionLimitSingular"
	else
		var27 = "Feature.Chat.Message.ChatGroupLimitSingular"
	end
	tbl_2.tooManyFriendsTextSingular = var27
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(tbl_2)
	local useFetchPaginatedFriends_upvr_result1_upvr, useFetchPaginatedFriends_upvr_result2_upvr, var13_result3_upvr = useFetchPaginatedFriends_upvr()
	local useUserProfilesFetch_upvr_result1_upvr = useUserProfilesFetch_upvr({
		userIds = React_upvr.useMemo(function() -- Line 111
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: useFetchPaginatedFriends_upvr_result1_upvr (readonly)
			]]
			return Cryo_upvr.List.map(useFetchPaginatedFriends_upvr_result1_upvr, function(arg1_2) -- Line 112
				return arg1_2.id
			end)
		end, {useFetchPaginatedFriends_upvr_result1_upvr});
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_4) -- Line 146
		--[[ Upvalues[6]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: any_union_result1_upvr (readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: any_useState_result2_upvr (readonly)
			[5]: isUserInList_upvr (copied, readonly)
			[6]: Cryo_upvr (copied, readonly)
		]]
		if any_union_result1_upvr.maxSelections <= #any_useState_result1_upvr then
			return Promise_upvr.reject("Max selections reached")
		end
		any_useState_result2_upvr(function(arg1_5) -- Line 150
			--[[ Upvalues[3]:
				[1]: isUserInList_upvr (copied, readonly)
				[2]: arg1_4 (readonly)
				[3]: Cryo_upvr (copied, readonly)
			]]
			if isUserInList_upvr(arg1_5, arg1_4.id) then
				return arg1_5
			end
			local module_2 = {}
			module_2[1] = arg1_4
			return Cryo_upvr.List.join(arg1_5, module_2)
		end)
		return Promise_upvr.resolve()
	end, {any_useState_result1_upvr, any_union_result1_upvr.maxSelections})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_6) -- Line 160
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(function(arg1_7) -- Line 161
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1_6 (readonly)
			]]
			return Cryo_upvr.List.filter(arg1_7, function(arg1_8) -- Line 162
				--[[ Upvalues[1]:
					[1]: arg1_6 (copied, readonly)
				]]
				local var50
				if arg1_8.id == arg1_6.id then
					var50 = false
				else
					var50 = true
				end
				return var50
			end)
		end)
		return Promise_upvr.resolve()
	end, {})
	local usePrevious_upvr_result1_upvr = usePrevious_upvr(any_useState_result1_upvr)
	React_upvr.useEffect(function() -- Line 203
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: usePrevious_upvr_result1_upvr (readonly)
			[3]: any_union_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr ~= usePrevious_upvr_result1_upvr then
			any_union_result1_upvr.selectedUsersChanged(any_useState_result1_upvr, any_union_result1_upvr.minSelections)
		end
	end, {any_useState_result1_upvr, any_union_result1_upvr.selectedUsersChanged, any_union_result1_upvr.minSelections})
	if Responsive_upvr.useOrientation() ~= Responsive_upvr.Keys.Portrait then
		-- KONSTANTWARNING: GOTO [232] #179
	end
	-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [231] 178. Error Block 50 start (CF ANALYSIS FAILED)
	local module = {}
	if true then
	else
	end
	module.Size = UDim2.new(1, 0, 1, -56)
	do
		return React_upvr.createElement(View_upvr, module, {
			SelectMembers = React_upvr.createElement(SelectChatMembers_upvr, {
				friendEntries = React_upvr.useMemo(function() -- Line 122
					--[[ Upvalues[7]:
						[1]: useUserProfilesFetch_upvr_result1_upvr (readonly)
						[2]: Cryo_upvr (copied, readonly)
						[3]: useFetchPaginatedFriends_upvr_result1_upvr (readonly)
						[4]: isUserInConversation_upvr (copied, readonly)
						[5]: any_union_result1_upvr (readonly)
						[6]: UserProfiles_upvr (copied, readonly)
						[7]: useLocalization_upvr_result1_upvr (readonly)
					]]
					if not useUserProfilesFetch_upvr_result1_upvr.data then
						return {}
					end
					return Cryo_upvr.List.filterMap(useFetchPaginatedFriends_upvr_result1_upvr, function(arg1_3) -- Line 126
						--[[ Upvalues[6]:
							[1]: isUserInConversation_upvr (copied, readonly)
							[2]: any_union_result1_upvr (copied, readonly)
							[3]: UserProfiles_upvr (copied, readonly)
							[4]: useUserProfilesFetch_upvr_result1_upvr (copied, readonly)
							[5]: Cryo_upvr (copied, readonly)
							[6]: useLocalization_upvr_result1_upvr (copied, readonly)
						]]
						if not isUserInConversation_upvr(arg1_3.id, any_union_result1_upvr.conversation) then
							local module_3 = {
								displayName = UserProfiles_upvr.Selectors.getCombinedNameFromId(useUserProfilesFetch_upvr_result1_upvr.data, arg1_3.id) or "";
								username = UserProfiles_upvr.Selectors.getUsernameFromId(useUserProfilesFetch_upvr_result1_upvr.data, arg1_3.id);
							}
							local presenceText = arg1_3.presenceText
							if not presenceText then
								presenceText = useLocalization_upvr_result1_upvr.offlinePresenceText
							end
							module_3.presenceText = presenceText
							return Cryo_upvr.Dictionary.join(arg1_3, module_3)
						end
						return nil
					end)
				end, {useUserProfilesFetch_upvr_result1_upvr.data, useFetchPaginatedFriends_upvr_result1_upvr, any_union_result1_upvr.conversation, useLocalization_upvr_result1_upvr.offlinePresenceText});
				selectedUsers = any_useState_result1_upvr;
				maxSelections = any_union_result1_upvr.maxSelections;
				onEntryActivated = React_upvr.useCallback(function(arg1_9) -- Line 170
					--[[ Upvalues[6]:
						[1]: isUserInList_upvr (copied, readonly)
						[2]: any_useState_result1_upvr (readonly)
						[3]: any_useCallback_result1_upvr (readonly)
						[4]: any_useCallback_result1_upvr_2 (readonly)
						[5]: any_union_result1_upvr (readonly)
						[6]: useLocalization_upvr_result1_upvr (readonly)
					]]
					if isUserInList_upvr(any_useState_result1_upvr, arg1_9.id) then
						any_useCallback_result1_upvr(arg1_9):catch(warn)
					else
						any_useCallback_result1_upvr_2(arg1_9):catch(function(arg1_10) -- Line 174
							--[[ Upvalues[2]:
								[1]: any_union_result1_upvr (copied, readonly)
								[2]: useLocalization_upvr_result1_upvr (copied, readonly)
							]]
							if arg1_10 == "Max selections reached" then
								if any_union_result1_upvr.canOnlyCreateOneToOneChat then
								else
								end
								local tbl = {}
								local tbl_4 = {}
								tbl_4.toastContent = {
									toastTitle = useLocalization_upvr_result1_upvr.tooManyFriendsText;
								}
								tbl.toastProps = tbl_4
								any_union_result1_upvr.navigateToToast(tbl)
							else
								warn("Error adding user: ", arg1_10)
							end
						end)
					end
				end, {any_useState_result1_upvr, useLocalization_upvr_result1_upvr, any_useCallback_result1_upvr, any_useCallback_result1_upvr_2, any_union_result1_upvr.canOnlyCreateOneToOneChat, any_union_result1_upvr.navigateToToast});
				fetchMoreFriends = React_upvr.useCallback(function() -- Line 196
					--[[ Upvalues[2]:
						[1]: useFetchPaginatedFriends_upvr_result2_upvr (readonly)
						[2]: var13_result3_upvr (readonly)
					]]
					if useFetchPaginatedFriends_upvr_result2_upvr and not var13_result3_upvr then
						useFetchPaginatedFriends_upvr_result2_upvr()
					end
				end, {useFetchPaginatedFriends_upvr_result2_upvr, var13_result3_upvr});
				searchFriendsText = useLocalization_upvr_result1_upvr.searchFriendsText;
				shouldShowSelectChatMembersBar = not any_union_result1_upvr.canOnlyCreateOneToOneChat;
				conversation = any_union_result1_upvr.conversation;
				isDebugEnabled = any_union_result1_upvr.isDebugEnabled;
			});
		})
	end
	-- KONSTANTERROR: [231] 178. Error Block 50 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(SelectChatMembersContainer)