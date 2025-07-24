-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:05
-- Luau version 6, Types version 3
-- Time taken: 0.014320 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Constants_upvr_2 = require(RobloxGui_upvr.Modules.VoiceChat.Constants)
local Roact_upvr = require(CorePackages.Packages.Roact)
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local InGameContainer_upvr = require(CorePackages.Workspace.Packages.PhoneUpsell).InGameContainer
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local tbl_17_upvr = {
	Incomplete = "Incomplete";
	Completed = "Completed";
	CompletedAndClosed = "CompletedAndClosed";
}
local FFlagIEMSettingsAddPlaySessionID_upvr = require(RobloxGui_upvr.Modules.Settings.Flags).FFlagIEMSettingsAddPlaySessionID
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local module_upvr = require(RobloxGui_upvr.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useAppPolicy_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy).useAppPolicy
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local GetFFlagAddMorePhoneUpsellEvents_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAddMorePhoneUpsellEvents
local getPlatformTarget_upvr = require(CorePackages.Workspace.Packages.Analytics).getPlatformTarget
local EventStreamConstants_upvr = require(CorePackages.Workspace.Packages.AuthAnalytics).EventStreamConstants
local PhoneUpsellController_upvr = require(CorePackages.Workspace.Packages.PhoneUpsell).PhoneUpsellController
local default_upvr = require(RobloxGui_upvr.Modules.VoiceChat.VoiceChatServiceManager).default
local PhoneLegalDisclaimer_upvr = require(CorePackages.Workspace.Packages.PhoneUpsell).PhoneLegalDisclaimer
local Constants_upvr = require(CorePackages.Workspace.Packages.PhoneUpsell).Constants
local useRoactService_upvr = require(CorePackages.Workspace.Packages.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(CorePackages.Workspace.Packages.RoactServiceTags).RoactNetworking
local useInputType_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.useInputType
local InputTypeConstants_upvr = require(CorePackages.Workspace.Packages.InputType).InputTypeConstants
local GuiService_upvr = game:GetService("GuiService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local PostPhoneUpsellDisplayed_upvr = require(CorePackages.Workspace.Packages.PhoneUpsell).Http.Requests.PostPhoneUpsellDisplayed
local useEventConnection_upvr = require(CorePackages.Packages.ReactUtils).useEventConnection
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local leaveGame_upvr = require(RobloxGui_upvr.Modules.Settings.leaveGame)
local Initialize_result1 = (function() -- Line 62, Named "Initialize"
	--[[ Upvalues[33]:
		[1]: RobloxGui_upvr (readonly)
		[2]: FFlagIEMSettingsAddPlaySessionID_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: RbxAnalyticsService_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: useStyle_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: Constants_upvr_2 (readonly)
		[9]: useAppPolicy_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
		[12]: Button_upvr (readonly)
		[13]: ButtonType_upvr (readonly)
		[14]: GetFFlagAddMorePhoneUpsellEvents_upvr (readonly)
		[15]: getPlatformTarget_upvr (readonly)
		[16]: EventStreamConstants_upvr (readonly)
		[17]: PhoneUpsellController_upvr (readonly)
		[18]: default_upvr (readonly)
		[19]: PhoneLegalDisclaimer_upvr (readonly)
		[20]: Constants_upvr (readonly)
		[21]: tbl_17_upvr (readonly)
		[22]: useRoactService_upvr (readonly)
		[23]: RoactNetworking_upvr (readonly)
		[24]: useInputType_upvr (readonly)
		[25]: InputTypeConstants_upvr (readonly)
		[26]: GuiService_upvr (readonly)
		[27]: ContextActionService_upvr (readonly)
		[28]: PostPhoneUpsellDisplayed_upvr (readonly)
		[29]: useEventConnection_upvr (readonly)
		[30]: ButtonStack_upvr (readonly)
		[31]: leaveGame_upvr (readonly)
		[32]: InGameContainer_upvr (readonly)
		[33]: Roact_upvr (readonly)
	]]
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	any_CreateNewPage_result1_upvr.playsessionid = ""
	if FFlagIEMSettingsAddPlaySessionID_upvr and game_GetEngineFeature_result1_upvr then
		any_CreateNewPage_result1_upvr.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFunc(arg1) -- Line 71
		--[[ Upvalues[4]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: RbxAnalyticsService_upvr (copied, readonly)
			[3]: module_upvr (copied, readonly)
			[4]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
		]]
		if any_CreateNewPage_result1_upvr.HubRef then
			any_CreateNewPage_result1_upvr.HubRef:PopMenu(arg1, true)
		end
		local tbl_11 = {
			confirmed = module_upvr.AnalyticsCancelledName;
			universeid = tostring(game.GameId);
		}
		local AnalyticsLeaveGameSource = module_upvr.AnalyticsLeaveGameSource
		tbl_11.source = AnalyticsLeaveGameSource
		if FFlagIEMSettingsAddPlaySessionID_upvr then
			AnalyticsLeaveGameSource = any_CreateNewPage_result1_upvr.playsessionid
		else
			AnalyticsLeaveGameSource = nil
		end
		tbl_11.playsessionid = AnalyticsLeaveGameSource
		RbxAnalyticsService_upvr:SetRBXEventStream(module_upvr.AnalyticsTargetName, module_upvr.AnalyticsInGameMenuName, module_upvr.AnalyticsLeaveGameName, tbl_11)
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFromHotkey(arg1, arg2, arg3) -- Line 88
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			local var43 = true
			if arg3.UserInputType ~= Enum.UserInputType.Gamepad1 then
				var43 = true
				if arg3.UserInputType ~= Enum.UserInputType.Gamepad2 then
					var43 = true
					if arg3.UserInputType ~= Enum.UserInputType.Gamepad3 then
						if arg3.UserInputType ~= Enum.UserInputType.Gamepad4 then
							var43 = false
						else
							var43 = true
						end
					end
				end
			end
			any_CreateNewPage_result1_upvr.DontLeaveFunc(var43)
		end
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFromButton(arg1) -- Line 98
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.DontLeaveFunc(arg1)
	end
	any_CreateNewPage_result1_upvr.TabHeader = nil
	any_CreateNewPage_result1_upvr.Page.Name = "LeaveGameUpsellPage"
	any_CreateNewPage_result1_upvr.ShouldShowBottomBar = false
	any_CreateNewPage_result1_upvr.ShouldShowHubBar = false
	any_CreateNewPage_result1_upvr.DisableTopPadding = true
	function any_CreateNewPage_result1_upvr.UpsellComponent(arg1) -- Line 111
		--[[ Upvalues[17]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: useStyle_upvr (copied, readonly)
			[3]: useLocalization_upvr (copied, readonly)
			[4]: Constants_upvr_2 (copied, readonly)
			[5]: useAppPolicy_upvr (copied, readonly)
			[6]: React_upvr (copied, readonly)
			[7]: StyledTextLabel_upvr (copied, readonly)
			[8]: Button_upvr (copied, readonly)
			[9]: ButtonType_upvr (copied, readonly)
			[10]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
			[11]: RbxAnalyticsService_upvr (copied, readonly)
			[12]: getPlatformTarget_upvr (copied, readonly)
			[13]: EventStreamConstants_upvr (copied, readonly)
			[14]: PhoneUpsellController_upvr (copied, readonly)
			[15]: default_upvr (copied, readonly)
			[16]: PhoneLegalDisclaimer_upvr (copied, readonly)
			[17]: Constants_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local upsellType_upvr = any_CreateNewPage_result1_upvr.upsellType
		local var13_result1 = useStyle_upvr()
		local tbl_6 = {}
		local var51
		if upsellType_upvr == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
			var51 = "Feature.VerificationUpsell.Heading.UnlockVoiceChat"
		else
			var51 = "Feature.VerificationUpsell.Heading.DontLoseAccess"
		end
		tbl_6.headerKey = var51
		if upsellType_upvr == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
			var51 = "Feature.VerificationUpsell.Description.UnlockVoiceChatBody"
		else
			var51 = "Feature.VerificationUpsell.Description.RecoverAccountEasily"
		end
		tbl_6.bodyKey = var51
		var51 = "Feature.VerificationUpsell.Description.VoiceLegalConsent2"
		tbl_6.voiceConsent = var51
		var51 = "Feature.VerificationUpsell.Description.VoiceLegalDisclaimer2"
		tbl_6.voiceDisclaimer = var51
		var51 = "Feature.VerificationUpsell.Action.AddPhoneNumber"
		tbl_6.button = var51
		var51 = "Feature.VerificationUpsell.Action.SMSTerms"
		tbl_6.termsOfUse = var51
		var51 = "Feature.VerificationUpsell.Action.Privacy"
		tbl_6.privacyPolicy = var51
		local var14_result1_2 = useLocalization_upvr(tbl_6)
		var14_result1_2.voiceDisclaimer = var14_result1_2.voiceDisclaimer:gsub("{buttonText}", var14_result1_2.button)
		function var51(arg1_2) -- Line 128
			--[[ Upvalues[2]:
				[1]: upsellType_upvr (readonly)
				[2]: Constants_upvr_2 (copied, readonly)
			]]
			local var52 = false
			if upsellType_upvr == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
				var52 = arg1_2.RequireExplicitVoiceConsent()
			end
			return var52
		end
		local var15_result1 = useAppPolicy_upvr(var51)
		var51 = React_upvr.useState(false)
		local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState(false)
		local module = {
			ListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 12);
			});
			Header = React_upvr.createElement(StyledTextLabel_upvr, {
				text = var14_result1_2.headerKey;
				fontStyle = var13_result1.Font.Header2;
				colorStyle = var13_result1.Theme.TextEmphasis;
				layoutOrder = 1;
			});
			Body = React_upvr.createElement(StyledTextLabel_upvr, {
				text = var14_result1_2.bodyKey;
				textWrapped = true;
				size = UDim2.new(1, 0, 0, 0);
				automaticSize = Enum.AutomaticSize.Y;
				fontStyle = var13_result1.Font.Body;
				lineHeight = 1.1;
				colorStyle = var13_result1.Theme.TextDefault;
				layoutOrder = 2;
			});
		}
		local tbl_10 = {
			buttonType = ButtonType_upvr.Secondary;
			size = UDim2.new(1, 0, 0, var13_result1.Tokens.Global.Size_600);
			layoutOrder = 3;
			text = var14_result1_2.button;
		}
		local function onActivated() -- Line 166
			--[[ Upvalues[10]:
				[1]: any_CreateNewPage_result1_upvr (copied, readonly)
				[2]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
				[3]: RbxAnalyticsService_upvr (copied, readonly)
				[4]: getPlatformTarget_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: EventStreamConstants_upvr (copied, readonly)
				[7]: PhoneUpsellController_upvr (copied, readonly)
				[8]: default_upvr (copied, readonly)
				[9]: upsellType_upvr (readonly)
				[10]: Constants_upvr_2 (copied, readonly)
			]]
			any_CreateNewPage_result1_upvr.HubRef:SetVisibility(false, true)
			if GetFFlagAddMorePhoneUpsellEvents_upvr() then
				RbxAnalyticsService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "verificationUpsell", "modalAction", {
					origin = arg1.origin;
					btn = EventStreamConstants_upvr.Button.Continue;
					section = arg1.section;
				})
			end
			PhoneUpsellController_upvr.openPhoneUpsell({
				origin = arg1.origin;
				eventContext = "verificationUpsell";
				onSuccessBeforeToast = function() -- Line 178, Named "onSuccessBeforeToast"
					--[[ Upvalues[3]:
						[1]: default_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: any_CreateNewPage_result1_upvr (copied, readonly)
					]]
					default_upvr:DisablePhoneVerificationUpsell()
					arg1.onUpsellComplete()
					any_CreateNewPage_result1_upvr.HubRef:SetVisibility(true, false)
					any_CreateNewPage_result1_upvr.HubRef:SwitchToPage(any_CreateNewPage_result1_upvr.HubRef.LeaveGameUpsellPage, true)
				end;
				onSuccess = function() -- Line 184, Named "onSuccess"
					--[[ Upvalues[4]:
						[1]: upsellType_upvr (copied, readonly)
						[2]: Constants_upvr_2 (copied, readonly)
						[3]: default_upvr (copied, readonly)
						[4]: arg1 (copied, readonly)
					]]
					if upsellType_upvr == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
						default_upvr:EnableVoice()
						arg1.setVoiceEnabled(true)
					end
				end;
			})
		end
		tbl_10.onActivated = onActivated
		if var15_result1 then
		end
		tbl_10.isDisabled = not any_useState_result1_upvr
		module.Button = React_upvr.createElement(Button_upvr, tbl_10)
		local tbl_2 = {}
		if var15_result1 then
		else
		end
		tbl_2.legalText = var14_result1_2.voiceDisclaimer
		tbl_2.termsOfUse = var14_result1_2.termsOfUse
		tbl_2.privacyPolicy = var14_result1_2.privacyPolicy
		if upsellType_upvr ~= Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
		else
		end
		tbl_2.showLegalText = true
		tbl_2.showLegalButtons = true
		tbl_2.showLegalTextCheckbox = var15_result1
		tbl_2.legalTextChecked = any_useState_result1_upvr
		function tbl_2.setLegalTextChecked() -- Line 204
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_3 (readonly)
				[2]: any_useState_result1_upvr (readonly)
			]]
			any_useState_result2_upvr_3(not any_useState_result1_upvr)
		end
		function tbl_2.onTermsOfUseClick() -- Line 207
			--[[ Upvalues[5]:
				[1]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
				[2]: RbxAnalyticsService_upvr (copied, readonly)
				[3]: getPlatformTarget_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: Constants_upvr (copied, readonly)
			]]
			if GetFFlagAddMorePhoneUpsellEvents_upvr() then
				RbxAnalyticsService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "verificationUpsell", "modalAction", {
					origin = arg1.origin;
					field = "termsOfService";
					section = arg1.section;
				})
			end
			arg1.showWebpage(Constants_upvr.TERMS_OF_SERVICE_URL)
		end
		function tbl_2.onPrivacyPolicyClick() -- Line 218
			--[[ Upvalues[5]:
				[1]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
				[2]: RbxAnalyticsService_upvr (copied, readonly)
				[3]: getPlatformTarget_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: Constants_upvr (copied, readonly)
			]]
			if GetFFlagAddMorePhoneUpsellEvents_upvr() then
				RbxAnalyticsService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "verificationUpsell", "modalAction", {
					origin = arg1.origin;
					field = "privacyPolicy";
					section = arg1.section;
				})
			end
			arg1.showWebpage(Constants_upvr.PRIVACY_POLICY_URL)
		end
		tbl_2.LayoutOrder = 4
		module.PhoneLegalDisclaimer = React_upvr.createElement(PhoneLegalDisclaimer_upvr, tbl_2)
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.LayoutOrder;
		}, module)
	end
	function any_CreateNewPage_result1_upvr.LeaveGameComponent(arg1) -- Line 234
		--[[ Upvalues[23]:
			[1]: useStyle_upvr (copied, readonly)
			[2]: useLocalization_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: tbl_17_upvr (copied, readonly)
			[5]: any_CreateNewPage_result1_upvr (readonly)
			[6]: Constants_upvr_2 (copied, readonly)
			[7]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
			[8]: useRoactService_upvr (copied, readonly)
			[9]: RoactNetworking_upvr (copied, readonly)
			[10]: useInputType_upvr (copied, readonly)
			[11]: InputTypeConstants_upvr (copied, readonly)
			[12]: GuiService_upvr (copied, readonly)
			[13]: ContextActionService_upvr (copied, readonly)
			[14]: PostPhoneUpsellDisplayed_upvr (copied, readonly)
			[15]: RbxAnalyticsService_upvr (copied, readonly)
			[16]: getPlatformTarget_upvr (copied, readonly)
			[17]: EventStreamConstants_upvr (copied, readonly)
			[18]: useEventConnection_upvr (copied, readonly)
			[19]: RobloxGui_upvr (copied, readonly)
			[20]: ButtonStack_upvr (copied, readonly)
			[21]: ButtonType_upvr (copied, readonly)
			[22]: default_upvr (copied, readonly)
			[23]: leaveGame_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local useStyle_upvr_result1 = useStyle_upvr()
		local var14_result1 = useLocalization_upvr({
			confirmLeave = "Feature.VerificationUpsell.Action.ConfirmLeave";
			dontLeave = "Feature.VerificationUpsell.Action.DontLeave";
			returnWithVoice = "Feature.VerificationUpsell.Action.ReturnWithVoice";
		})
		local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(tbl_17_upvr.Incomplete)
		local var73
		if any_useState_result1_upvr_2 ~= tbl_17_upvr.Incomplete then
		else
		end
		local upsellType_upvr_2 = any_CreateNewPage_result1_upvr.upsellType
		if upsellType_upvr_2 == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
			local const_string = "exitConfirmationScreenVoice"
		else
		end
		if GetFFlagAddMorePhoneUpsellEvents_upvr() then
			if any_useState_result1_upvr_2 == tbl_17_upvr.Incomplete then
				local _ = "entry"
			else
			end
		else
		end
		local any_useRef_result1_upvr = React_upvr.useRef(nil)
		local any_useState_result1_upvr_3, any_useState_result2_upvr = React_upvr.useState(false)
		local useInputType_upvr_result1_upvr = useInputType_upvr()
		local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
		var73 = useEventConnection_upvr
		var73(any_CreateNewPage_result1_upvr.Displayed.Event, function() -- Line 257
			--[[ Upvalues[14]:
				[1]: useInputType_upvr_result1_upvr (readonly)
				[2]: InputTypeConstants_upvr (copied, readonly)
				[3]: GuiService_upvr (copied, readonly)
				[4]: any_useRef_result1_upvr (readonly)
				[5]: ContextActionService_upvr (copied, readonly)
				[6]: any_CreateNewPage_result1_upvr (copied, readonly)
				[7]: PostPhoneUpsellDisplayed_upvr (copied, readonly)
				[8]: useRoactService_upvr_result1_upvr (readonly)
				[9]: Constants_upvr_2 (copied, readonly)
				[10]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
				[11]: RbxAnalyticsService_upvr (copied, readonly)
				[12]: getPlatformTarget_upvr (copied, readonly)
				[13]: arg1 (readonly)
				[14]: EventStreamConstants_upvr (copied, readonly)
			]]
			if useInputType_upvr_result1_upvr ~= InputTypeConstants_upvr.Touch then
				GuiService_upvr.SelectedCoreObject = any_useRef_result1_upvr.current
			end
			ContextActionService_upvr:BindCoreAction("LeaveGameCancelAction", any_CreateNewPage_result1_upvr.DontLeaveFromHotkey, false, Enum.KeyCode.ButtonB)
			if not any_CreateNewPage_result1_upvr.postSent then
				PostPhoneUpsellDisplayed_upvr(useRoactService_upvr_result1_upvr, Constants_upvr_2.EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER, os.time(), true, true):catch(function(arg1_3) -- Line 276
				end)
				if GetFFlagAddMorePhoneUpsellEvents_upvr() then
					RbxAnalyticsService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "verificationUpsell", "modalAction", {
						origin = arg1.origin;
						aType = EventStreamConstants_upvr.ActionType.Shown;
						section = arg1.section;
					})
				end
				any_CreateNewPage_result1_upvr.postSent = true
			end
		end)
		var73 = useEventConnection_upvr
		var73(any_CreateNewPage_result1_upvr.Hidden.Event, function() -- Line 291
			--[[ Upvalues[4]:
				[1]: ContextActionService_upvr (copied, readonly)
				[2]: any_useState_result1_upvr_2 (readonly)
				[3]: tbl_17_upvr (copied, readonly)
				[4]: any_useState_result2_upvr_2 (readonly)
			]]
			ContextActionService_upvr:UnbindCoreAction("LeaveGameCancelAction")
			if any_useState_result1_upvr_2 == tbl_17_upvr.Completed then
				any_useState_result2_upvr_2(tbl_17_upvr.CompletedAndClosed)
			end
		end)
		if RobloxGui_upvr.AbsoluteSize.Y < 500 or RobloxGui_upvr.AbsoluteSize.X < 500 then
			var73 = 0
		else
			var73 = 200
		end
		local onActivated
		local module_2 = {
			ListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_4 = {}
		local tbl_14 = {
			FillDirection = Enum.FillDirection.Vertical;
		}
		onActivated = useStyle_upvr_result1.Tokens
		tbl_14.Padding = UDim.new(0, onActivated.Global.Space_300)
		tbl_14.SortOrder = Enum.SortOrder.LayoutOrder
		tbl_4.ListLayout = React_upvr.createElement("UIListLayout", tbl_14)
		local tbl_16 = {}
		local tbl_5 = {}
		local tbl_9 = {
			buttonType = ButtonType_upvr.PrimarySystem;
			isDefaultChild = true;
		}
		local tbl_13 = {
			layoutOrder = 1;
			text = var14_result1.confirmLeave;
		}
		local var97_upvr = "exitConfirmationScreenSecurity"
		local var98_upvr
		local function onActivated() -- Line 335
			--[[ Upvalues[13]:
				[1]: any_useState_result1_upvr_3 (readonly)
				[2]: any_useState_result1_upvr_2 (readonly)
				[3]: tbl_17_upvr (copied, readonly)
				[4]: upsellType_upvr_2 (readonly)
				[5]: Constants_upvr_2 (copied, readonly)
				[6]: default_upvr (copied, readonly)
				[7]: any_useState_result2_upvr (readonly)
				[8]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
				[9]: RbxAnalyticsService_upvr (copied, readonly)
				[10]: getPlatformTarget_upvr (copied, readonly)
				[11]: var97_upvr (readonly)
				[12]: var98_upvr (readonly)
				[13]: leaveGame_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 14 start (CF ANALYSIS FAILED)
			if any_useState_result1_upvr_2 == tbl_17_upvr.CompletedAndClosed then
				-- KONSTANTERROR: [14] 11. Error Block 13 start (CF ANALYSIS FAILED)
				if upsellType_upvr_2 == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
					default_upvr:EnableVoice()
					any_useState_result2_upvr(true)
				end
				-- KONSTANTERROR: [14] 11. Error Block 13 end (CF ANALYSIS FAILED)
			end
			-- KONSTANTERROR: [8] 7. Error Block 14 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [29] 22. Error Block 12 start (CF ANALYSIS FAILED)
			if GetFFlagAddMorePhoneUpsellEvents_upvr() then
				RbxAnalyticsService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "verificationUpsell", "formInteraction", {
					origin = var97_upvr;
					btn = "confirmLeave";
					section = var98_upvr;
				})
			end
			leaveGame_upvr(false)
			-- KONSTANTERROR: [29] 22. Error Block 12 end (CF ANALYSIS FAILED)
		end
		tbl_13.onActivated = onActivated
		tbl_13.buttonRef = any_useRef_result1_upvr
		tbl_9.props = tbl_13
		local tbl_3 = {}
		onActivated = ButtonType_upvr
		tbl_3.buttonType = onActivated.Secondary
		local tbl_7 = {}
		onActivated = 2
		tbl_7.layoutOrder = onActivated
		if any_useState_result1_upvr_2 == tbl_17_upvr.Completed and upsellType_upvr_2 == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
			onActivated = var14_result1.returnWithVoice
		else
			onActivated = var14_result1.dontLeave
		end
		tbl_7.text = onActivated
		function onActivated() -- Line 366
			--[[ Upvalues[11]:
				[1]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
				[2]: any_useState_result1_upvr_2 (readonly)
				[3]: tbl_17_upvr (copied, readonly)
				[4]: upsellType_upvr_2 (readonly)
				[5]: Constants_upvr_2 (copied, readonly)
				[6]: RbxAnalyticsService_upvr (copied, readonly)
				[7]: getPlatformTarget_upvr (copied, readonly)
				[8]: var97_upvr (readonly)
				[9]: var98_upvr (readonly)
				[10]: EventStreamConstants_upvr (copied, readonly)
				[11]: any_CreateNewPage_result1_upvr (copied, readonly)
			]]
			if GetFFlagAddMorePhoneUpsellEvents_upvr() then
				if any_useState_result1_upvr_2 == tbl_17_upvr.Completed and upsellType_upvr_2 == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.VoiceChat then
					RbxAnalyticsService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "verificationUpsell", "formInteraction", {
						origin = var97_upvr;
						btn = "returnWithVoice";
						section = var98_upvr;
					})
				elseif any_useState_result1_upvr_2 == tbl_17_upvr.Incomplete then
					RbxAnalyticsService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "verificationUpsell", "modalAction", {
						origin = var97_upvr;
						aType = EventStreamConstants_upvr.ActionType.Dismiss;
						section = var98_upvr;
					})
				end
			end
			any_CreateNewPage_result1_upvr.DontLeaveFromButton()
		end
		tbl_7.onActivated = onActivated
		tbl_3.props = tbl_7
		tbl_5[1] = tbl_9
		tbl_5[2] = tbl_3
		tbl_16.buttons = tbl_5
		tbl_16.buttonHeight = useStyle_upvr_result1.Tokens.Global.Size_600
		tbl_16.disableGamepadRefs = true
		tbl_16.isRoactGamepadEnabled = false
		tbl_4.LeaveGameButtons = React_upvr.createElement(ButtonStack_upvr, tbl_16)
		module_2.LeaveGame = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 1;
		}, tbl_4)
		module_2.TopSpacer = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, useStyle_upvr_result1.Tokens.Global.Space_300);
		})
		if true then
			local tbl_15 = {}
			local tbl_8 = {
				LayoutOrder = 3;
			}
			onActivated = useStyle_upvr_result1.Tokens.Semantic
			tbl_8.BackgroundColor3 = onActivated.Color.Common.Divider.Color3
			onActivated = useStyle_upvr_result1.Tokens.Semantic
			tbl_8.BackgroundTransparency = onActivated.Color.Common.Divider.Transparency
			tbl_8.BorderSizePixel = 0
			onActivated = 1
			tbl_8.Size = UDim2.new(1, 0, 0, onActivated)
			tbl_15.Divider = React_upvr.createElement("Frame", tbl_8)
			local tbl = {
				BackgroundTransparency = 1;
				LayoutOrder = 4;
			}
			onActivated = useStyle_upvr_result1.Tokens.Global.Space_300
			tbl.Size = UDim2.new(1, 0, 0, onActivated)
			tbl_15.BottomSpacer = React_upvr.createElement("Frame", tbl)
			tbl_15.Upsell = React_upvr.createElement(any_CreateNewPage_result1_upvr.UpsellComponent, {
				origin = var97_upvr;
				section = var98_upvr;
				LayoutOrder = 5;
				showWebpage = arg1.showWebpage;
				onUpsellComplete = function() -- Line 425, Named "onUpsellComplete"
					--[[ Upvalues[2]:
						[1]: any_useState_result2_upvr_2 (readonly)
						[2]: tbl_17_upvr (copied, readonly)
					]]
					any_useState_result2_upvr_2(tbl_17_upvr.Completed)
				end;
				setVoiceEnabled = any_useState_result2_upvr;
			})
		else
		end
		module_2.UpsellComponents = nil
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			Position = UDim2.new(0, 0, 0, var73);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
		}, module_2)
	end
	local tbl_12 = {}
	local function showWebpage() -- Line 438
	end
	tbl_12.showWebpage = showWebpage
	any_CreateNewPage_result1_upvr.handle = Roact_upvr.mount(React_upvr.createElement(InGameContainer_upvr, {}, React_upvr.createElement(any_CreateNewPage_result1_upvr.LeaveGameComponent, tbl_12, {})), any_CreateNewPage_result1_upvr.Page, "LeaveGameUpsell")
	any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, 0)
	any_CreateNewPage_result1_upvr.Page.AutomaticSize = Enum.AutomaticSize.Y
	return any_CreateNewPage_result1_upvr
end)()
function Initialize_result1.SetUpsellProp(arg1, arg2) -- Line 452
	--[[ Upvalues[4]:
		[1]: Constants_upvr_2 (readonly)
		[2]: Roact_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: InGameContainer_upvr (readonly)
	]]
	if arg2 == Constants_upvr_2.PHONE_UPSELL_VALUE_PROP.None then
	else
		arg1.upsellType = arg2
		arg1.handle = Roact_upvr.update(arg1.handle, React_upvr.createElement(InGameContainer_upvr, {}, React_upvr.createElement(arg1.LeaveGameComponent, {
			showWebpage = function() -- Line 465, Named "showWebpage"
			end;
		}, {})))
	end
end
return Initialize_result1