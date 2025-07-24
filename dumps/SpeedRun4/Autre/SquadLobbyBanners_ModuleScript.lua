-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:26
-- Luau version 6, Types version 3
-- Time taken: 0.013512 seconds

local HttpService_upvr = game:GetService("HttpService")
local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local CrossExperience_upvr = require(Parent.CrossExperience)
local CrossExperienceVoice = require(Parent.CrossExperienceVoice)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local dependencies = require(Squads.dependencies)
local React_upvr = dependencies.React
local Foundation_upvr = dependencies.Foundation
local SharedFlags_upvr = dependencies.SharedFlags
local default_upvr = CrossExperienceVoice.CrossExperienceVoiceManager.default
local VoiceStatus_upvr = CrossExperience_upvr.Utils.VoiceStatus
local useVoiceStatus_upvr = CrossExperienceVoice.Hooks.useVoiceStatus
local useLocalization_upvr = dependencies.Hooks.useLocalization
local useDispatch_upvr = dependencies.Hooks.useDispatch
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useCurrentSquadId_upvr = dependencies.SquadsCore.Hooks.useCurrentSquadId
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useIsLocalPlayerPartyVoiceEligible_upvr = dependencies.SquadsCore.Hooks.useIsLocalPlayerPartyVoiceEligible
local useIsCurrentSquadPartyVoiceEligible_upvr = dependencies.SquadsCore.Hooks.useIsCurrentSquadPartyVoiceEligible
local GuiService_upvr = game:GetService("GuiService")
function openWebview(arg1, arg2) -- Line 67
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local tbl_2 = {}
	local var24
	if game:GetEngineFeature("SetWebViewTitle") then
		var24 = arg1
	else
		var24 = nil
	end
	tbl_2.title = var24
	var24 = 0
	tbl_2.presentationStyle = var24
	var24 = true
	tbl_2.visible = var24
	tbl_2.url = arg2
	var24 = HttpService_upvr:JSONEncode(tbl_2)
	GuiService_upvr:BroadcastNotification(var24, 20)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DisallowSquadLobbyBannersInlineButtons", false)
local function var25_upvr(arg1) -- Line 80
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Foundation_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
		[6]: SharedFlags_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
	local useTokens_upvr_result1_2_upvr = useTokens_upvr()
	local isButtonInline = arg1.isButtonInline
	if isButtonInline then
		isButtonInline = not game_DefineFastFlag_result1_upvr
	end
	local function _() -- Line 84
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: Foundation_upvr (copied, readonly)
			[3]: useTokens_upvr_result1_2_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local module_8 = {React_upvr.createElement(Foundation_upvr.Text, {
			AutomaticSize = Enum.AutomaticSize.XY;
			backgroundStyle = useTokens_upvr_result1_2_upvr.Color.None;
			colorstyle = useTokens_upvr_result1_2_upvr.Color.Content.Emphasis;
			fontStyle = useTokens_upvr_result1_2_upvr.Typography.BodySmall;
			LayoutOrder = 1;
			Text = arg1.label;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			TextTruncate = Enum.TextTruncate.None;
			TextWrapped = true;
		})}
		if arg1.sublabels then
			for i, v in ipairs(arg1.sublabels) do
				if v and v ~= "" then
					table.insert(module_8, React_upvr.createElement(Foundation_upvr.Text, {
						AutomaticSize = Enum.AutomaticSize.XY;
						backgroundStyle = useTokens_upvr_result1_2_upvr.Color.None;
						colorstyle = useTokens_upvr_result1_2_upvr.Color.Content.Emphasis;
						fontStyle = useTokens_upvr_result1_2_upvr.Typography.BodySmall;
						LayoutOrder = i + 1;
						Text = v;
						TextXAlignment = Enum.TextXAlignment.Left;
						TextYAlignment = Enum.TextYAlignment.Center;
						TextTruncate = Enum.TextTruncate.None;
						TextWrapped = true;
						RichText = true;
					}))
				end
			end
		end
		return module_8
	end
	local module_7 = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, useTokens_upvr_result1_2_upvr.Radius.Small);
		});
	}
	local tbl_3 = {
		PaddingLeft = UDim.new(0, useTokens_upvr_result1_2_upvr.Gap.XLarge);
		PaddingRight = UDim.new(0, useTokens_upvr_result1_2_upvr.Gap.XLarge);
		PaddingTop = UDim.new(0, useTokens_upvr_result1_2_upvr.Gap.Medium);
	}
	local udim = UDim.new(0, useTokens_upvr_result1_2_upvr.Gap.Medium)
	tbl_3.PaddingBottom = udim
	module_7.UIPadding = React_upvr.createElement("UIPadding", tbl_3)
	local tbl_5 = {}
	if isButtonInline then
		udim = Enum.FillDirection.Horizontal
	else
		udim = Enum.FillDirection.Vertical
	end
	tbl_5.FillDirection = udim
	if isButtonInline then
		-- KONSTANTWARNING: GOTO [160] #106
	end
	-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [152] 101. Error Block 44 start (CF ANALYSIS FAILED)
	tbl_5.Padding = UDim.new(0, useTokens_upvr_result1_2_upvr.Gap.Medium)
	tbl_5.SortOrder = Enum.SortOrder.LayoutOrder
	tbl_5.VerticalAlignment = Enum.VerticalAlignment.Top
	local var44 = not isButtonInline
	tbl_5.Wraps = var44
	if isButtonInline then
		var44 = Enum.UIFlexAlignment.SpaceBetween
	else
		var44 = Enum.UIFlexAlignment.Fill
	end
	tbl_5.HorizontalFlex = var44
	if isButtonInline then
		-- KONSTANTWARNING: GOTO [187] #122
	end
	tbl_5.VerticalFlex = Enum.UIFlexAlignment.None
	module_7.UIListLayout = React_upvr.createElement("UIListLayout", tbl_5)
	if SharedFlags_upvr.FFlagPartyVoiceEnableMicPermissionsBanner then
		local _ = {
			tag = "col auto-xy gap-small wrap";
			LayoutOrder = 1;
		}
		-- KONSTANTWARNING: GOTO [213] #141
	end
	module_7.TextFrame = nil
	if not SharedFlags_upvr.FFlagPartyVoiceEnableMicPermissionsBanner then
		local _ = {
			AutomaticSize = Enum.AutomaticSize.XY;
			backgroundStyle = useTokens_upvr_result1_2_upvr.Color.None;
			colorstyle = useTokens_upvr_result1_2_upvr.Color.Content.Emphasis;
			fontStyle = useTokens_upvr_result1_2_upvr.Typography.BodySmall;
			LayoutOrder = 1;
			Text = arg1.label;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			TextTruncate = Enum.TextTruncate.None;
			TextWrapped = true;
		}
		;({}).UIFlexItem = React_upvr.createElement("UIFlexItem", {
			FlexMode = Enum.UIFlexMode.Shrink;
		})
		-- KONSTANTWARNING: GOTO [288] #186
	end
	module_7.TextLabel = nil
	local var49
	if arg1.onActivated and isButtonInline then
		var49 = React_upvr.createElement
		var49 = var49(Foundation_upvr.Button, {
			LayoutOrder = 2;
			AutomaticSize = Enum.AutomaticSize.Y;
			text = arg1.buttonLabel;
			variant = Foundation_upvr.Enums.ButtonVariant.Link;
			onActivated = arg1.onActivated;
		})
	else
		var49 = nil
	end
	module_7.InlineButton = var49
	if arg1.onActivated and not isButtonInline then
		var49 = React_upvr.createElement
		var49 = var49(Foundation_upvr.Button, {
			LayoutOrder = 2;
			text = arg1.buttonLabel;
			variant = Foundation_upvr.Enums.ButtonVariant.Standard;
			size = Foundation_upvr.Enums.ButtonSize.Small;
			onActivated = arg1.onActivated;
			fillBehavior = Foundation_upvr.Enums.FillBehavior.Fill;
		})
	else
		var49 = nil
	end
	module_7.BottomButton = var49
	do
		return React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.fromScale(1, 0);
			BackgroundColor3 = useTokens_upvr_result1_2_upvr.Color.Surface.Surface_200.Color3;
			BackgroundTransparency = useTokens_upvr_result1_2_upvr.Color.Surface.Surface_200.Transparency;
			LayoutOrder = arg1.LayoutOrder;
		}, module_7)
	end
	-- KONSTANTERROR: [152] 101. Error Block 44 end (CF ANALYSIS FAILED)
end
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local getTableAppStorageKey_upvr = dependencies.SquadsCore.Utils.appStorageAccess.getTableAppStorageKey
local SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr = dependencies.SquadsCore.Common.Constants.SQUAD_VOICE_EU_MODAL_SEEN_KEY
local SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr = dependencies.SquadsCore.Common.Constants.SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY
local displayEuConsentPrompt_upvr = dependencies.SquadsCore.Utils.displayEuConsentPrompt
local function var52_upvr(arg1) -- Line 199
	--[[ Upvalues[12]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: getTableAppStorageKey_upvr (readonly)
		[6]: SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr (readonly)
		[7]: SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr (readonly)
		[8]: dependencyArray_upvr (readonly)
		[9]: HttpService_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: var25_upvr (readonly)
		[12]: displayEuConsentPrompt_upvr (readonly)
	]]
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local getTableAppStorageKey_upvr_result1_upvr_2 = getTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_SEEN_KEY_upvr)
	local getTableAppStorageKey_upvr_result1_upvr = getTableAppStorageKey_upvr(SQUAD_VOICE_EU_MODAL_CONSENT_GIVEN_KEY_upvr)
	React_upvr.useEffect(function() -- Line 208
		--[[ Upvalues[4]:
			[1]: getTableAppStorageKey_upvr_result1_upvr_2 (readonly)
			[2]: useLocalUserId_upvr_result1_upvr (readonly)
			[3]: getTableAppStorageKey_upvr_result1_upvr (readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		if getTableAppStorageKey_upvr_result1_upvr_2[tostring(useLocalUserId_upvr_result1_upvr)] and not getTableAppStorageKey_upvr_result1_upvr[tostring(useLocalUserId_upvr_result1_upvr)] then
			any_useState_result2_upvr(true)
		end
	end, dependencyArray_upvr(HttpService_upvr:JSONEncode(getTableAppStorageKey_upvr_result1_upvr_2), HttpService_upvr:JSONEncode(getTableAppStorageKey_upvr_result1_upvr)))
	React_upvr.useEffect(function() -- Line 215
		--[[ Upvalues[2]:
			[1]: default_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr_2 = default_upvr.VoiceEuModalConsented.Event:Connect(function() -- Line 216
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(false)
		end)
		local any_Connect_result1_upvr = default_upvr.VoiceEuModalRefused.Event:Connect(function() -- Line 221
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(true)
		end)
		return function() -- Line 225
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr_2 (readonly)
				[2]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr_2:Disconnect()
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	if any_useState_result1 then
		local module_2 = {
			LayoutOrder = arg1.LayoutOrder;
			label = "Give consent to the voice recording policy in order to access voice chat.";
			buttonLabel = "Connect";
			isButtonInline = true;
		}
		local useDispatch_upvr_result1_upvr = useDispatch_upvr()
		local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
		function module_2.onActivated() -- Line 237
			--[[ Upvalues[6]:
				[1]: useDispatch_upvr_result1_upvr (readonly)
				[2]: displayEuConsentPrompt_upvr (copied, readonly)
				[3]: any_useContext_result1_upvr (readonly)
				[4]: useLocalUserId_upvr_result1_upvr (readonly)
				[5]: getTableAppStorageKey_upvr_result1_upvr_2 (readonly)
				[6]: getTableAppStorageKey_upvr_result1_upvr (readonly)
			]]
			useDispatch_upvr_result1_upvr(displayEuConsentPrompt_upvr(any_useContext_result1_upvr.setSquadPrompt, tostring(useLocalUserId_upvr_result1_upvr), getTableAppStorageKey_upvr_result1_upvr_2, getTableAppStorageKey_upvr_result1_upvr))
		end
		return React_upvr.createElement(var25_upvr, module_2)
	end
	return nil
end
local useStore_upvr = dependencies.Hooks.useStore
local VoiceStatusChanged_upvr = CrossExperience_upvr.Actions.VoiceStatusChanged
local getFFlagEnableCrossExpVoiceMemoryCheck_upvr = SharedFlags_upvr.getFFlagEnableCrossExpVoiceMemoryCheck
local SquadPromptType_upvr = dependencies.SquadsCore.Enums.SquadPromptType
local function var73_upvr(arg1) -- Line 251
	--[[ Upvalues[15]:
		[1]: useDispatch_upvr (readonly)
		[2]: useStore_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: useCurrentSquadId_upvr (readonly)
		[6]: useVoiceStatus_upvr (readonly)
		[7]: CrossExperience_upvr (readonly)
		[8]: VoiceStatus_upvr (readonly)
		[9]: useLocalization_upvr (readonly)
		[10]: VoiceStatusChanged_upvr (readonly)
		[11]: default_upvr (readonly)
		[12]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (readonly)
		[13]: SquadPromptType_upvr (readonly)
		[14]: dependencyArray_upvr (readonly)
		[15]: var25_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var78_upvr = useCurrentSquadId_upvr() or ""
	local useVoiceStatus_upvr_result1_upvr = useVoiceStatus_upvr()
	local var80_upvr
	if useVoiceStatus_upvr_result1_upvr ~= CrossExperience_upvr.Constants.VOICE_STATUS.ERROR_JOIN_FEASIBILITY_CHECK_FAILED then
		var80_upvr = false
	else
		var80_upvr = true
	end
	if not VoiceStatus_upvr.isVoiceRetriableErrorByGameJoin(useVoiceStatus_upvr_result1_upvr) then
	end
	local var14_result1_2 = useLocalization_upvr({
		errorText = "Feature.Squads.Label.VoiceErrorGeneral";
		errorButton = "Feature.Squads.Action.VoiceErrorGeneral";
	})
	local var15_result1_upvr = useDispatch_upvr()
	local any_useContext_result1_upvr_2 = React_upvr.useContext(SquadExternalContractContext_upvr)
	local var74_result1_upvr = useStore_upvr()
	if not getFFlagEnableCrossExpVoiceMemoryCheck_upvr() or not var80_upvr then
	end
	if VoiceStatus_upvr.isVoiceRetriableErrorByVoiceJoin(useVoiceStatus_upvr_result1_upvr) then
		local module_3 = {
			LayoutOrder = arg1.LayoutOrder;
			label = var14_result1_2.errorText;
			buttonLabel = var14_result1_2.errorButton;
		}
		local var94 = true
		module_3.isButtonInline = var94
		if var78_upvr ~= "" then
			var94 = React_upvr.useCallback(function() -- Line 266
				--[[ Upvalues[12]:
					[1]: var15_result1_upvr (readonly)
					[2]: VoiceStatusChanged_upvr (copied, readonly)
					[3]: CrossExperience_upvr (copied, readonly)
					[4]: default_upvr (copied, readonly)
					[5]: var78_upvr (readonly)
					[6]: getFFlagEnableCrossExpVoiceMemoryCheck_upvr (copied, readonly)
					[7]: var80_upvr (readonly)
					[8]: any_useContext_result1_upvr_2 (readonly)
					[9]: var74_result1_upvr (readonly)
					[10]: SquadPromptType_upvr (copied, readonly)
					[11]: VoiceStatus_upvr (copied, readonly)
					[12]: useVoiceStatus_upvr_result1_upvr (readonly)
				]]
				local function var87_upvr(arg1_2) -- Line 267
					--[[ Upvalues[5]:
						[1]: var15_result1_upvr (copied, readonly)
						[2]: VoiceStatusChanged_upvr (copied, readonly)
						[3]: CrossExperience_upvr (copied, readonly)
						[4]: default_upvr (copied, readonly)
						[5]: var78_upvr (copied, readonly)
					]]
					var15_result1_upvr(VoiceStatusChanged_upvr({
						status = CrossExperience_upvr.Constants.VOICE_STATUS.RCC_CONNECTING;
					}))
					local tbl_4 = {
						partyId = var78_upvr;
						force = true;
					}
					tbl_4.shouldIgnoreMemoryWarning = arg1_2
					default_upvr:join(tbl_4)
				end
				if getFFlagEnableCrossExpVoiceMemoryCheck_upvr() and var80_upvr then
					if default_upvr:performJoinFeasibilityCheck() then
						var87_upvr()
					else
						any_useContext_result1_upvr_2.setSquadPrompt(var74_result1_upvr, {
							hideCancelButton = false;
							promptType = SquadPromptType_upvr.ConnectVoiceWithLowMemory;
							onConfirm = function() -- Line 288, Named "onConfirm"
							end;
							onCancel = function() -- Line 289, Named "onCancel"
								--[[ Upvalues[1]:
									[1]: var87_upvr (readonly)
								]]
								var87_upvr(true)
							end;
						})
					end
				end
				if VoiceStatus_upvr.isVoiceRetriableErrorByGameJoin(useVoiceStatus_upvr_result1_upvr) then
					if getFFlagEnableCrossExpVoiceMemoryCheck_upvr() then
						var87_upvr()
					else
						var15_result1_upvr(VoiceStatusChanged_upvr({
							status = CrossExperience_upvr.Constants.VOICE_STATUS.RCC_CONNECTING;
						}))
						default_upvr:join({
							partyId = var78_upvr;
							force = true;
						})
					end
				end
				if VoiceStatus_upvr.isVoiceRetriableErrorByVoiceJoin(useVoiceStatus_upvr_result1_upvr) then
					default_upvr:rejoinVoice()
				end
			end, dependencyArray_upvr(useVoiceStatus_upvr_result1_upvr, var78_upvr, var80_upvr))
		else
			var94 = nil
		end
		module_3.onActivated = var94
		return React_upvr.createElement(var25_upvr, module_3)
	end
	return nil
end
local useIsAnyOtherUserPartyVoiceEligible_upvr = require(Squads.Hooks.useIsAnyOtherUserPartyVoiceEligible)
local game_DefineFastString_result1_upvr = game:DefineFastString("PartyVoiceBannerErrorUserNotEligibleURL", "")
local function var95_upvr(arg1) -- Line 329
	--[[ Upvalues[8]:
		[1]: useIsCurrentSquadPartyVoiceEligible_upvr (readonly)
		[2]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[3]: useIsAnyOtherUserPartyVoiceEligible_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: useAppPolicy_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: game_DefineFastString_result1_upvr (readonly)
		[8]: var25_upvr (readonly)
	]]
	local var14_result1_3_upvr = useLocalization_upvr({
		errorText = "Feature.Squads.Label.VoiceErrorUserIneligible";
		errorButton = "Feature.Squads.Action.VoiceErrorUserIneligible";
	})
	local function var108(arg1_4) -- Line 337
		return arg1_4.getWebViewSupport()
	end
	var108 = useIsCurrentSquadPartyVoiceEligible_upvr()
	local var109 = var108
	if var109 then
		var109 = not useIsLocalPlayerPartyVoiceEligible_upvr()
		if var109 then
			var109 = useIsAnyOtherUserPartyVoiceEligible_upvr()
		end
	end
	if not var109 then
		return nil
	end
	local module_6 = {
		LayoutOrder = arg1.LayoutOrder;
		label = var14_result1_3_upvr.errorText;
		buttonLabel = var14_result1_3_upvr.errorButton;
		isButtonInline = false;
	}
	local var113
	if useAppPolicy_upvr(var108) and game_DefineFastString_result1_upvr ~= "" then
		var113 = React_upvr.useCallback(function() -- Line 345
			--[[ Upvalues[2]:
				[1]: game_DefineFastString_result1_upvr (copied, readonly)
				[2]: var14_result1_3_upvr (readonly)
			]]
			if game_DefineFastString_result1_upvr ~= "" then
				openWebview(var14_result1_3_upvr.errorButton, game_DefineFastString_result1_upvr)
			end
		end, {var14_result1_3_upvr.errorButton})
	else
		var113 = nil
	end
	module_6.onActivated = var113
	return React_upvr.createElement(var25_upvr, module_6)
end
local VoiceChat_upvr = require(Parent.VoiceChat)
local function var114_upvr(arg1) -- Line 366
	--[[ Upvalues[9]:
		[1]: useVoiceStatus_upvr (readonly)
		[2]: useCurrentSquadId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: VoiceChat_upvr (readonly)
		[5]: useAppPolicy_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: VoiceStatus_upvr (readonly)
		[9]: var25_upvr (readonly)
	]]
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 369
		--[[ Upvalues[1]:
			[1]: VoiceChat_upvr (copied, readonly)
		]]
		return VoiceChat_upvr.Utils.GetSettingsAppAvailable()
	end, {})
	local useAppPolicy_upvr_result1_upvr = useAppPolicy_upvr(function(arg1_5) -- Line 373
		return arg1_5
	end)
	local var14_result1 = useLocalization_upvr({
		errorText = "Feature.SettingsHub.Prompt.Subtitle.AllowMicrophoneAccess";
		errorSubtext1 = React_upvr.useMemo(function() -- Line 377
			--[[ Upvalues[2]:
				[1]: any_useMemo_result1_upvr (readonly)
				[2]: useAppPolicy_upvr_result1_upvr (readonly)
			]]
			local var121
			if any_useMemo_result1_upvr then
				var121 = useAppPolicy_upvr_result1_upvr.getMicSettingsDeeplinkDirectionsLocaleKey()
			else
				var121 = useAppPolicy_upvr_result1_upvr.getMicSettingsDirectionsLocaleKey()
			end
			return var121 or ""
		end, dependencyArray_upvr(useAppPolicy_upvr_result1_upvr, any_useMemo_result1_upvr));
		errorSubtext2 = React_upvr.useMemo(function() -- Line 384
			--[[ Upvalues[1]:
				[1]: useAppPolicy_upvr_result1_upvr (readonly)
			]]
			if useAppPolicy_upvr_result1_upvr.getRequiresAppRestartOnMicAccessChange() then
				return "Feature.SettingsHub.Prompt.RestartOnMicAccessChange"
			end
			return ""
		end, dependencyArray_upvr(useAppPolicy_upvr_result1_upvr, any_useMemo_result1_upvr));
		errorButton = "Feature.SettingsHub.Action.OpenSettings";
	})
	if VoiceStatus_upvr.isMicPermissionsError(useVoiceStatus_upvr()) then
		local module = {
			LayoutOrder = arg1.LayoutOrder;
			label = var14_result1.errorText;
			sublabels = {var14_result1.errorSubtext1, var14_result1.errorSubtext2};
			buttonLabel = var14_result1.errorButton;
			isButtonInline = true;
		}
		local var129
		if (useCurrentSquadId_upvr() or "") ~= "" and any_useMemo_result1_upvr then
			var129 = React_upvr.useCallback(function() -- Line 400
				--[[ Upvalues[1]:
					[1]: VoiceChat_upvr (copied, readonly)
				]]
				pcall(function() -- Line 401
					--[[ Upvalues[1]:
						[1]: VoiceChat_upvr (copied, readonly)
					]]
					VoiceChat_upvr.Utils.SwitchToMicrophoneSettings()
				end)
			end, {})
		else
			var129 = nil
		end
		module.onActivated = var129
		return React_upvr.createElement(var25_upvr, module)
	end
	return nil
end
local useNavigation_upvr = dependencies.useNavigation
local useCurrentSquadParentChannelId_upvr = dependencies.SquadsCore.Hooks.useCurrentSquadParentChannelId
local function var130_upvr(arg1) -- Line 422
	--[[ Upvalues[7]:
		[1]: useNavigation_upvr (readonly)
		[2]: useCurrentSquadParentChannelId_upvr (readonly)
		[3]: useIsCurrentSquadPartyVoiceEligible_upvr (readonly)
		[4]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: var25_upvr (readonly)
	]]
	local var131_result1_upvr = useNavigation_upvr()
	local var134_upvr = useCurrentSquadParentChannelId_upvr() or ""
	local var135 = false
	if useIsCurrentSquadPartyVoiceEligible_upvr() == false then
		var135 = useIsLocalPlayerPartyVoiceEligible_upvr()
	end
	local var14_result1_4 = useLocalization_upvr({
		errorText = "Feature.Squads.Label.VoiceErrorPartyNotVoiceEligible";
		errorButton = "Feature.Squads.Action.VoiceErrorPartyNotVoiceEligible";
	})
	if not var135 then
		return nil
	end
	return React_upvr.createElement(var25_upvr, {
		LayoutOrder = arg1.LayoutOrder;
		label = var14_result1_4.errorText;
		buttonLabel = var14_result1_4.errorButton;
		isButtonInline = false;
		onActivated = React_upvr.useCallback(function() -- Line 433
			--[[ Upvalues[2]:
				[1]: var134_upvr (readonly)
				[2]: var131_result1_upvr (readonly)
			]]
			if var134_upvr ~= "" then
				pcall(function() -- Line 435
					--[[ Upvalues[2]:
						[1]: var131_result1_upvr (copied, readonly)
						[2]: var134_upvr (copied, readonly)
					]]
					var131_result1_upvr.navigate("CreateUnfilteredChatPartialModal", {
						conversationId = var134_upvr;
					})
				end)
			end
		end, {var134_upvr, var131_result1_upvr});
	})
end
local GetFFlagEnableCrossExpVoice_upvr = SharedFlags_upvr.GetFFlagEnableCrossExpVoice
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("DisablePartyVoiceEligibilityBanner", false)
local FFlagEnableVoiceEuConsentPrompt_upvr = SharedFlags_upvr.FFlagEnableVoiceEuConsentPrompt
return function(arg1) -- Line 460
	--[[ Upvalues[11]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[4]: var73_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[6]: var130_upvr (readonly)
		[7]: var95_upvr (readonly)
		[8]: SharedFlags_upvr (readonly)
		[9]: var114_upvr (readonly)
		[10]: FFlagEnableVoiceEuConsentPrompt_upvr (readonly)
		[11]: var52_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	local useTokens_upvr_result1 = useTokens_upvr()
	local module_4 = {
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, useTokens_upvr_result1.Padding.XLarge);
			PaddingRight = UDim.new(0, useTokens_upvr_result1.Padding.XLarge);
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, useTokens_upvr_result1.Gap.Medium);
		});
	}
	local var154
	if GetFFlagEnableCrossExpVoice_upvr() then
		var154 = React_upvr.createElement
		var154 = var154(var73_upvr, {
			LayoutOrder = 1;
		})
	else
		var154 = nil
	end
	module_4.VoiceErrorBanner = var154
	if GetFFlagEnableCrossExpVoice_upvr() and not game_DefineFastFlag_result1_upvr_2 then
		var154 = React_upvr.createElement
		var154 = var154(var130_upvr, {
			LayoutOrder = 2;
		})
	else
		var154 = nil
	end
	module_4.PartyVoiceEligibilityBanner = var154
	if GetFFlagEnableCrossExpVoice_upvr() then
		var154 = React_upvr.createElement
		var154 = var154(var95_upvr, {
			LayoutOrder = 3;
		})
		-- KONSTANTWARNING: GOTO [147] #105
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [146] 104. Error Block 37 start (CF ANALYSIS FAILED)
	var154 = nil
	module_4.PartyVoiceUserEligibilityBanner = var154
	if GetFFlagEnableCrossExpVoice_upvr() and SharedFlags_upvr.FFlagPartyVoiceEnableMicPermissionsBanner then
		var154 = React_upvr.createElement
		var154 = var154(var114_upvr, {
			LayoutOrder = 4;
		})
	else
		var154 = nil
	end
	module_4.VoiceMicPermissionsBanner = var154
	if GetFFlagEnableCrossExpVoice_upvr() and FFlagEnableVoiceEuConsentPrompt_upvr then
		var154 = React_upvr.createElement
		var154 = var154(var52_upvr, {
			LayoutOrder = 5;
		})
	else
		var154 = nil
	end
	module_4.VoiceEuModalConnectBanner = var154
	do
		return React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.fromScale(1, 0);
			BackgroundTransparency = 1;
			[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_6) -- Line 462
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1_6 then
					arg1.onAbsoluteSizeChanged(arg1_6.AbsoluteSize)
				end
			end, {arg1.onAbsoluteSizeChanged});
		}, module_4)
	end
	-- KONSTANTERROR: [146] 104. Error Block 37 end (CF ANALYSIS FAILED)
end