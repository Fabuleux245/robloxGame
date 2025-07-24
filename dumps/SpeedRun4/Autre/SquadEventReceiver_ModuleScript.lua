-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:49
-- Luau version 6, Types version 3
-- Time taken: 0.008772 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local CrossExperienceVoice = require(Parent.CrossExperienceVoice)
local SharedFlags = require(Parent.SharedFlags)
local SoundManager = require(Parent.SoundManager)
local ToastNotification = require(Parent.ToastNotification)
local FFlagSquadThirdPartySettingsChangesEnabled_upvr = SharedFlags.FFlagSquadThirdPartySettingsChangesEnabled
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local useCurrentSquadSelector_upvr = require(Parent.RoduxSquads).Hooks.useCurrentSquadSelector
local FFlagEnableSquadCoplayAnalytic_upvr = SharedFlags.FFlagEnableSquadCoplayAnalytic
local useEffectOnce_upvr = require(Parent.RoactUtils).Hooks.useEffectOnce
local logInExpCoplayTelemetry_upvr = require(SquadsCore.Analytics.logInExpCoplayTelemetry)
local SquadCoplayJoin_upvr = require(SquadsCore.Enums.SquadCoplayJoin)
local LifecycleEvents_upvr = ToastNotification.LifecycleEvents
local NotificationTypeEnum_upvr = ToastNotification.ToastNotificationTypeModule.NotificationTypeEnum
local EventNames_upvr = require(SquadsCore.Analytics.EventNames)
local SquadToastActionsAndStates_upvr = require(SquadsCore.Enums.SquadToastActionsAndStates)
local SquadToastType_upvr = require(SquadsCore.Enums.SquadToastType)
local HttpService_upvr = game:GetService("HttpService")
local default_upvr = require(Parent.ToastNotificationsProtocol).ToastNotificationProtocol.default
local joinSquad_upvr = require(SquadsCore.Thunks.joinSquad)
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = SharedFlags.FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local FFlagEnableSquadCoplayDependencyArray_upvr = SharedFlags.FFlagEnableSquadCoplayDependencyArray
local default_upvr_2 = ToastNotification.ToastNotificationSnoozeManager.default
local SoundManager_2_upvr = SoundManager.SoundManager
local Sounds_upvr = SoundManager.Sounds
local GetFFlagEnableCrossExpVoice_upvr = SharedFlags.GetFFlagEnableCrossExpVoice
local FFlagPartyVoiceBlockSync_upvr = SharedFlags.FFlagPartyVoiceBlockSync
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local CrossExperienceVoiceManager_upvr = CrossExperienceVoice.CrossExperienceVoiceManager
local FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr = SharedFlags.FIntPartyVoiceJoinRequestPulseCheckTimeout
local useCrossExperienceVoice_upvr = CrossExperienceVoice.Hooks.useCrossExperienceVoice
local useCrossExperienceVoiceConnector_upvr = require(SquadsCore.Hooks.useCrossExperienceVoiceConnector)
local useOnSquadEnded_upvr = require(SquadsCore.Hooks.useOnSquadEnded)
local FFlagReadAppChatFetchingVariable_upvr = SharedFlags.FFlagReadAppChatFetchingVariable
local var41_upvr = game:DefineFastFlag("LeaveSquadIfChatDisabled", false) and FFlagSquadThirdPartySettingsChangesEnabled_upvr
local leaveSquad_upvr = require(SquadsCore.Thunks.leaveSquad)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnablePartyDevAPI")
local CurrentSquadUpdated_upvr = require(SquadsCore.RoduxSquads).Actions.CurrentSquadUpdated
local SquadLifecycleEventReceiver_upvr = require(script.Parent.SquadLifecycleEventReceiver)
local SquadParentChannelEventReceiver_upvr = require(script.Parent.SquadParentChannelEventReceiver)
local FFlagSquadAppChatRTNFix_upvr = SharedFlags.FFlagSquadAppChatRTNFix
local SquadRootViewType_upvr = require(SquadsCore.Enums.SquadRootViewType)
local SquadAppChatEventReceiver_upvr = require(script.Parent.SquadAppChatEventReceiver)
local SquadExperienceInviteEventReceiver_upvr = require(script.Parent.SquadExperienceInviteEventReceiver)
local SquadLocationEnum_upvr = require(SquadsCore.Enums.SquadLocationEnum)
local SquadRccEventReceiver_upvr = require(script.Parent.SquadRccEventReceiver)
local SquadStorageEventReceiver_upvr = require(script.Parent.SquadStorageEventReceiver)
return function() -- Line 71
	--[[ Upvalues[46]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: FFlagSquadThirdPartySettingsChangesEnabled_upvr (readonly)
		[6]: useCurrentSquadSelector_upvr (readonly)
		[7]: FFlagEnableSquadCoplayAnalytic_upvr (readonly)
		[8]: useEffectOnce_upvr (readonly)
		[9]: logInExpCoplayTelemetry_upvr (readonly)
		[10]: SquadCoplayJoin_upvr (readonly)
		[11]: LifecycleEvents_upvr (readonly)
		[12]: NotificationTypeEnum_upvr (readonly)
		[13]: EventNames_upvr (readonly)
		[14]: SquadToastActionsAndStates_upvr (readonly)
		[15]: SquadToastType_upvr (readonly)
		[16]: HttpService_upvr (readonly)
		[17]: default_upvr (readonly)
		[18]: joinSquad_upvr (readonly)
		[19]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
		[20]: dependencyArray_upvr (readonly)
		[21]: FFlagEnableSquadCoplayDependencyArray_upvr (readonly)
		[22]: default_upvr_2 (readonly)
		[23]: SoundManager_2_upvr (readonly)
		[24]: Sounds_upvr (readonly)
		[25]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[26]: FFlagPartyVoiceBlockSync_upvr (readonly)
		[27]: useSelector_upvr (readonly)
		[28]: CrossExperienceVoiceManager_upvr (readonly)
		[29]: FIntPartyVoiceJoinRequestPulseCheckTimeout_upvr (readonly)
		[30]: useCrossExperienceVoice_upvr (readonly)
		[31]: useCrossExperienceVoiceConnector_upvr (readonly)
		[32]: useOnSquadEnded_upvr (readonly)
		[33]: FFlagReadAppChatFetchingVariable_upvr (readonly)
		[34]: var41_upvr (readonly)
		[35]: leaveSquad_upvr (readonly)
		[36]: game_GetEngineFeature_result1_upvr (readonly)
		[37]: CurrentSquadUpdated_upvr (readonly)
		[38]: SquadLifecycleEventReceiver_upvr (readonly)
		[39]: SquadParentChannelEventReceiver_upvr (readonly)
		[40]: FFlagSquadAppChatRTNFix_upvr (readonly)
		[41]: SquadRootViewType_upvr (readonly)
		[42]: SquadAppChatEventReceiver_upvr (readonly)
		[43]: SquadExperienceInviteEventReceiver_upvr (readonly)
		[44]: SquadLocationEnum_upvr (readonly)
		[45]: SquadRccEventReceiver_upvr (readonly)
		[46]: SquadStorageEventReceiver_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 144 start (CF ANALYSIS FAILED)
	local var9_result1_upvr = useDispatch_upvr()
	local var55_upvr = tonumber(useLocalUserId_upvr()) or 0
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local var57_upvr
	if FFlagSquadThirdPartySettingsChangesEnabled_upvr then
		local _ = any_useContext_result1_upvr.useIsChatEnabled()
	else
	end
	local var13_result1_upvr = useCurrentSquadSelector_upvr()
	if var13_result1_upvr and var13_result1_upvr.squadId then
		var57_upvr = var13_result1_upvr.squadId
	else
		var57_upvr = ""
	end
	if var13_result1_upvr and var13_result1_upvr.parentChannelId then
		local _ = var13_result1_upvr.parentChannelId
	else
	end
	if FFlagEnableSquadCoplayAnalytic_upvr then
		useEffectOnce_upvr(function() -- Line 91
			--[[ Upvalues[5]:
				[1]: var13_result1_upvr (readonly)
				[2]: logInExpCoplayTelemetry_upvr (copied, readonly)
				[3]: var57_upvr (readonly)
				[4]: any_useContext_result1_upvr (readonly)
				[5]: SquadCoplayJoin_upvr (copied, readonly)
			]]
			if var13_result1_upvr then
				logInExpCoplayTelemetry_upvr(var57_upvr, var13_result1_upvr.members, any_useContext_result1_upvr.squadLocation, SquadCoplayJoin_upvr.ExperienceJoin, any_useContext_result1_upvr.fireSquadAnalytics)
			end
		end, {})
	end
	local const_string_upvr = ""
	local var64_upvr
	if FFlagEnableSquadCoplayDependencyArray_upvr then
	else
	end
	if FFlagEnableSquadCoplayDependencyArray_upvr then
		-- KONSTANTWARNING: GOTO [87] #77
	end
	if FFlagEnableSquadCoplayDependencyArray_upvr then
		-- KONSTANTWARNING: GOTO [93] #82
	end
	if FFlagEnableSquadCoplayDependencyArray_upvr then
		-- KONSTANTWARNING: GOTO [99] #87
	end
	if FFlagEnableSquadCoplayDependencyArray_upvr then
		-- KONSTANTWARNING: GOTO [105] #92
	end
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		-- KONSTANTWARNING: GOTO [110] #97
	end
	React_upvr.useEffect(function() -- Line 112
		--[[ Upvalues[14]:
			[1]: LifecycleEvents_upvr (copied, readonly)
			[2]: NotificationTypeEnum_upvr (copied, readonly)
			[3]: any_useContext_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: const_string_upvr (readonly)
			[6]: SquadToastActionsAndStates_upvr (copied, readonly)
			[7]: SquadToastType_upvr (copied, readonly)
			[8]: HttpService_upvr (copied, readonly)
			[9]: default_upvr (copied, readonly)
			[10]: var9_result1_upvr (readonly)
			[11]: joinSquad_upvr (copied, readonly)
			[12]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
			[13]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (copied, readonly)
			[14]: var64_upvr (readonly)
		]]
		local any_RegisterCallback_result1_upvr_2 = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.UserAction, NotificationTypeEnum_upvr.SquadInvitation, function(arg1) -- Line 116
			--[[ Upvalues[12]:
				[1]: any_useContext_result1_upvr (copied, readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: const_string_upvr (copied, readonly)
				[4]: SquadToastActionsAndStates_upvr (copied, readonly)
				[5]: SquadToastType_upvr (copied, readonly)
				[6]: HttpService_upvr (copied, readonly)
				[7]: default_upvr (copied, readonly)
				[8]: var9_result1_upvr (copied, readonly)
				[9]: joinSquad_upvr (copied, readonly)
				[10]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
				[11]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (copied, readonly)
				[12]: var64_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 4. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 4. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 6. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 6. Error Block 4 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 8. Error Block 5 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 8. Error Block 5 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 11. Error Block 6 start (CF ANALYSIS FAILED)
			local visualItem = arg1.visualItem
			-- KONSTANTERROR: [17] 11. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [79] 54. Error Block 29 start (CF ANALYSIS FAILED)
			if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
			else
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.3]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.4]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.5]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.6]
			visualItem(nil(nil, nil, nil, nil, true))
			-- KONSTANTERROR: [79] 54. Error Block 29 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [87] 62. Error Block 20 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [87] 62. Error Block 20 end (CF ANALYSIS FAILED)
		end)
		return function() -- Line 146
			--[[ Upvalues[1]:
				[1]: any_RegisterCallback_result1_upvr_2 (readonly)
			]]
			any_RegisterCallback_result1_upvr_2()
		end
	end, dependencyArray_upvr(nil, var9_result1_upvr, nil, nil, nil, nil, nil))
	local tbl = {}
	if FFlagSquadThirdPartySettingsChangesEnabled_upvr then
		-- KONSTANTWARNING: GOTO [130] #115
	end
	tbl[1] = nil
	React_upvr.useEffect(function() -- Line 162
		--[[ Upvalues[7]:
			[1]: LifecycleEvents_upvr (copied, readonly)
			[2]: NotificationTypeEnum_upvr (copied, readonly)
			[3]: FFlagSquadThirdPartySettingsChangesEnabled_upvr (copied, readonly)
			[4]: var64_upvr (readonly)
			[5]: default_upvr_2 (copied, readonly)
			[6]: SoundManager_2_upvr (copied, readonly)
			[7]: Sounds_upvr (copied, readonly)
		]]
		local any_RegisterCallback_result1_upvr = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.Display, NotificationTypeEnum_upvr.SquadInvitation, function(arg1) -- Line 166
			--[[ Upvalues[5]:
				[1]: FFlagSquadThirdPartySettingsChangesEnabled_upvr (copied, readonly)
				[2]: var64_upvr (copied, readonly)
				[3]: default_upvr_2 (copied, readonly)
				[4]: SoundManager_2_upvr (copied, readonly)
				[5]: Sounds_upvr (copied, readonly)
			]]
			if FFlagSquadThirdPartySettingsChangesEnabled_upvr and var64_upvr or not FFlagSquadThirdPartySettingsChangesEnabled_upvr and not default_upvr_2:isSnoozedNotificationType(arg1.notificationType) then
				SoundManager_2_upvr:PlaySound(Sounds_upvr.PartyToast.Name)
			end
		end)
		return function() -- Line 179
			--[[ Upvalues[1]:
				[1]: any_RegisterCallback_result1_upvr (readonly)
			]]
			if any_RegisterCallback_result1_upvr then
				any_RegisterCallback_result1_upvr()
			end
		end
	end, tbl)
	local tbl_2 = {}
	if FFlagSquadThirdPartySettingsChangesEnabled_upvr then
	else
	end
	tbl_2[1] = var57_upvr
	tbl_2[2] = var55_upvr
	tbl_2[3] = nil
	React_upvr.useEffect(function() -- Line 188
		--[[ Upvalues[7]:
			[1]: default_upvr (copied, readonly)
			[2]: FFlagSquadThirdPartySettingsChangesEnabled_upvr (copied, readonly)
			[3]: NotificationTypeEnum_upvr (copied, readonly)
			[4]: var64_upvr (readonly)
			[5]: var55_upvr (readonly)
			[6]: HttpService_upvr (copied, readonly)
			[7]: var57_upvr (readonly)
		]]
		local any_listenToDisplayNotification_result1_upvr = default_upvr:listenToDisplayNotification(function(arg1) -- Line 190
			--[[ Upvalues[7]:
				[1]: FFlagSquadThirdPartySettingsChangesEnabled_upvr (copied, readonly)
				[2]: NotificationTypeEnum_upvr (copied, readonly)
				[3]: var64_upvr (copied, readonly)
				[4]: default_upvr (copied, readonly)
				[5]: var55_upvr (copied, readonly)
				[6]: HttpService_upvr (copied, readonly)
				[7]: var57_upvr (copied, readonly)
			]]
			if not arg1 then
			else
				if FFlagSquadThirdPartySettingsChangesEnabled_upvr and (arg1.notificationType == NotificationTypeEnum_upvr.SquadInvitation or arg1.notificationType == NotificationTypeEnum_upvr.SquadExperienceInvitation) or not var64_upvr then
					default_upvr:dismissNotification(arg1.notificationId)
					return
				end
				if var55_upvr <= 0 then
					if arg1.notificationId and (arg1.notificationType == NotificationTypeEnum_upvr.SquadInvitation or arg1.notificationType == NotificationTypeEnum_upvr.SquadExperienceInvitation) then
						default_upvr:dismissNotification(arg1.notificationId)
					end
					return
				end
				if arg1.notificationType == NotificationTypeEnum_upvr.SquadInvitation and var57_upvr == HttpService_upvr:JSONDecode(arg1.lifecycleData).squadId then
					default_upvr:dismissNotification(arg1.notificationId)
				end
			end
		end)
		return function() -- Line 232
			--[[ Upvalues[1]:
				[1]: any_listenToDisplayNotification_result1_upvr (readonly)
			]]
			any_listenToDisplayNotification_result1_upvr:Disconnect()
		end
	end, tbl_2)
	-- KONSTANTERROR: [0] 1. Error Block 144 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [159] 140. Error Block 49 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [159] 140. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 142. Error Block 50 start (CF ANALYSIS FAILED)
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1) -- Line 242
		return arg1.Squad.UserBlocking.isBlockedByMe
	end, {}))
	local any_useRef_result1_upvr = React_upvr.useRef({})
	React_upvr.useEffect(function() -- Line 249
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: CrossExperienceVoiceManager_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current == useSelector_upvr_result1_upvr then
		else
			for i, v in pairs(useSelector_upvr_result1_upvr) do
				local var88 = any_useRef_result1_upvr.current[i] or false
				if v and not var88 then
					CrossExperienceVoiceManager_upvr.default:blockVoiceParticipant(i)
				elseif not v and var88 then
					CrossExperienceVoiceManager_upvr.default:unblockVoiceParticipant(i)
				end
			end
			any_useRef_result1_upvr.current = useSelector_upvr_result1_upvr
		end
	end, {useSelector_upvr_result1_upvr})
	-- KONSTANTERROR: [161] 142. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [190] 164. Error Block 51 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [190] 164. Error Block 51 end (CF ANALYSIS FAILED)
end