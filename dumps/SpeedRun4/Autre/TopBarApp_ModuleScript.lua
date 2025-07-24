-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:39
-- Luau version 6, Types version 3
-- Time taken: 0.051995 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr_2 = game:GetService("ContextActionService")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local Roact_upvr = require(CorePackages.Packages.Roact)
local React_upvr = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Presentation = script.Parent.Presentation
local Chrome_upvr = script.Parent.Parent.Parent.Chrome
local Enabled_upvr = require(Chrome_upvr.Enabled)
local any_GetFFlagConnectGamepadChrome_result1_upvr = SharedFlags.GetFFlagConnectGamepadChrome()
local FFlagTiltIconUnibarFocusNav_upvr = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagAddUILessMode_upvr = SharedFlags.FFlagAddUILessMode
local FIntAddUILessModeVariant_upvr_2 = SharedFlags.FIntAddUILessModeVariant
local TenFootInterfaceExpChatExperimentation_upvr_2 = require(CorePackages.Workspace.Packages.SocialExperiments).TenFootInterfaceExpChatExperimentation
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local var206_upvw
if Enabled_upvr() then
	var206_upvw = require(Chrome_upvr.ChromeShared.Unibar)
end
local var207_upvw
local function INLINED_6() -- Internal function, doesn't exist in bytecode
	var207_upvw = require(Chrome_upvr.ChromeShared.Service.KeepOutAreasHandler)
	return SharedFlags.GetFFlagEnableChromeAnalytics()
end
local function INLINED_7() -- Internal function, doesn't exist in bytecode
	var207_upvw = SharedFlags.GetFFlagFixChromeReferences()
	return var207_upvw
end
local function INLINED_8() -- Internal function, doesn't exist in bytecode
	var207_upvw = Enabled_upvr()
	return var207_upvw
end
if var207_upvw and INLINED_6() and (not INLINED_7() or INLINED_8()) then
	var207_upvw = require(Chrome_upvr.ChromeShared.Analytics)
end
var207_upvw = nil
if Enabled_upvr() then
	var207_upvw = require(Chrome_upvr.ChromeShared.Service.LocalStore)
end
local Parent_2 = Presentation.Parent.Parent
local var209_upvr
if Enabled_upvr() and FFlagTiltIconUnibarFocusNav_upvr then
	var209_upvr = require(script.Parent.MenuIconContext)
else
	var209_upvr = nil
end
local var210_upvw
var210_upvw = nil
if Enabled_upvr() and any_GetFFlagConnectGamepadChrome_result1_upvr then
	var210_upvw = require(script.Parent.GamepadConnector)
else
end
local var211_upvw
if game:GetEngineFeature("VoiceChatSupported") then
	if SharedFlags.GetFFlagEnableJoinVoiceOnUnibar() and SharedFlags.GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice() and Enabled_upvr() then
		var211_upvw = require(script.Parent.Parent.Parent.Chrome.Integrations.JoinVoiceBinder)
	end
end
local var212_upvr
if isInExperienceUIVREnabled_upvr and Enabled_upvr() then
	var212_upvr = require(script.Parent.VRBottomUnibar)
else
	var212_upvr = require(RobloxGui_upvr.Modules.VR.VRBottomBar.VRBottomBar)
end
local function _(arg1) -- Line 149, Named "selectMenuOpen"
	local menuOpen_3 = arg1.displayOptions.menuOpen
	if not menuOpen_3 then
		menuOpen_3 = arg1.displayOptions.inspectMenuOpen
	end
	return menuOpen_3
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("TopBarApp")
any_extend_result1.validateProps = t.strictInterface({
	menuOpen = t.optional(t.boolean);
	inspectMenuOpen = t.optional(t.boolean);
	displayBetaBadge = t.boolean;
	setScreenSize = t.callback;
	setKeepOutArea = t.callback;
	removeKeepOutArea = t.callback;
	showBadgeOver12 = t.optional(t.boolean);
})
local Stores_upvr = require(CorePackages.Workspace.Packages.CoreGuiCommon).Stores
local TweenService_upvr_2 = game:GetService("TweenService")
local Constants_upvw = require(Chrome_upvr.ChromeShared.Unibar.Constants)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("UILessTooltipDuration", 10)
local SettingsHub_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
local module_7_upvr = require(RobloxGui_upvr.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local FFlagHideTopBarConsole_upvr_2 = SharedFlags.FFlagHideTopBarConsole
local TextChatService_upvr_2 = game:GetService("TextChatService")
function any_extend_result1.init(arg1) -- Line 168
	--[[ Upvalues[20]:
		[1]: Roact_upvr (readonly)
		[2]: FFlagAddUILessMode_upvr (readonly)
		[3]: Stores_upvr (readonly)
		[4]: FIntAddUILessModeVariant_upvr_2 (readonly)
		[5]: TweenService_upvr_2 (readonly)
		[6]: var207_upvw (read and write)
		[7]: Constants_upvw (read and write)
		[8]: game_DefineFastInt_result1_upvr_2 (readonly)
		[9]: SettingsHub_upvr (readonly)
		[10]: module_7_upvr (readonly)
		[11]: ContextActionService_upvr_2 (readonly)
		[12]: Enabled_upvr (readonly)
		[13]: Chrome_upvr (readonly)
		[14]: any_GetFFlagConnectGamepadChrome_result1_upvr (readonly)
		[15]: FFlagHideTopBarConsole_upvr_2 (readonly)
		[16]: var210_upvw (read and write)
		[17]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[18]: React_upvr (readonly)
		[19]: TenFootInterfaceExpChatExperimentation_upvr_2 (readonly)
		[20]: TextChatService_upvr_2 (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2_11 = Roact_upvr.createBinding(UDim2.new())
	arg1.unibarRightSidePosition = any_createBinding_result1
	arg1.setUnibarRightSidePosition = any_createBinding_result2_11
	local any_createBinding_result1_8, any_createBinding_result2_10 = Roact_upvr.createBinding(false)
	arg1.closeButtonState = any_createBinding_result1_8
	arg1.setCloseButtonState = any_createBinding_result2_10
	local any_createBinding_result1_11, any_createBinding_result2_12 = Roact_upvr.createBinding(false)
	arg1.badgeOver13Visible = any_createBinding_result1_11
	arg1.setBadgeOver13Visible = any_createBinding_result2_12
	if FFlagAddUILessMode_upvr then
		arg1.uiLessStore = Stores_upvr.GetUILessStore(false)
		if FIntAddUILessModeVariant_upvr_2 ~= 0 then
			local any_createBinding_result1_9, any_createBinding_result2_8 = Roact_upvr.createBinding(false)
			arg1.uiLessTooltipVisible = any_createBinding_result1_9
			arg1.setUILessTooltipVisible = any_createBinding_result2_8
			local any_createBinding_result1_6, any_createBinding_result2_5 = Roact_upvr.createBinding(0)
			arg1.uiLessTooltipTransparency = any_createBinding_result1_6
			arg1.setUILessTooltipTransparency = any_createBinding_result2_5
			function arg1.fadeOutUILessTooltip() -- Line 180
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: TweenService_upvr_2 (copied, readonly)
				]]
				local NumberValue_upvr = Instance.new("NumberValue")
				NumberValue_upvr.Value = 0
				NumberValue_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 183
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: NumberValue_upvr (readonly)
					]]
					arg1.setUILessTooltipTransparency(NumberValue_upvr.Value)
				end)
				arg1.uiLessTooltipTween = TweenService_upvr_2:Create(NumberValue_upvr, TweenInfo.new(0.5), {
					Value = 1;
				})
				arg1.uiLessTooltipTween.Completed:Connect(function() -- Line 190
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.setUILessTooltipVisible(false)
					arg1.uiLessTooltipTween = nil
				end)
				arg1.uiLessTooltipTween:Play()
			end
			function arg1.cleanupUILessTooltip() -- Line 198
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.uiLessTooltipTween then
					arg1.uiLessTooltipTween:Cancel()
					arg1.uiLessTooltipTween = nil
				end
				if arg1.uiLessTooltipTimer then
					task.cancel(arg1.uiLessTooltipTimer)
					arg1.uiLessTooltipTimer = nil
				end
			end
			if arg1.uiLessStore.getUILessModeEnabled(false) then
				local var240 = true
				if var207_upvw then
					local var241 = var207_upvw.loadForLocalPlayer("NumExperiencesUserSeenUILessTooltipKey") or 0
					if var241 >= Constants_upvw.MAX_NUM_UNIVERSES_SHOWN then
						var240 = false
					else
						var240 = true
					end
					if var240 then
						var207_upvw.storeForLocalPlayer("NumExperiencesUserSeenUILessTooltipKey", var241 + 1)
					end
				end
				if var240 then
					arg1.setUILessTooltipVisible(true)
					arg1.uiLessTooltipTimer = task.delay(game_DefineFastInt_result1_upvr_2, function() -- Line 221
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						arg1.fadeOutUILessTooltip()
						arg1.uiLessTooltipTimer = nil
					end)
				end
			end
			ContextActionService_upvr_2:BindCoreAction("ToggleUILess", function(arg1_15, arg2) -- Line 228
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: FIntAddUILessModeVariant_upvr_2 (copied, readonly)
					[3]: SettingsHub_upvr (copied, readonly)
					[4]: module_7_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
				do
					return
				end
				-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [5] 4. Error Block 3 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [5] 4. Error Block 3 end (CF ANALYSIS FAILED)
			end, false, Enum.KeyCode.Escape)
		end
	end
	function arg1.onCloseBtnStateChange(arg1_16, arg2) -- Line 262
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.setCloseButtonState(arg2)
	end
	if Enabled_upvr() then
		arg1:setState({
			unibarAlignment = require(Chrome_upvr.Service):orderAlignment():get();
		})
		if any_GetFFlagConnectGamepadChrome_result1_upvr then
			if FFlagHideTopBarConsole_upvr_2 then
				arg1.GamepadConnector = var210_upvw
			else
				arg1.GamepadConnector = var210_upvw.new()
			end
		end
		if FFlagTiltIconUnibarFocusNav_upvr then
			arg1.unibarMenuRef = React_upvr.createRef()
			arg1.menuIconRef = Roact_upvr.createRef()
		end
	end
	if TenFootInterfaceExpChatExperimentation_upvr_2.getIsEnabled() then
		arg1:setState({
			chatVersion = TextChatService_upvr_2.ChatVersion;
		})
		if not game:IsLoaded() then
			game.Loaded:Connect(function() -- Line 294
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: TextChatService_upvr_2 (copied, readonly)
				]]
				arg1:setState({
					chatVersion = TextChatService_upvr_2.ChatVersion;
				})
			end)
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 303
	--[[ Upvalues[3]:
		[1]: Enabled_upvr (readonly)
		[2]: Chrome_upvr (readonly)
		[3]: any_GetFFlagConnectGamepadChrome_result1_upvr (readonly)
	]]
	if Enabled_upvr() then
		local Service_upvr = require(Chrome_upvr.Service)
		arg1.orderAlignmentConnection = Service_upvr:orderAlignment():connect(function() -- Line 306
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Service_upvr (readonly)
			]]
			arg1:setState({
				unibarAlignment = Service_upvr:orderAlignment():get();
			})
		end)
		if any_GetFFlagConnectGamepadChrome_result1_upvr then
			arg1.GamepadConnector:connectToTopbar()
		end
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 318
	--[[ Upvalues[5]:
		[1]: Enabled_upvr (readonly)
		[2]: any_GetFFlagConnectGamepadChrome_result1_upvr (readonly)
		[3]: FFlagAddUILessMode_upvr (readonly)
		[4]: FIntAddUILessModeVariant_upvr_2 (readonly)
		[5]: ContextActionService_upvr_2 (readonly)
	]]
	if Enabled_upvr() then
		if arg1.orderAlignmentConnection then
			arg1.orderAlignmentConnection:disconnect()
			arg1.orderAlignmentConnection = nil
		end
		if any_GetFFlagConnectGamepadChrome_result1_upvr then
			arg1.GamepadConnector:disconnectFromTopbar()
		end
	end
	if FFlagAddUILessMode_upvr then
		if arg1.uiLessStore then
			arg1.uiLessStore.cleanup()
		end
		if FIntAddUILessModeVariant_upvr_2 ~= 0 then
			arg1.cleanupUILessTooltip()
			ContextActionService_upvr_2:UnbindCoreAction("ToggleUILess")
		end
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
function any_extend_result1.render(arg1) -- Line 341
	--[[ Upvalues[1]:
		[1]: withStyle_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_17) -- Line 342
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithStyle(arg1_17)
	end)
end
local GetFFlagBetaBadge_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagBetaBadge)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("ControlBetaBadgeWithGuac", false)
local Constants_upvr_2 = require(Parent_2.Constants)
local isNewTiltIconEnabled_upvr = require(RobloxGui_upvr.Modules.isNewTiltIconEnabled)
local GetFFlagChangeTopbarHeightCalculation_upvr_2 = require(Parent_2.Flags.GetFFlagChangeTopbarHeightCalculation)
local TenFootInterface_upvr_2 = require(RobloxGui_upvr.Modules.TenFootInterface)
local FFlagUnibarMenuIconLayoutFix_upvr_2 = require(Parent_2.Flags.FFlagUnibarMenuIconLayoutFix)
local FFlagVRMoveVoiceIndicatorToBottomBar_upvr = require(RobloxGui_upvr.Modules.Flags.FFlagVRMoveVoiceIndicatorToBottomBar)
local VoiceStateContext_upvr_2 = require(RobloxGui_upvr.Modules.VoiceChat.VoiceStateContext)
local default_upvr = require(RobloxGui_upvr.Modules.VoiceChat.VoiceChatServiceManager).default
local MenuIcon_upvr = require(Presentation.MenuIcon)
local SelectionCursorProvider_upvr = UIBlox.App.SelectionImage.SelectionCursorProvider
local isSpatial_upvr_2 = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local Connection_upvr_2 = require(script.Parent.Connection)
local GamepadMenu_upvw_2 = require(Presentation.GamepadMenu)
local FFlagAddMenuNavigationToggleDialog_upvw_2 = SharedFlags.FFlagAddMenuNavigationToggleDialog
local MenuNavigationToggleDialog_upvw_2 = require(Presentation.GamepadMenu.MenuNavigationToggleDialog)
local FFlagGamepadNavigationDialogABTest_upvr = require(Parent_2.Flags.FFlagGamepadNavigationDialogABTest)
local GamepadNavigationDialog_upvr_2 = require(Presentation.GamepadNavigationDialog)
local HeadsetMenu_upvr_2 = require(Presentation.HeadsetMenu)
local VRService_upvr_2 = game:GetService("VRService")
local var275_upvr = require(Parent_2.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local HurtOverlay_upvr_2 = require(Presentation.HurtOverlay)
local withLocalization_upvr_2 = require(CorePackages.Workspace.Packages.Localization).withLocalization
local isNewInGameMenuEnabled_upvr = require(RobloxGui_upvr.Modules.isNewInGameMenuEnabled)
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ControlState_upvr_2 = UIBlox.Core.Control.Enum.ControlState
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Images_upvr = UIBlox.App.ImageSet.Images
local Songbird_upvr = require(CorePackages.Workspace.Packages.Songbird)
local Constants_upvr_3 = require(Chrome_upvr.Integrations.MusicUtility.Constants)
local GetFFlagEnableCrossExpVoice_upvr_2 = SharedFlags.GetFFlagEnableCrossExpVoice
local PartyMicBinder_upvr_2 = require(script.Parent.Parent.Parent.Chrome.Integrations.Party.PartyMicBinder)
local Enabled_upvr_result1_2_upvr = Enabled_upvr()
local HealthBar_upvr = require(Presentation.HealthBar)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("TopBarUseNewBadge", false)
local BadgeOver13_upvr = require(Presentation.BadgeOver13)
local Analytics_upvr = require(CorePackages.Workspace.Packages.Analytics).Analytics
local Players_upvr_2 = game:GetService("Players")
local VoiceBetaBadge_upvr = require(Presentation.VoiceBetaBadge)
local any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr_2 = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()
local ChatIcon_upvr = require(Presentation.ChatIcon)
local MoreMenu_upvr = require(Presentation.MoreMenu)
function any_extend_result1.renderWithStyle(arg1, arg2) -- Line 347
	--[[ Upvalues[59]:
		[1]: Enabled_upvr (readonly)
		[2]: GetFFlagBetaBadge_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[4]: Constants_upvr_2 (readonly)
		[5]: isNewTiltIconEnabled_upvr (readonly)
		[6]: GetFFlagChangeTopbarHeightCalculation_upvr_2 (readonly)
		[7]: TenFootInterface_upvr_2 (readonly)
		[8]: FFlagUnibarMenuIconLayoutFix_upvr_2 (readonly)
		[9]: FFlagVRMoveVoiceIndicatorToBottomBar_upvr (readonly)
		[10]: Roact_upvr (readonly)
		[11]: VoiceStateContext_upvr_2 (readonly)
		[12]: var212_upvr (readonly)
		[13]: default_upvr (readonly)
		[14]: isInExperienceUIVREnabled_upvr (readonly)
		[15]: MenuIcon_upvr (readonly)
		[16]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[17]: SelectionCursorProvider_upvr (readonly)
		[18]: isSpatial_upvr_2 (readonly)
		[19]: Connection_upvr_2 (readonly)
		[20]: any_GetFFlagConnectGamepadChrome_result1_upvr (readonly)
		[21]: TenFootInterfaceExpChatExperimentation_upvr_2 (readonly)
		[22]: GamepadMenu_upvw_2 (read and write)
		[23]: FFlagAddMenuNavigationToggleDialog_upvw_2 (read and write)
		[24]: MenuNavigationToggleDialog_upvw_2 (read and write)
		[25]: FFlagGamepadNavigationDialogABTest_upvr (readonly)
		[26]: GamepadNavigationDialog_upvr_2 (readonly)
		[27]: HeadsetMenu_upvr_2 (readonly)
		[28]: VRService_upvr_2 (readonly)
		[29]: var275_upvr (readonly)
		[30]: var207_upvw (read and write)
		[31]: HurtOverlay_upvr_2 (readonly)
		[32]: FFlagAddUILessMode_upvr (readonly)
		[33]: FIntAddUILessModeVariant_upvr_2 (readonly)
		[34]: withLocalization_upvr_2 (readonly)
		[35]: var206_upvw (read and write)
		[36]: isNewInGameMenuEnabled_upvr (readonly)
		[37]: Interactable_upvr (readonly)
		[38]: RobloxGui_upvr (readonly)
		[39]: ControlState_upvr_2 (readonly)
		[40]: ImageSetButton_upvr (readonly)
		[41]: Images_upvr (readonly)
		[42]: Songbird_upvr (readonly)
		[43]: Constants_upvr_3 (readonly)
		[44]: var211_upvw (read and write)
		[45]: GetFFlagEnableCrossExpVoice_upvr_2 (readonly)
		[46]: PartyMicBinder_upvr_2 (readonly)
		[47]: var207_upvw (read and write)
		[48]: React_upvr (readonly)
		[49]: var209_upvr (readonly)
		[50]: Enabled_upvr_result1_2_upvr (readonly)
		[51]: HealthBar_upvr (readonly)
		[52]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[53]: BadgeOver13_upvr (readonly)
		[54]: Analytics_upvr (readonly)
		[55]: Players_upvr_2 (readonly)
		[56]: VoiceBetaBadge_upvr (readonly)
		[57]: any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr_2 (readonly)
		[58]: ChatIcon_upvr (readonly)
		[59]: MoreMenu_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 385 start (CF ANALYSIS FAILED)
	local Enabled_upvr_result1 = Enabled_upvr()
	local var298
	if GetFFlagBetaBadge_upvr() then
	end
	if game_DefineFastFlag_result1_upvr_2 then
	end
	if arg1.state.unibarAlignment ~= nil then
	end
	if not isNewTiltIconEnabled_upvr() then
	else
	end
	if GetFFlagChangeTopbarHeightCalculation_upvr_2() then
	end
	local var299
	if TenFootInterface_upvr_2:IsEnabled() and (not FFlagUnibarMenuIconLayoutFix_upvr_2 or not Enabled_upvr()) then
		local ScreenSideOffsetTenFoot_upvw_2 = Constants_upvr_2.ScreenSideOffsetTenFoot
		local TopBarHeightTenFoot_2 = Constants_upvr_2.TopBarHeightTenFoot
	end
	local menuOpen_4 = arg1.props.menuOpen
	if not menuOpen_4 then
		menuOpen_4 = arg1.props.inspectMenuOpen
	end
	if GetFFlagChangeTopbarHeightCalculation_upvr_2() then
		var299 = Constants_upvr_2.TopBarTopMargin
	else
		var299 = 0
	end
	var299 = ScreenSideOffsetTenFoot_upvw_2
	var299 = 1
	var299 = UDim2.new
	var298 = Constants_upvr_2
	var299 = var299(1, -ScreenSideOffsetTenFoot_upvw_2, 0, var298.TopBarTopMargin)
	var298 = 0
	if FFlagVRMoveVoiceIndicatorToBottomBar_upvr then
		var298 = {}
		var298.VRBottomBar = VoiceStateContext_upvr_2.withVoiceState(function(arg1_18) -- Line 383
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: var212_upvr (copied, readonly)
				[3]: default_upvr (copied, readonly)
				[4]: isInExperienceUIVREnabled_upvr (copied, readonly)
				[5]: arg1 (readonly)
			]]
			local module = {
				voiceChatServiceManager = default_upvr;
				voiceEnabled = arg1_18.voiceEnabled;
			}
			local voiceState_2 = arg1_18.voiceState
			module.voiceState = voiceState_2
			if isInExperienceUIVREnabled_upvr then
				voiceState_2 = arg1.props.showBadgeOver12
			else
				voiceState_2 = nil
			end
			module.showBadgeOver12 = voiceState_2
			return Roact_upvr.createElement(var212_upvr, module)
		end)
	else
		local tbl_16 = {}
		if isInExperienceUIVREnabled_upvr then
			var298 = arg1.props.showBadgeOver12
		else
			var298 = nil
		end
		tbl_16.showBadgeOver12 = var298
	end
	local tbl_22 = {}
	if arg1.props.menuOpen then
	else
	end
	tbl_22.iconScale = 1
	local var308
	var308 = 1
	tbl_22.layoutOrder = var308
	var308 = arg1.props.showBadgeOver12
	tbl_22.showBadgeOver12 = var308
	if Enabled_upvr_result1 and FFlagTiltIconUnibarFocusNav_upvr then
		var308 = arg1.menuIconRef
	else
		var308 = nil
	end
	tbl_22.menuIconRef = var308
	if Enabled_upvr_result1 and FFlagTiltIconUnibarFocusNav_upvr then
		var308 = arg1.unibarMenuRef
	else
		var308 = nil
	end
	tbl_22.unibarMenuRef = var308
	var308 = {}
	if isInExperienceUIVREnabled_upvr then
	end
	;({
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		DisplayOrder = 6;
	})[Roact_upvr.Change.AbsoluteSize] = function(arg1_19) -- Line 418
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setScreenSize(arg1_19.AbsoluteSize)
	end
	local tbl_17 = {
		Connection = Roact_upvr.createElement(Connection_upvr_2);
	}
	if not any_GetFFlagConnectGamepadChrome_result1_upvr then
		if TenFootInterfaceExpChatExperimentation_upvr_2.getIsEnabled() then
			local _ = {
				chatVersion = arg1.state.chatVersion;
			}
		else
		end
	else
	end
	tbl_17.GamepadMenu = nil
	if Enabled_upvr_result1 and FFlagAddMenuNavigationToggleDialog_upvw_2 and any_GetFFlagConnectGamepadChrome_result1_upvr then
		local tbl_21 = {}
		local udim2_2 = UDim2.fromScale(0.5, 0.1)
		tbl_21.Position = udim2_2
		if FFlagTiltIconUnibarFocusNav_upvr then
			udim2_2 = arg1.GamepadConnector
		else
			udim2_2 = nil
		end
		tbl_21.GamepadConnector = udim2_2
	else
	end
	tbl_17.MenuNavigationToggleDialog = nil
	if FFlagGamepadNavigationDialogABTest_upvr then
		-- KONSTANTWARNING: GOTO [320] #246
	end
	tbl_17.GamepadNavigationDialog = nil
	local var316
	tbl_17.HeadsetMenu = Roact_upvr.createElement(HeadsetMenu_upvr_2)
	if not VRService_upvr_2.VREnabled or not Roact_upvr.createElement(var212_upvr, tbl_16) then
	end
	tbl_17.VRBottomBar = nil
	if var275_upvr and var207_upvw then
	else
	end
	tbl_17.KeepOutAreasHandler = nil
	local tbl_20 = {
		BackgroundTransparency = 1;
	}
	var316 = 0
	tbl_20.Size = UDim2.new(1, 0, 1, var316)
	tbl_20.Visible = not menuOpen_4
	tbl_17.FullScreenFrame = Roact_upvr.createElement("Frame", tbl_20, {
		HurtOverlay = Roact_upvr.createElement(HurtOverlay_upvr_2);
	})
	if not isSpatial_upvr_2() and isNewTiltIconEnabled_upvr() then
		local tbl_19 = {
			BackgroundTransparency = 1;
		}
		if GetFFlagChangeTopbarHeightCalculation_upvr_2() then
			var316 = Constants_upvr_2.TopBarTopMargin
		else
			var316 = 0
		end
		tbl_19.Position = UDim2.new(0, ScreenSideOffsetTenFoot_upvw_2, 0, var316)
		if GetFFlagChangeTopbarHeightCalculation_upvr_2() then
			var316 = TopBarHeightTenFoot_2 - Constants_upvr_2.TopBarTopMargin
		else
			var316 = TopBarHeightTenFoot_2
		end
		tbl_19.Size = UDim2.new(1, 0, 0, var316)
		local _ = {
			MenuIcon = Roact_upvr.createElement(SelectionCursorProvider_upvr, var308, {
				Icon = Roact_upvr.createElement(MenuIcon_upvr, tbl_22);
			});
		}
	else
	end
	tbl_17.MenuIconHolder = nil
	local var321
	if FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr_2 ~= 0 then
		local tbl_18 = {}
		var321 = Constants_upvr_2
		tbl_18.uiLessTooltipTitle = var321.LocalizedKeys.UILessTooltipTitle
		var321 = Constants_upvr_2
		tbl_18.uiLessTooltipDescription = var321.LocalizedKeys.UILessTooltipDescription
		local function _(arg1_20) -- Line 477
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: ScreenSideOffsetTenFoot_upvw_2 (read and write)
				[4]: GetFFlagChangeTopbarHeightCalculation_upvr_2 (copied, readonly)
				[5]: Constants_upvr_2 (copied, readonly)
				[6]: arg1 (readonly)
			]]
			local module_5 = {}
			local Tokens = arg2.Tokens
			module_5.BackgroundColor3 = Tokens.Global.Color.White.Color3
			module_5.BorderSizePixel = 0
			if GetFFlagChangeTopbarHeightCalculation_upvr_2() then
				Tokens = Constants_upvr_2.TopBarTopMargin
			else
				Tokens = 0
			end
			module_5.Position = UDim2.new(0, ScreenSideOffsetTenFoot_upvw_2, 0, Tokens)
			module_5.AutomaticSize = Enum.AutomaticSize.XY
			module_5.BackgroundTransparency = arg1.uiLessTooltipTransparency
			module_5.Visible = arg1.uiLessTooltipVisible
			module_5.ZIndex = 10000
			module_5[Roact_upvr.Ref] = arg1.uiLessTooltip
			return Roact_upvr.createElement("Frame", module_5, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, arg2.Tokens.Global.Space_100);
					PaddingBottom = UDim.new(0, arg2.Tokens.Global.Space_100);
					PaddingLeft = UDim.new(0, arg2.Tokens.Global.Space_150);
					PaddingRight = UDim.new(0, arg2.Tokens.Global.Space_150);
				});
				Corner = Roact_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(0, arg2.Tokens.Semantic.Radius.Small);
				});
				VerticalLayout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
					Padding = UDim.new(0, arg2.Tokens.Global.Space_50);
				});
				Title = Roact_upvr.createElement("TextLabel", {
					Text = arg1_20.uiLessTooltipTitle;
					TextSize = arg2.Tokens.Global.FontSize_50;
					TextTransparency = arg1.uiLessTooltipTransparency;
					Font = Enum.Font.BuilderSansBold;
					AutomaticSize = Enum.AutomaticSize.XY;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					LayoutOrder = 1;
				});
				Description = Roact_upvr.createElement("TextLabel", {
					Text = arg1_20.uiLessTooltipDescription;
					TextSize = arg2.Tokens.Global.FontSize_50;
					TextTransparency = arg1.uiLessTooltipTransparency;
					Font = Enum.Font.BuilderSans;
					AutomaticSize = Enum.AutomaticSize.XY;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					LayoutOrder = 2;
				});
			})
		end
	else
	end
	tbl_17.UILessTooltip = nil
	-- KONSTANTERROR: [0] 1. Error Block 385 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [468] 362. Error Block 97 start (CF ANALYSIS FAILED)
	local isNewInGameMenuEnabled_upvr_result1 = isNewInGameMenuEnabled_upvr()
	local var333 = not isNewInGameMenuEnabled_upvr_result1
	-- KONSTANTERROR: [468] 362. Error Block 97 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [690] 522. Error Block 259 start (CF ANALYSIS FAILED)
	local tbl_15 = {}
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		tbl_14.CornerRadius = UDim.new(1, 0)
		local tbl_14 = {}
		return Roact_upvr.createElement("UICorner", tbl_14)
	end
	if not Enabled_upvr_result1 or not INLINED_9() then
	end
	tbl_15.UICorner = nil
	local any_createElement_result1 = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = arg1.closeButtonState:map(function(arg1_21) -- Line 576
			--[[ Upvalues[2]:
				[1]: ControlState_upvr_2 (copied, readonly)
				[2]: arg2 (readonly)
			]]
			if arg1_21 == ControlState_upvr_2.Pressed then
				return arg2.Theme.BackgroundOnPress.Transparency
			end
			if arg1_21 == ControlState_upvr_2.Hover then
				return arg2.Theme.BackgroundOnHover.Transparency
			end
			return 1
		end);
		BackgroundColor3 = arg1.closeButtonState:map(function(arg1_22) -- Line 585
			--[[ Upvalues[2]:
				[1]: ControlState_upvr_2 (copied, readonly)
				[2]: arg2 (readonly)
			]]
			if arg1_22 == ControlState_upvr_2.Pressed then
				return arg2.Theme.BackgroundOnPress.Color
			end
			if arg1_22 == ControlState_upvr_2.Hover then
				return arg2.Theme.BackgroundOnHover.Color
			end
			return Color3.new(1, 1, 1)
		end);
		Size = UDim2.fromScale(1, 1);
		ZIndex = 2;
	}, tbl_15)
	if not any_createElement_result1 then
		-- KONSTANTERROR: [746] 564. Error Block 109 start (CF ANALYSIS FAILED)
		any_createElement_result1 = nil
		-- KONSTANTERROR: [746] 564. Error Block 109 end (CF ANALYSIS FAILED)
	end
	var316.StateOverlayRound = any_createElement_result1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	var321 = var321(0, 0, var316)
	if not var321 then
		-- KONSTANTERROR: [751] 568. Error Block 112 start (CF ANALYSIS FAILED)
		var321 = nil
		-- KONSTANTERROR: [751] 568. Error Block 112 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var321.LocalizedKeys.CloseMenuButtonRound = var321
	local function INLINED_10() -- Internal function, doesn't exist in bytecode
		tbl[var316] = function() -- Line 611
			--[[ Upvalues[1]:
				[1]: RobloxGui_upvr (copied, readonly)
			]]
			require(RobloxGui_upvr.Modules.Settings.SettingsHub):ToggleVisibility()
		end
		var316 = Roact_upvr.Event.Activated
		tbl.Image = var316
		var316 = Images_upvr["icons/controls/close-ingame"]
		tbl.Size = var316
		var316 = UDim2.new(0, Constants_upvr_2.LegacyCloseMenuIconSize, 0, Constants_upvr_2.LegacyCloseMenuIconSize)
		tbl.AnchorPoint = var316
		var316 = Vector2.new(0, 0.5)
		tbl.Position = UDim2.new(0, 0, 0.5, var298)
		tbl.BackgroundTransparency = var316
		var316 = 1
		tbl.Visible = var316
		var316 = not TenFootInterface_upvr_2:IsEnabled()
		local tbl = {}
		return Roact_upvr.createElement(ImageSetButton_upvr, tbl)
	end
	if var206_upvw or not INLINED_10() then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var321.LocalizedKeys.CloseMenuButton = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	-- KONSTANTERROR: [690] 522. Error Block 259 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [813] 612. Error Block 119 start (CF ANALYSIS FAILED)
	tbl_17.LegacyCloseMenu = var333(isNewInGameMenuEnabled_upvr_result1, var321.LocalizedKeys.UILessTooltipDescription, var321.LocalizedKeys)
	tbl_17.SongbirdDebugAudio = Roact_upvr.createElement(Songbird_upvr.DebugAudioEmitters)
	-- KONSTANTERROR: [813] 612. Error Block 119 end (CF ANALYSIS FAILED)
end
local SetScreenSize_upvr = require(Parent_2.Actions.SetScreenSize)
local SetKeepOutArea_upvr = require(Parent_2.Actions.SetKeepOutArea)
local RemoveKeepOutArea_upvr_2 = require(Parent_2.Actions.RemoveKeepOutArea)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 874, Named "mapStateToProps"
	return {
		menuOpen = arg1.displayOptions.menuOpen;
		inspectMenuOpen = arg1.displayOptions.inspectMenuOpen;
	}
end, function(arg1) -- Line 890, Named "mapDispatchToProps"
	--[[ Upvalues[3]:
		[1]: SetScreenSize_upvr (readonly)
		[2]: SetKeepOutArea_upvr (readonly)
		[3]: RemoveKeepOutArea_upvr_2 (readonly)
	]]
	return {
		setScreenSize = function(arg1_23) -- Line 892, Named "setScreenSize"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScreenSize_upvr (copied, readonly)
			]]
			return arg1(SetScreenSize_upvr(arg1_23))
		end;
		setKeepOutArea = function(arg1_24, arg2, arg3) -- Line 895, Named "setKeepOutArea"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetKeepOutArea_upvr (copied, readonly)
			]]
			return arg1(SetKeepOutArea_upvr(arg1_24, arg2, arg3))
		end;
		removeKeepOutArea = function(arg1_25) -- Line 898, Named "removeKeepOutArea"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RemoveKeepOutArea_upvr_2 (copied, readonly)
			]]
			return arg1(RemoveKeepOutArea_upvr_2(arg1_25))
		end;
	}
end)(require(script.Parent.Parent.TopBarAppPolicy).connect(function(arg1, arg2) -- Line 883
	return {
		displayBetaBadge = arg1.getDisplayVoiceBetaBadge();
		showBadgeOver12 = arg1.showBadgeOver12();
	}
end)(any_extend_result1))