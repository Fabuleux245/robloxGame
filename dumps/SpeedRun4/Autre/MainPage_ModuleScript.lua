-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:40
-- Luau version 6, Types version 3
-- Time taken: 0.019916 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CoreGui_upvr = game:GetService("CoreGui")
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local CorePackages_upvr = game:GetService("CorePackages")
local Game_Options_upvr = settings():FindFirstChild("Game Options")
if not Game_Options_upvr then
	Game_Options_upvr = error("Game Options does not exist", 0)
end
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local VRService_upvr = game:GetService("VRService")
local InGameMenuDependencies = require(CorePackages_upvr.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local Assets_upvr = require(Parent.Resources.Assets)
local Constants_upvr = require(Parent.Resources.Constants)
local Flags = Parent.Flags
local FFlagRecordRecording_upvr = require(Flags.FFlagRecordRecording)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("TakeAScreenshotOfThis", false)
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local GetFFlagSideNavControllerBar_upvr = require(Flags.GetFFlagSideNavControllerBar)
local FocusHandler_upvr = require(script.Parent.Connection.FocusHandler)
local tbl_12_upvr = {
	[Constants_upvr.InputType.MouseAndKeyboard] = Enum.KeyCode.R;
	[Constants_upvr.InputType.Gamepad] = Enum.KeyCode.ButtonY;
}
local tbl_13_upvr = {
	[Constants_upvr.InputType.MouseAndKeyboard] = Enum.KeyCode.F12;
}
local tbl_2_upvr = {
	[Constants_upvr.InputType.MouseAndKeyboard] = Enum.KeyCode.L;
	[Constants_upvr.InputType.Gamepad] = Enum.KeyCode.ButtonX;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("MainPage")
local function _() -- Line 85, Named "areCapturesAllowed"
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: CorePackages_upvr (readonly)
	]]
	if VRService_upvr.VREnabled then
		return false
	end
	if not game_DefineFastFlag_result1_upvr_2 then
		return true
	end
	return not require(CorePackages_upvr.Workspace.Packages.CachedPolicyService):IsSubjectToChinaPolicies()
end
local Images_upvr = UIBlox.App.ImageSet.Images
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.renderButtonModels(arg1, arg2, arg3) -- Line 97
	--[[ Upvalues[11]:
		[1]: VRService_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: CorePackages_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: CoreGui_upvr (readonly)
		[7]: Game_Options_upvr (readonly)
		[8]: FFlagRecordRecording_upvr (readonly)
		[9]: tbl_13_upvr (readonly)
		[10]: Assets_upvr (readonly)
		[11]: tbl_12_upvr (readonly)
	]]
	local module_6 = {}
	local props = arg1.props
	if VRService_upvr.VREnabled then
		props = false
	elseif not game_DefineFastFlag_result1_upvr_2 then
		props = true
	else
		props = not require(CorePackages_upvr.Workspace.Packages.CachedPolicyService):IsSubjectToChinaPolicies()
	end
	if props then
		if game_DefineFastFlag_result1_upvr_2 then
			local tbl_3 = {
				icon = Images_upvr["icons/controls/screenshot"];
				text = arg3.screenCapture;
			}
			local function onActivated() -- Line 111
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: RunService_upvr (copied, readonly)
					[3]: CoreGui_upvr (copied, readonly)
				]]
				arg1:setState({
					modalOpen = false;
				})
				arg1.props.closeMenu()
				RunService_upvr.RenderStepped:Wait()
				RunService_upvr.RenderStepped:Wait()
				CoreGui_upvr:TakeScreenshot()
			end
			tbl_3.onActivated = onActivated
			table.insert(module_6, tbl_3)
		end
		if Game_Options_upvr.VideoCaptureEnabled and FFlagRecordRecording_upvr then
			local recordVideo = arg3.recordVideo
			local var32
			if arg1.props.recording then
				local os_date_result1 = os.date("*t", arg1.state.recordingDuration)
				recordVideo = arg3.recording:gsub("{DURATION}", "%d:%02d":format(os_date_result1.min, os_date_result1.sec))
				var32 = arg2.Theme.Alert.Color
			end
			local tbl_10 = {
				icon = Images_upvr["icons/controls/screenrecord"];
				text = recordVideo;
			}
			local function onActivated() -- Line 139
				--[[ Upvalues[2]:
					[1]: CoreGui_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				CoreGui_upvr:ToggleRecording()
				arg1:setState({
					modalOpen = false;
				})
			end
			tbl_10.onActivated = onActivated
			tbl_10.keyCodeLabel = tbl_13_upvr[props.inputType]
			tbl_10.iconColorOverride = var32
			tbl_10.textColorOverride = var32
			table.insert(module_6, tbl_10)
		end
	end
	if arg1.props.respawnButtonVisible then
		local tbl_6 = {
			icon = Assets_upvr.Images.RespawnIcon;
			text = arg3.respawnCharacter;
		}
		local function onActivated() -- Line 157
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				modalOpen = false;
			})
			arg1.props.startRespawning()
		end
		tbl_6.onActivated = onActivated
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_6.keyCodeLabel = tbl_12_upvr[props.inputType]
		table.insert(module_6, tbl_6)
	end
	return module_6
end
local tbl_16 = {
	open = t.boolean;
	isMainPageMoreMenuOpen = t.optional(t.boolean);
	respawnButtonVisible = t.boolean;
	startLeavingGame = t.callback;
	startRespawning = t.callback;
	setMainPageMoreMenuOpen = t.optional(t.callback);
	closeMenu = t.callback;
	recording = t.boolean;
	screenSize = t.Vector2;
	canCaptureFocus = t.optional(t.boolean);
	inputType = t.optional(t.string);
	setFirstItemRef = t.optional(t.callback);
	voiceEnabled = t.optional(t.boolean);
}
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not t.optional(t.number) then
end
tbl_16.currentZone = nil
if not GetFFlagSideNavControllerBar_upvr() or not t.optional(t.boolean) then
end
tbl_16.isMainPageInForeground = nil
any_extend_result1.validateProps = t.strictInterface(tbl_16)
local VideoProtocol_upvr = require(CorePackages_upvr.Workspace.Packages.VideoProtocol)
function any_extend_result1.init(arg1) -- Line 189
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: VideoProtocol_upvr (readonly)
	]]
	arg1.moreMenuFrameRef = nil
	arg1.moreMenuFirstItemFrameRef = nil
	arg1.moreMenuButtonRef = Roact_upvr.createRef()
	arg1.mainPageFirstButtonRef = Roact_upvr.createRef()
	function arg1.setMoreMenuRef(arg1_2) -- Line 195
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.moreMenuFrameRef = arg1_2
	end
	function arg1.setMoreMenuFirstItemRef(arg1_3) -- Line 199
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.moreMenuFirstItemFrameRef = arg1_3
	end
	function arg1.getRecordingDuration() -- Line 204
		--[[ Upvalues[1]:
			[1]: VideoProtocol_upvr (copied, readonly)
		]]
		local any_getRecordingDuration_result1 = VideoProtocol_upvr.default:getRecordingDuration()
		local var44
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var44 = any_getRecordingDuration_result1.recordingDuration
			return var44
		end
		if not any_getRecordingDuration_result1 or not INLINED() then
			var44 = 0
		end
		return var44
	end
	arg1.state = {
		modalOpen = false;
		recordingDuration = 0;
	}
end
function any_extend_result1.getDerivedStateFromProps(arg1) -- Line 217
	--[[ Upvalues[1]:
		[1]: GetFFlagSideNavControllerBar_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
	if GetFFlagSideNavControllerBar_upvr() then
		if not arg1.isMainPageInForeground then
			do
				return {
					modalOpen = false;
				}
			end
			-- KONSTANTWARNING: GOTO [20] #17
		end
	elseif not arg1.canCaptureFocus then
		return {
			modalOpen = false;
		}
	end
	-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 17. Error Block 7 start (CF ANALYSIS FAILED)
	do
		return nil
	end
	-- KONSTANTERROR: [20] 17. Error Block 7 end (CF ANALYSIS FAILED)
end
function any_extend_result1.renderMainPageFocusHandler(arg1) -- Line 234
	--[[ Upvalues[6]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FocusHandler_upvr (readonly)
		[4]: GetFFlagSideNavControllerBar_upvr (readonly)
		[5]: ContextActionService_upvr (readonly)
		[6]: GuiService_upvr (readonly)
	]]
	local any_canGamepadCaptureFocus_result1 = arg1.canGamepadCaptureFocus(arg1.props)
	local var49
	local didBlur
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		local any_canGamepadCaptureFocus_result1_2 = arg1.canGamepadCaptureFocus(arg1.props)
		if any_canGamepadCaptureFocus_result1_2 then
			any_canGamepadCaptureFocus_result1_2 = not arg1.state.modalOpen
		end
		any_canGamepadCaptureFocus_result1 = any_canGamepadCaptureFocus_result1_2
		didBlur = arg1.props
		any_canGamepadCaptureFocus_result1_2 = not didBlur.open
		local var52 = any_canGamepadCaptureFocus_result1_2
		if not var52 then
			didBlur = arg1.props
			if didBlur.currentZone ~= 0 then
				var52 = false
			else
				var52 = true
			end
		end
		var49 = var52
	end
	local module_2 = {
		isFocused = any_canGamepadCaptureFocus_result1;
		shouldForgetPreviousSelection = var49;
	}
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		function didBlur(arg1_4) -- Line 249
			--[[ Upvalues[4]:
				[1]: GetFFlagSideNavControllerBar_upvr (copied, readonly)
				[2]: ContextActionService_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: GuiService_upvr (copied, readonly)
			]]
			if not GetFFlagSideNavControllerBar_upvr() then
				ContextActionService_upvr:BindCoreAction("LeftStickTogglesMoreMenuAction", function(arg1_5, arg2) -- Line 253
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					if arg2 == Enum.UserInputState.End then
						arg1:setState({
							modalOpen = true;
						})
						return Enum.ContextActionResult.Sink
					end
					return Enum.ContextActionResult.Pass
				end, false, Enum.KeyCode.ButtonL3)
			end
			local var57 = arg1_4
			if not var57 then
				var57 = arg1.mainPageFirstButtonRef:getValue()
			end
			GuiService_upvr.SelectedCoreObject = var57
		end
		return didBlur
	end
	if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_2() then
		function didBlur() -- Line 268
			--[[ Upvalues[2]:
				[1]: ContextActionService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			ContextActionService_upvr:BindCoreAction("LeftStickTogglesMoreMenuAction", function(arg1_6, arg2) -- Line 269
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2 == Enum.UserInputState.End then
					arg1:setState({
						modalOpen = not arg1.state.modalOpen;
					})
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end, false, Enum.KeyCode.ButtonL3)
		end
	end
	module_2.didFocus = didBlur
	function didBlur() -- Line 280
		--[[ Upvalues[2]:
			[1]: GetFFlagSideNavControllerBar_upvr (copied, readonly)
			[2]: ContextActionService_upvr (copied, readonly)
		]]
		if not GetFFlagSideNavControllerBar_upvr() then
			ContextActionService_upvr:UnbindCoreAction("LeftStickTogglesMoreMenuAction")
		end
	end
	module_2.didBlur = didBlur
	return Roact_upvr.createElement(FocusHandler_upvr, module_2)
end
function any_extend_result1.renderMoreMenuFocusHandler(arg1) -- Line 288
	--[[ Upvalues[7]:
		[1]: GetFFlagSideNavControllerBar_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FocusHandler_upvr (readonly)
		[5]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	local var61
	if GetFFlagSideNavControllerBar_upvr() then
		local isMainPageInForeground = arg1.props.isMainPageInForeground
		if isMainPageInForeground then
			if arg1.props.inputType ~= Constants_upvr.InputType.Gamepad then
				isMainPageInForeground = false
			else
				isMainPageInForeground = true
			end
		end
		var61 = isMainPageInForeground
	else
		var61 = arg1.canGamepadCaptureFocus(arg1.props)
	end
	return Roact_upvr.createElement(FocusHandler_upvr, {
		isFocused = var61 and arg1.state.modalOpen;
		didFocus = function() -- Line 300, Named "didFocus"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
				[3]: ContextActionService_upvr (copied, readonly)
				[4]: GuiService_upvr (copied, readonly)
			]]
			local function var64(arg1_7, arg2) -- Line 301
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg2 == Enum.UserInputState.End then
					arg1:setState({
						modalOpen = false;
					})
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end
			if GetFFlagIGMGamepadSelectionHistory_upvr() then
				ContextActionService_upvr:BindCoreAction("CloseMoreMenuAction", var64, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonL3)
			else
				ContextActionService_upvr:BindCoreAction("CloseMoreMenuAction", var64, false, Enum.KeyCode.ButtonB)
			end
			if arg1.moreMenuFrameRef ~= nil then
				GuiService_upvr:RemoveSelectionGroup("MainPageMoreMenu")
			end
			GuiService_upvr:AddSelectionParent("MainPageMoreMenu", arg1.moreMenuFrameRef)
			GuiService_upvr.SelectedCoreObject = arg1.moreMenuFirstItemFrameRef
		end;
		didBlur = function() -- Line 336, Named "didBlur"
			--[[ Upvalues[1]:
				[1]: ContextActionService_upvr (copied, readonly)
			]]
			ContextActionService_upvr:UnbindCoreAction("CloseMoreMenuAction")
		end;
	})
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ShowContextMenuWhenButtonsArePresent", false)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("UseVRSpecificLeaveButton", false)
local IGMMainPageControllerBar_upvr = require(script.Parent.IGMMainPageControllerBar)
local VoiceIndicator_upvr = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)
local Players_upvr = game:GetService("Players")
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ZonePortal_upvr = require(script.Parent.ZonePortal)
local Direction_upvr = require(Parent.Enums.Direction)
local GameIconHeader_upvr = require(script.Parent.GameIconHeader)
local PageNavigation_upvr = require(script.Parent.PageNavigation)
local ContextualMenu_upvr = UIBlox.App.Menu.ContextualMenu
local MenuDirection_upvr = UIBlox.App.Menu.MenuDirection
local GetFFlagUIBloxUseFoundationButton_upvr = require(CorePackages_upvr.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxUseFoundationButton
local KeyLabel_upvr = UIBlox.App.Menu.KeyLabel
function any_extend_result1.render(arg1) -- Line 342
	--[[ Upvalues[24]:
		[1]: GetFFlagSideNavControllerBar_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: withLocalization_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Button_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: Assets_upvr (readonly)
		[9]: game_DefineFastFlag_result1_upvr (readonly)
		[10]: VRService_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[12]: tbl_2_upvr (readonly)
		[13]: IGMMainPageControllerBar_upvr (readonly)
		[14]: VoiceIndicator_upvr (readonly)
		[15]: Players_upvr (readonly)
		[16]: default_upvr (readonly)
		[17]: ZonePortal_upvr (readonly)
		[18]: Direction_upvr (readonly)
		[19]: GameIconHeader_upvr (readonly)
		[20]: PageNavigation_upvr (readonly)
		[21]: ContextualMenu_upvr (readonly)
		[22]: MenuDirection_upvr (readonly)
		[23]: GetFFlagUIBloxUseFoundationButton_upvr (readonly)
		[24]: KeyLabel_upvr (readonly)
	]]
	local var84_upvw
	if GetFFlagSideNavControllerBar_upvr() then
		local isMainPageInForeground_2 = arg1.props.isMainPageInForeground
		if isMainPageInForeground_2 then
			if arg1.props.inputType ~= Constants_upvr.InputType.Gamepad then
				isMainPageInForeground_2 = false
			else
				isMainPageInForeground_2 = true
			end
		end
		var84_upvw = isMainPageInForeground_2
	else
		var84_upvw = arg1.canGamepadCaptureFocus(arg1.props)
	end
	return withStyle_upvr(function(arg1_8) -- Line 350
		--[[ Upvalues[24]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: Button_upvr (copied, readonly)
			[4]: ButtonType_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: Assets_upvr (copied, readonly)
			[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[8]: VRService_upvr (copied, readonly)
			[9]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
			[10]: tbl_2_upvr (copied, readonly)
			[11]: IGMMainPageControllerBar_upvr (copied, readonly)
			[12]: var84_upvw (read and write)
			[13]: VoiceIndicator_upvr (copied, readonly)
			[14]: Players_upvr (copied, readonly)
			[15]: default_upvr (copied, readonly)
			[16]: ZonePortal_upvr (copied, readonly)
			[17]: Direction_upvr (copied, readonly)
			[18]: GameIconHeader_upvr (copied, readonly)
			[19]: PageNavigation_upvr (copied, readonly)
			[20]: Constants_upvr (copied, readonly)
			[21]: ContextualMenu_upvr (copied, readonly)
			[22]: MenuDirection_upvr (copied, readonly)
			[23]: GetFFlagUIBloxUseFoundationButton_upvr (copied, readonly)
			[24]: KeyLabel_upvr (copied, readonly)
		]]
		return withLocalization_upvr({
			leaveGame = "CoreScripts.InGameMenu.LeaveGame";
			respawnCharacter = "CoreScripts.InGameMenu.RespawnCharacter";
			recordVideo = "CoreScripts.InGameMenu.Record.StartRecording";
			recording = "CoreScripts.InGameMenu.Record.Duration";
			screenCapture = "CoreScripts.InGameMenu.Controls.Screenshot";
		})(function(arg1_9) -- Line 357
			--[[ Upvalues[24]:
				[1]: Roact_upvr (copied, readonly)
				[2]: Button_upvr (copied, readonly)
				[3]: ButtonType_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: Assets_upvr (copied, readonly)
				[6]: arg1_8 (readonly)
				[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[8]: VRService_upvr (copied, readonly)
				[9]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
				[10]: tbl_2_upvr (copied, readonly)
				[11]: IGMMainPageControllerBar_upvr (copied, readonly)
				[12]: var84_upvw (copied, read and write)
				[13]: VoiceIndicator_upvr (copied, readonly)
				[14]: Players_upvr (copied, readonly)
				[15]: default_upvr (copied, readonly)
				[16]: ZonePortal_upvr (copied, readonly)
				[17]: Direction_upvr (copied, readonly)
				[18]: GameIconHeader_upvr (copied, readonly)
				[19]: PageNavigation_upvr (copied, readonly)
				[20]: Constants_upvr (copied, readonly)
				[21]: ContextualMenu_upvr (copied, readonly)
				[22]: MenuDirection_upvr (copied, readonly)
				[23]: GetFFlagUIBloxUseFoundationButton_upvr (copied, readonly)
				[24]: KeyLabel_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local tbl_7 = {
				buttonType = ButtonType_upvr.Secondary;
				size = UDim2.fromOffset(44, 44);
				onActivated = function() -- Line 361, Named "onActivated"
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1:setState({
						modalOpen = true;
					})
				end;
				icon = Assets_upvr.Images.MoreActions;
				[Roact_upvr.Ref] = arg1.moreMenuButtonRef;
			}
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [50] 36. Error Block 49 start (CF ANALYSIS FAILED)
			if 0 >= #arg1:renderButtonModels(arg1_8, arg1_9) then
			else
			end
			-- KONSTANTERROR: [50] 36. Error Block 49 end (CF ANALYSIS FAILED)
		end)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 497
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: GetFFlagSideNavControllerBar_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
	]]
	arg1.recording = false
	GuiService_upvr:RemoveSelectionGroup("MainPageMoreMenu")
	if GetFFlagSideNavControllerBar_upvr() then
		ContextActionService_upvr:UnbindCoreAction("LeftStickTogglesMoreMenuAction")
	end
end
function any_extend_result1.canGamepadCaptureFocus(arg1) -- Line 506
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local canCaptureFocus = arg1.canCaptureFocus
	if canCaptureFocus then
		if arg1.inputType ~= Constants_upvr.InputType.Gamepad then
			canCaptureFocus = false
		else
			canCaptureFocus = true
		end
	end
	return canCaptureFocus
end
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 510
	--[[ Upvalues[8]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: GetFFlagSideNavControllerBar_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: ContextActionService_upvr (readonly)
		[6]: FFlagRecordRecording_upvr (readonly)
		[7]: VRService_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 13. Error Block 5 start (CF ANALYSIS FAILED)
	GuiService_upvr.SelectedCoreObject = arg1.moreMenuButtonRef:getValue()
	-- KONSTANTERROR: [17] 13. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 19. Error Block 42 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 19. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 23. Error Block 8 start (CF ANALYSIS FAILED)
	GuiService_upvr.SelectedCoreObject = arg1.mainPageFirstButtonRef:getValue()
	-- KONSTANTERROR: [31] 23. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 28. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 28. Error Block 9 end (CF ANALYSIS FAILED)
end
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
local SetRespawning_upvr = require(Parent.Actions.SetRespawning)
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 583
	--[[ Upvalues[3]:
		[1]: GetFFlagSideNavControllerBar_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	local var124
	if GetFFlagSideNavControllerBar_upvr() then
		local isMenuOpen = arg1.isMenuOpen
		if isMenuOpen then
			isMenuOpen = not arg1.respawn.dialogOpen
			if isMenuOpen then
				if arg1.menuPage ~= Constants_upvr.MainPagePageKey then
					isMenuOpen = false
				else
					isMenuOpen = true
				end
			end
		end
		var124 = isMenuOpen
	end
	isMenuOpen = nil
	local var126 = isMenuOpen
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
		var126 = arg1.currentZone
	end
	local var127 = false
	if arg1.menuPage == Constants_upvr.MainPagePageKey then
		var127 = arg1.isMenuOpen
		if var127 then
			var127 = not arg1.respawn.dialogOpen
			if var127 then
				if arg1.currentZone ~= 1 then
					var127 = false
				else
					var127 = true
				end
			end
		end
	end
	return {
		open = arg1.isMenuOpen;
		respawnButtonVisible = arg1.respawn.enabled;
		recording = arg1.recording;
		screenSize = arg1.screenSize;
		voiceEnabled = arg1.voiceState.voiceEnabled;
		canCaptureFocus = var127;
		currentZone = var126;
		inputType = arg1.displayOptions.inputType;
		isMainPageInForeground = var124;
	}
end, function(arg1) -- Line 612
	--[[ Upvalues[4]:
		[1]: SetCurrentPage_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: SetRespawning_upvr (readonly)
		[4]: CloseMenu_upvr (readonly)
	]]
	return {
		startLeavingGame = function() -- Line 614, Named "startLeavingGame"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: SetCurrentPage_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1(SetCurrentPage_upvr(Constants_upvr.LeaveGamePromptPageKey))
		end;
		startRespawning = function() -- Line 617, Named "startRespawning"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetRespawning_upvr (copied, readonly)
			]]
			arg1(SetRespawning_upvr(true))
		end;
		closeMenu = function() -- Line 620, Named "closeMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseMenu_upvr (copied, readonly)
			]]
			arg1(CloseMenu_upvr)
		end;
	}
end)(any_extend_result1)