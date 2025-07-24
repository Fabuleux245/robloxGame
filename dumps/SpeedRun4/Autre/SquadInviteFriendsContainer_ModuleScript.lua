-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:22
-- Luau version 6, Types version 3
-- Time taken: 0.016199 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local dependencies = require(Squads.dependencies)
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useNavigation_upvr = dependencies.useNavigation
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useStore_upvr = dependencies.Hooks.useStore
local useLocalization_upvr = dependencies.Hooks.useLocalization
local useCurrentSquadSelector_upvr = dependencies.Hooks.useCurrentSquadSelector
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local Cryo_upvr = dependencies.Cryo
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
local SquadInviteSourceEnum_upvr = require(Squads.Enums.SquadInviteSourceEnum)
local EventNames_upvr = dependencies.SquadsCore.Analytics.EventNames
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local Promise_upvr = require(Parent.Promise)
local FFlagPartyParticipantDisabledFixEnabled_upvr = require(Parent.SharedFlags).FFlagPartyParticipantDisabledFixEnabled
local InviteToParentChannel_upvr = require(Squads.Thunks.InviteToParentChannel)
local inviteToSquad_upvr = require(Squads.Thunks.inviteToSquad)
local SquadPromptType_upvr = dependencies.SquadsCore.Enums.SquadPromptType
local Constants_upvr = dependencies.SquadsCore.Common.Constants
local SquadInviteFriends_upvr = require(script.Parent.SquadInviteFriends)
return function(arg1) -- Line 36, Named "SquadInviteFriendsContainer"
	--[[ Upvalues[23]:
		[1]: React_upvr (readonly)
		[2]: SquadExternalContractContext_upvr (readonly)
		[3]: useNavigation_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useStore_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: useCurrentSquadSelector_upvr (readonly)
		[8]: useLocalUserId_upvr (readonly)
		[9]: useAppPolicy_upvr (readonly)
		[10]: Cryo_upvr (readonly)
		[11]: NotificationModalsManager_upvr (readonly)
		[12]: Images_upvr (readonly)
		[13]: SquadInviteSourceEnum_upvr (readonly)
		[14]: EventNames_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
		[16]: SquadInviteChangesExperimentation_upvr (readonly)
		[17]: Promise_upvr (readonly)
		[18]: FFlagPartyParticipantDisabledFixEnabled_upvr (readonly)
		[19]: InviteToParentChannel_upvr (readonly)
		[20]: inviteToSquad_upvr (readonly)
		[21]: SquadPromptType_upvr (readonly)
		[22]: Constants_upvr (readonly)
		[23]: SquadInviteFriends_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local useDispatch_upvr_result1_upvr_2 = useDispatch_upvr()
	local useStore_upvr_result1_upvr = useStore_upvr()
	local var9_result1_upvr = useLocalization_upvr({
		addText = "Feature.Squads.Action.Add";
		user = "Feature.Squads.Description.User";
		youAddedMoreThanTwoToChat = "Feature.Squads.Description.YouAddedMoreThanTwoToChat";
		youAddedToChat = "Feature.Squads.Description.YouAddedToChat";
		youAddedTwoToChat = "Feature.Squads.Description.YouAddedTwoToChat";
	})
	local any_useRef_result1_upvr_2 = React_upvr.useRef(false)
	local useCurrentSquadSelector_upvr_result1_upvr_2 = useCurrentSquadSelector_upvr()
	local var137_upvr
	if useCurrentSquadSelector_upvr_result1_upvr_2 and useCurrentSquadSelector_upvr_result1_upvr_2.parentChannelId then
		var137_upvr = useCurrentSquadSelector_upvr_result1_upvr_2.parentChannelId
	else
		var137_upvr = ""
	end
	local var190
	local any_useGetConversationFromId_result1_upvr_2 = any_useContext_result1_upvr.useGetConversationFromId(var137_upvr)
	local var11_result1_upvr = useLocalUserId_upvr()
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_23) -- Line 68
		--[[ Upvalues[4]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: var9_result1_upvr (readonly)
			[3]: NotificationModalsManager_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
		]]
		local any_keys_result1 = Cryo_upvr.Dictionary.keys(arg1_23)
		local var144
		if 2 < #any_keys_result1 then
			var144 = var9_result1_upvr.youAddedMoreThanTwoToChat:gsub("{(.-)}", {
				username = arg1_23[any_keys_result1[1]].displayName;
				userCountMinusOne = tostring(#any_keys_result1 - 1);
			})
		elseif #any_keys_result1 == 2 then
			local tbl_20 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_20.username1 = arg1_23[any_keys_result1[1]].displayName
			tbl_20.username2 = arg1_23[any_keys_result1[2]].displayName
			var144 = var9_result1_upvr.youAddedTwoToChat:gsub("{(.-)}", tbl_20)
		else
			local tbl_9 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_9.username = arg1_23[any_keys_result1[1]].displayName
			var144 = var9_result1_upvr.youAddedToChat:gsub("{(.-)}", tbl_9)
		end
		NotificationModalsManager_upvr.SetUIBloxToast({
			iconImage = Images_upvr["icons/actions/friends/friendAdd"];
			toastTitle = var144;
		})
	end, {var9_result1_upvr.youAddedMoreThanTwoToChat, var9_result1_upvr.youAddedToChat, var9_result1_upvr.youAddedTwoToChat})
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_24) -- Line 95
		--[[ Upvalues[5]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: var137_upvr (readonly)
			[3]: SquadInviteSourceEnum_upvr (copied, readonly)
			[4]: any_useContext_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
		]]
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadInvite, Cryo_upvr.Dictionary.union({
			parentChannelId = var137_upvr;
			source = SquadInviteSourceEnum_upvr.SourceSquadInvitePage;
		}, arg1_24))
	end, dependencyArray_upvr(var137_upvr, any_useContext_result1_upvr.fireSquadAnalytics))
	local var12_result1_upvr = useAppPolicy_upvr(React_upvr.useCallback(function(arg1_22) -- Line 60
		return arg1_22.getCanUsePlatformChat()
	end, {}))
	var190 = useDispatch_upvr_result1_upvr_2
	local module = {}
	var190 = arg1.participants
	module.participants = var190
	module.onMultiInvite = React_upvr.useCallback(function(arg1_25) -- Line 105
		--[[ Upvalues[19]:
			[1]: useCurrentSquadSelector_upvr_result1_upvr_2 (readonly)
			[2]: any_useGetConversationFromId_result1_upvr_2 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[5]: var11_result1_upvr (readonly)
			[6]: any_useContext_result1_upvr (readonly)
			[7]: useDispatch_upvr_result1_upvr_2 (readonly)
			[8]: Promise_upvr (copied, readonly)
			[9]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
			[10]: InviteToParentChannel_upvr (copied, readonly)
			[11]: useNavigation_upvr_result1_upvr (readonly)
			[12]: inviteToSquad_upvr (copied, readonly)
			[13]: any_useCallback_result1_upvr_4 (readonly)
			[14]: any_useCallback_result1_upvr_3 (readonly)
			[15]: useStore_upvr_result1_upvr (readonly)
			[16]: SquadPromptType_upvr (copied, readonly)
			[17]: Constants_upvr (copied, readonly)
			[18]: var12_result1_upvr (readonly)
			[19]: any_useRef_result1_upvr_2 (readonly)
		]]
		if not useCurrentSquadSelector_upvr_result1_upvr_2 or not any_useGetConversationFromId_result1_upvr_2 then
		else
			local any_keys_result1_3_upvr = Cryo_upvr.Dictionary.keys(arg1_25)
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
				local any_toSet_result1_upvr_2 = Cryo_upvr.List.toSet(any_useGetConversationFromId_result1_upvr_2.participants)
				local any_filter_result1_upvr_6 = Cryo_upvr.List.filter(any_keys_result1_3_upvr, function(arg1_26) -- Line 117
					--[[ Upvalues[1]:
						[1]: any_toSet_result1_upvr_2 (readonly)
					]]
					local var159
					if any_toSet_result1_upvr_2[arg1_26] ~= nil then
						var159 = false
					else
						var159 = true
					end
					return var159
				end)
				local function var161_upvr() -- Line 121
					--[[ Upvalues[18]:
						[1]: Cryo_upvr (copied, readonly)
						[2]: any_useGetConversationFromId_result1_upvr_2 (copied, readonly)
						[3]: any_keys_result1_3_upvr (readonly)
						[4]: var11_result1_upvr (copied, readonly)
						[5]: any_useContext_result1_upvr (copied, readonly)
						[6]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
						[7]: Promise_upvr (copied, readonly)
						[8]: any_filter_result1_upvr_6 (readonly)
						[9]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
						[10]: InviteToParentChannel_upvr (copied, readonly)
						[11]: useNavigation_upvr_result1_upvr (copied, readonly)
						[12]: inviteToSquad_upvr (copied, readonly)
						[13]: useCurrentSquadSelector_upvr_result1_upvr_2 (copied, readonly)
						[14]: any_useCallback_result1_upvr_4 (copied, readonly)
						[15]: any_useCallback_result1_upvr_3 (copied, readonly)
						[16]: arg1_25 (readonly)
						[17]: useStore_upvr_result1_upvr (copied, readonly)
						[18]: SquadPromptType_upvr (copied, readonly)
					]]
					local any_filter_result1_upvr_2 = Cryo_upvr.List.filter(any_useGetConversationFromId_result1_upvr_2.participants, function(arg1_27) -- Line 124
						--[[ Upvalues[3]:
							[1]: Cryo_upvr (copied, readonly)
							[2]: any_keys_result1_3_upvr (copied, readonly)
							[3]: var11_result1_upvr (copied, readonly)
						]]
						local var167 = false
						if Cryo_upvr.List.find(any_keys_result1_3_upvr, tostring(arg1_27)) == nil then
							if arg1_27 == var11_result1_upvr then
								var167 = false
							else
								var167 = true
							end
						end
						return var167
					end)
					local tbl_16 = {}
					if 0 < #any_filter_result1_upvr_2 then
						for _, v in ipairs(any_filter_result1_upvr_2) do
							table.insert(tbl_16, any_useContext_result1_upvr.removeUserFromParentChannel(useDispatch_upvr_result1_upvr_2, any_useGetConversationFromId_result1_upvr_2.id, v))
						end
					end
					Promise_upvr.all(tbl_16):andThen(function() -- Line 141
						--[[ Upvalues[16]:
							[1]: any_filter_result1_upvr_6 (copied, readonly)
							[2]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
							[3]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
							[4]: InviteToParentChannel_upvr (copied, readonly)
							[5]: any_filter_result1_upvr_2 (readonly)
							[6]: useNavigation_upvr_result1_upvr (copied, readonly)
							[7]: any_useGetConversationFromId_result1_upvr_2 (copied, readonly)
							[8]: inviteToSquad_upvr (copied, readonly)
							[9]: useCurrentSquadSelector_upvr_result1_upvr_2 (copied, readonly)
							[10]: var11_result1_upvr (copied, readonly)
							[11]: any_useCallback_result1_upvr_4 (copied, readonly)
							[12]: any_useCallback_result1_upvr_3 (copied, readonly)
							[13]: arg1_25 (copied, readonly)
							[14]: any_useContext_result1_upvr (copied, readonly)
							[15]: useStore_upvr_result1_upvr (copied, readonly)
							[16]: SquadPromptType_upvr (copied, readonly)
						]]
						if 0 < #any_filter_result1_upvr_6 then
							if FFlagPartyParticipantDisabledFixEnabled_upvr then
								local tbl_17 = {
									dispatch = useDispatch_upvr_result1_upvr_2;
									onErrorCallback = function() -- Line 146, Named "onErrorCallback"
										--[[ Upvalues[2]:
											[1]: any_filter_result1_upvr_2 (copied, readonly)
											[2]: useNavigation_upvr_result1_upvr (copied, readonly)
										]]
										if 0 < #any_filter_result1_upvr_2 then
											useNavigation_upvr_result1_upvr.pop()
										end
									end;
								}
								local function onSuccessCallback(arg1_28) -- Line 151
									--[[ Upvalues[10]:
										[1]: any_useGetConversationFromId_result1_upvr_2 (copied, readonly)
										[2]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
										[3]: inviteToSquad_upvr (copied, readonly)
										[4]: useCurrentSquadSelector_upvr_result1_upvr_2 (copied, readonly)
										[5]: var11_result1_upvr (copied, readonly)
										[6]: any_filter_result1_upvr_6 (copied, readonly)
										[7]: any_useCallback_result1_upvr_4 (copied, readonly)
										[8]: any_useCallback_result1_upvr_3 (copied, readonly)
										[9]: arg1_25 (copied, readonly)
										[10]: useNavigation_upvr_result1_upvr (copied, readonly)
									]]
									local var175
									if arg1_28 == any_useGetConversationFromId_result1_upvr_2.id then
										var175 = false
									else
										var175 = true
									end
									useDispatch_upvr_result1_upvr_2(inviteToSquad_upvr(useCurrentSquadSelector_upvr_result1_upvr_2.squadId, arg1_28, var11_result1_upvr, any_filter_result1_upvr_6, any_useCallback_result1_upvr_4, var175))
									any_useCallback_result1_upvr_3(arg1_25)
									useNavigation_upvr_result1_upvr.pop()
								end
								tbl_17.onSuccessCallback = onSuccessCallback
								tbl_17.parentChannel = any_useGetConversationFromId_result1_upvr_2
								tbl_17.userIds = any_filter_result1_upvr_6
								tbl_17.squadExternalContext = any_useContext_result1_upvr
								useDispatch_upvr_result1_upvr_2(InviteToParentChannel_upvr(tbl_17))
							else
								any_useContext_result1_upvr.inviteToParentChannel(useDispatch_upvr_result1_upvr_2, any_useGetConversationFromId_result1_upvr_2, any_filter_result1_upvr_6):andThen(function(arg1_29) -- Line 173
									--[[ Upvalues[10]:
										[1]: any_useGetConversationFromId_result1_upvr_2 (copied, readonly)
										[2]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
										[3]: inviteToSquad_upvr (copied, readonly)
										[4]: useCurrentSquadSelector_upvr_result1_upvr_2 (copied, readonly)
										[5]: var11_result1_upvr (copied, readonly)
										[6]: any_filter_result1_upvr_6 (copied, readonly)
										[7]: any_useCallback_result1_upvr_4 (copied, readonly)
										[8]: any_useCallback_result1_upvr_3 (copied, readonly)
										[9]: arg1_25 (copied, readonly)
										[10]: useNavigation_upvr_result1_upvr (copied, readonly)
									]]
									local var177
									if arg1_29 == any_useGetConversationFromId_result1_upvr_2.id then
										var177 = false
									else
										var177 = true
									end
									useDispatch_upvr_result1_upvr_2(inviteToSquad_upvr(useCurrentSquadSelector_upvr_result1_upvr_2.squadId, arg1_29, var11_result1_upvr, any_filter_result1_upvr_6, any_useCallback_result1_upvr_4, var177))
									any_useCallback_result1_upvr_3(arg1_25)
									useNavigation_upvr_result1_upvr.pop()
								end, function() -- Line 187
									--[[ Upvalues[3]:
										[1]: any_useContext_result1_upvr (copied, readonly)
										[2]: useStore_upvr_result1_upvr (copied, readonly)
										[3]: SquadPromptType_upvr (copied, readonly)
									]]
									any_useContext_result1_upvr.setSquadPrompt(useStore_upvr_result1_upvr, {
										hideCancelButton = true;
										promptType = SquadPromptType_upvr.Error;
									})
								end)
							end
						end
						useNavigation_upvr_result1_upvr.pop()
					end)
				end
				if any_useGetConversationFromId_result1_upvr_2.type == Constants_upvr.CONVERSATION_CHANNEL_GROUP_TYPE and var12_result1_upvr and 0 < #any_filter_result1_upvr_6 then
					local tbl_12 = {
						hideCancelButton = false;
						promptType = SquadPromptType_upvr.ConfirmInviteToSquad;
					}
					local function onConfirm() -- Line 208
						--[[ Upvalues[1]:
							[1]: var161_upvr (readonly)
						]]
						var161_upvr()
					end
					tbl_12.onConfirm = onConfirm
					any_useContext_result1_upvr.setSquadPrompt(useStore_upvr_result1_upvr, tbl_12)
				else
					var161_upvr()
				end
			end
			function any_toSet_result1_upvr_2() -- Line 216
				--[[ Upvalues[16]:
					[1]: FFlagPartyParticipantDisabledFixEnabled_upvr (copied, readonly)
					[2]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
					[3]: InviteToParentChannel_upvr (copied, readonly)
					[4]: any_useGetConversationFromId_result1_upvr_2 (copied, readonly)
					[5]: inviteToSquad_upvr (copied, readonly)
					[6]: useCurrentSquadSelector_upvr_result1_upvr_2 (copied, readonly)
					[7]: var11_result1_upvr (copied, readonly)
					[8]: any_keys_result1_3_upvr (readonly)
					[9]: any_useCallback_result1_upvr_4 (copied, readonly)
					[10]: any_useCallback_result1_upvr_3 (copied, readonly)
					[11]: arg1_25 (readonly)
					[12]: any_useRef_result1_upvr_2 (copied, readonly)
					[13]: useNavigation_upvr_result1_upvr (copied, readonly)
					[14]: any_useContext_result1_upvr (copied, readonly)
					[15]: useStore_upvr_result1_upvr (copied, readonly)
					[16]: SquadPromptType_upvr (copied, readonly)
				]]
				if FFlagPartyParticipantDisabledFixEnabled_upvr then
					useDispatch_upvr_result1_upvr_2(InviteToParentChannel_upvr({
						dispatch = useDispatch_upvr_result1_upvr_2;
						onSuccessCallback = function(arg1_30) -- Line 220, Named "onSuccessCallback"
							--[[ Upvalues[11]:
								[1]: any_useGetConversationFromId_result1_upvr_2 (copied, readonly)
								[2]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
								[3]: inviteToSquad_upvr (copied, readonly)
								[4]: useCurrentSquadSelector_upvr_result1_upvr_2 (copied, readonly)
								[5]: var11_result1_upvr (copied, readonly)
								[6]: any_keys_result1_3_upvr (copied, readonly)
								[7]: any_useCallback_result1_upvr_4 (copied, readonly)
								[8]: any_useCallback_result1_upvr_3 (copied, readonly)
								[9]: arg1_25 (copied, readonly)
								[10]: any_useRef_result1_upvr_2 (copied, readonly)
								[11]: useNavigation_upvr_result1_upvr (copied, readonly)
							]]
							local var183
							if arg1_30 == any_useGetConversationFromId_result1_upvr_2.id then
								var183 = false
							else
								var183 = true
							end
							useDispatch_upvr_result1_upvr_2(inviteToSquad_upvr(useCurrentSquadSelector_upvr_result1_upvr_2.squadId, arg1_30, var11_result1_upvr, any_keys_result1_3_upvr, any_useCallback_result1_upvr_4, var183))
							any_useCallback_result1_upvr_3(arg1_25)
							any_useRef_result1_upvr_2.current = true
							useNavigation_upvr_result1_upvr.pop()
						end;
						parentChannel = any_useGetConversationFromId_result1_upvr_2;
						squadExternalContext = any_useContext_result1_upvr;
						userIds = any_keys_result1_3_upvr;
					}))
				else
					any_useContext_result1_upvr.inviteToParentChannel(useDispatch_upvr_result1_upvr_2, any_useGetConversationFromId_result1_upvr_2, any_keys_result1_3_upvr):andThen(function(arg1_31) -- Line 243
						--[[ Upvalues[11]:
							[1]: any_useGetConversationFromId_result1_upvr_2 (copied, readonly)
							[2]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
							[3]: inviteToSquad_upvr (copied, readonly)
							[4]: useCurrentSquadSelector_upvr_result1_upvr_2 (copied, readonly)
							[5]: var11_result1_upvr (copied, readonly)
							[6]: any_keys_result1_3_upvr (copied, readonly)
							[7]: any_useCallback_result1_upvr_4 (copied, readonly)
							[8]: any_useCallback_result1_upvr_3 (copied, readonly)
							[9]: arg1_25 (copied, readonly)
							[10]: any_useRef_result1_upvr_2 (copied, readonly)
							[11]: useNavigation_upvr_result1_upvr (copied, readonly)
						]]
						local var185
						if arg1_31 == any_useGetConversationFromId_result1_upvr_2.id then
							var185 = false
						else
							var185 = true
						end
						useDispatch_upvr_result1_upvr_2(inviteToSquad_upvr(useCurrentSquadSelector_upvr_result1_upvr_2.squadId, arg1_31, var11_result1_upvr, any_keys_result1_3_upvr, any_useCallback_result1_upvr_4, var185))
						any_useCallback_result1_upvr_3(arg1_25)
						any_useRef_result1_upvr_2.current = true
						useNavigation_upvr_result1_upvr.pop()
					end, function(arg1_32) -- Line 258
						--[[ Upvalues[3]:
							[1]: any_useContext_result1_upvr (copied, readonly)
							[2]: useStore_upvr_result1_upvr (copied, readonly)
							[3]: SquadPromptType_upvr (copied, readonly)
						]]
						any_useContext_result1_upvr.setSquadPrompt(useStore_upvr_result1_upvr, {
							hideCancelButton = true;
							promptType = SquadPromptType_upvr.Error;
						})
					end)
				end
			end
			var161_upvr = any_useGetConversationFromId_result1_upvr_2
			any_filter_result1_upvr_6 = var161_upvr.type
			var161_upvr = Constants_upvr.CONVERSATION_CHANNEL_GROUP_TYPE
			if any_filter_result1_upvr_6 == var161_upvr then
				any_filter_result1_upvr_6 = var12_result1_upvr
				if any_filter_result1_upvr_6 then
					var161_upvr = any_useContext_result1_upvr
					any_filter_result1_upvr_6 = var161_upvr.setSquadPrompt
					var161_upvr = useStore_upvr_result1_upvr
					any_filter_result1_upvr_6(var161_upvr, {
						hideCancelButton = false;
						promptType = SquadPromptType_upvr.ConfirmInviteToSquad;
						onConfirm = function() -- Line 271, Named "onConfirm"
							--[[ Upvalues[1]:
								[1]: any_toSet_result1_upvr_2 (readonly)
							]]
							any_toSet_result1_upvr_2()
						end;
					})
					return
				end
			end
			any_filter_result1_upvr_6 = any_toSet_result1_upvr_2
			any_filter_result1_upvr_6()
		end
	end, dependencyArray_upvr(useCurrentSquadSelector_upvr_result1_upvr_2, var190, useNavigation_upvr_result1_upvr, any_useGetConversationFromId_result1_upvr_2, any_useCallback_result1_upvr_4, any_useCallback_result1_upvr_3, any_useContext_result1_upvr.setSquadPrompt, any_useContext_result1_upvr.inviteToParentChannel, useStore_upvr_result1_upvr))
	var190 = var9_result1_upvr.addText
	module.buttonText = var190
	var190 = {}
	var190.selectionPageType = "SquadInvite"
	module.analyticsInfo = var190
	module.partyStartedRef = any_useRef_result1_upvr_2
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and any_useGetConversationFromId_result1_upvr_2 then
		function var190(arg1_33, arg2) -- Line 302
			--[[ Upvalues[6]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: any_useGetConversationFromId_result1_upvr_2 (readonly)
				[3]: any_useContext_result1_upvr (readonly)
				[4]: useStore_upvr_result1_upvr (readonly)
				[5]: var9_result1_upvr (readonly)
				[6]: SquadPromptType_upvr (copied, readonly)
			]]
			if Cryo_upvr.List.find(any_useGetConversationFromId_result1_upvr_2.participants, arg1_33) then
				local tbl_11 = {}
				local tbl_6 = {}
				local var193 = arg2
				if not var193 then
					var193 = var9_result1_upvr.user
				end
				tbl_6.displayName = var193
				tbl_11.bodyTextLocalizationProps = tbl_6
				tbl_11.hideCancelButton = true
				tbl_11.promptType = SquadPromptType_upvr.RemoveFromParty
				any_useContext_result1_upvr.setSquadPrompt(useStore_upvr_result1_upvr, tbl_11)
			end
		end
	else
		var190 = nil
	end
	module.onRemoveCallback = var190
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var190 = any_useGetConversationFromId_result1_upvr_2
		if var190 then
			var190 = any_useGetConversationFromId_result1_upvr_2.participants
			if var190 then
				var190 = Cryo_upvr.List.filter
				var190 = var190(any_useGetConversationFromId_result1_upvr_2.participants, function(arg1_34) -- Line 318
					--[[ Upvalues[1]:
						[1]: var11_result1_upvr (readonly)
					]]
					local var195
					if arg1_34 == var11_result1_upvr then
						var195 = false
					else
						var195 = true
					end
					return var195
				end)
				-- KONSTANTWARNING: GOTO [193] #155
			end
			-- KONSTANTWARNING: GOTO [193] #155
		end
	else
	end
	module.preselectedUsers = nil
	local var196
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and any_useGetConversationFromId_result1_upvr_2 then
		var196 = true
		if any_useGetConversationFromId_result1_upvr_2.type ~= Constants_upvr.CONVERSATION_CHANNEL_ONE_TO_ONE_TYPE then
			if any_useGetConversationFromId_result1_upvr_2.initiator == tostring(var11_result1_upvr) then
				var196 = false
			else
				var196 = true
			end
			-- KONSTANTWARNING: GOTO [222] #176
		end
	else
		var196 = nil
	end
	module.preselectedUsersUnremovable = var196
	return React_upvr.createElement(SquadInviteFriends_upvr, module)
end