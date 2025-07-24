-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:20
-- Luau version 6, Types version 3
-- Time taken: 0.010487 seconds

local GuiService_upvr = game:GetService("GuiService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AdvancedPage")
local tbl_2 = {
	canCaptureFocus = t.boolean;
	closeMenu = t.callback;
	pageTitle = t.string;
}
local var59
local function INLINED() -- Internal function, doesn't exist in bytecode
	var59 = t.string
	return var59
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED() then
	var59 = nil
end
tbl_2.currentPage = var59
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	var59 = t.optional(t.number)
	return var59
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_2() then
	var59 = nil
end
tbl_2.currentZone = var59
any_extend_result1.validateProps = t.strictInterface(tbl_2)
function any_extend_result1.init(arg1) -- Line 53
	--[[ Upvalues[2]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1:setState({
		microProfilerEnabled = UserGameSettings_upvr.OnScreenProfilerEnabled;
		performanceStatsEnabled = UserGameSettings_upvr.PerformanceStatsVisible;
	})
	arg1.backButtonRef = Roact_upvr.createRef()
	arg1.performanceToggleRef = Roact_upvr.createRef()
end
if not GetFFlagIGMGamepadSelectionHistory_upvr() then
	function any_extend_result1.didUpdate(arg1, arg2) -- Line 64
		--[[ Upvalues[1]:
			[1]: GuiService_upvr (readonly)
		]]
		if arg1.props.canCaptureFocus and not arg2.canCaptureFocus then
			GuiService_upvr.SelectedCoreObject = arg1.performanceToggleRef:getValue()
		end
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Page_upvr = require(script.Parent.Parent.Page)
local FocusHandler_upvr = require(script.Parent.Parent.Connection.FocusHandler)
local CategoryHeader_upvr = require(script.Parent.CategoryHeader)
local ToggleEntry_upvr = require(script.Parent.ToggleEntry)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local DevConsoleMaster_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.DevConsoleMaster)
local Divider_upvr = require(Parent.Components.Divider)
local VersionReporter_upvr = require(script.Parent.VersionReporter)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local OnScreenProfilerEnabled_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("OnScreenProfilerEnabled")
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 71
	--[[ Upvalues[18]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Page_upvr (readonly)
		[4]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[5]: FocusHandler_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: CategoryHeader_upvr (readonly)
		[9]: ToggleEntry_upvr (readonly)
		[10]: UserGameSettings_upvr (readonly)
		[11]: SendAnalytics_upvr (readonly)
		[12]: withLocalization_upvr (readonly)
		[13]: CursorKind_upvr (readonly)
		[14]: DevConsoleMaster_upvr (readonly)
		[15]: Divider_upvr (readonly)
		[16]: VersionReporter_upvr (readonly)
		[17]: ExternalEventConnection_upvr (readonly)
		[18]: OnScreenProfilerEnabled_changed_signal_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 72
		--[[ Upvalues[19]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Page_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
			[5]: FocusHandler_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: GuiService_upvr (copied, readonly)
			[8]: CategoryHeader_upvr (copied, readonly)
			[9]: ToggleEntry_upvr (copied, readonly)
			[10]: UserGameSettings_upvr (copied, readonly)
			[11]: SendAnalytics_upvr (copied, readonly)
			[12]: withLocalization_upvr (copied, readonly)
			[13]: arg2 (readonly)
			[14]: CursorKind_upvr (copied, readonly)
			[15]: DevConsoleMaster_upvr (copied, readonly)
			[16]: Divider_upvr (copied, readonly)
			[17]: VersionReporter_upvr (copied, readonly)
			[18]: ExternalEventConnection_upvr (copied, readonly)
			[19]: OnScreenProfilerEnabled_changed_signal_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local module_3 = {}
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 25. Error Block 16 start (CF ANALYSIS FAILED)
		local tbl_4 = {
			isFocused = arg1.props.canCaptureFocus;
		}
		local var31 = true
		if arg1.props.currentPage == Constants_upvr.advancedSettingsPageKey then
			if arg1.props.currentZone ~= 0 then
				var31 = false
			else
				var31 = true
			end
		end
		tbl_4.shouldForgetPreviousSelection = var31
		function tbl_4.didFocus(arg1_3) -- Line 85
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local var32 = arg1_3
			if not var32 then
				var32 = arg1.performanceToggleRef:getValue()
			end
			GuiService_upvr.SelectedCoreObject = var32
		end
		local any_createElement_result1 = Roact_upvr.createElement(FocusHandler_upvr, tbl_4)
		if not any_createElement_result1 then
			-- KONSTANTERROR: [77] 53. Error Block 8 start (CF ANALYSIS FAILED)
			any_createElement_result1 = nil
			-- KONSTANTERROR: [77] 53. Error Block 8 end (CF ANALYSIS FAILED)
		end
		module_3.FocusHandler = any_createElement_result1
		module_3.Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		})
		module_3.AdvancedHeader = Roact_upvr.createElement(CategoryHeader_upvr, {
			LayoutOrder = 1;
			localizationKey = "CoreScripts.InGameMenu.GameSettings.AdvancedSettingsTitle";
		})
		local tbl_3 = {
			LayoutOrder = 2;
			labelKey = "CoreScripts.InGameMenu.GameSettings.ShowPerfStats";
			checked = arg1.state.performanceStatsEnabled;
		}
		local function onToggled() -- Line 103
			--[[ Upvalues[3]:
				[1]: UserGameSettings_upvr (copied, readonly)
				[2]: SendAnalytics_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			UserGameSettings_upvr.PerformanceStatsVisible = not UserGameSettings_upvr.PerformanceStatsVisible
			SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
		end
		tbl_3.onToggled = onToggled
		tbl_3.buttonRef = arg1.performanceToggleRef
		tbl_3.NextSelectionUp = arg1.backButtonRef
		module_3.PerformanceStats = Roact_upvr.createElement(ToggleEntry_upvr, tbl_3)
		module_3.MicroProfiler = Roact_upvr.createElement(ToggleEntry_upvr, {
			LayoutOrder = 3;
			labelKey = "CoreScripts.InGameMenu.GameSettings.ShowMicroProfiler";
			checked = arg1.state.microProfilerEnabled;
			onToggled = function() -- Line 114, Named "onToggled"
				--[[ Upvalues[3]:
					[1]: UserGameSettings_upvr (copied, readonly)
					[2]: SendAnalytics_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				UserGameSettings_upvr.OnScreenProfilerEnabled = not UserGameSettings_upvr.OnScreenProfilerEnabled
				SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
			end;
		})
		module_3.DeveloperConsole = withLocalization_upvr({
			text = "CoreScripts.InGameMenu.GameSettings.DeveloperConsole";
		})(function(arg1_4) -- Line 121
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg2 (copied, readonly)
				[4]: CursorKind_upvr (copied, readonly)
				[5]: DevConsoleMaster_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
			]]
			return Roact_upvr.createElement("TextButton", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 54);
				Text = arg1_4.text;
				TextColor3 = arg1_2.Theme.TextEmphasis.Color;
				Font = arg1_2.Font.Header2.Font;
				TextSize = arg1_2.Font.Header2.RelativeSize * arg1_2.Font.BaseSize;
				TextXAlignment = Enum.TextXAlignment.Left;
				LayoutOrder = 4;
				SelectionImageObject = arg2(CursorKind_upvr.Square);
				[Roact_upvr.Event.Activated] = function() -- Line 132
					--[[ Upvalues[2]:
						[1]: DevConsoleMaster_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					DevConsoleMaster_upvr:SetVisibility(true)
					arg1.props.closeMenu()
				end;
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24);
				});
			})
		end)
		module_3.Divider = Roact_upvr.createElement(Divider_upvr, {
			Size = UDim2.new(1, -24, 0, 1);
			LayoutOrder = 5;
		})
		module_3.VersionReporter = Roact_upvr.createElement(VersionReporter_upvr, {
			LayoutOrder = 6;
		})
		local tbl = {
			event = OnScreenProfilerEnabled_changed_signal_upvr;
		}
		local function callback() -- Line 152
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: UserGameSettings_upvr (copied, readonly)
			]]
			arg1:setState({
				microProfilerEnabled = UserGameSettings_upvr.OnScreenProfilerEnabled;
			})
		end
		tbl.callback = callback
		module_3.MicroProfilerVisibilityListener = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl)
		module_3.PerformanceStatsVisibilityListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = UserGameSettings_upvr.PerformanceStatsVisibleChanged;
			callback = function() -- Line 160, Named "callback"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: UserGameSettings_upvr (copied, readonly)
				]]
				arg1:setState({
					performanceStatsEnabled = UserGameSettings_upvr.PerformanceStatsVisible;
				})
			end;
		})
		do
			return Roact_upvr.createElement(Page_upvr, {
				pageTitle = arg1.props.pageTitle;
				zIndex = 2;
				position = arg1.props.position;
				buttonRef = arg1.backButtonRef;
				NextSelectionDown = arg1.performanceToggleRef;
			}, module_3)
		end
		-- KONSTANTERROR: [36] 25. Error Block 16 end (CF ANALYSIS FAILED)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 170
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 171
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_5)
	end)
end
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
function var59(arg1) -- Line 192
	--[[ Upvalues[1]:
		[1]: CloseMenu_upvr (readonly)
	]]
	return {
		closeMenu = function() -- Line 194, Named "closeMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseMenu_upvr (copied, readonly)
			]]
			arg1(CloseMenu_upvr)
		end;
	}
end
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1) -- Line 176
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var56 = false
	local var57
	if arg1.menuPage == "AdvancedGameSettings" then
		var56 = false
		var57 = Constants_upvr.InputType
		if arg1.displayOptions.inputType == var57.Gamepad then
			var56 = not arg1.respawn.dialogOpen
			if var56 then
				if arg1.currentZone ~= 1 then
					var56 = false
				else
					var56 = true
				end
			end
		end
	end
	if GetFFlagIGMGamepadSelectionHistory_upvr() then
	end
	local module = {
		canCaptureFocus = var56;
	}
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var57 = arg1.menuPage
		return var57
	end
	if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_4() then
		var57 = nil
	end
	module.currentPage = var57
	module.currentZone = arg1.currentZone
	return module
end, var59)(any_extend_result1)