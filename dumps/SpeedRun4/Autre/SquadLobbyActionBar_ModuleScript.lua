-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:25
-- Luau version 6, Types version 3
-- Time taken: 0.011526 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Squads = script:FindFirstAncestor("Squads")
local AppStorageService_upvr = game:GetService("AppStorageService")
local Parent = Squads.Parent
local CrossExperienceVoice = require(Parent.CrossExperienceVoice)
local Foundation_upvr = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local dependencies = require(Squads.dependencies)
local SharedFlags = dependencies.SharedFlags
local SquadsCore = dependencies.SquadsCore
local SquadCoordinationExperienceJoinExperimentation_upvr = dependencies.SocialExperiments.SquadCoordinationExperienceJoinExperimentation
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local FFlagBuilderIconsMigrationSquads_upvr = Squads.Flags.FFlagBuilderIconsMigrationSquads
local FFlagBuilderIconsMigrationSquads_upvr_2_upvr = require(FFlagBuilderIconsMigrationSquads_upvr)
local var16_upvr
if var16_upvr then
	FFlagBuilderIconsMigrationSquads_upvr = "size-800-800"
else
	FFlagBuilderIconsMigrationSquads_upvr = "size-600-600"
end
if FFlagBuilderIconsMigrationSquads_upvr_2_upvr then
	var16_upvr = "size-800-800"
else
	var16_upvr = "size-900-900"
end
local tbl_3_upvr = {
	["icons/menu/platformChatOff"] = "speech-bubble-align-center";
	["icons/common/play"] = "play-large";
	["icons/common/search"] = "magnifying-glass";
	["icons/navigation/close"] = 'x';
	["icons/controls/headphone"] = "headphones";
	["icons/actions/truncationCollapse_small"] = "chevron-large-up";
	["icons/status/player/developer"] = "hammer-code";
}
if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
else
end
local function _(arg1) -- Line 149, Named "getTooltipWasShownFromAppStorage"
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 150
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return AppStorageService_upvr:GetItem(arg1)
	end)
	local var21
	if not pcall_result1 or pcall_result2 == nil then
		var21 = false
		return var21
	end
	if pcall_result2 ~= "true" then
		var21 = false
	else
		var21 = true
	end
	return var21
end
local function _(arg1) -- Line 161, Named "setTooltipWasShownFromAppStorage"
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	pcall(function() -- Line 162
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		AppStorageService_upvr:SetItem(arg1, tostring(true))
		AppStorageService_upvr:Flush()
	end)
end
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local useLastInputMethod_upvr = require(Parent.FocusNavigationUtils).useLastInputMethod
local InputUtilities_upvr = require(Parent.SocialCommon).Utils.InputUtilities
local CoreGui_upvr = game:GetService("CoreGui")
local ExternalEventConnection_upvr = require(Parent.RoactUtils).ExternalEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
local withHoverTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local function var23_upvr(arg1) -- Line 168
	--[[ Upvalues[14]:
		[1]: React_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useLastInputMethod_upvr (readonly)
		[5]: SquadCoordinationExperienceJoinExperimentation_upvr (readonly)
		[6]: AppStorageService_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
		[8]: InputUtilities_upvr (readonly)
		[9]: CoreGui_upvr (readonly)
		[10]: ExternalEventConnection_upvr (readonly)
		[11]: UserInputService_upvr (readonly)
		[12]: Foundation_upvr (readonly)
		[13]: withTooltip_upvr (readonly)
		[14]: withHoverTooltip_upvr (readonly)
	]]
	local any_useBinding_result1_upvr, any_useBinding_result2_upvr = React_upvr.useBinding(ControlState_upvr.Initialize)
	local var25_result1_upvr = useLastInputMethod_upvr()
	local module_3 = {
		headerText = arg1.tooltipText;
	}
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	React_upvr.useEffect(function() -- Line 181
		--[[ Upvalues[4]:
			[1]: SquadCoordinationExperienceJoinExperimentation_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: AppStorageService_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [45] 34. Error Block 15 start (CF ANALYSIS FAILED)
		local ftuxAppStorageKey_upvr = arg1.ftuxAppStorageKey
		pcall(function() -- Line 162
			--[[ Upvalues[2]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: ftuxAppStorageKey_upvr (readonly)
			]]
			AppStorageService_upvr:SetItem(ftuxAppStorageKey_upvr, tostring(true))
			AppStorageService_upvr:Flush()
		end)
		ftuxAppStorageKey_upvr = arg1.currentHoveredButton
		-- KONSTANTERROR: [45] 34. Error Block 15 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [63] 48. Error Block 26 start (CF ANALYSIS FAILED)
		ftuxAppStorageKey_upvr = arg1.enableFirstTimeTooltip
		local function INLINED() -- Internal function, doesn't exist in bytecode
			ftuxAppStorageKey_upvr = arg1.currentHoveredButton
			return ftuxAppStorageKey_upvr ~= ""
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			ftuxAppStorageKey_upvr = arg1.currentHoveredButton
			return ftuxAppStorageKey_upvr ~= arg1.triggerPointName
		end
		if not ftuxAppStorageKey_upvr or INLINED() and INLINED_2() then
			ftuxAppStorageKey_upvr = any_useState_result2_upvr_2
			ftuxAppStorageKey_upvr(false)
		end
		-- KONSTANTERROR: [63] 48. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [83] 62. Error Block 22 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [83] 62. Error Block 22 end (CF ANALYSIS FAILED)
	end, dependencyArray_upvr(arg1.currentHoveredButton, arg1.enableFirstTimeTooltip, arg1.ftuxAppStorageKey, arg1.showFtuxCustomConditionsMet, arg1.triggerPointName))
	local module_5 = {
		DisplayOrder = 6;
		disabled = false;
	}
	local var44 = CoreGui_upvr
	module_5.guiTarget = var44
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		var44 = any_useState_result1_upvr
	else
		var44 = nil
	end
	module_5.active = var44
	module_5.triggerPointName = arg1.triggerPointName
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 214
		--[[ Upvalues[3]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: var25_result1_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if InputUtilities_upvr.isActivationInput(arg1_2) or var25_result1_upvr == "Gamepad" then
			any_useState_result2_upvr_2(false)
		end
	end, {var25_result1_upvr})
	local var13_result1_upvr = useTokens_upvr()
	local function var45_upvr(arg1_3, arg2, arg3) -- Line 230
		--[[ Upvalues[13]:
			[1]: React_upvr (copied, readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: SquadCoordinationExperienceJoinExperimentation_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: any_useBinding_result1_upvr (readonly)
			[6]: any_useBinding_result2_upvr (readonly)
			[7]: dependencyArray_upvr (copied, readonly)
			[8]: any_useState_result1_upvr (readonly)
			[9]: ExternalEventConnection_upvr (copied, readonly)
			[10]: UserInputService_upvr (copied, readonly)
			[11]: any_useCallback_result1_upvr (readonly)
			[12]: Foundation_upvr (copied, readonly)
			[13]: var13_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local function _() -- Line 248
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: any_useState_result1_upvr (copied, readonly)
			]]
			if arg1.onActivated then
				arg1.onActivated(any_useState_result1_upvr)
			end
		end
		local module_4 = {
			AutomaticSize = arg1.automaticSize;
			LayoutOrder = arg1.layoutOrder;
			Size = UDim2.fromOffset(40, 40);
			BackgroundTransparency = 1;
		}
		module_4[React_upvr.Change.AbsolutePosition] = arg1_3
		module_4[React_upvr.Change.AbsoluteSize] = arg2
		local module_6 = {}
		local var53
		if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() and any_useState_result1_upvr then
			var53 = React_upvr.createElement
			var53 = var53(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.InputEnded;
				callback = any_useCallback_result1_upvr;
			})
		else
			var53 = nil
		end
		module_6.InputEndedConnection = var53
		var53 = React_upvr
		var53 = Foundation_upvr.View
		local tbl_6 = {
			Size = UDim2.fromScale(1, 1);
			backgroundStyle = arg1.backgroundStyle;
			cornerRadius = UDim.new(0, var13_result1_upvr.Radius.Circle);
			isDisabled = arg1.isDisabled;
		}
		if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		else
		end
		tbl_6.onActivated = arg1.onActivated
		tbl_6.onStateChanged = React_upvr.useCallback(function(arg1_4) -- Line 231
			--[[ Upvalues[6]:
				[1]: ControlState_upvr (copied, readonly)
				[2]: SquadCoordinationExperienceJoinExperimentation_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg3 (readonly)
				[5]: any_useBinding_result1_upvr (copied, readonly)
				[6]: any_useBinding_result2_upvr (copied, readonly)
			]]
			local any_fromRawValue_result1 = ControlState_upvr.fromRawValue(arg1_4)
			if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
				if any_fromRawValue_result1 == ControlState_upvr.Hover then
					arg1.onHoverCalled(arg1.triggerPointName)
				elseif any_fromRawValue_result1 == ControlState_upvr.Default then
					arg1.onHoverCalled("")
				end
			end
			if arg3 then
				arg3(any_useBinding_result1_upvr:getValue(), any_fromRawValue_result1)
			end
			any_useBinding_result2_upvr(any_fromRawValue_result1)
		end, dependencyArray_upvr(any_useBinding_result1_upvr, arg1.onHoverCalled, arg1.triggerPointName, any_useBinding_result2_upvr))
		module_6[1] = var53.createElement(var53, tbl_6, arg1.children)
		return React_upvr.createElement("Frame", module_4, module_6)
	end
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() and any_useState_result1_upvr then
		return withTooltip_upvr(module_3, module_5, function(arg1_5) -- Line 282
			--[[ Upvalues[1]:
				[1]: var45_upvr (readonly)
			]]
			return var45_upvr(arg1_5, arg1_5, nil)
		end)
	end
	return withHoverTooltip_upvr(module_3, module_5, function(arg1_6, arg2) -- Line 286
		--[[ Upvalues[1]:
			[1]: var45_upvr (readonly)
		]]
		return var45_upvr(arg1_6, arg1_6, arg2)
	end)
end
local function _(arg1) -- Line 296, Named "tagToSize"
	return {
		["size-600-600"] = arg1.Size.Size_600;
		["size-800-800"] = arg1.Size.Size_800;
	}
end
local function renderStandardImage_upvr(arg1, arg2, arg3, arg4) -- Line 303, Named "renderStandardImage"
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: FFlagBuilderIconsMigrationSquads_upvr_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Foundation_upvr (readonly)
	]]
	local var59 = tbl_3_upvr[arg2]
	local var60
	if FFlagBuilderIconsMigrationSquads_upvr_2_upvr and var59 then
		local tbl_5 = {
			["size-600-600"] = arg4.Size.Size_600;
			["size-800-800"] = arg4.Size.Size_800;
		}
		local module = {
			name = var59;
		}
		if arg1 then
			var60 = arg4.Color.Content.Muted
		else
			var60 = arg4.Color.Content.Emphasis
		end
		module.style = var60
		var60 = tbl_5[arg3]
		if not var60 then
			var60 = tbl_5["size-600-600"]
		end
		module.size = var60
		module.AnchorPoint = Vector2.new(0.5, 0.5)
		module.Position = UDim2.fromScale(0.5, 0.5)
		return React_upvr.createElement(Foundation_upvr.Icon, module)
	end
	local module_2 = {}
	module_2.Image = arg2
	local tbl_4 = {
		["content-emphasis"] = not arg1;
	}
	tbl_4["content-muted"] = arg1
	tbl_4["anchor-center-center position-center-center "..arg3] = true
	module_2.tag = tbl_4
	return React_upvr.createElement(Foundation_upvr.Image, module_2)
end
local VoiceChat_upvr = require(Parent.VoiceChat)
local function getLoadingIndicatorIcon_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 326, Named "getLoadingIndicatorIcon"
	--[[ Upvalues[1]:
		[1]: VoiceChat_upvr (readonly)
	]]
	local var66
	if arg1.Config.ColorMode.IsLight == "true" then
		var66 = "MicDark"
	else
		var66 = "MicLight"
	end
	if not arg3 or not arg2 or arg2.isMuted then
		return VoiceChat_upvr.Utils.GetIcon("Muted", var66)
	end
	if arg4 then
		return VoiceChat_upvr.Utils.GetIcon("Unmuted", var66, arg5)
	end
	return VoiceChat_upvr.Utils.GetIcon("Unmuted0", var66)
end
local function renderToggleAudioFocusButton_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 344, Named "renderToggleAudioFocusButton"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: var23_upvr (readonly)
		[3]: SquadCoordinationExperienceJoinExperimentation_upvr (readonly)
		[4]: Foundation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local tbl_2 = {}
	local X = Enum.AutomaticSize.X
	tbl_2.automaticSize = X
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		X = arg4
	else
		X = nil
	end
	tbl_2.currentHoveredButton = X
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		-- KONSTANTWARNING: GOTO [27] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 21. Error Block 36 start (CF ANALYSIS FAILED)
	tbl_2.enableFirstTimeTooltip = nil
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		-- KONSTANTWARNING: GOTO [37] #30
	end
	-- KONSTANTERROR: [26] 21. Error Block 36 end (CF ANALYSIS FAILED)
end
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useLocalization_upvr = dependencies.Hooks.useLocalization
local useCurrentSquadParentChannelId_upvr = SquadsCore.Hooks.useCurrentSquadParentChannelId
local useCurrentSquadSelector_upvr = dependencies.Hooks.useCurrentSquadSelector
local useVoiceStatus_upvr = CrossExperienceVoice.Hooks.useVoiceStatus
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local HttpService_upvr = game:GetService("HttpService")
local SquadLobbySessionProvider_upvr = SquadsCore.SquadSessionProvider.SquadLobbySessionProvider
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = SharedFlags.FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
local EventNames_upvr = SquadsCore.Analytics.EventNames
local SquadPartySheetActionEnum_upvr = require(Squads.Enums.SquadPartySheetActionEnum)
local FFlagRecordVoiceStatusOnPartyAction_upvr = require(Squads.Flags.FFlagRecordVoiceStatusOnPartyAction)
local SessionType_upvr = require(Parent.RobloxAppSessionization).SessionType
local leaveSquad_upvr = dependencies.SquadsCore.Thunks.leaveSquad
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("EnablePartyDevAPI")
local SquadState_upvr = SquadsCore.Enums.SquadState
local Badge_upvr = Foundation_upvr.Badge
local BadgeVariant_upvr = Foundation_upvr.Enums.BadgeVariant
local const_string_upvr = "icons/common/play"
local GetFFlagEnableCrossExpVoice_upvr = SharedFlags.GetFFlagEnableCrossExpVoice
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useBackgroundExperience_upvr = CrossExperienceVoice.Hooks.useBackgroundExperience
local useParticipant_upvr = CrossExperienceVoice.Hooks.useParticipant
local useIsVoiceConnected_upvr = CrossExperienceVoice.Hooks.useIsVoiceConnected
local useIsVoiceFocused_upvr = CrossExperienceVoice.Hooks.useIsVoiceFocused
local useParticipants_upvr = CrossExperienceVoice.Hooks.useParticipants
local useIsActiveParticipant_upvr = CrossExperienceVoice.Hooks.useIsActiveParticipant
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AudioFocusManagement")
local CrossExperienceVoiceManager_upvr = CrossExperienceVoice.CrossExperienceVoiceManager
local RunService_upvr = game:GetService("RunService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableCrossExpVoiceDebug", false)
local Constants_upvr = require(Squads.Common.Constants)
return function(arg1) -- Line 394
	--[[ Upvalues[44]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: SquadCoordinationExperienceJoinExperimentation_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useCurrentSquadParentChannelId_upvr (readonly)
		[6]: useCurrentSquadSelector_upvr (readonly)
		[7]: useVoiceStatus_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: useAppPolicy_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: SquadLobbySessionProvider_upvr (readonly)
		[12]: SquadExternalContractContext_upvr (readonly)
		[13]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
		[14]: EventNames_upvr (readonly)
		[15]: SquadPartySheetActionEnum_upvr (readonly)
		[16]: FFlagRecordVoiceStatusOnPartyAction_upvr (readonly)
		[17]: dependencyArray_upvr (readonly)
		[18]: SessionType_upvr (readonly)
		[19]: leaveSquad_upvr (readonly)
		[20]: game_GetEngineFeature_result1_upvr_2 (readonly)
		[21]: SquadState_upvr (readonly)
		[22]: var23_upvr (readonly)
		[23]: Badge_upvr (readonly)
		[24]: BadgeVariant_upvr (readonly)
		[25]: renderStandardImage_upvr (readonly)
		[26]: var16_upvr (readonly)
		[27]: const_string_upvr (readonly)
		[28]: FFlagBuilderIconsMigrationSquads_upvr (readonly)
		[29]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[30]: useLocalUserId_upvr (readonly)
		[31]: useBackgroundExperience_upvr (readonly)
		[32]: useParticipant_upvr (readonly)
		[33]: useIsVoiceConnected_upvr (readonly)
		[34]: useIsVoiceFocused_upvr (readonly)
		[35]: useParticipants_upvr (readonly)
		[36]: useIsActiveParticipant_upvr (readonly)
		[37]: game_GetEngineFeature_result1_upvr (readonly)
		[38]: CrossExperienceVoiceManager_upvr (readonly)
		[39]: RunService_upvr (readonly)
		[40]: renderToggleAudioFocusButton_upvr (readonly)
		[41]: game_DefineFastFlag_result1_upvr (readonly)
		[42]: getLoadingIndicatorIcon_upvr (readonly)
		[43]: Foundation_upvr (readonly)
		[44]: Constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 159 start (CF ANALYSIS FAILED)
	local tbl = {
		audioText = "Feature.Squads.Label.Audio";
	}
	local var104
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		var104 = "Feature.Squads.Label.FindExperiencesPlayTogether"
	else
		var104 = "Feature.Squads.Label.FindExperiences"
	end
	tbl.findExperiencesText = var104
	var104 = "Feature.Squads.Label.LeaveParty"
	tbl.leavePartyText = var104
	var104 = "Feature.Squads.Label.MuteMic"
	tbl.muteMicText = var104
	var104 = "Feature.Squads.Label.UnmuteMic"
	tbl.unmuteMicText = var104
	var104 = "Feature.Squads.Label.ViewChat"
	tbl.viewChatText = var104
	var104 = useCurrentSquadParentChannelId_upvr()
	local useCurrentSquadSelector_upvr_result1 = useCurrentSquadSelector_upvr()
	local _, any_useState_result2_upvr = React_upvr.useState("")
	local function _(arg1_7) -- Line 415
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_7)
	end
	if useCurrentSquadSelector_upvr_result1 and useCurrentSquadSelector_upvr_result1.members then
	else
	end
	local function _(arg1_8) -- Line 422
		return arg1_8.getCanUsePlatformChat()
	end
	local function _() -- Line 427
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (copied, readonly)
		]]
		return HttpService_upvr:GenerateGUID()
	end
	if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() then
		-- KONSTANTWARNING: GOTO [92] #74
	end
	-- KONSTANTERROR: [0] 1. Error Block 159 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [91] 73. Error Block 180 start (CF ANALYSIS FAILED)
	if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		-- KONSTANTWARNING: GOTO [104] #84
	end
	-- KONSTANTERROR: [91] 73. Error Block 180 end (CF ANALYSIS FAILED)
end