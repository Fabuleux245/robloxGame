-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:21
-- Luau version 6, Types version 3
-- Time taken: 0.006897 seconds

local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Parent = script.Parent.Parent.Parent
local var11_upvw
local didMount
if game:GetEngineFeature("VRMoreComfortSettings") then
	var11_upvw = require(script.Parent.ComfortSettingsEntry)
end
local Constants_upvr = require(Parent.Resources.Constants)
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
didMount = CorePackages.Workspace
local any_extend_result1 = Roact_upvr.PureComponent:extend("BasicPage")
local tbl = {}
didMount = t.callback
tbl.switchToAdvancedPage = didMount
didMount = t.callback
tbl.switchToVRComfortSettingsPage = didMount
didMount = t.string
tbl.pageTitle = didMount
didMount = t.boolean
tbl.isMenuOpen = didMount
didMount = t.optional(t.string)
tbl.currentPage = didMount
didMount = t.optional(t.boolean)
tbl.canCaptureFocus = didMount
didMount = t.optional(t.boolean)
tbl.canGamepadCaptureFocus = didMount
didMount = t.optional(t.union(t.Instance, t.table))
tbl.vrService = didMount
didMount = t.optional(t.callback)
tbl.isVRAppBuild = didMount
local function INLINED() -- Internal function, doesn't exist in bytecode
	didMount = t.optional(t.number)
	return didMount
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED() then
	didMount = nil
end
tbl.currentZone = didMount
any_extend_result1.validateProps = t.strictInterface(tbl)
any_extend_result1.defaultProps = {
	vrService = game:GetService("VRService");
	isVRAppBuild = require(didMount.Packages.AppCommonLib).IsVRAppBuild;
}
function any_extend_result1.init(arg1) -- Line 94
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	arg1:setState({
		shiftLockEnabled = LocalPlayer_upvr.DevEnableMouseLock;
		fullScreenEnabled = UserGameSettings_upvr:InFullScreen();
		invertedCameraEnabled = UserGameSettings_upvr.IsUsingCameraYInverted;
		vrActive = arg1.props.vrService.VREnabled;
		vrEnabled = UserGameSettings_upvr.VREnabled;
		voiceChatEnabled = false;
	})
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.new(0, 0, 0, 0))
	arg1.pageSize = any_createBinding_result1
	arg1.setPageSize = any_createBinding_result2
	arg1.cameraModeButton = Roact_upvr.createRef()
	arg1.volumeButton = Roact_upvr.createRef()
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 110
	--[[ Upvalues[2]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if not GetFFlagIGMGamepadSelectionHistory_upvr() and arg1.props.canCaptureFocus and arg1.props.canGamepadCaptureFocus and (not arg2.canCaptureFocus or not arg2.canGamepadCaptureFocus) then
		if not arg1.state.vrActive then
			GuiService_upvr.SelectedCoreObject = arg1.cameraModeButton:getValue()
			return
		end
		GuiService_upvr.SelectedCoreObject = arg1.volumeButton:getValue()
	end
end
local function _() -- Line 127, Named "createLayoutOrderGenerator"
	local var22_upvw = 0
	return function() -- Line 129
		--[[ Upvalues[1]:
			[1]: var22_upvw (read and write)
		]]
		var22_upvw += 1
		return var22_upvw
	end
end
local GetFFlagAlwaysShowVRToggle_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagAlwaysShowVRToggle)
local any_GetPlatform_result1_upvr = game:GetService("UserInputService"):GetPlatform()
local Page_upvr = require(Parent.Components.Page)
local FocusHandler_upvr = require(script.Parent.Parent.Connection.FocusHandler)
local CategoryHeader_upvr = require(script.Parent.CategoryHeader)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("VRMoreComfortSettings")
local AutoPropertyToggleEntry_upvr = require(script.Parent.AutoPropertyToggleEntry)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local VREnabled_upvr = UserGameSettings_upvr.VREnabled
local SafetyBubbleModeEntry_upvr = require(script.Parent.SafetyBubbleModeEntry)
local Divider_upvr = require(Parent.Components.Divider)
local CameraModeEntry_upvr = require(script.Parent.CameraModeEntry)
local CameraSensitivityEntry_upvr = require(script.Parent.CameraSensitivityEntry)
local MovementModeEntry_upvr = require(script.Parent.MovementModeEntry)
local VolumeEntry_upvr = require(script.Parent.VolumeEntry)
local DeviceSelectionEntry_upvr = require(script.Parent.DeviceSelectionEntry)
local GraphicsQualityEntry_upvr = require(script.Parent.GraphicsQualityEntry)
local ToggleEntry_upvr = require(script.Parent.ToggleEntry)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local DevEnableMouseLock_changed_signal_upvr = LocalPlayer_upvr:GetPropertyChangedSignal("DevEnableMouseLock")
local IsUsingCameraYInverted_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("IsUsingCameraYInverted")
local VREnabled_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("VREnabled")
function didMount(arg1, arg2) -- Line 135, Named "renderWithSelectionCursor"
	--[[ Upvalues[34]:
		[1]: GetFFlagAlwaysShowVRToggle_upvr (readonly)
		[2]: any_GetPlatform_result1_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Page_upvr (readonly)
		[6]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[7]: FocusHandler_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: GuiService_upvr (readonly)
		[10]: CategoryHeader_upvr (readonly)
		[11]: game_GetEngineFeature_result1_upvr (readonly)
		[12]: AutoPropertyToggleEntry_upvr (readonly)
		[13]: var11_upvw (read and write)
		[14]: withLocalization_upvr (readonly)
		[15]: ThemedTextLabel_upvr (readonly)
		[16]: ImageSetLabel_upvr (readonly)
		[17]: Assets_upvr (readonly)
		[18]: VREnabled_upvr (readonly)
		[19]: SafetyBubbleModeEntry_upvr (readonly)
		[20]: Divider_upvr (readonly)
		[21]: CameraModeEntry_upvr (readonly)
		[22]: CameraSensitivityEntry_upvr (readonly)
		[23]: MovementModeEntry_upvr (readonly)
		[24]: VolumeEntry_upvr (readonly)
		[25]: DeviceSelectionEntry_upvr (readonly)
		[26]: GraphicsQualityEntry_upvr (readonly)
		[27]: ToggleEntry_upvr (readonly)
		[28]: SendAnalytics_upvr (readonly)
		[29]: CursorKind_upvr (readonly)
		[30]: ExternalEventConnection_upvr (readonly)
		[31]: DevEnableMouseLock_changed_signal_upvr (readonly)
		[32]: LocalPlayer_upvr (readonly)
		[33]: IsUsingCameraYInverted_changed_signal_upvr (readonly)
		[34]: VREnabled_changed_signal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var51_upvw = 0
	local function _() -- Line 129
		--[[ Upvalues[1]:
			[1]: var51_upvw (read and write)
		]]
		var51_upvw += 1
		return var51_upvw
	end
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 3 end (CF ANALYSIS FAILED)
end
any_extend_result1.renderWithSelectionCursor = didMount
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function didMount(arg1) -- Line 454, Named "render"
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 455
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_2)
	end)
end
any_extend_result1.render = didMount
function didMount(arg1) -- Line 460
	--[[ Upvalues[1]:
		[1]: RobloxGui_upvr (readonly)
	]]
	spawn(function() -- Line 461
		--[[ Upvalues[2]:
			[1]: RobloxGui_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		require(RobloxGui_upvr.Modules.VoiceChat.VoiceChatServiceManager).default:asyncInit():andThen(function() -- Line 466
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1:setState({
				voiceChatEnabled = true;
			})
		end):catch(function() -- Line 471
		end)
	end)
end
any_extend_result1.didMount = didMount
didMount = InGameMenuDependencies.RoactRodux.UNSTABLE_connect2
local function _(arg1) -- Line 475
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	local var63 = false
	local var64
	if arg1.menuPage == "GameSettings" then
		var63 = arg1.isMenuOpen
		if var63 then
			var64 = arg1.respawn
			var63 = not var64.dialogOpen
		end
	end
	local var65 = false
	var64 = arg1.displayOptions.inputType
	if var64 == Constants_upvr.InputType.Gamepad then
		var64 = arg1.currentZone
		if var64 ~= 1 then
			var65 = false
		else
			var65 = true
		end
	end
	var64 = nil
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		var64 = arg1.currentZone
	end
	return {
		isMenuOpen = arg1.isMenuOpen;
		currentPage = arg1.menuPage;
		currentZone = var64;
		canCaptureFocus = var63;
		canGamepadCaptureFocus = var65;
	}
end
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
local function _(arg1) -- Line 493
	--[[ Upvalues[2]:
		[1]: SetCurrentPage_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	return {
		switchToAdvancedPage = function() -- Line 495, Named "switchToAdvancedPage"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: SetCurrentPage_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1(SetCurrentPage_upvr(Constants_upvr.advancedSettingsPageKey))
		end;
		switchToVRComfortSettingsPage = function() -- Line 498, Named "switchToVRComfortSettingsPage"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: SetCurrentPage_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1(SetCurrentPage_upvr(Constants_upvr.vrComfortSettingsPageKey))
		end;
	}
end
didMount = didMount(_, _)(any_extend_result1)
return didMount