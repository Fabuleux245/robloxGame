-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:35
-- Luau version 6, Types version 3
-- Time taken: 0.034305 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local VRService_upvr = game:GetService("VRService")
local GamepadService_upvr = game:GetService("GamepadService")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav_upvr = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagHideTopBarConsole_upvr = SharedFlags.FFlagHideTopBarConsole
local FFlagEnableChromeShortcutBar_upvr = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagReduceTopBarInsetsWhileHidden_upvr = SharedFlags.FFlagReduceTopBarInsetsWhileHidden
local FFlagAddUILessMode_upvr = SharedFlags.FFlagAddUILessMode
local FIntAddUILessModeVariant_upvr = SharedFlags.FIntAddUILessModeVariant
local FFlagChromeEnabledRequireGamepadConnectorFix_upvr = SharedFlags.FFlagChromeEnabledRequireGamepadConnectorFix
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
local RobloxGui_upvr = CoreGui_upvr:WaitForChild("RobloxGui")
local Chrome = RobloxGui_upvr.Modules.Chrome
local Enabled_upvr = require(Chrome.Enabled)
local SharedExperimentDefinition_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition)
local isInExperienceUIVREnabled_upvr = SharedExperimentDefinition_upvr.isInExperienceUIVREnabled
local var33_upvw
if Enabled_upvr() and (FFlagTiltIconUnibarFocusNav_upvr or FFlagEnableChromeShortcutBar_upvr or isInExperienceUIVREnabled_upvr) then
	SharedExperimentDefinition_upvr = require(Chrome.Service)
else
	SharedExperimentDefinition_upvr = nil
end
if Enabled_upvr() and FFlagTiltIconUnibarFocusNav_upvr then
	local _ = require(Chrome.ChromeShared.Unibar.Constants)
else
end
local isNewInGameMenuEnabled_upvr = require(RobloxGui_upvr.Modules.isNewInGameMenuEnabled)
local VRHub_upvr = require(RobloxGui_upvr.Modules.VR.VRHub)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableReferralRewardTooltip", false)
local Parent = script.Parent.Parent
local Actions = Parent.Parent.Actions
local Constants_upvr = require(Parent.Parent.Constants)
if not FFlagChromeEnabledRequireGamepadConnectorFix_upvr or Enabled_upvr() then
	local _ = require(script.Parent.Parent.GamepadConnector)
else
end
if isNewInGameMenuEnabled_upvr() then
end
local isNewTiltIconEnabled_upvr = require(RobloxGui_upvr.Modules.isNewTiltIconEnabled)
var33_upvw = nil
if isInExperienceUIVREnabled_upvr then
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	local isSpatial_upvw = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
	local UIManager_upvw = VrSpatialUi.UIManager
	function var33_upvw() -- Line 90
		--[[ Upvalues[4]:
			[1]: isInExperienceUIVREnabled_upvr (readonly)
			[2]: isSpatial_upvw (read and write)
			[3]: SharedExperimentDefinition_upvr (readonly)
			[4]: UIManager_upvw (read and write)
		]]
		if isInExperienceUIVREnabled_upvr and isSpatial_upvw() then
			local var36 = not SharedExperimentDefinition_upvr:showTopBar()
			if var36 then
				var36 = not UIManager_upvw.getInstance():isBottomBarInteractionOnAnimationSupported()
			end
			return var36
		end
		return false
	end
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuIcon")
if isNewTiltIconEnabled_upvr() then
else
end
if require(script.Parent.Parent.Parent.Flags.GetFFlagChangeTopbarHeightCalculation)() then
end
local var19_result1_upvr = Enabled_upvr()
if var19_result1_upvr then
else
end
local tbl_16_upvr = {}
local var40
tbl_16_upvr[1] = Enum.KeyCode.Escape
local tbl_7 = {}
var40 = t.integer
tbl_7.layoutOrder = var40
var40 = t.callback
tbl_7.setGamepadMenuOpen = var40
var40 = t.optional(t.number)
tbl_7.iconScale = var40
var40 = t.optional(t.callback)
tbl_7.onAreaChanged = var40
var40 = t.optional(t.boolean)
tbl_7.showBadgeOver12 = var40
if Enabled_upvr() and FFlagTiltIconUnibarFocusNav_upvr then
	var40 = t.optional(t.any)
else
	var40 = nil
end
tbl_7.menuIconRef = var40
if Enabled_upvr() and FFlagTiltIconUnibarFocusNav_upvr then
	var40 = t.optional(t.any)
else
	var40 = nil
end
tbl_7.unibarMenuRef = var40
var40 = t.optional(t.string)
tbl_7.referralRewardTooltipText = var40
any_extend_result1.validateProps = t.strictInterface(tbl_7)
local InGameMenuConstants_upvr = require(RobloxGui_upvr.Modules.InGameMenuConstants)
local InGameMenuInit_upvw = require(RobloxGui_upvr.Modules.InGameMenuInit)
local menuIconHoveredSignal_upvr = require(script.Parent.menuIconHoveredSignal)
local FFlagEnableUnibarFtuxTooltips_upvr = SharedFlags.FFlagEnableUnibarFtuxTooltips
local const_number_upvr = 0.4
local isSubjectToDesktopPolicies_upvr = SharedFlags.isSubjectToDesktopPolicies
local FFlagMenuIconRemoveBinding_upvr = SharedFlags.FFlagMenuIconRemoveBinding
local FFlagShowUnibarOnVirtualCursor_upvr = SharedFlags.FFlagShowUnibarOnVirtualCursor
local var50_upvr
local FFlagChromeFixMenuIconBackButton_upvr = SharedFlags.FFlagChromeFixMenuIconBackButton
local FocusUtils_upvr = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local GuiService_upvr = game:GetService("GuiService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local var55_upvr
local Stores_upvr = require(CorePackages.Workspace.Packages.CoreGuiCommon).Stores
local createEffect_upvr = require(CorePackages.Packages.Signals).createEffect
function any_extend_result1.init(arg1) -- Line 132
	--[[ Upvalues[35]:
		[1]: var19_result1_upvr (readonly)
		[2]: Enabled_upvr (readonly)
		[3]: isInExperienceUIVREnabled_upvr (readonly)
		[4]: var33_upvw (read and write)
		[5]: RobloxGui_upvr (readonly)
		[6]: FFlagAddUILessMode_upvr (readonly)
		[7]: InGameMenuConstants_upvr (readonly)
		[8]: VRService_upvr (readonly)
		[9]: VRHub_upvr (readonly)
		[10]: GamepadService_upvr (readonly)
		[11]: InGameMenuInit_upvw (read and write)
		[12]: isNewInGameMenuEnabled_upvr (readonly)
		[13]: menuIconHoveredSignal_upvr (readonly)
		[14]: FFlagEnableUnibarFtuxTooltips_upvr (readonly)
		[15]: const_number_upvr (readonly)
		[16]: isSubjectToDesktopPolicies_upvr (readonly)
		[17]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[18]: FFlagMenuIconRemoveBinding_upvr (readonly)
		[19]: FFlagShowUnibarOnVirtualCursor_upvr (readonly)
		[20]: var50_upvr (readonly)
		[21]: SharedExperimentDefinition_upvr (readonly)
		[22]: FFlagChromeFixMenuIconBackButton_upvr (readonly)
		[23]: FocusUtils_upvr (readonly)
		[24]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[25]: GuiService_upvr (readonly)
		[26]: ContextActionService_upvr (readonly)
		[27]: FFlagChromeEnabledRequireGamepadConnectorFix_upvr (readonly)
		[28]: var55_upvr (readonly)
		[29]: FFlagHideTopBarConsole_upvr (readonly)
		[30]: Roact_upvr (readonly)
		[31]: FFlagReduceTopBarInsetsWhileHidden_upvr (readonly)
		[32]: Constants_upvr (readonly)
		[33]: FIntAddUILessModeVariant_upvr (readonly)
		[34]: Stores_upvr (readonly)
		[35]: createEffect_upvr (readonly)
	]]
	local tbl_13 = {
		vrShowMenuIcon = false;
		showTooltip = false;
	}
	local var89 = false
	tbl_13.isHovering = var89
	local var108_upvr
	if var19_result1_upvr then
		var89 = false
	else
		var89 = nil
	end
	tbl_13.clickLatched = var89
	tbl_13.enableFlashingDot = false
	var108_upvr = arg1:setState
	var108_upvr(tbl_13)
	var108_upvr = Enabled_upvr()
	if not var108_upvr then
		var108_upvr = task.spawn
		var108_upvr(function() -- Line 143
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				enableFlashingDot = true;
			})
		end)
	end
	function var108_upvr() -- Line 150
		--[[ Upvalues[12]:
			[1]: arg1 (readonly)
			[2]: var19_result1_upvr (copied, readonly)
			[3]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[4]: var33_upvw (copied, read and write)
			[5]: RobloxGui_upvr (copied, readonly)
			[6]: FFlagAddUILessMode_upvr (copied, readonly)
			[7]: InGameMenuConstants_upvr (copied, readonly)
			[8]: VRService_upvr (copied, readonly)
			[9]: VRHub_upvr (copied, readonly)
			[10]: GamepadService_upvr (copied, readonly)
			[11]: InGameMenuInit_upvw (copied, read and write)
			[12]: isNewInGameMenuEnabled_upvr (copied, readonly)
		]]
		local tbl = {}
		local var95 = false
		tbl.showTooltip = var95
		if var19_result1_upvr then
			var95 = nil
		else
			var95 = false
		end
		tbl.isHovering = var95
		if var19_result1_upvr then
			var95 = true
		else
			var95 = nil
		end
		tbl.clickLatched = var95
		arg1:setState(tbl)
		if isInExperienceUIVREnabled_upvr then
			if var33_upvw() then
			else
				var95 = RobloxGui_upvr.Modules
				local SettingsHub_4 = require(var95.Settings.SettingsHub)
				if FFlagAddUILessMode_upvr then
					var95 = nil
					SettingsHub_4:ToggleVisibility(var95, InGameMenuConstants_upvr.AnalyticsMenuOpenTypes.TopbarButton)
					return
				end
				var95 = InGameMenuConstants_upvr.AnalyticsMenuOpenTypes.TopbarButton
				SettingsHub_4:ToggleVisibility(var95)
			end
		end
		if VRService_upvr.VREnabled and (VRHub_upvr.ShowTopBar or GamepadService_upvr.GamepadCursorEnabled) then
			InGameMenuInit_upvw.openInGameMenu(InGameMenuConstants_upvr.MainPagePageKey)
		else
			if isNewInGameMenuEnabled_upvr() then
				InGameMenuInit_upvw.openInGameMenu(InGameMenuConstants_upvr.MainPagePageKey)
				return
			end
			var95 = RobloxGui_upvr.Modules
			local SettingsHub_2 = require(var95.Settings.SettingsHub)
			if FFlagAddUILessMode_upvr then
				var95 = nil
				SettingsHub_2:ToggleVisibility(var95, InGameMenuConstants_upvr.AnalyticsMenuOpenTypes.TopbarButton)
				return
			end
			var95 = InGameMenuConstants_upvr.AnalyticsMenuOpenTypes.TopbarButton
			SettingsHub_2:ToggleVisibility(var95)
		end
	end
	arg1.menuIconActivated = var108_upvr
	function var108_upvr(arg1_6) -- Line 185
		--[[ Upvalues[1]:
			[1]: menuIconHoveredSignal_upvr (copied, readonly)
		]]
		menuIconHoveredSignal_upvr:fire(arg1_6)
	end
	arg1.fireMenuIconHoveredSignal = var108_upvr
	function var108_upvr() -- Line 188
		--[[ Upvalues[10]:
			[1]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[2]: var33_upvw (copied, read and write)
			[3]: var19_result1_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: FFlagEnableUnibarFtuxTooltips_upvr (copied, readonly)
			[6]: const_number_upvr (copied, readonly)
			[7]: isNewInGameMenuEnabled_upvr (copied, readonly)
			[8]: isSubjectToDesktopPolicies_upvr (copied, readonly)
			[9]: InGameMenuInit_upvw (copied, read and write)
			[10]: InGameMenuConstants_upvr (copied, readonly)
		]]
		if isInExperienceUIVREnabled_upvr and var33_upvw() then
		else
			if var19_result1_upvr then
				arg1:setState({
					isHovering = true;
				})
				if FFlagEnableUnibarFtuxTooltips_upvr then
					arg1.fireMenuIconHoveredSignal(true)
				end
				delay(const_number_upvr, function() -- Line 200
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: isInExperienceUIVREnabled_upvr (copied, readonly)
						[3]: var33_upvw (copied, read and write)
					]]
					if arg1.state.isHovering and not arg1.state.clickLatched then
						if isInExperienceUIVREnabled_upvr and var33_upvw() then return end
						arg1:setState({
							showTooltip = true;
						})
					end
				end)
			elseif FFlagEnableUnibarFtuxTooltips_upvr then
				arg1.fireMenuIconHoveredSignal(false)
			end
			if isNewInGameMenuEnabled_upvr() then
				if not isSubjectToDesktopPolicies_upvr() then return end
				InGameMenuInit_upvw.openInGameMenu(InGameMenuConstants_upvr.InitalPageKey)
				InGameMenuInit_upvw.setMenuIconTooltipOpen(false)
			end
		end
	end
	arg1.menuIconOnHover = var108_upvr
	function var108_upvr() -- Line 226
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var19_result1_upvr (copied, readonly)
		]]
		local tbl_12 = {
			showTooltip = false;
		}
		local var105 = false
		tbl_12.isHovering = var105
		if var19_result1_upvr then
			var105 = false
		else
			var105 = nil
		end
		tbl_12.clickLatched = var105
		arg1:setState(tbl_12)
	end
	arg1.menuIconOnHoverEnd = var108_upvr
	function var108_upvr() -- Line 234
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.vrShowMenuIcon ~= false then
			arg1:setState({
				vrShowMenuIcon = false;
			})
		end
	end
	arg1.showTopBarCallback = var108_upvr
	var108_upvr = Enabled_upvr()
	if var108_upvr then
		var108_upvr = FFlagTiltIconUnibarFocusNav_upvr
		if var108_upvr then
			function var108_upvr(arg1_7, arg2, arg3, arg4) -- Line 244
				--[[ Upvalues[10]:
					[1]: FFlagMenuIconRemoveBinding_upvr (copied, readonly)
					[2]: FFlagShowUnibarOnVirtualCursor_upvr (copied, readonly)
					[3]: GamepadService_upvr (copied, readonly)
					[4]: var50_upvr (copied, readonly)
					[5]: SharedExperimentDefinition_upvr (copied, readonly)
					[6]: FFlagChromeFixMenuIconBackButton_upvr (copied, readonly)
					[7]: FocusUtils_upvr (copied, readonly)
					[8]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
					[9]: GuiService_upvr (copied, readonly)
					[10]: ContextActionService_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [24] 20. Error Block 8 start (CF ANALYSIS FAILED)
				FocusUtils_upvr.MenuIconSelectedSignal:set(arg2)
				do
					return
				end
				-- KONSTANTERROR: [24] 20. Error Block 8 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [32] 26. Error Block 19 start (CF ANALYSIS FAILED)
				if arg2 then
					ContextActionService_upvr:BindCoreAction("Unfocus_Tilt", function(arg1_8, arg2_3, arg3_3) -- Line 255, Named "unfocusTilt"
						--[[ Upvalues[2]:
							[1]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
							[2]: GuiService_upvr (copied, readonly)
						]]
						if not FFlagEnableChromeShortcutBar_upvr and arg2_3 == Enum.UserInputState.End or FFlagEnableChromeShortcutBar_upvr and arg2_3 == Enum.UserInputState.Begin then
							GuiService_upvr.SelectedCoreObject = nil
							return Enum.ContextActionResult.Sink
						end
						return Enum.ContextActionResult.Pass
					end, false, Enum.KeyCode.ButtonB)
					return
				end
				ContextActionService_upvr:UnbindCoreAction("Unfocus_Tilt")
				if not FFlagShowUnibarOnVirtualCursor_upvr or not GamepadService_upvr.GamepadCursorEnabled or arg4 and string.find(arg4.Name, var50_upvr.ICON_NAME_PREFIX) then
					SharedExperimentDefinition_upvr:enableFocusNav()
				end
				-- KONSTANTERROR: [32] 26. Error Block 19 end (CF ANALYSIS FAILED)
			end
			arg1.onMenuIconSelectionChanged = var108_upvr
		end
	end
	if FFlagChromeEnabledRequireGamepadConnectorFix_upvr then
		var108_upvr = Enabled_upvr()
		if var108_upvr then
			var108_upvr = var55_upvr
			-- KONSTANTWARNING: GOTO [98] #86
		end
	else
		var108_upvr = Enabled_upvr
	end
	if var108_upvr then
		var108_upvr = FFlagHideTopBarConsole_upvr
		if var108_upvr then
			var108_upvr = var55_upvr:getShowTopBar()
			local any_createBinding_result1_4, any_createBinding_result2 = Roact_upvr.createBinding(var108_upvr:get())
			arg1.showIcon = any_createBinding_result1_4
			arg1.setShowIcon = any_createBinding_result2
			if FFlagReduceTopBarInsetsWhileHidden_upvr then
				arg1.priorAbsolutePosition = Vector2.zero
				arg1.priorAbsoluteSize = Vector2.zero
			end
			var108_upvr:connect(function() -- Line 288
				--[[ Upvalues[4]:
					[1]: var108_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: FFlagReduceTopBarInsetsWhileHidden_upvr (copied, readonly)
					[4]: Constants_upvr (copied, readonly)
				]]
				local any_get_result1_2 = var108_upvr:get()
				arg1.setShowIcon(any_get_result1_2)
				if FFlagReduceTopBarInsetsWhileHidden_upvr then
					if any_get_result1_2 then
						arg1.props.onAreaChanged(Constants_upvr.MenuIconKeepOutAreaId, arg1.priorAbsolutePosition, arg1.priorAbsoluteSize)
						return
					end
					arg1.props.onAreaChanged(Constants_upvr.MenuIconKeepOutAreaId, Vector2.zero, Vector2.zero)
				end
			end)
		end
	end
	var108_upvr = Enabled_upvr()
	if var108_upvr then
		var108_upvr = FFlagEnableChromeShortcutBar_upvr
		if var108_upvr then
			var108_upvr = SharedExperimentDefinition_upvr:onTriggerMenuIcon()
			var108_upvr = var108_upvr:connect
			var108_upvr(function() -- Line 303
				--[[ Upvalues[3]:
					[1]: GuiService_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: FocusUtils_upvr (copied, readonly)
				]]
				GuiService_upvr.SelectedCoreObject = arg1.props.menuIconRef:getValue()
				FocusUtils_upvr.MenuIconSelectedSignal:set(true)
			end)
		end
	end
	var108_upvr = FFlagAddUILessMode_upvr
	if var108_upvr then
		var108_upvr = FIntAddUILessModeVariant_upvr
		if var108_upvr ~= 0 then
			var108_upvr = Stores_upvr.GetUILessStore
			if var108_upvr then
				var108_upvr = Stores_upvr.GetUILessStore(false)
				arg1.uiLessStore = var108_upvr
				var108_upvr = arg1.uiLessStore.getUILessModeEnabled(false)
				if var108_upvr then
					var108_upvr = Roact_upvr.createBinding(true)
					local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(true)
					arg1.showIcon = any_createBinding_result1_2
					arg1.setShowIcon = any_createBinding_result2_2
					any_createBinding_result1_2 = Vector2.zero
					arg1.priorAbsolutePosition = any_createBinding_result1_2
					any_createBinding_result1_2 = Vector2.zero
					arg1.priorAbsoluteSize = any_createBinding_result1_2
					any_createBinding_result1_2 = createEffect_upvr
					any_createBinding_result1_2 = any_createBinding_result1_2(function(arg1_9) -- Line 318
						--[[ Upvalues[2]:
							[1]: arg1 (readonly)
							[2]: Constants_upvr (copied, readonly)
						]]
						local any_getUIVisible_result1_2 = arg1.uiLessStore.getUIVisible(arg1_9)
						arg1.setShowIcon(any_getUIVisible_result1_2)
						if any_getUIVisible_result1_2 then
							arg1.props.onAreaChanged(Constants_upvr.MenuIconKeepOutAreaId, arg1.priorAbsolutePosition, arg1.priorAbsoluteSize)
						else
							arg1.props.onAreaChanged(Constants_upvr.MenuIconKeepOutAreaId, Vector2.zero, Vector2.zero)
						end
					end)
					arg1.disposeEffect = any_createBinding_result1_2
				end
			end
		end
	end
end
local React_upvr = require(CorePackages.Packages.React)
local Panel3DInSpatialUI_upvw = VrSpatialUi.Panel3DInSpatialUI
local PanelType_upvw = VrSpatialUi.Constants.PanelType
local TooltipCallout_upvw = UIBlox.App.Dialog.TooltipCallout
local SPATIAL_TOOLTIP_SPACING_upvw = VrSpatialUi.Constants.SPATIAL_TOOLTIP_SPACING
local withTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withTooltip
function any_extend_result1.renderWithTooltipCompat(arg1, arg2, arg3, arg4) -- Line 332
	--[[ Upvalues[9]:
		[1]: isInExperienceUIVREnabled_upvr (readonly)
		[2]: isSpatial_upvw (read and write)
		[3]: React_upvr (readonly)
		[4]: Panel3DInSpatialUI_upvw (read and write)
		[5]: PanelType_upvw (read and write)
		[6]: TooltipCallout_upvw (read and write)
		[7]: TooltipOrientation_upvr (readonly)
		[8]: SPATIAL_TOOLTIP_SPACING_upvw (read and write)
		[9]: withTooltip_upvr (readonly)
	]]
	if isInExperienceUIVREnabled_upvr and isSpatial_upvw() then
		local module = {}
		local var127
		if arg3.active and arg1.state.triggerPointSize and Panel3DInSpatialUI_upvw then
			var127 = React_upvr.createElement
			var127 = var127(Panel3DInSpatialUI_upvw, {
				panelType = PanelType_upvw.ToolTipsContainer;
				renderFunction = function(arg1_11) -- Line 350, Named "renderFunction"
					--[[ Upvalues[6]:
						[1]: React_upvr (copied, readonly)
						[2]: TooltipCallout_upvw (copied, read and write)
						[3]: arg2 (readonly)
						[4]: TooltipOrientation_upvr (copied, readonly)
						[5]: arg1 (readonly)
						[6]: SPATIAL_TOOLTIP_SPACING_upvw (copied, read and write)
					]]
					return React_upvr.createElement(TooltipCallout_upvw, {
						textAlignment = Enum.TextXAlignment.Center;
						headerText = arg2.headerText;
						orientation = TooltipOrientation_upvr.Top;
						distanceOffset = 0;
						triggerPointCenter = Vector2.new(arg1.state.triggerPointPosition.X + arg1.state.triggerPointSize.X / 2, arg1_11.Y - SPATIAL_TOOLTIP_SPACING_upvw);
						contentOffsetVector = Vector2.zero;
						triggerPointRadius = Vector2.zero;
					})
				end;
			})
		else
			var127 = nil
		end
		module.VRSpatialTooltip = var127
		var127 = arg4(function(arg1_10) -- Line 335
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				triggerPointSize = arg1_10.AbsoluteSize;
				triggerPointPosition = arg1_10.AbsolutePosition;
			})
		end)
		module.MenuIconTriggerPoint = var127
		return React_upvr.createElement(React_upvr.Fragment, nil, module)
	end
	return withTooltip_upvr(arg2, arg3, arg4)
end
function any_extend_result1.willUnmount(arg1) -- Line 374
	--[[ Upvalues[2]:
		[1]: FFlagAddUILessMode_upvr (readonly)
		[2]: FIntAddUILessModeVariant_upvr (readonly)
	]]
	if FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr ~= 0 and arg1.uiLessStore.getUILessModeEnabled(false) and arg1.disposeEffect then
		arg1.disposeEffect()
	end
end
local IconButton_upvr = require(script.Parent.IconButton)
local Images_upvr = UIBlox.App.ImageSet.Images
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local BadgeOver12_upvr = require(script.Parent.BadgeOver12)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local TopBarButtonHeight_upvw = Constants_upvr.TopBarButtonHeight
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FixMenuIconBackground", false)
local var137_upvr = require(script.Parent.Parent.Parent.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
function any_extend_result1.render(arg1) -- Line 382
	--[[ Upvalues[30]:
		[1]: isInExperienceUIVREnabled_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: FFlagReduceTopBarInsetsWhileHidden_upvr (readonly)
		[4]: FFlagChromeEnabledRequireGamepadConnectorFix_upvr (readonly)
		[5]: Enabled_upvr (readonly)
		[6]: var55_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: FFlagAddUILessMode_upvr (readonly)
		[9]: FIntAddUILessModeVariant_upvr (readonly)
		[10]: Roact_upvr (readonly)
		[11]: IconButton_upvr (readonly)
		[12]: isNewTiltIconEnabled_upvr (readonly)
		[13]: Images_upvr (readonly)
		[14]: var19_result1_upvr (readonly)
		[15]: GamepadService_upvr (readonly)
		[16]: ExternalEventConnection_upvr (readonly)
		[17]: VRHub_upvr (readonly)
		[18]: BadgeOver12_upvr (readonly)
		[19]: RobloxTranslator_upvr (readonly)
		[20]: tbl_16_upvr (readonly)
		[21]: game_DefineFastFlag_result1_upvr (readonly)
		[22]: CoreGui_upvr (readonly)
		[23]: TooltipOrientation_upvr (readonly)
		[24]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[25]: SharedExperimentDefinition_upvr (readonly)
		[26]: var50_upvr (readonly)
		[27]: FFlagHideTopBarConsole_upvr (readonly)
		[28]: TopBarButtonHeight_upvw (read and write)
		[29]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[30]: var137_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 96 start (CF ANALYSIS FAILED)
	local var159
	if isInExperienceUIVREnabled_upvr then
		local _ = true
	else
		local var161_upvw = not VRService_upvr.VREnabled
		if not var161_upvw then
			var161_upvw = arg1.state.vrShowMenuIcon
		end
	end
	local function var162_upvr(arg1_17) -- Line 390
		--[[ Upvalues[8]:
			[1]: FFlagReduceTopBarInsetsWhileHidden_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FFlagChromeEnabledRequireGamepadConnectorFix_upvr (copied, readonly)
			[4]: Enabled_upvr (copied, readonly)
			[5]: var55_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: FFlagAddUILessMode_upvr (copied, readonly)
			[8]: FIntAddUILessModeVariant_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 12. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 12. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 15. Error Block 15 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 15. Error Block 15 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 40. Error Block 11 start (CF ANALYSIS FAILED)
		arg1.priorAbsolutePosition = arg1_17.AbsolutePosition
		arg1.priorAbsoluteSize = arg1_17.AbsoluteSize
		-- KONSTANTERROR: [53] 40. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [85] 61. Error Block 13 start (CF ANALYSIS FAILED)
		arg1.props.onAreaChanged(Constants_upvr.MenuIconKeepOutAreaId, arg1_17.AbsolutePosition, arg1_17.AbsoluteSize)
		-- KONSTANTERROR: [85] 61. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [98] 69. Error Block 14 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [98] 69. Error Block 14 end (CF ANALYSIS FAILED)
	end
	local tbl_11 = {}
	if isNewTiltIconEnabled_upvr() then
		var159 = Images_upvr["icons/logo/block"]
	else
		var159 = "rbxasset://textures/ui/TopBar/coloredlogo.png"
	end
	tbl_11.icon = var159
	var159 = Constants_upvr.MENU_ICON_SIZE * (arg1.props.iconScale or 1)
	tbl_11.iconSize = var159
	var159 = isNewTiltIconEnabled_upvr()
	tbl_11.useIconScaleAnimation = var159
	var159 = arg1.menuIconActivated
	tbl_11.onActivated = var159
	var159 = arg1.menuIconOnHover
	tbl_11.onHover = var159
	if var19_result1_upvr then
		var159 = arg1.menuIconOnHoverEnd
		-- KONSTANTWARNING: GOTO [68] #53
	end
	-- KONSTANTERROR: [0] 1. Error Block 96 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [67] 52. Error Block 107 start (CF ANALYSIS FAILED)
	var159 = nil
	tbl_11.onHoverEnd = var159
	var159 = arg1.state.enableFlashingDot
	tbl_11.enableFlashingDot = var159
	if FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr == 2 and arg1.uiLessStore.getUILessModeEnabled(false) then
		var159 = true
	else
		var159 = nil
	end
	tbl_11.modal = var159
	if GamepadService_upvr then
		local Event_2 = VRHub_upvr.ShowTopBarChanged.Event
		if not Event_2 then
			Event_2 = GamepadService_upvr:GetPropertyChangedSignal("GamepadCursorEnabled")
		end
		;({}).event = Event_2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).callback = arg1.showTopBarCallback
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local var167
	if arg1.props.showBadgeOver12 then
		if Enabled_upvr() then
			var167 = UDim2.new(0, 1, 1, -(Constants_upvr.TopBarButtonPadding + 1))
		else
			var167 = UDim2.new(0, -4, 1, 4)
		end
		;({}).position = var167
	else
	end
	if var19_result1_upvr then
		local var168_upvw = "Roblox Menu"
		function var167() -- Line 440
			--[[ Upvalues[2]:
				[1]: var168_upvw (read and write)
				[2]: RobloxTranslator_upvr (copied, readonly)
			]]
			var168_upvw = RobloxTranslator_upvr:FormatByKey("CoreScripts.TopBar.RobloxMenu")
		end
		pcall(var167)
		local module_2 = {}
		var167 = Enum.TextXAlignment.Center
		module_2.textAlignment = var167
		module_2.headerText = var168_upvw
		var167 = tbl_16_upvr
		module_2.hotkeyCodes = var167
		var167 = game_DefineFastFlag_result1_upvr
		if var167 then
			var167 = arg1.props.referralRewardTooltipText
			if var167 then
				var167 = arg1.props.referralRewardTooltipText
				if var167 ~= "" then
					var167 = arg1.props.referralRewardTooltipText
					module_2.headerText = var167
					var167 = {}
					module_2.hotkeyCodes = var167
				end
			end
		end
		var167 = {}
		var167.active = arg1.state.showTooltip
		var167.guiTarget = CoreGui_upvr
		var167.preferredOrientation = TooltipOrientation_upvr.Bottom
		var167.DisplayOrder = 10
		if game_DefineFastFlag_result1_upvr and arg1.props.referralRewardTooltipText and arg1.props.referralRewardTooltipText ~= "" then
			var167.active = true
		end
		local var171_upvr
		local any_createElement_result1_upvr = Roact_upvr.createElement(IconButton_upvr, tbl_11)
		local any_createElement_result1_upvr_3 = Roact_upvr.createElement(ExternalEventConnection_upvr, {})
		return arg1:renderWithTooltipCompat(module_2, var167, function(arg1_18) -- Line 465
			--[[ Upvalues[21]:
				[1]: var162_upvr (readonly)
				[2]: Enabled_upvr (copied, readonly)
				[3]: FFlagTiltIconUnibarFocusNav_upvr (copied, readonly)
				[4]: SharedExperimentDefinition_upvr (copied, readonly)
				[5]: var50_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: Roact_upvr (copied, readonly)
				[8]: IconButton_upvr (copied, readonly)
				[9]: isNewTiltIconEnabled_upvr (copied, readonly)
				[10]: Images_upvr (copied, readonly)
				[11]: Constants_upvr (copied, readonly)
				[12]: var19_result1_upvr (copied, readonly)
				[13]: FFlagHideTopBarConsole_upvr (copied, readonly)
				[14]: FFlagAddUILessMode_upvr (copied, readonly)
				[15]: FIntAddUILessModeVariant_upvr (copied, readonly)
				[16]: var161_upvw (read and write)
				[17]: TopBarButtonHeight_upvw (copied, read and write)
				[18]: var171_upvr (readonly)
				[19]: any_createElement_result1_upvr (readonly)
				[20]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
				[21]: any_createElement_result1_upvr_3 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local function _(arg1_19) -- Line 466
				--[[ Upvalues[2]:
					[1]: var162_upvr (copied, readonly)
					[2]: arg1_18 (readonly)
				]]
				var162_upvr(arg1_19)
				arg1_18(arg1_19)
			end
			local var175
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [7] 8. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [7] 8. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [61] 49. Error Block 98 start (CF ANALYSIS FAILED)
			var175 = "rbxasset://textures/ui/TopBar/coloredlogo.png"
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.8]
			nil.icon = var175
			var175 = Constants_upvr.MENU_ICON_SIZE * (arg1.props.iconScale or 1)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.iconSize = var175
			var175 = isNewTiltIconEnabled_upvr()
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.useIconScaleAnimation = var175
			var175 = arg1.menuIconActivated
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.onActivated = var175
			var175 = arg1.menuIconOnHover
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.onHover = var175
			if var19_result1_upvr then
				var175 = arg1.menuIconOnHoverEnd
			else
				var175 = nil
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.onHoverEnd = var175
			var175 = arg1.state.enableFlashingDot
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.enableFlashingDot = var175
			var175 = arg1.onMenuIconSelectionChanged
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.onSelectionChanged = var175
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.5]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.nextSelectionRightRef = nil
			var175 = arg1.props.menuIconRef
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.forwardRef = var175
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [120.6]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [120.7]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTERROR: [61] 49. Error Block 98 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [122] 89. Error Block 92 start (CF ANALYSIS FAILED)
			local tbl_10 = {}
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var175 = arg1
				return var175.uiLessStore.getUILessModeEnabled(false)
			end
			if Enabled_upvr() and FFlagHideTopBarConsole_upvr or FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr ~= 0 and INLINED_2() then
				local function _(arg1_20) -- Line 495
					--[[ Upvalues[1]:
						[1]: var161_upvw (copied, read and write)
					]]
					return var161_upvw and arg1_20
				end
			else
			end
			tbl_10.Visible = var161_upvw
			tbl_10.BackgroundTransparency = 1
			var175 = 1
			tbl_10.Size = UDim2.new(0, TopBarButtonHeight_upvw, var175, 0)
			tbl_10.LayoutOrder = arg1.props.layoutOrder
			-- KONSTANTERROR: [122] 89. Error Block 92 end (CF ANALYSIS FAILED)
		end)
	end
	var167 = {}
	if Enabled_upvr() and FFlagHideTopBarConsole_upvr or FFlagAddUILessMode_upvr and FIntAddUILessModeVariant_upvr ~= 0 and arg1.uiLessStore.getUILessModeEnabled(false) then
		local function _(arg1_21) -- Line 517
			--[[ Upvalues[1]:
				[1]: var161_upvw (read and write)
			]]
			return var161_upvw and arg1_21
		end
	else
	end
	var167.Visible = var161_upvw
	var167.BackgroundTransparency = 1
	var167.Size = UDim2.new(0, TopBarButtonHeight_upvw, 1, 0)
	var167.LayoutOrder = arg1.props.layoutOrder
	if var137_upvr or Enabled_upvr() then
	else
	end
	var167[Roact_upvr.Change.AbsoluteSize] = nil
	if var137_upvr or Enabled_upvr() then
	else
	end
	var167[Roact_upvr.Change.AbsolutePosition] = nil
	do
		return Roact_upvr.createElement("Frame", var167, {
			BadgeOver12 = var171_upvr;
			Background = any_createElement_result1_upvr;
			ShowTopBarListener = any_createElement_result1_upvr_3;
		})
	end
	-- KONSTANTERROR: [67] 52. Error Block 107 end (CF ANALYSIS FAILED)
end
local SetGamepadMenuOpen_upvr = require(Actions.SetGamepadMenuOpen)
local SetKeepOutArea_upvr = require(Actions.SetKeepOutArea)
var40 = nil
var40 = any_extend_result1
local var183 = require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(var40, function(arg1) -- Line 537, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SetGamepadMenuOpen_upvr (readonly)
		[2]: SetKeepOutArea_upvr (readonly)
	]]
	return {
		setGamepadMenuOpen = function(arg1_22) -- Line 539, Named "setGamepadMenuOpen"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetGamepadMenuOpen_upvr (copied, readonly)
			]]
			return arg1(SetGamepadMenuOpen_upvr(arg1_22))
		end;
		onAreaChanged = function(arg1_23, arg2, arg3) -- Line 542, Named "onAreaChanged"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetKeepOutArea_upvr (copied, readonly)
			]]
			return arg1(SetKeepOutArea_upvr(arg1_23, arg2, arg3))
		end;
	}
end)(var40)
if game_DefineFastFlag_result1_upvr then
	var40 = require(script.Parent.withReferralRewardTooltipInfo)(var183)
	return var40
end
return var183