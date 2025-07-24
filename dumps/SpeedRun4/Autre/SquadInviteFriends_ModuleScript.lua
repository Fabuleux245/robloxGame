-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:21
-- Luau version 6, Types version 3
-- Time taken: 0.010307 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local FriendsMenu = require(Parent.FriendsMenu)
local UIBlox = require(Parent.UIBlox)
local dependencies = require(Squads.dependencies)
local SharedFlags = dependencies.SharedFlags
local function var7_upvr() -- Line 54
end
local tbl_3_upvr = {
	buttonText = "Add";
	onMultiInvite = function(arg1) -- Line 58, Named "onMultiInvite"
	end;
	participants = {};
	analyticsInfo = {};
	onRemoveCallback = function() -- Line 61, Named "onRemoveCallback"
	end;
	preselectedUsers = nil;
	preselectedUsersUnremovable = false;
}
local Cryo_upvr = dependencies.Cryo
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useNavigation_upvr = dependencies.useNavigation
local useStore_upvr = dependencies.Hooks.useStore
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local useCurrentSquadSelector_upvr = dependencies.Hooks.useCurrentSquadSelector
local useLocalization_upvr = dependencies.Hooks.useLocalization
local SquadInviteSourceEnum_upvr = require(Squads.Enums.SquadInviteSourceEnum)
local EventNames_upvr = dependencies.SquadsCore.Analytics.EventNames
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local Images_upvr = UIBlox.App.ImageSet.Images
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local Promise_upvr = require(Parent.Promise)
local FFlagPartyParticipantDisabledFixEnabled_upvr = SharedFlags.FFlagPartyParticipantDisabledFixEnabled
local InviteToParentChannel_upvr = require(Squads.Thunks.InviteToParentChannel)
local inviteToSquad_upvr = require(Squads.Thunks.inviteToSquad)
local SquadPromptType_upvr = dependencies.SquadsCore.Enums.SquadPromptType
local Constants_upvr_2 = dependencies.SquadsCore.Common.Constants
local FriendsMenuContextWrapper_upvr = FriendsMenu.FriendsMenuContextWrapper
local FFlagEnablePartyQuickStartButton_upvr = SharedFlags.FFlagEnablePartyQuickStartButton
local Constants_upvr = require(Squads.Common.Constants)
local FriendsMenuSearch_upvr = FriendsMenu.FriendsMenuSearch
local SelectedUsersScroller_upvr = FriendsMenu.SelectedUsersScroller
local FriendsMenuFriendsList_upvr = FriendsMenu.FriendsMenuFriendsList
local FriendMenuType_upvr = FriendsMenu.FriendMenuType
local SquadInviteFriendsButton_upvr = require(script.Parent.SquadInviteFriendsButton)
return function(arg1) -- Line 66, Named "SquadInviteFriends"
	--[[ Upvalues[33]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: useDispatch_upvr (readonly)
		[6]: useNavigation_upvr (readonly)
		[7]: useStore_upvr (readonly)
		[8]: useStyle_upvr (readonly)
		[9]: useAppPolicy_upvr (readonly)
		[10]: useLocalUserId_upvr (readonly)
		[11]: dependencyArray_upvr (readonly)
		[12]: useCurrentSquadSelector_upvr (readonly)
		[13]: useLocalization_upvr (readonly)
		[14]: SquadInviteSourceEnum_upvr (readonly)
		[15]: EventNames_upvr (readonly)
		[16]: NotificationModalsManager_upvr (readonly)
		[17]: Images_upvr (readonly)
		[18]: SquadInviteChangesExperimentation_upvr (readonly)
		[19]: Promise_upvr (readonly)
		[20]: FFlagPartyParticipantDisabledFixEnabled_upvr (readonly)
		[21]: InviteToParentChannel_upvr (readonly)
		[22]: inviteToSquad_upvr (readonly)
		[23]: SquadPromptType_upvr (readonly)
		[24]: Constants_upvr_2 (readonly)
		[25]: FriendsMenuContextWrapper_upvr (readonly)
		[26]: var7_upvr (readonly)
		[27]: FFlagEnablePartyQuickStartButton_upvr (readonly)
		[28]: Constants_upvr (readonly)
		[29]: FriendsMenuSearch_upvr (readonly)
		[30]: SelectedUsersScroller_upvr (readonly)
		[31]: FriendsMenuFriendsList_upvr (readonly)
		[32]: FriendMenuType_upvr (readonly)
		[33]: SquadInviteFriendsButton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 82 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local var12_result1_upvr = useDispatch_upvr()
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local var14_result1_upvr = useStore_upvr()
	local _, any_useState_result2_upvr = React_upvr.useState(0)
	local var17_result1_upvr = useLocalUserId_upvr()
	local function _() -- Line 85
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		return Cryo_upvr.List.toSet(any_join_result1_upvr.participants)
	end
	local function _(arg1_3) -- Line 89
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_3.AbsoluteSize.Y)
	end
	local var19_result1_upvr = useCurrentSquadSelector_upvr()
	local var52_upvr
	if var19_result1_upvr and var19_result1_upvr.parentChannelId then
		var52_upvr = var19_result1_upvr.parentChannelId
	else
		var52_upvr = ""
	end
	local any_useGetConversationFromId_result1_upvr = any_useContext_result1_upvr.useGetConversationFromId(var52_upvr)
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		user = "Feature.Squads.Description.User";
		youAddedMoreThanTwoToChat = "Feature.Squads.Description.YouAddedMoreThanTwoToChat";
		youAddedToChat = "Feature.Squads.Description.YouAddedToChat";
		youAddedTwoToChat = "Feature.Squads.Description.YouAddedTwoToChat";
	})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_4) -- Line 106
		--[[ Upvalues[5]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: var52_upvr (readonly)
			[3]: SquadInviteSourceEnum_upvr (copied, readonly)
			[4]: any_useContext_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
		]]
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadInvite, Cryo_upvr.Dictionary.union({
			parentChannelId = var52_upvr;
			source = SquadInviteSourceEnum_upvr.SourceSquadInvitePage;
		}, arg1_4))
	end, dependencyArray_upvr(var52_upvr, any_useContext_result1_upvr.fireSquadAnalytics))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5) -- Line 118
		--[[ Upvalues[4]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: useLocalization_upvr_result1_upvr (readonly)
			[3]: NotificationModalsManager_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
		]]
		local any_keys_result1 = Cryo_upvr.Dictionary.keys(arg1_5)
		local var61
		if 2 < #any_keys_result1 then
			var61 = useLocalization_upvr_result1_upvr.youAddedMoreThanTwoToChat:gsub("{(.-)}", {
				username = arg1_5[any_keys_result1[1]].displayName;
				userCountMinusOne = tostring(#any_keys_result1 - 1);
			})
		elseif #any_keys_result1 == 2 then
			local tbl_4 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_4.username1 = arg1_5[any_keys_result1[1]].displayName
			tbl_4.username2 = arg1_5[any_keys_result1[2]].displayName
			var61 = useLocalization_upvr_result1_upvr.youAddedTwoToChat:gsub("{(.-)}", tbl_4)
		else
			local tbl = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.username = arg1_5[any_keys_result1[1]].displayName
			var61 = useLocalization_upvr_result1_upvr.youAddedToChat:gsub("{(.-)}", tbl)
		end
		NotificationModalsManager_upvr.SetUIBloxToast({
			iconImage = Images_upvr["icons/actions/friends/friendAdd"];
			toastTitle = var61;
		})
	end, {useLocalization_upvr_result1_upvr.youAddedMoreThanTwoToChat, useLocalization_upvr_result1_upvr.youAddedToChat, useLocalization_upvr_result1_upvr.youAddedTwoToChat})
	local useAppPolicy_upvr_result1_upvr = useAppPolicy_upvr(React_upvr.useCallback(function(arg1_2) -- Line 78
		return arg1_2.getCanUsePlatformChat()
	end, {}))
	local function _(arg1_6) -- Line 146
		--[[ Upvalues[18]:
			[1]: var19_result1_upvr (readonly)
			[2]: any_useGetConversationFromId_result1_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[5]: var17_result1_upvr (readonly)
			[6]: any_useContext_result1_upvr (readonly)
			[7]: var12_result1_upvr (readonly)
			[8]: Promise_upvr (copied, readonly)
			[9]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
			[10]: InviteToParentChannel_upvr (copied, readonly)
			[11]: useNavigation_upvr_result1_upvr (readonly)
			[12]: inviteToSquad_upvr (copied, readonly)
			[13]: any_useCallback_result1_upvr_2 (readonly)
			[14]: any_useCallback_result1_upvr (readonly)
			[15]: var14_result1_upvr (readonly)
			[16]: SquadPromptType_upvr (copied, readonly)
			[17]: Constants_upvr_2 (copied, readonly)
			[18]: useAppPolicy_upvr_result1_upvr (readonly)
		]]
		if not var19_result1_upvr or not any_useGetConversationFromId_result1_upvr then
		else
			local any_keys_result1_3_upvr = Cryo_upvr.Dictionary.keys(arg1_6)
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
				local any_toSet_result1_upvr = Cryo_upvr.List.toSet(any_useGetConversationFromId_result1_upvr.participants)
				local any_filter_result1_upvr_4 = Cryo_upvr.List.filter(any_keys_result1_3_upvr, function(arg1_15) -- Line 158
					--[[ Upvalues[1]:
						[1]: any_toSet_result1_upvr (readonly)
					]]
					local var107
					if any_toSet_result1_upvr[arg1_15] ~= nil then
						var107 = false
					else
						var107 = true
					end
					return var107
				end)
				local function var109_upvr() -- Line 162
					--[[ Upvalues[18]:
						[1]: Cryo_upvr (copied, readonly)
						[2]: any_useGetConversationFromId_result1_upvr (copied, readonly)
						[3]: any_keys_result1_3_upvr (readonly)
						[4]: var17_result1_upvr (copied, readonly)
						[5]: any_useContext_result1_upvr (copied, readonly)
						[6]: var12_result1_upvr (copied, readonly)
						[7]: Promise_upvr (copied, readonly)
						[8]: any_filter_result1_upvr_4 (readonly)
						[9]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
						[10]: InviteToParentChannel_upvr (copied, readonly)
						[11]: useNavigation_upvr_result1_upvr (copied, readonly)
						[12]: inviteToSquad_upvr (copied, readonly)
						[13]: var19_result1_upvr (copied, readonly)
						[14]: any_useCallback_result1_upvr_2 (copied, readonly)
						[15]: any_useCallback_result1_upvr (copied, readonly)
						[16]: arg1_6 (readonly)
						[17]: var14_result1_upvr (copied, readonly)
						[18]: SquadPromptType_upvr (copied, readonly)
					]]
					local any_filter_result1_upvr = Cryo_upvr.List.filter(any_useGetConversationFromId_result1_upvr.participants, function(arg1_16) -- Line 165
						--[[ Upvalues[3]:
							[1]: Cryo_upvr (copied, readonly)
							[2]: any_keys_result1_3_upvr (copied, readonly)
							[3]: var17_result1_upvr (copied, readonly)
						]]
						local var115 = false
						if Cryo_upvr.List.find(any_keys_result1_3_upvr, tostring(arg1_16)) == nil then
							if arg1_16 == var17_result1_upvr then
								var115 = false
							else
								var115 = true
							end
						end
						return var115
					end)
					local tbl_9 = {}
					for _, v in ipairs(any_filter_result1_upvr) do
						table.insert(tbl_9, any_useContext_result1_upvr.removeUserFromParentChannel(var12_result1_upvr, any_useGetConversationFromId_result1_upvr.id, v))
					end
					Promise_upvr.all(tbl_9):andThen(function() -- Line 180
						--[[ Upvalues[16]:
							[1]: any_filter_result1_upvr_4 (copied, readonly)
							[2]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
							[3]: var12_result1_upvr (copied, readonly)
							[4]: InviteToParentChannel_upvr (copied, readonly)
							[5]: any_filter_result1_upvr (readonly)
							[6]: useNavigation_upvr_result1_upvr (copied, readonly)
							[7]: any_useGetConversationFromId_result1_upvr (copied, readonly)
							[8]: inviteToSquad_upvr (copied, readonly)
							[9]: var19_result1_upvr (copied, readonly)
							[10]: var17_result1_upvr (copied, readonly)
							[11]: any_useCallback_result1_upvr_2 (copied, readonly)
							[12]: any_useCallback_result1_upvr (copied, readonly)
							[13]: arg1_6 (copied, readonly)
							[14]: any_useContext_result1_upvr (copied, readonly)
							[15]: var14_result1_upvr (copied, readonly)
							[16]: SquadPromptType_upvr (copied, readonly)
						]]
						if 0 < #any_filter_result1_upvr_4 then
							if FFlagPartyParticipantDisabledFixEnabled_upvr then
								local tbl_6 = {
									dispatch = var12_result1_upvr;
									onErrorCallback = function() -- Line 185, Named "onErrorCallback"
										--[[ Upvalues[2]:
											[1]: any_filter_result1_upvr (copied, readonly)
											[2]: useNavigation_upvr_result1_upvr (copied, readonly)
										]]
										if 0 < #any_filter_result1_upvr then
											useNavigation_upvr_result1_upvr.pop()
										end
									end;
								}
								local function onSuccessCallback(arg1_17) -- Line 190
									--[[ Upvalues[10]:
										[1]: any_useGetConversationFromId_result1_upvr (copied, readonly)
										[2]: var12_result1_upvr (copied, readonly)
										[3]: inviteToSquad_upvr (copied, readonly)
										[4]: var19_result1_upvr (copied, readonly)
										[5]: var17_result1_upvr (copied, readonly)
										[6]: any_filter_result1_upvr_4 (copied, readonly)
										[7]: any_useCallback_result1_upvr_2 (copied, readonly)
										[8]: any_useCallback_result1_upvr (copied, readonly)
										[9]: arg1_6 (copied, readonly)
										[10]: useNavigation_upvr_result1_upvr (copied, readonly)
									]]
									local var123
									if arg1_17 == any_useGetConversationFromId_result1_upvr.id then
										var123 = false
									else
										var123 = true
									end
									var12_result1_upvr(inviteToSquad_upvr(var19_result1_upvr.squadId, arg1_17, var17_result1_upvr, any_filter_result1_upvr_4, any_useCallback_result1_upvr_2, var123))
									any_useCallback_result1_upvr(arg1_6)
									useNavigation_upvr_result1_upvr.pop()
								end
								tbl_6.onSuccessCallback = onSuccessCallback
								tbl_6.parentChannel = any_useGetConversationFromId_result1_upvr
								tbl_6.squadExternalContext = any_useContext_result1_upvr
								tbl_6.userIds = any_filter_result1_upvr_4
								var12_result1_upvr(InviteToParentChannel_upvr(tbl_6))
							else
								any_useContext_result1_upvr.inviteToParentChannel(var12_result1_upvr, any_useGetConversationFromId_result1_upvr, any_filter_result1_upvr_4):andThen(function(arg1_18) -- Line 212
									--[[ Upvalues[10]:
										[1]: any_useGetConversationFromId_result1_upvr (copied, readonly)
										[2]: var12_result1_upvr (copied, readonly)
										[3]: inviteToSquad_upvr (copied, readonly)
										[4]: var19_result1_upvr (copied, readonly)
										[5]: var17_result1_upvr (copied, readonly)
										[6]: any_filter_result1_upvr_4 (copied, readonly)
										[7]: any_useCallback_result1_upvr_2 (copied, readonly)
										[8]: any_useCallback_result1_upvr (copied, readonly)
										[9]: arg1_6 (copied, readonly)
										[10]: useNavigation_upvr_result1_upvr (copied, readonly)
									]]
									local var125
									if arg1_18 == any_useGetConversationFromId_result1_upvr.id then
										var125 = false
									else
										var125 = true
									end
									var12_result1_upvr(inviteToSquad_upvr(var19_result1_upvr.squadId, arg1_18, var17_result1_upvr, any_filter_result1_upvr_4, any_useCallback_result1_upvr_2, var125))
									any_useCallback_result1_upvr(arg1_6)
									useNavigation_upvr_result1_upvr.pop()
								end, function(arg1_19) -- Line 226
									--[[ Upvalues[3]:
										[1]: any_useContext_result1_upvr (copied, readonly)
										[2]: var14_result1_upvr (copied, readonly)
										[3]: SquadPromptType_upvr (copied, readonly)
									]]
									any_useContext_result1_upvr.setSquadPrompt(var14_result1_upvr, {
										hideCancelButton = true;
										promptType = SquadPromptType_upvr.Error;
									})
								end)
							end
						end
						useNavigation_upvr_result1_upvr.pop()
					end)
				end
				if any_useGetConversationFromId_result1_upvr.type == Constants_upvr_2.CONVERSATION_CHANNEL_GROUP_TYPE and useAppPolicy_upvr_result1_upvr and 0 < #any_filter_result1_upvr_4 then
					local tbl_5 = {
						hideCancelButton = false;
						promptType = SquadPromptType_upvr.ConfirmInviteToSquad;
					}
					local function onConfirm() -- Line 247
						--[[ Upvalues[1]:
							[1]: var109_upvr (readonly)
						]]
						var109_upvr()
					end
					tbl_5.onConfirm = onConfirm
					any_useContext_result1_upvr.setSquadPrompt(var14_result1_upvr, tbl_5)
				else
					var109_upvr()
				end
			end
			function any_toSet_result1_upvr() -- Line 255
				--[[ Upvalues[15]:
					[1]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
					[2]: var12_result1_upvr (copied, readonly)
					[3]: InviteToParentChannel_upvr (copied, readonly)
					[4]: any_useGetConversationFromId_result1_upvr (copied, readonly)
					[5]: inviteToSquad_upvr (copied, readonly)
					[6]: var19_result1_upvr (copied, readonly)
					[7]: var17_result1_upvr (copied, readonly)
					[8]: any_keys_result1_3_upvr (readonly)
					[9]: any_useCallback_result1_upvr_2 (copied, readonly)
					[10]: any_useCallback_result1_upvr (copied, readonly)
					[11]: arg1_6 (readonly)
					[12]: useNavigation_upvr_result1_upvr (copied, readonly)
					[13]: any_useContext_result1_upvr (copied, readonly)
					[14]: var14_result1_upvr (copied, readonly)
					[15]: SquadPromptType_upvr (copied, readonly)
				]]
				if FFlagPartyParticipantDisabledFixEnabled_upvr then
					var12_result1_upvr(InviteToParentChannel_upvr({
						dispatch = var12_result1_upvr;
						onSuccessCallback = function(arg1_20) -- Line 259, Named "onSuccessCallback"
							--[[ Upvalues[10]:
								[1]: any_useGetConversationFromId_result1_upvr (copied, readonly)
								[2]: var12_result1_upvr (copied, readonly)
								[3]: inviteToSquad_upvr (copied, readonly)
								[4]: var19_result1_upvr (copied, readonly)
								[5]: var17_result1_upvr (copied, readonly)
								[6]: any_keys_result1_3_upvr (copied, readonly)
								[7]: any_useCallback_result1_upvr_2 (copied, readonly)
								[8]: any_useCallback_result1_upvr (copied, readonly)
								[9]: arg1_6 (copied, readonly)
								[10]: useNavigation_upvr_result1_upvr (copied, readonly)
							]]
							local var131
							if arg1_20 == any_useGetConversationFromId_result1_upvr.id then
								var131 = false
							else
								var131 = true
							end
							var12_result1_upvr(inviteToSquad_upvr(var19_result1_upvr.squadId, arg1_20, var17_result1_upvr, any_keys_result1_3_upvr, any_useCallback_result1_upvr_2, var131))
							any_useCallback_result1_upvr(arg1_6)
							useNavigation_upvr_result1_upvr.pop()
						end;
						parentChannel = any_useGetConversationFromId_result1_upvr;
						squadExternalContext = any_useContext_result1_upvr;
						userIds = any_keys_result1_3_upvr;
					}))
				else
					any_useContext_result1_upvr.inviteToParentChannel(var12_result1_upvr, any_useGetConversationFromId_result1_upvr, any_keys_result1_3_upvr):andThen(function(arg1_21) -- Line 281
						--[[ Upvalues[10]:
							[1]: any_useGetConversationFromId_result1_upvr (copied, readonly)
							[2]: var12_result1_upvr (copied, readonly)
							[3]: inviteToSquad_upvr (copied, readonly)
							[4]: var19_result1_upvr (copied, readonly)
							[5]: var17_result1_upvr (copied, readonly)
							[6]: any_keys_result1_3_upvr (copied, readonly)
							[7]: any_useCallback_result1_upvr_2 (copied, readonly)
							[8]: any_useCallback_result1_upvr (copied, readonly)
							[9]: arg1_6 (copied, readonly)
							[10]: useNavigation_upvr_result1_upvr (copied, readonly)
						]]
						local var133
						if arg1_21 == any_useGetConversationFromId_result1_upvr.id then
							var133 = false
						else
							var133 = true
						end
						var12_result1_upvr(inviteToSquad_upvr(var19_result1_upvr.squadId, arg1_21, var17_result1_upvr, any_keys_result1_3_upvr, any_useCallback_result1_upvr_2, var133))
						any_useCallback_result1_upvr(arg1_6)
						useNavigation_upvr_result1_upvr.pop()
					end, function(arg1_22) -- Line 295
						--[[ Upvalues[3]:
							[1]: any_useContext_result1_upvr (copied, readonly)
							[2]: var14_result1_upvr (copied, readonly)
							[3]: SquadPromptType_upvr (copied, readonly)
						]]
						any_useContext_result1_upvr.setSquadPrompt(var14_result1_upvr, {
							hideCancelButton = true;
							promptType = SquadPromptType_upvr.Error;
						})
					end)
				end
			end
			var109_upvr = any_useGetConversationFromId_result1_upvr
			any_filter_result1_upvr_4 = var109_upvr.type
			var109_upvr = Constants_upvr_2.CONVERSATION_CHANNEL_GROUP_TYPE
			if any_filter_result1_upvr_4 == var109_upvr then
				any_filter_result1_upvr_4 = useAppPolicy_upvr_result1_upvr
				if any_filter_result1_upvr_4 then
					var109_upvr = any_useContext_result1_upvr
					any_filter_result1_upvr_4 = var109_upvr.setSquadPrompt
					var109_upvr = var14_result1_upvr
					any_filter_result1_upvr_4(var109_upvr, {
						hideCancelButton = false;
						promptType = SquadPromptType_upvr.ConfirmInviteToSquad;
						onConfirm = function() -- Line 308, Named "onConfirm"
							--[[ Upvalues[1]:
								[1]: any_toSet_result1_upvr (readonly)
							]]
							any_toSet_result1_upvr()
						end;
					})
					return
				end
			end
			any_filter_result1_upvr_4 = any_toSet_result1_upvr
			any_filter_result1_upvr_4()
		end
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [165] #136
	end
	-- KONSTANTERROR: [0] 1. Error Block 82 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [164] 135. Error Block 89 start (CF ANALYSIS FAILED)
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [174] #144
	end
	-- KONSTANTERROR: [164] 135. Error Block 89 end (CF ANALYSIS FAILED)
end