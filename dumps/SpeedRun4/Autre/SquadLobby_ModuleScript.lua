-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:24
-- Luau version 6, Types version 3
-- Time taken: 0.034599 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local dependencies = require(Squads.dependencies)
local Foundation_upvr = dependencies.Foundation
local LuauPolyfill = dependencies.LuauPolyfill
local SharedFlags = dependencies.SharedFlags
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useSquadState_upvr = require(Squads.Hooks.useSquadState)
local useNavigation_upvr = dependencies.useNavigation
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useVoiceStatus_upvr = require(Parent.CrossExperienceVoice).Hooks.useVoiceStatus
local FFlagEnableSquadTopBannerWideMode_upvr = SharedFlags.FFlagEnableSquadTopBannerWideMode
local HttpService_upvr = game:GetService("HttpService")
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local SquadViewFlags_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadViewFlags
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local useCurrentSquadSelector_upvr = dependencies.Hooks.useCurrentSquadSelector
local useSelector_upvr = dependencies.Hooks.useSelector
local useStore_upvr = dependencies.Hooks.useStore
local SquadQuickStartExperimentation_upvr = dependencies.SocialExperiments.SquadQuickStartExperimentation
local FFlagEnablePartyQuickStartButton_upvr = SharedFlags.FFlagEnablePartyQuickStartButton
local SquadPromptType_upvr = dependencies.SquadsCore.Enums.SquadPromptType
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local NetworkingSquads_upvr = dependencies.NetworkingSquads
local FFlagEnableSquadCoplayAnalytic_upvr = SharedFlags.FFlagEnableSquadCoplayAnalytic
local logInExpCoplayTelemetry_upvr = dependencies.SquadsCore.Analytics.logInExpCoplayTelemetry
local SquadCoplayJoin_upvr = dependencies.SquadsCore.Enums.SquadCoplayJoin
local FFlagEnableSquadCoplayDependencyArray_upvr = SharedFlags.FFlagEnableSquadCoplayDependencyArray
local FFlagEnableVoiceEuConsentPrompt_upvr = SharedFlags.FFlagEnableVoiceEuConsentPrompt
local CrossExperienceVoiceManager_upvr = require(Parent.CrossExperienceVoice).CrossExperienceVoiceManager
local useEffectOnce_upvr = dependencies.Hooks.useEffectOnce
local Logger_upvr = require(Squads.Logger)
local Cryo_upvr = dependencies.Cryo
local SquadUserPartyStatus_upvr = require(Squads.Enums.SquadUserPartyStatus)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("PartyUserInvitedDurationSeconds", 10)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("PartyInviteeNoResponseDurationSeconds", 3)
local setInterval_upvr = LuauPolyfill.setInterval
local clearInterval_upvr = LuauPolyfill.clearInterval
local usePrevious_upvr = dependencies.Hooks.usePrevious
local UserBlockingNetworking_upvr = dependencies.UserBlockingNetworking
local NetworkingPresence_upvr = dependencies.NetworkingPresence
local Constants_upvr = require(Squads.Common.Constants)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableSquadLobbyBanners", false)
local SquadLobbyBanners_upvr = require(script.Parent.SquadLobbyBanners)
local FFlagEnableAppChatFocusableFixes_upvr = SharedFlags.FFlagEnableAppChatFocusableFixes
local SquadLobbyUserGrid_upvr = require(script.Parent.SquadLobbyUserGrid)
local EventNames_upvr = dependencies.SquadsCore.Analytics.EventNames
local SquadPartySheetActionEnum_upvr = require(Squads.Enums.SquadPartySheetActionEnum)
local FFlagRecordVoiceStatusOnPartyAction_upvr = require(Squads.Flags.FFlagRecordVoiceStatusOnPartyAction)
local SquadLobbyActionBar_upvr = require(script.Parent.SquadLobbyActionBar)
local StateLayerAffordance_upvr = Foundation_upvr.Enums.StateLayerAffordance
local SquadLobbyVoiceChatMenu_upvr = require(script.Parent.SquadLobbyVoiceChatMenu)
local SquadLobbyUserDropdownMenu_upvr = require(script.Parent.SquadLobbyUserDropdownMenu)
local Roact_upvr = dependencies.Roact
local SquadCoordinationExperienceJoinExperimentation_upvr = dependencies.SocialExperiments.SquadCoordinationExperienceJoinExperimentation
local SquadLobbySessionProvider_upvr = dependencies.SquadsCore.SquadSessionProvider.SquadLobbySessionProvider
return function(arg1) -- Line 88, Named "SquadLobby"
	--[[ Upvalues[55]:
		[1]: useTokens_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useLocalUserId_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useSquadState_upvr (readonly)
		[6]: useNavigation_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: SquadExternalContractContext_upvr (readonly)
		[9]: useVoiceStatus_upvr (readonly)
		[10]: FFlagEnableSquadTopBannerWideMode_upvr (readonly)
		[11]: HttpService_upvr (readonly)
		[12]: RoactNavigation_upvr (readonly)
		[13]: SquadViewFlags_upvr (readonly)
		[14]: SquadInviteChangesExperimentation_upvr (readonly)
		[15]: useCurrentSquadSelector_upvr (readonly)
		[16]: useSelector_upvr (readonly)
		[17]: useStore_upvr (readonly)
		[18]: SquadQuickStartExperimentation_upvr (readonly)
		[19]: FFlagEnablePartyQuickStartButton_upvr (readonly)
		[20]: SquadPromptType_upvr (readonly)
		[21]: dependencyArray_upvr (readonly)
		[22]: NetworkingSquads_upvr (readonly)
		[23]: FFlagEnableSquadCoplayAnalytic_upvr (readonly)
		[24]: logInExpCoplayTelemetry_upvr (readonly)
		[25]: SquadCoplayJoin_upvr (readonly)
		[26]: FFlagEnableSquadCoplayDependencyArray_upvr (readonly)
		[27]: FFlagEnableVoiceEuConsentPrompt_upvr (readonly)
		[28]: CrossExperienceVoiceManager_upvr (readonly)
		[29]: useEffectOnce_upvr (readonly)
		[30]: Logger_upvr (readonly)
		[31]: Cryo_upvr (readonly)
		[32]: SquadUserPartyStatus_upvr (readonly)
		[33]: game_DefineFastInt_result1_upvr (readonly)
		[34]: game_DefineFastInt_result1_upvr_2 (readonly)
		[35]: setInterval_upvr (readonly)
		[36]: clearInterval_upvr (readonly)
		[37]: usePrevious_upvr (readonly)
		[38]: UserBlockingNetworking_upvr (readonly)
		[39]: NetworkingPresence_upvr (readonly)
		[40]: Constants_upvr (readonly)
		[41]: game_DefineFastFlag_result1_upvr (readonly)
		[42]: SquadLobbyBanners_upvr (readonly)
		[43]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[44]: SquadLobbyUserGrid_upvr (readonly)
		[45]: EventNames_upvr (readonly)
		[46]: SquadPartySheetActionEnum_upvr (readonly)
		[47]: FFlagRecordVoiceStatusOnPartyAction_upvr (readonly)
		[48]: SquadLobbyActionBar_upvr (readonly)
		[49]: Foundation_upvr (readonly)
		[50]: StateLayerAffordance_upvr (readonly)
		[51]: SquadLobbyVoiceChatMenu_upvr (readonly)
		[52]: SquadLobbyUserDropdownMenu_upvr (readonly)
		[53]: Roact_upvr (readonly)
		[54]: SquadCoordinationExperienceJoinExperimentation_upvr (readonly)
		[55]: SquadLobbySessionProvider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7_result1_upvr = useTokens_upvr()
	local var8_result1_upvr = useDispatch_upvr()
	local var217_upvr = tonumber(useLocalUserId_upvr()) or 0
	local useSquadState_upvr_result1_upvr_2 = useSquadState_upvr()
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local isWideMode_upvr = arg1.isWideMode
	local any_useContext_result1_upvr_2 = React_upvr.useContext(SquadExternalContractContext_upvr)
	local any_useState_result1_upvr_6, any_useState_result2_upvr_11 = React_upvr.useState(0)
	local var15_result1_upvr = useVoiceStatus_upvr()
	local var225_upvw
	if FFlagEnableSquadTopBannerWideMode_upvr then
		local any_useRef_result1_upvr = React_upvr.useRef(HttpService_upvr:GenerateGUID())
		React_upvr.useEffect(function() -- Line 103
			--[[ Upvalues[5]:
				[1]: isWideMode_upvr (readonly)
				[2]: any_useRef_result1_upvr (readonly)
				[3]: any_useContext_result1_upvr_2 (readonly)
				[4]: useNavigation_upvr_result1_upvr (readonly)
				[5]: RoactNavigation_upvr (copied, readonly)
			]]
			if not isWideMode_upvr then
				local current_upvr_2 = any_useRef_result1_upvr.current
				any_useContext_result1_upvr_2.disableSquadTopBanner(current_upvr_2, true)
				local var229_upvw = useNavigation_upvr_result1_upvr
				if var229_upvw then
					var229_upvw = useNavigation_upvr_result1_upvr.addListener
					var229_upvw = var229_upvw(RoactNavigation_upvr.Events.WillBlur, function(arg1_14) -- Line 108
						--[[ Upvalues[2]:
							[1]: any_useContext_result1_upvr_2 (copied, readonly)
							[2]: current_upvr_2 (readonly)
						]]
						if arg1_14.state.routeName ~= "SquadInviteFriends" and arg1_14.state.routeName ~= "SquadLobby" then
							any_useContext_result1_upvr_2.disableSquadTopBanner(current_upvr_2, false)
						else
							any_useContext_result1_upvr_2.disableSquadTopBanner(current_upvr_2, true)
						end
					end)
				end
				return function() -- Line 119
					--[[ Upvalues[3]:
						[1]: var229_upvw (read and write)
						[2]: any_useContext_result1_upvr_2 (copied, readonly)
						[3]: current_upvr_2 (readonly)
					]]
					if var229_upvw then
						var229_upvw.remove()
						var229_upvw = nil
					end
					any_useContext_result1_upvr_2.disableSquadTopBanner(current_upvr_2, false)
				end
			end
			function current_upvr_2() -- Line 129
			end
			return current_upvr_2
		end, {any_useContext_result1_upvr_2.disableSquadTopBanner, useNavigation_upvr_result1_upvr, isWideMode_upvr})
		React_upvr.useEffect(function() -- Line 132
			--[[ Upvalues[2]:
				[1]: any_useContext_result1_upvr_2 (readonly)
				[2]: SquadViewFlags_upvr (copied, readonly)
			]]
			any_useContext_result1_upvr_2.updateSquadViewFlags(SquadViewFlags_upvr.SquadLobby, true)
			return function() -- Line 134
				--[[ Upvalues[2]:
					[1]: any_useContext_result1_upvr_2 (copied, readonly)
					[2]: SquadViewFlags_upvr (copied, readonly)
				]]
				any_useContext_result1_upvr_2.updateSquadViewFlags(SquadViewFlags_upvr.SquadLobby, false)
			end
		end, {any_useContext_result1_upvr_2.updateSquadViewFlags})
	else
		any_useRef_result1_upvr = React_upvr.useEffect
		any_useRef_result1_upvr(function() -- Line 142
			--[[ Upvalues[4]:
				[1]: any_useContext_result1_upvr_2 (readonly)
				[2]: SquadViewFlags_upvr (copied, readonly)
				[3]: useNavigation_upvr_result1_upvr (readonly)
				[4]: RoactNavigation_upvr (copied, readonly)
			]]
			any_useContext_result1_upvr_2.updateSquadViewFlags(SquadViewFlags_upvr.SquadLobby, true)
			local var238_upvw = useNavigation_upvr_result1_upvr
			if var238_upvw then
				var238_upvw = useNavigation_upvr_result1_upvr.addListener
				var238_upvw = var238_upvw(RoactNavigation_upvr.Events.WillBlur, function(arg1_15) -- Line 145
					--[[ Upvalues[2]:
						[1]: any_useContext_result1_upvr_2 (copied, readonly)
						[2]: SquadViewFlags_upvr (copied, readonly)
					]]
					if arg1_15.state.routeName ~= "SquadInviteFriends" and arg1_15.state.routeName ~= "SquadLobby" then
						any_useContext_result1_upvr_2.updateSquadViewFlags(SquadViewFlags_upvr.SquadLobby, false)
					else
						any_useContext_result1_upvr_2.updateSquadViewFlags(SquadViewFlags_upvr.SquadLobby, true)
					end
				end)
			end
			return function() -- Line 152
				--[[ Upvalues[3]:
					[1]: var238_upvw (read and write)
					[2]: any_useContext_result1_upvr_2 (copied, readonly)
					[3]: SquadViewFlags_upvr (copied, readonly)
				]]
				if var238_upvw then
					var238_upvw.remove()
					var238_upvw = nil
				end
				any_useContext_result1_upvr_2.updateSquadViewFlags(SquadViewFlags_upvr.SquadLobby, false)
			end
		end, {any_useContext_result1_upvr_2.updateSquadViewFlags, useNavigation_upvr_result1_upvr})
	end
	any_useRef_result1_upvr = React_upvr.useEffect
	any_useRef_result1_upvr(function() -- Line 162
		--[[ Upvalues[1]:
			[1]: SquadInviteChangesExperimentation_upvr (copied, readonly)
		]]
		SquadInviteChangesExperimentation_upvr.logExposure()
	end, {})
	any_useRef_result1_upvr = React_upvr.useState(false)
	local any_useState_result1_upvr_10, any_useState_result2_upvr_5 = React_upvr.useState(false)
	local any_useState_result1_upvr_3, any_useState_result2_upvr_9 = React_upvr.useState(Vector2.zero)
	local tbl_20_upvr = {any_useState_result2_upvr_9}
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_16) -- Line 168
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_9 (readonly)
		]]
		any_useState_result2_upvr_9(arg1_16.AbsoluteSize)
	end, tbl_20_upvr)
	local var21_result1 = useCurrentSquadSelector_upvr()
	if var21_result1 then
		tbl_20_upvr = var21_result1.squadId
	else
		tbl_20_upvr = ""
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		local var251 = var21_result1
		if var251 then
			var251 = var21_result1.members
		end
		local _ = var251
	elseif var21_result1 and var21_result1.members then
	else
	end
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_17) -- Line 181
		if arg1_17.Squad and arg1_17.Squad.Squad and arg1_17.Squad.Squad.currentSquad then
			return arg1_17.Squad.Squad.currentSquad.parentChannelId or ""
		end
		return ""
	end, {}))
	local useStore_upvr_result1_upvr = useStore_upvr()
	local var256_upvr = useNavigation_upvr_result1_upvr.getParam("conversationId") or ""
	local any_useGetConversationFromId_result1_upvr = any_useContext_result1_upvr_2.useGetConversationFromId(var256_upvr)
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		local var258 = any_useGetConversationFromId_result1_upvr
		if var258 then
			var258 = any_useGetConversationFromId_result1_upvr.participants
		end
		local var259_upvw = var258
		var258 = var21_result1
		local var260 = var258
		if var260 then
			var260 = var21_result1.invitees
		end
		local var261_upvw = var260
	end
	var225_upvw = nil
	local any_getParam_result1 = useNavigation_upvr_result1_upvr.getParam("extraParams")
	if not any_getParam_result1 then
		any_getParam_result1 = {}
	end
	local var263 = any_getParam_result1
	local squadId = var263.squadId
	if SquadQuickStartExperimentation_upvr.getPartyQuickStartChangesEnabled() then
		if FFlagEnablePartyQuickStartButton_upvr then
			var225_upvw = var263.squadCreateOrJoinAttemptId
		end
	end
	local any_useCallback_result1_upvr_12 = React_upvr.useCallback(function() -- Line 208
		--[[ Upvalues[4]:
			[1]: any_useContext_result1_upvr_2 (readonly)
			[2]: useStore_upvr_result1_upvr (readonly)
			[3]: SquadPromptType_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local tbl_46 = {
			hideCancelButton = true;
			promptType = SquadPromptType_upvr.Error;
		}
		local function onConfirm() -- Line 212
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1.navigateAwayFromSquad()
		end
		tbl_46.onConfirm = onConfirm
		any_useContext_result1_upvr_2.setSquadPrompt(useStore_upvr_result1_upvr, tbl_46)
	end, dependencyArray_upvr(arg1.navigateAwayFromSquad, useStore_upvr_result1_upvr, any_useContext_result1_upvr_2.setSquadPrompt))
	if FFlagEnableSquadCoplayDependencyArray_upvr then
	else
	end
	if FFlagEnableSquadCoplayDependencyArray_upvr then
		-- KONSTANTWARNING: GOTO [250] #201
	end
	if FFlagEnableVoiceEuConsentPrompt_upvr then
		-- KONSTANTWARNING: GOTO [256] #206
	end
	if FFlagEnableVoiceEuConsentPrompt_upvr then
	else
	end
	local any_useCallback_result1_upvr_10 = React_upvr.useCallback(function(arg1_18) -- Line 219
		--[[ Upvalues[8]:
			[1]: var8_result1_upvr (readonly)
			[2]: NetworkingSquads_upvr (copied, readonly)
			[3]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
			[4]: any_useContext_result1_upvr_2 (readonly)
			[5]: var225_upvw (read and write)
			[6]: logInExpCoplayTelemetry_upvr (copied, readonly)
			[7]: SquadCoplayJoin_upvr (copied, readonly)
			[8]: any_useCallback_result1_upvr_12 (readonly)
		]]
		local tbl_29 = {}
		tbl_29.parentChannelId = arg1_18
		local var270 = true
		tbl_29.leaveExisting = var270
		if FFlagEnableSquadCoplayAnalytic_upvr then
			var270 = any_useContext_result1_upvr_2.squadLocation
		else
			var270 = nil
		end
		tbl_29.squadLocation = var270
		tbl_29.partyAttemptId = var225_upvw
		local var8_result1_upvr_result1 = var8_result1_upvr(NetworkingSquads_upvr.CreateOrJoinSquad.API(tbl_29))
		if FFlagEnableSquadCoplayAnalytic_upvr then
			var8_result1_upvr_result1 = var8_result1_upvr_result1:andThen(function(arg1_19) -- Line 229
				--[[ Upvalues[3]:
					[1]: logInExpCoplayTelemetry_upvr (copied, readonly)
					[2]: any_useContext_result1_upvr_2 (copied, readonly)
					[3]: SquadCoplayJoin_upvr (copied, readonly)
				]]
				local groupUpId_2 = arg1_19.responseBody.groupUp.groupUpId
				local members = arg1_19.responseBody.groupUp.members
				if groupUpId_2 and members then
					logInExpCoplayTelemetry_upvr(groupUpId_2, members, any_useContext_result1_upvr_2.squadLocation, SquadCoplayJoin_upvr.PartyJoin, any_useContext_result1_upvr_2.fireSquadAnalytics)
				end
			end)
		end
		var8_result1_upvr_result1:catch(function(arg1_20) -- Line 245
			--[[ Upvalues[1]:
				[1]: any_useCallback_result1_upvr_12 (copied, readonly)
			]]
			any_useCallback_result1_upvr_12()
		end)
	end, dependencyArray_upvr(var8_result1_upvr, any_useCallback_result1_upvr_12, nil, nil, nil, nil, var225_upvw))
	if squadId then
		if squadId == tbl_20_upvr then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	local var279_upvr = true
	React_upvr.useEffect(function() -- Line 264
		--[[ Upvalues[8]:
			[1]: var279_upvr (readonly)
			[2]: any_useContext_result1_upvr_2 (readonly)
			[3]: useStore_upvr_result1_upvr (readonly)
			[4]: SquadPromptType_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr_10 (readonly)
			[6]: var256_upvr (readonly)
			[7]: arg1 (readonly)
			[8]: useNavigation_upvr_result1_upvr (readonly)
		]]
		if var279_upvr then
			any_useContext_result1_upvr_2.setSquadPrompt(useStore_upvr_result1_upvr, {
				promptType = SquadPromptType_upvr.JoinAnotherSquad;
				onConfirm = function() -- Line 268, Named "onConfirm"
					--[[ Upvalues[2]:
						[1]: any_useCallback_result1_upvr_10 (copied, readonly)
						[2]: var256_upvr (copied, readonly)
					]]
					any_useCallback_result1_upvr_10(var256_upvr)
				end;
				onCancel = function() -- Line 271, Named "onCancel"
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.navigateAwayFromSquad()
				end;
			})
			useNavigation_upvr_result1_upvr.setParams({
				squadId = nil;
			})
		end
	end, dependencyArray_upvr(squadId, any_useContext_result1_upvr_2.setSquadPrompt, any_useCallback_result1_upvr_10, var256_upvr, arg1.navigateAwayFromSquad, var279_upvr))
	useEffectOnce_upvr(function() -- Line 293
		--[[ Upvalues[9]:
			[1]: var279_upvr (readonly)
			[2]: tbl_20_upvr (readonly)
			[3]: any_useGetConversationFromId_result1_upvr (readonly)
			[4]: Logger_upvr (copied, readonly)
			[5]: var256_upvr (readonly)
			[6]: var8_result1_upvr (readonly)
			[7]: any_useContext_result1_upvr_2 (readonly)
			[8]: any_useCallback_result1_upvr_10 (readonly)
			[9]: any_useCallback_result1_upvr_12 (readonly)
		]]
		if var279_upvr then
		elseif tbl_20_upvr == "" then
			if any_useGetConversationFromId_result1_upvr and any_useGetConversationFromId_result1_upvr.source == "friends" then
				Logger_upvr:debug("Channel does not exist for: {}. Creating a friend conversation.", var256_upvr)
				var8_result1_upvr(any_useContext_result1_upvr_2.createFriendConversation(var256_upvr)):andThen(function(arg1_21) -- Line 308
					--[[ Upvalues[1]:
						[1]: any_useCallback_result1_upvr_10 (copied, readonly)
					]]
					if arg1_21 and arg1_21.id then
						any_useCallback_result1_upvr_10(arg1_21.id)
					end
				end):catch(function(arg1_22) -- Line 313
					--[[ Upvalues[2]:
						[1]: Logger_upvr (copied, readonly)
						[2]: any_useCallback_result1_upvr_12 (copied, readonly)
					]]
					Logger_upvr:debug("Error while trying to create a friend conversation: {}", arg1_22)
					any_useCallback_result1_upvr_12()
				end)
				return
			end
			any_useCallback_result1_upvr_10(var256_upvr)
		end
	end, dependencyArray_upvr(var8_result1_upvr, any_useContext_result1_upvr_2.createFriendConversation, var256_upvr, any_useGetConversationFromId_result1_upvr, any_useCallback_result1_upvr_10, any_useCallback_result1_upvr_12))
	local any_useState_result1_upvr_7, any_useState_result2_upvr_6 = React_upvr.useState({})
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		local tbl_27_upvw = {}
		local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 335
			--[[ Upvalues[1]:
				[1]: tbl_27_upvw (read and write)
			]]
			local module_10 = {}
			if tbl_27_upvw then
				for _, v in ipairs(tbl_27_upvw) do
					module_10[tostring(v.userId)] = true
				end
			end
			return module_10
		end, {tbl_27_upvw})
		local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function(arg1_23, arg2, arg3) -- Line 356
			--[[ Upvalues[5]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: var217_upvr (readonly)
				[3]: SquadUserPartyStatus_upvr (copied, readonly)
				[4]: game_DefineFastInt_result1_upvr (copied, readonly)
				[5]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [30] 22. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [30] 22. Error Block 4 end (CF ANALYSIS FAILED)
		end, {})
		React_upvr.useEffect(function() -- Line 426
			--[[ Upvalues[7]:
				[1]: any_useCallback_result1_upvr_5 (readonly)
				[2]: var259_upvw (read and write)
				[3]: any_useMemo_result1_upvr (readonly)
				[4]: var261_upvw (read and write)
				[5]: any_useState_result2_upvr_6 (readonly)
				[6]: setInterval_upvr (copied, readonly)
				[7]: clearInterval_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_6(any_useCallback_result1_upvr_5(var259_upvw, any_useMemo_result1_upvr, var261_upvw).users)
			local var303_upvw
			var303_upvw = setInterval_upvr(function() -- Line 432
				--[[ Upvalues[7]:
					[1]: any_useCallback_result1_upvr_5 (copied, readonly)
					[2]: var259_upvw (copied, read and write)
					[3]: any_useMemo_result1_upvr (copied, readonly)
					[4]: var261_upvw (copied, read and write)
					[5]: any_useState_result2_upvr_6 (copied, readonly)
					[6]: clearInterval_upvr (copied, readonly)
					[7]: var303_upvw (read and write)
				]]
				local var300_result1 = any_useCallback_result1_upvr_5(var259_upvw, any_useMemo_result1_upvr, var261_upvw)
				any_useState_result2_upvr_6(var300_result1.users)
				if var300_result1.numberOfUpdatesPending == 0 then
					clearInterval_upvr(var303_upvw)
				end
			end, 1000)
			return function() -- Line 442
				--[[ Upvalues[2]:
					[1]: clearInterval_upvr (copied, readonly)
					[2]: var303_upvw (read and write)
				]]
				clearInterval_upvr(var303_upvw)
			end
		end, {any_useMemo_result1_upvr, var261_upvw, var259_upvw, any_useCallback_result1_upvr_5})
	end
	any_useCallback_result1_upvr_5 = usePrevious_upvr(tbl_20_upvr)
	any_useMemo_result1_upvr = any_useCallback_result1_upvr_5 or ""
	any_useCallback_result1_upvr_5 = React_upvr.useEffect
	any_useCallback_result1_upvr_5(function() -- Line 450
		--[[ Upvalues[8]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: tbl_20_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: var256_upvr (readonly)
			[5]: useSelector_upvr_result1_upvr (readonly)
			[6]: RoactNavigation_upvr (copied, readonly)
			[7]: isWideMode_upvr (readonly)
			[8]: useNavigation_upvr_result1_upvr (readonly)
		]]
		if any_useMemo_result1_upvr ~= "" and tbl_20_upvr == "" then
			arg1.navigateAwayFromSquad()
		elseif tbl_20_upvr ~= "" and var256_upvr ~= "" and useSelector_upvr_result1_upvr ~= "" and useSelector_upvr_result1_upvr ~= var256_upvr then
			local tbl_45 = {RoactNavigation_upvr.Actions.navigate({
				routeName = "ChatConversation";
				params = {
					conversationId = useSelector_upvr_result1_upvr;
				};
			}), RoactNavigation_upvr.Actions.navigate({
				routeName = "SquadLobby";
				params = {
					conversationId = useSelector_upvr_result1_upvr;
				};
			})}
			if isWideMode_upvr then
				useNavigation_upvr_result1_upvr.navigate("ChatLanding", {
					conversationId = useSelector_upvr_result1_upvr;
				}, RoactNavigation_upvr.StackActions.reset({
					index = 2;
					actions = tbl_45;
				}))
				return
			end
			table.insert(tbl_45, 1, RoactNavigation_upvr.Actions.navigate({
				routeName = "ChatLanding";
			}))
			useNavigation_upvr_result1_upvr.navigate("ChatLandingStack", {
				conversationId = useSelector_upvr_result1_upvr;
			}, RoactNavigation_upvr.StackActions.reset({
				index = 3;
				actions = tbl_45;
			}))
		end
	end, {useNavigation_upvr_result1_upvr, useSelector_upvr_result1_upvr, var256_upvr, tbl_20_upvr, arg1.navigateAwayFromSquad})
	any_useCallback_result1_upvr_5 = usePrevious_upvr(tbl_27_upvw)
	local var319_upvr = any_useCallback_result1_upvr_5
	React_upvr.useEffect(function() -- Line 514
		--[[ Upvalues[6]:
			[1]: tbl_27_upvw (read and write)
			[2]: var319_upvr (readonly)
			[3]: var217_upvr (readonly)
			[4]: var8_result1_upvr (readonly)
			[5]: UserBlockingNetworking_upvr (copied, readonly)
			[6]: NetworkingPresence_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [59] 42. Error Block 16 start (CF ANALYSIS FAILED)
		var8_result1_upvr(NetworkingPresence_upvr.GetPresencesFromUserIds.API({}))
		-- KONSTANTERROR: [59] 42. Error Block 16 end (CF ANALYSIS FAILED)
	end, dependencyArray_upvr(tbl_27_upvw, var217_upvr, var319_upvr))
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function() -- Line 544
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_5 (readonly)
			[2]: any_useState_result1_upvr_10 (readonly)
		]]
		any_useState_result2_upvr_5(not any_useState_result1_upvr_10)
	end, dependencyArray_upvr(any_useState_result1_upvr_10, any_useState_result2_upvr_5))
	local var323_upvr = Constants_upvr.SQUAD_LOBBY_ACTION_BAR_HEIGHT + 26 + 20
	local var324_upvr = Constants_upvr.SQUAD_LOBBY_ACTION_BAR_HEIGHT + 20
	local any_useState_result1_upvr_2, any_useState_result2_upvr_4 = React_upvr.useState(nil)
	local any_useState_result1_upvr_9, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(function(arg1_24) -- Line 556
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_11 (readonly)
			[2]: var7_result1_upvr (readonly)
		]]
		if 0 < arg1_24.Y then
			any_useState_result2_upvr_11(arg1_24.Y + var7_result1_upvr.Gap.Medium)
		else
			any_useState_result2_upvr_11(0)
		end
	end, dependencyArray_upvr(any_useState_result2_upvr_11, var7_result1_upvr))
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function() -- Line 572
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
		]]
		arg1.navigateToSquadInviteFriends(useSelector_upvr_result1_upvr)
	end, dependencyArray_upvr(useSelector_upvr_result1_upvr, arg1.navigateToSquadInviteFriends))
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
	else
	end
	if FFlagRecordVoiceStatusOnPartyAction_upvr then
	else
	end
	local var347 = any_useGetConversationFromId_result1_upvr
	if var347 then
		var347 = any_useGetConversationFromId_result1_upvr.hasUnreadMessages
	end
	local any_createFragment_result1_2 = Roact_upvr.createFragment({
		SquadLobbyBanners = React_upvr.useMemo(function() -- Line 564
			--[[ Upvalues[4]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: React_upvr (copied, readonly)
				[3]: SquadLobbyBanners_upvr (copied, readonly)
				[4]: any_useCallback_result1_upvr_9 (readonly)
			]]
			if game_DefineFastFlag_result1_upvr then
				return React_upvr.createElement(SquadLobbyBanners_upvr, {
					onAbsoluteSizeChanged = any_useCallback_result1_upvr_9;
				})
			end
			return nil
		end, dependencyArray_upvr(any_useCallback_result1_upvr_9));
		SquadLobbyUsersScrollingFrame = React_upvr.useMemo(function() -- Line 577
			--[[ Upvalues[21]:
				[1]: React_upvr (copied, readonly)
				[2]: any_useState_result1_upvr_6 (readonly)
				[3]: useStyle_upvr_result1_upvr (readonly)
				[4]: FFlagEnableAppChatFocusableFixes_upvr (copied, readonly)
				[5]: any_useCallback_result1_upvr_3 (readonly)
				[6]: SquadLobbyUserGrid_upvr (copied, readonly)
				[7]: any_useState_result1_upvr_3 (readonly)
				[8]: var323_upvr (readonly)
				[9]: SquadInviteChangesExperimentation_upvr (copied, readonly)
				[10]: any_useState_result1_upvr_7 (readonly)
				[11]: tbl_27_upvw (read and write)
				[12]: arg1 (readonly)
				[13]: any_useContext_result1_upvr_2 (readonly)
				[14]: EventNames_upvr (copied, readonly)
				[15]: useSelector_upvr_result1_upvr (readonly)
				[16]: SquadPartySheetActionEnum_upvr (copied, readonly)
				[17]: FFlagRecordVoiceStatusOnPartyAction_upvr (copied, readonly)
				[18]: var15_result1_upvr (readonly)
				[19]: any_useState_result2_upvr_4 (readonly)
				[20]: any_useState_result2_upvr_3 (readonly)
				[21]: any_useCallback_result1_upvr_6 (readonly)
			]]
			local module_7 = {
				Position = UDim2.fromOffset(0, any_useState_result1_upvr_6);
				Size = UDim2.new(1, 0, 1, -any_useState_result1_upvr_6);
				AutomaticCanvasSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				CanvasSize = UDim2.new();
				ScrollingDirection = Enum.ScrollingDirection.Y;
				ScrollBarImageColor3 = useStyle_upvr_result1_upvr.Theme.UIEmphasis.Color;
				ScrollBarImageTransparency = useStyle_upvr_result1_upvr.Theme.UIEmphasis.Transparency;
			}
			local var338 = 4
			module_7.ScrollBarThickness = var338
			local onUserCardActivated
			if FFlagEnableAppChatFocusableFixes_upvr then
				var338 = false
			else
				var338 = nil
			end
			module_7.Selectable = var338
			module_7.ZIndex = 0
			module_7[React_upvr.Change.AbsoluteSize] = any_useCallback_result1_upvr_3
			local module = {}
			local tbl_19 = {}
			onUserCardActivated = any_useState_result1_upvr_3 - Vector2.new(0, var323_upvr)
			tbl_19.containerSize = onUserCardActivated
			onUserCardActivated = UDim.new(0, var323_upvr)
			tbl_19.paddingBottom = onUserCardActivated
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
				onUserCardActivated = any_useState_result1_upvr_7
			else
				onUserCardActivated = tbl_27_upvw
				if not onUserCardActivated then
					onUserCardActivated = {}
				end
			end
			tbl_19.users = onUserCardActivated
			onUserCardActivated = arg1.isInExperience
			tbl_19.isInExperience = onUserCardActivated
			function onUserCardActivated(arg1_25) -- Line 600
				--[[ Upvalues[8]:
					[1]: any_useContext_result1_upvr_2 (copied, readonly)
					[2]: EventNames_upvr (copied, readonly)
					[3]: useSelector_upvr_result1_upvr (copied, readonly)
					[4]: SquadPartySheetActionEnum_upvr (copied, readonly)
					[5]: FFlagRecordVoiceStatusOnPartyAction_upvr (copied, readonly)
					[6]: var15_result1_upvr (copied, readonly)
					[7]: any_useState_result2_upvr_4 (copied, readonly)
					[8]: any_useState_result2_upvr_3 (copied, readonly)
				]]
				local tbl_17 = {
					parentChannelId = useSelector_upvr_result1_upvr;
				}
				local UserCardClicked_2 = SquadPartySheetActionEnum_upvr.UserCardClicked
				tbl_17.actionType = UserCardClicked_2
				if FFlagRecordVoiceStatusOnPartyAction_upvr then
					UserCardClicked_2 = var15_result1_upvr
				else
					UserCardClicked_2 = nil
				end
				tbl_17.voiceStatus = UserCardClicked_2
				any_useContext_result1_upvr_2.fireSquadAnalytics(EventNames_upvr.PartySheetAction, tbl_17)
				any_useState_result2_upvr_4(arg1_25)
				any_useState_result2_upvr_3(true)
			end
			tbl_19.onUserCardActivated = onUserCardActivated
			onUserCardActivated = arg1.navigateToHomePage
			tbl_19.navigateToHomePage = onUserCardActivated
			onUserCardActivated = any_useCallback_result1_upvr_6
			tbl_19.navigateToSquadInviteFriends = onUserCardActivated
			module.SquadLobbyUserGrid = React_upvr.createElement(SquadLobbyUserGrid_upvr, tbl_19)
			return React_upvr.createElement("ScrollingFrame", module_7, module)
		end, dependencyArray_upvr(any_useState_result2_upvr_4, any_useState_result2_upvr_3, any_useState_result1_upvr_3, tbl_27_upvw, any_useCallback_result1_upvr_6, any_useCallback_result1_upvr_3, arg1.navigateToHomePage, var323_upvr, any_useState_result1_upvr_6, nil, nil));
		SquadLobbyActionBar = React_upvr.useMemo(function() -- Line 630
			--[[ Upvalues[7]:
				[1]: React_upvr (copied, readonly)
				[2]: SquadLobbyActionBar_upvr (copied, readonly)
				[3]: useSquadState_upvr_result1_upvr_2 (readonly)
				[4]: any_useGetConversationFromId_result1_upvr (readonly)
				[5]: arg1 (readonly)
				[6]: any_useCallback_result1_upvr_7 (readonly)
				[7]: tbl_20_upvr (readonly)
			]]
			local module_6 = {
				squadState = useSquadState_upvr_result1_upvr_2;
				anchorPoint = Vector2.new(0.5, 1);
			}
			local var346
			if any_useGetConversationFromId_result1_upvr and any_useGetConversationFromId_result1_upvr.hasUnreadMessages then
				var346 = any_useGetConversationFromId_result1_upvr.hasUnreadMessages
			else
				var346 = false
			end
			module_6.hasUnreadMessages = var346
			var346 = arg1.navigateAwayFromSquad
			module_6.navigateAwayFromSquad = var346
			var346 = arg1.navigateToHomePage
			module_6.navigateToHomePage = var346
			var346 = any_useCallback_result1_upvr_7
			module_6.toggleVoiceChatMenu = var346
			var346 = UDim2.new(0.5, 0, 1, -20)
			module_6.position = var346
			var346 = tbl_20_upvr
			module_6.squadId = var346
			var346 = arg1.isInExperience
			module_6.isInExperience = var346
			return React_upvr.createElement(SquadLobbyActionBar_upvr, module_6)
		end, dependencyArray_upvr(tbl_20_upvr, arg1.isInExperience, arg1.navigateToHomePage, useSquadState_upvr_result1_upvr_2, any_useCallback_result1_upvr_7, var347));
		SquadLobbyVoiceChatMenu = React_upvr.useMemo(function() -- Line 655
			--[[ Upvalues[8]:
				[1]: any_useState_result1_upvr_10 (readonly)
				[2]: React_upvr (copied, readonly)
				[3]: Foundation_upvr (copied, readonly)
				[4]: StateLayerAffordance_upvr (copied, readonly)
				[5]: any_useState_result2_upvr_5 (readonly)
				[6]: var324_upvr (readonly)
				[7]: var7_result1_upvr (readonly)
				[8]: SquadLobbyVoiceChatMenu_upvr (copied, readonly)
			]]
			if any_useState_result1_upvr_10 then
				local module_2 = {
					Size = UDim2.new(1, 0, 1, 0);
					stateLayer = {
						affordance = StateLayerAffordance_upvr.None;
					};
				}
				local function onActivated() -- Line 661
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr_5 (copied, readonly)
					]]
					any_useState_result2_upvr_5(false)
				end
				module_2.onActivated = onActivated
				local module_5 = {}
				local tbl_4 = {}
				local tbl_22 = {
					Size = UDim2.new(1, 0, 0, var324_upvr);
					flexItem = {
						FlexMode = Enum.UIFlexMode.Fill;
					};
					LayoutOrder = 1;
					stateLayer = {
						affordance = StateLayerAffordance_upvr.None;
					};
				}
				local function onActivated() -- Line 685
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr_5 (copied, readonly)
					]]
					any_useState_result2_upvr_5(false)
				end
				tbl_22.onActivated = onActivated
				tbl_4.FlexibleSpace = React_upvr.createElement(Foundation_upvr.View, tbl_22)
				local tbl_23 = {
					Size = UDim2.new(1, 0, 1, 0);
					flexItem = {
						ItemLineAlignment = Enum.ItemLineAlignment.Center;
					};
					AutomaticSize = Enum.AutomaticSize.Y;
					LayoutOrder = 2;
					padding = Vector2.new(var7_result1_upvr.Padding.XLarge, var7_result1_upvr.Padding.Medium);
					stateLayer = {
						affordance = StateLayerAffordance_upvr.None;
					};
				}
				local function onActivated() -- Line 698
				end
				tbl_23.onActivated = onActivated
				tbl_23.ZIndex = 3
				tbl_4.Menu = React_upvr.createElement(Foundation_upvr.View, tbl_23, {
					SquadLobbyVoiceChatMenu = React_upvr.createElement(SquadLobbyVoiceChatMenu_upvr, {});
				})
				tbl_4.BottomPadding = React_upvr.createElement(Foundation_upvr.View, {
					Size = UDim2.new(1, 0, 0, var324_upvr);
					LayoutOrder = 3;
					stateLayer = {
						affordance = StateLayerAffordance_upvr.None;
					};
					onActivated = function() -- Line 707, Named "onActivated"
						--[[ Upvalues[1]:
							[1]: any_useState_result2_upvr_5 (copied, readonly)
						]]
						any_useState_result2_upvr_5(false)
					end;
				})
				module_5[1] = React_upvr.createElement(Foundation_upvr.ScrollView, {
					Size = UDim2.new(1, 0, 1, 0);
					Position = UDim2.new(0.5, 0, 0, 0);
					AnchorPoint = Vector2.new(0.5, 0);
					sizeConstraint = {
						MaxSize = Vector2.new(350, math.huge);
					};
					scroll = {
						AutomaticCanvasSize = Enum.AutomaticSize.Y;
						CanvasSize = UDim2.new(1, 0, 1, 0);
						ScrollingDirection = Enum.ScrollingDirection.Y;
					};
					layout = {
						FillDirection = Enum.FillDirection.Vertical;
						SortOrder = Enum.SortOrder.LayoutOrder;
					};
				}, tbl_4)
				return React_upvr.createElement(Foundation_upvr.View, module_2, module_5)
			end
			return nil
		end, dependencyArray_upvr(var324_upvr, any_useState_result1_upvr_10, any_useState_result2_upvr_5, var7_result1_upvr));
		UserDropdownMenu = React_upvr.useMemo(function() -- Line 717
			--[[ Upvalues[8]:
				[1]: any_useState_result1_upvr_9 (readonly)
				[2]: any_useState_result1_upvr_2 (readonly)
				[3]: React_upvr (copied, readonly)
				[4]: SquadLobbyUserDropdownMenu_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: any_useState_result2_upvr_4 (readonly)
				[7]: any_useState_result2_upvr_3 (readonly)
				[8]: useSelector_upvr_result1_upvr (readonly)
			]]
			if any_useState_result1_upvr_9 and any_useState_result1_upvr_2 then
				return React_upvr.createElement(SquadLobbyUserDropdownMenu_upvr, {
					userId = any_useState_result1_upvr_2;
					isInExperience = arg1.isInExperience;
					onDismiss = function() -- Line 722, Named "onDismiss"
						--[[ Upvalues[2]:
							[1]: any_useState_result2_upvr_4 (copied, readonly)
							[2]: any_useState_result2_upvr_3 (copied, readonly)
						]]
						any_useState_result2_upvr_4(nil)
						any_useState_result2_upvr_3(false)
					end;
					openViewProfile = function() -- Line 726, Named "openViewProfile"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: any_useState_result1_upvr_2 (copied, readonly)
						]]
						arg1.openViewProfile(any_useState_result1_upvr_2)
					end;
					openSquadVoiceAbuseReport = arg1.openSquadVoiceAbuseReport;
					parentChannelId = useSelector_upvr_result1_upvr;
				})
			end
			return nil
		end, dependencyArray_upvr(useSelector_upvr_result1_upvr, arg1.isInExperience, any_useState_result1_upvr_9, any_useState_result2_upvr_3, arg1.openViewProfile, any_useState_result1_upvr_2, any_useState_result2_upvr_4));
	})
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		any_createFragment_result1_2 = React_upvr.createElement(SquadLobbySessionProvider_upvr.Provider, nil, any_createFragment_result1_2)
	end
	return any_createFragment_result1_2
end