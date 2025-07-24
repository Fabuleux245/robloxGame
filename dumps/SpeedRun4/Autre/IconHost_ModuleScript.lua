-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:03
-- Luau version 6, Types version 3
-- Time taken: 0.046832 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
local ChromeShared_2 = script:FindFirstAncestor("ChromeShared")
local CorePackages_2 = game:GetService("CorePackages")
local React_upvr_2 = require(CorePackages_2.Packages.React)
local SharedFlags = require(CorePackages_2.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav_upvr = SharedFlags.FFlagTiltIconUnibarFocusNav
local any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()
local Flags = script.Parent.Parent.Parent.Parent.Flags
local UIBlox_2 = require(CorePackages_2.Packages.UIBlox)
local Foundation_upvr = CorePackages_2.Packages.Foundation
local Foundation_upvr_2_upvr = require(Foundation_upvr)
local var193_upvr
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
	Foundation_upvr = Foundation_upvr_2_upvr.Hooks.useCursor
else
	Foundation_upvr = nil
end
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
	-- KONSTANTWARNING: GOTO [142] #83
end
-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [136] 80. Error Block 24 start (CF ANALYSIS FAILED)
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
else
end
local Constants_upvr_2 = require(ChromeShared_2.Unibar.Constants)
local Service_upvr = require(ChromeShared_2.Service)
local useObservableValue_upvr_2 = require(ChromeShared_2.Hooks.useObservableValue)
local isInExperienceUIVREnabled_upvr = require(CorePackages_2.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local var198_upvw
local var199_upvw
local var200_upvw
local var201_upvw
local var202_upvw
local var203_upvw
local var204_upvw
if isInExperienceUIVREnabled_upvr then
	var193_upvr = require(CorePackages_2.Workspace.Packages.AppCommonLib)
	var198_upvw = var193_upvr.isSpatial
	var193_upvr = require(CorePackages_2.Workspace.Packages.VrSpatialUi)
	var199_upvw = var193_upvr.Panel3DInSpatialUI
	var200_upvw = var193_upvr.Constants.PanelType
	var201_upvw = UIBlox_2.App.Dialog.Enum.TooltipOrientation
	var202_upvw = UIBlox_2.App.Dialog.TooltipCallout
	var203_upvw = var193_upvr.Constants.SPATIAL_TOOLTIP_SPACING
	local any_getBottomBarVisibility_result1_upvr_2 = var193_upvr.UIManager.getInstance():getBottomBarVisibility()
	if any_getBottomBarVisibility_result1_upvr_2 and var198_upvw() then
		var204_upvw = require(ChromeShared_2.Service.ChromeUtils).MappedSignal.new(any_getBottomBarVisibility_result1_upvr_2, function() -- Line 75
			--[[ Upvalues[1]:
				[1]: any_getBottomBarVisibility_result1_upvr_2 (readonly)
			]]
			return any_getBottomBarVisibility_result1_upvr_2:get()
		end)
	end
end
if FFlagTiltIconUnibarFocusNav_upvr then
	var193_upvr = require
	any_getBottomBarVisibility_result1_upvr_2 = ChromeShared_2.Parent.Parent.TopBar.Components.MenuIconContext
	var193_upvr = var193_upvr(any_getBottomBarVisibility_result1_upvr_2)
else
	var193_upvr = nil
end
any_getBottomBarVisibility_result1_upvr_2 = SharedFlags.FFlagEnableUnibarFtuxTooltips
local tbl_27_upvr = {}
function areTooltipsDisplaying() -- Line 97
	--[[ Upvalues[1]:
		[1]: tbl_27_upvr (readonly)
	]]
	for _, v in tbl_27_upvr do
		if v.displaying or tick() - v.time < 0.15 then
			return true
		end
	end
	return false
end
function logTooltipState(arg1, arg2) -- Line 109
	--[[ Upvalues[1]:
		[1]: tbl_27_upvr (readonly)
	]]
	if not tbl_27_upvr[arg1] or tbl_27_upvr[arg1].displaying ~= arg2 then
		local tbl_30 = {}
		tbl_30.displaying = arg2
		tbl_30.time = tick()
		tbl_27_upvr[arg1] = tbl_30
	end
end
local useNotificationCount_upvr_2 = require(ChromeShared_2.Hooks.useNotificationCount)
local useMappedObservableValue_upvr_2 = require(ChromeShared_2.Hooks.useMappedObservableValue)
local FFlagReplaceChromeNotificationBadge_upvr_2 = SharedFlags.FFlagReplaceChromeNotificationBadge
local GetFFlagSimpleChatUnreadMessageCount_upvr = SharedFlags.GetFFlagSimpleChatUnreadMessageCount
local useTokens_upvr = Foundation_upvr_2_upvr.Hooks.useTokens
local Badge_upvr_2 = UIBlox_2.App.Indicator.Badge
local Badge_upvr = Foundation_upvr_2_upvr.Badge
local BadgeVariant_upvr = Foundation_upvr_2_upvr.Enums.BadgeVariant
local BadgeSize_upvr_2 = Foundation_upvr_2_upvr.Enums.BadgeSize
function NotificationBadge(arg1) -- Line 128
	--[[ Upvalues[13]:
		[1]: useNotificationCount_upvr_2 (readonly)
		[2]: useMappedObservableValue_upvr_2 (readonly)
		[3]: Service_upvr (readonly)
		[4]: FFlagReplaceChromeNotificationBadge_upvr_2 (readonly)
		[5]: GetFFlagSimpleChatUnreadMessageCount_upvr (readonly)
		[6]: useTokens_upvr (readonly)
		[7]: React_upvr_2 (readonly)
		[8]: Constants_upvr_2 (readonly)
		[9]: Badge_upvr_2 (readonly)
		[10]: Foundation_upvr_2_upvr (readonly)
		[11]: Badge_upvr (readonly)
		[12]: BadgeVariant_upvr (readonly)
		[13]: BadgeSize_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var220
	if not var220 then
		var220 = nil
		return var220
	end
	var220 = useNotificationCount_upvr_2(arg1.integration.integration)
	if useMappedObservableValue_upvr_2(Service_upvr:currentSubMenu(), function(arg1_18) -- Line 135
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var222
		if arg1_18 ~= arg1.integration.id then
			var222 = false
		else
			var222 = true
		end
		return var222
	end) then
		var220 = 0
	end
	local var223_upvw
	if arg1.integration and arg1.integration.integration then
		var223_upvw = arg1.integration.integration.hideNotificationCountWhileOpen or false
	end
	local var224
	if FFlagReplaceChromeNotificationBadge_upvr_2 and 0 < var220 then
		if 99 < var220 then
			var224 = "99"
		else
			var224 = tostring(var220)
		end
	end
	local var225
	if GetFFlagSimpleChatUnreadMessageCount_upvr() and arg1.disableBadgeNumber then
		local useTokens_upvr_result1 = useTokens_upvr()
	end
	local module_17 = {}
	var225 = 1
	module_17.BackgroundTransparency = var225
	if GetFFlagSimpleChatUnreadMessageCount_upvr() then
		if arg1.disableBadgeNumber then
			var225 = UDim2.new(0, Constants_upvr_2.ICON_SIZE, 0, Constants_upvr_2.ICON_SIZE)
			-- KONSTANTWARNING: GOTO [95] #75
		end
	end
	var225 = UDim2.fromScale(1, 1)
	module_17.Size = var225
	local function INLINED_10() -- Internal function, doesn't exist in bytecode
		var225 = var225:map(function(arg1_19) -- Line 169
			--[[ Upvalues[1]:
				[1]: var223_upvw (read and write)
			]]
			local var229 = var223_upvw
			if var229 then
				if arg1_19 >= 0.5 then
					var229 = false
				else
					var229 = true
				end
				return var229
			end
			return true
		end)
		var225 = arg1.toggleTransition
		return var225
	end
	if not arg1.toggleTransition or not INLINED_10() then
		var225 = true
	end
	module_17.Visible = var225
	var225 = 2
	module_17.ZIndex = var225
	var225 = {}
	if 0 < var220 then
		if not FFlagReplaceChromeNotificationBadge_upvr_2 then
			local _ = {
				position = UDim2.fromOffset(Constants_upvr_2.ICON_BADGE_OFFSET_X, Constants_upvr_2.ICON_BADGE_OFFSET_Y);
				anchorPoint = Vector2.new(0, 0);
				hasShadow = false;
				value = var220;
			}
		elseif GetFFlagSimpleChatUnreadMessageCount_upvr() and arg1.disableBadgeNumber then
			local tbl_8 = {
				Position = UDim2.new(1, 0, 0.2, 0);
				backgroundStyle = {
					Color3 = useTokens_upvr_result1.Color.System.Contrast.Color3;
					Transparency = 0;
				};
				stroke = {
					Color = useTokens_upvr_result1.Color.Surface.Surface_0.Color3;
					Transparency = 0;
					Thickness = useTokens_upvr_result1.Stroke.Thicker;
				};
				tag = "anchor-top-right radius-circle size-200 stroke-thicker";
				ZIndex = 2;
			}
		elseif var224 then
			local _ = {
				AnchorPoint = Vector2.new(0, 0);
				Position = UDim2.new(0, Constants_upvr_2.ICON_BADGE_OFFSET_X, 0, Constants_upvr_2.ICON_BADGE_OFFSET_Y);
				variant = BadgeVariant_upvr.Primary;
				size = BadgeSize_upvr_2.Small;
				text = var224;
			}
		else
		end
	else
	end
	var225.Badge = nil
	return React_upvr_2.createElement("Frame", module_17, var225)
end
function NotificationIndicator(arg1) -- Line 217
	--[[ Upvalues[3]:
		[1]: useObservableValue_upvr_2 (readonly)
		[2]: Service_upvr (readonly)
		[3]: React_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var196_result1 = useObservableValue_upvr_2(Service_upvr:notificationIndicator())
	local var236
	if var196_result1 then
		var236 = false
	else
		var236 = true
	end
	arg1.setIconVisible(var236)
	var236 = React_upvr_2
	var236 = "Frame"
	local module_14 = {}
	if not var196_result1 or not var196_result1.component(arg1) then
	end
	module_14.IntegrationIcon = nil
	module_14.UIListLayout = React_upvr_2.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	})
	return var236.createElement(var236, {
		Name = "NotificationIndicatorFrame";
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, module_14)
end
function HighlightCircle(arg1) -- Line 236
	--[[ Upvalues[2]:
		[1]: React_upvr_2 (readonly)
		[2]: Constants_upvr_2 (readonly)
	]]
	return React_upvr_2.createElement("Frame", {
		Name = arg1.name or "Highlighter";
		Size = Constants_upvr_2.ICON_HIGHLIGHT_SIZE;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		BackgroundColor3 = arg1.color.Color;
		BackgroundTransparency = arg1.color.Transparency;
		BorderSizePixel = 0;
		Visible = arg1.visible;
	}, {
		corner = React_upvr_2.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
	})
end
local useTimeHysteresis_upvr_2 = require(ChromeShared_2.Hooks.useTimeHysteresis)
local ControlState_upvr_2 = UIBlox_2.Core.Control.Enum.ControlState
local any_GetFFlagEnableChromeAnalytics_result1_upvr_2 = SharedFlags.GetFFlagEnableChromeAnalytics()
local ChromeAnalytics_upvr_2 = require(ChromeShared_2.Analytics.ChromeAnalytics)
local UserInputService_upvr = game:GetService("UserInputService")
local shouldRejectMultiTouch_upvr_2 = require(ChromeShared_2.Utility.shouldRejectMultiTouch)
local any_GetFFlagWindowFixes_result1_upvr_2 = SharedFlags.GetFFlagWindowFixes()
local Interactable_upvr = UIBlox_2.Core.Control.Interactable
local FFlagUnibarMenuOpenHamburger_upvr = require(Flags.FFlagUnibarMenuOpenHamburger)
local FFlagUnibarMenuOpenSubmenu_upvr = require(Flags.FFlagUnibarMenuOpenSubmenu)
local FFlagHamburgerCursorFix_upvr = SharedFlags.FFlagHamburgerCursorFix
local useSelectionCursor_upvr = UIBlox_2.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox_2.App.SelectionImage.CursorKind
local withTooltip_upvr = UIBlox_2.App.Dialog.TooltipV2.withTooltip
local CoreGui_upvr = game:GetService("CoreGui")
function TooltipButton(arg1) -- Line 258
	--[[ Upvalues[33]:
		[1]: React_upvr_2 (readonly)
		[2]: useTimeHysteresis_upvr_2 (readonly)
		[3]: isInExperienceUIVREnabled_upvr (readonly)
		[4]: var198_upvw (read and write)
		[5]: useObservableValue_upvr_2 (readonly)
		[6]: Service_upvr (readonly)
		[7]: var204_upvw (read and write)
		[8]: ControlState_upvr_2 (readonly)
		[9]: any_getBottomBarVisibility_result1_upvr_2 (readonly)
		[10]: any_GetFFlagEnableChromeAnalytics_result1_upvr_2 (readonly)
		[11]: ChromeAnalytics_upvr_2 (readonly)
		[12]: UserInputService_upvr (readonly)
		[13]: shouldRejectMultiTouch_upvr_2 (readonly)
		[14]: any_GetFFlagWindowFixes_result1_upvr_2 (readonly)
		[15]: Constants_upvr_2 (readonly)
		[16]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[17]: var193_upvr (readonly)
		[18]: Interactable_upvr (readonly)
		[19]: any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr (readonly)
		[20]: FFlagUnibarMenuOpenHamburger_upvr (readonly)
		[21]: FFlagUnibarMenuOpenSubmenu_upvr (readonly)
		[22]: FFlagHamburgerCursorFix_upvr (readonly)
		[23]: Foundation_upvr (readonly)
		[24]: Foundation_upvr_2_upvr (readonly)
		[25]: useSelectionCursor_upvr (readonly)
		[26]: CursorKind_upvr (readonly)
		[27]: var199_upvw (read and write)
		[28]: var200_upvw (read and write)
		[29]: var203_upvw (read and write)
		[30]: var202_upvw (read and write)
		[31]: var201_upvw (read and write)
		[32]: withTooltip_upvr (readonly)
		[33]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 95 start (CF ANALYSIS FAILED)
	local any_useRef_result1_upvr_4 = React_upvr_2.useRef(nil)
	local secondaryAction_upvr_2 = arg1.integration.integration.secondaryAction
	local any_useRef_result1_upvr_3 = React_upvr_2.useRef(nil)
	React_upvr_2.useEffect(function() -- Line 266
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr_3 (readonly)
		]]
		return function() -- Line 267
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr_3 (copied, readonly)
			]]
			if any_useRef_result1_upvr_3.current then
				any_useRef_result1_upvr_3.current:Disconnect()
				any_useRef_result1_upvr_3.current = nil
			end
		end
	end, {})
	local var263_upvr
	if secondaryAction_upvr_2 then
		local _, var243_result2 = useTimeHysteresis_upvr_2(0.05, 0.15, 0.35)
		local _ = var243_result2
	else
		local var243_result1, var243_result2_upvw = useTimeHysteresis_upvr_2(0.6, 0.65, 0.7)
	end
	local var243_result1_upvr, var243_result2_3_upvr = useTimeHysteresis_upvr_2(0, 0, 0.65)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr_2.useState(false)
	var263_upvr = 1
	local var243_result1_2, var243_result2_2_upvr = useTimeHysteresis_upvr_2(0, var263_upvr)
	if isInExperienceUIVREnabled_upvr then
		var263_upvr = var198_upvw()
	else
		var263_upvr = nil
	end
	if isInExperienceUIVREnabled_upvr then
		-- KONSTANTWARNING: GOTO [79] #68
	end
	-- KONSTANTERROR: [0] 1. Error Block 95 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 67. Error Block 106 start (CF ANALYSIS FAILED)
	local var275
	if isInExperienceUIVREnabled_upvr and var204_upvw then
		var275 = useObservableValue_upvr_2(var204_upvw)
	else
		var275 = nil
	end
	local var276_upvw
	if isInExperienceUIVREnabled_upvr and var263_upvr and not nil and not var275 then
		var276_upvw = true
		local var277 = arg1.integration.integration.draggable or false
		if var277 then
			var277 = not var276_upvw
		end
		local var278_upvw = var277
	end
	if isInExperienceUIVREnabled_upvr then
		local _ = {arg1.setHovered, var243_result2_upvw, var243_result2_2_upvr, var243_result1_upvr, var263_upvr, var276_upvw}
	else
		local tbl_7 = {arg1.setHovered}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_7[2] = var243_result2_upvw
		tbl_7[3] = var243_result2_2_upvr
		tbl_7[4] = var243_result1_upvr
	end
	local any_useCallback_result1_upvr_8 = React_upvr_2.useCallback(function(arg1_20, arg2) -- Line 305
		--[[ Upvalues[9]:
			[1]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[2]: var276_upvw (read and write)
			[3]: ControlState_upvr_2 (copied, readonly)
			[4]: Service_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: var243_result2_upvw (read and write)
			[7]: var243_result1_upvr (readonly)
			[8]: any_getBottomBarVisibility_result1_upvr_2 (copied, readonly)
			[9]: var243_result2_2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if isInExperienceUIVREnabled_upvr and var276_upvw then
		else
			local var280
			local function INLINED_11() -- Internal function, doesn't exist in bytecode
				var280 = ControlState_upvr_2.Default
				return arg1_20 == var280
			end
			local function INLINED_12() -- Internal function, doesn't exist in bytecode
				var280 = ControlState_upvr_2.Hover
				return arg1_20 == var280
			end
			if arg2 == var280 and (INLINED_11() or INLINED_12()) then
				var280 = Service_upvr:setSelected
				var280(arg1.integration.id)
			else
				var280 = ControlState_upvr_2.Selected
				if arg2 == var280 then
					var280 = ControlState_upvr_2.Default
					if arg1_20 == var280 then
						var280 = Service_upvr:setSelected
						var280(arg1.integration.id)
					end
				end
			end
			if arg2 == ControlState_upvr_2.Default then
				var280 = false
			else
				var280 = true
			end
			arg1.setHovered(var280)
			if arg2 ~= ControlState_upvr_2.Hover then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
			if not true or not var243_result1_upvr then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var243_result2_upvw(true, areTooltipsDisplaying())
			if any_getBottomBarVisibility_result1_upvr_2 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if true then
					Service_upvr:onIntegrationHovered():fire(arg1.integration.id)
				end
			end
			if not var280 then
				var243_result2_2_upvr(false)
			end
		end
	end, tbl_7)
	local any_useCallback_result1_upvr_3 = React_upvr_2.useCallback(function(arg1_21, arg2) -- Line 341
		--[[ Upvalues[11]:
			[1]: var278_upvw (read and write)
			[2]: var243_result2_2_upvr (readonly)
			[3]: any_GetFFlagEnableChromeAnalytics_result1_upvr_2 (copied, readonly)
			[4]: ChromeAnalytics_upvr_2 (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_useRef_result1_upvr_3 (readonly)
			[7]: UserInputService_upvr (copied, readonly)
			[8]: shouldRejectMultiTouch_upvr_2 (copied, readonly)
			[9]: any_GetFFlagWindowFixes_result1_upvr_2 (copied, readonly)
			[10]: Service_upvr (copied, readonly)
			[11]: Constants_upvr_2 (copied, readonly)
		]]
		if not var278_upvw then
		elseif arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch then
			var243_result2_2_upvr(true, true)
			if any_GetFFlagEnableChromeAnalytics_result1_upvr_2 then
				ChromeAnalytics_upvr_2.default:onIconTouchBegan(arg1.integration.id)
			end
			if not any_useRef_result1_upvr_3.current then
				local Position_upvr = arg2.Position
				any_useRef_result1_upvr_3.current = UserInputService_upvr.InputChanged:Connect(function(arg1_22, arg2_3) -- Line 356
					--[[ Upvalues[10]:
						[1]: shouldRejectMultiTouch_upvr_2 (copied, readonly)
						[2]: arg2 (readonly)
						[3]: any_GetFFlagWindowFixes_result1_upvr_2 (copied, readonly)
						[4]: Service_upvr (copied, readonly)
						[5]: arg1 (copied, readonly)
						[6]: any_useRef_result1_upvr_3 (copied, readonly)
						[7]: Position_upvr (readonly)
						[8]: Constants_upvr_2 (copied, readonly)
						[9]: any_GetFFlagEnableChromeAnalytics_result1_upvr_2 (copied, readonly)
						[10]: ChromeAnalytics_upvr_2 (copied, readonly)
					]]
					if shouldRejectMultiTouch_upvr_2(arg2, arg1_22) then
					else
						if any_GetFFlagWindowFixes_result1_upvr_2 and (Service_upvr:isWindowOpen(arg1.integration.id) or not any_useRef_result1_upvr_3.current) then return end
						if Constants_upvr_2.DRAG_MAGNITUDE_THRESHOLD < math.abs((Position_upvr - arg1_22.Position).Magnitude) then
							if any_GetFFlagEnableChromeAnalytics_result1_upvr_2 then
								ChromeAnalytics_upvr_2.default:onIconDrag(arg1.integration.id)
							end
							Service_upvr:storeChromeInteracted()
							Service_upvr:toggleWindow(arg1.integration.id)
							Service_upvr:gesture(arg1.integration.id, any_useRef_result1_upvr_3, arg2)
						end
					end
				end)
			end
		end
	end, {var278_upvw})
	local any_useCallback_result1_upvr_6 = React_upvr_2.useCallback(function(arg1_23, arg2) -- Line 387
		--[[ Upvalues[5]:
			[1]: var278_upvw (read and write)
			[2]: var243_result2_2_upvr (readonly)
			[3]: any_useRef_result1_upvr_3 (readonly)
			[4]: Service_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		if not var278_upvw then
		elseif arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch then
			var243_result2_2_upvr(false)
			if any_useRef_result1_upvr_3.current then
				any_useRef_result1_upvr_3.current:Disconnect()
				any_useRef_result1_upvr_3.current = nil
				Service_upvr:gesture(arg1.integration.id, nil)
			end
		end
	end, {var278_upvw})
	local var293_upvw
	local function INLINED_13() -- Internal function, doesn't exist in bytecode
		var293_upvw = any_useState_result1
		return var293_upvw
	end
	if var243_result1 or var243_result1_upvr or INLINED_13() then
		var293_upvw = not var243_result1_2
	end
	if isInExperienceUIVREnabled_upvr and var293_upvw and var276_upvw then
		var293_upvw = false
	end
	local logTooltipState_5_upvr = logTooltipState
	logTooltipState_5_upvr(arg1.integration.id, var293_upvw)
	if FFlagTiltIconUnibarFocusNav_upvr then
		logTooltipState_5_upvr = React_upvr_2.useContext(var193_upvr)
	else
		logTooltipState_5_upvr = nil
	end
	local function var295(arg1_24) -- Line 415
		--[[ Upvalues[26]:
			[1]: FFlagTiltIconUnibarFocusNav_upvr (copied, readonly)
			[2]: Service_upvr (copied, readonly)
			[3]: React_upvr_2 (copied, readonly)
			[4]: Interactable_upvr (copied, readonly)
			[5]: Constants_upvr_2 (copied, readonly)
			[6]: arg1 (readonly)
			[7]: any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr (copied, readonly)
			[8]: any_useCallback_result1_upvr_8 (readonly)
			[9]: any_useRef_result1_upvr_4 (readonly)
			[10]: FFlagUnibarMenuOpenHamburger_upvr (copied, readonly)
			[11]: FFlagUnibarMenuOpenSubmenu_upvr (copied, readonly)
			[12]: FFlagHamburgerCursorFix_upvr (copied, readonly)
			[13]: Foundation_upvr (copied, readonly)
			[14]: Foundation_upvr_2_upvr (copied, readonly)
			[15]: useSelectionCursor_upvr (copied, readonly)
			[16]: CursorKind_upvr (copied, readonly)
			[17]: var293_upvw (read and write)
			[18]: secondaryAction_upvr_2 (readonly)
			[19]: logTooltipState_5_upvr (readonly)
			[20]: any_useCallback_result1_upvr_3 (readonly)
			[21]: any_useCallback_result1_upvr_6 (readonly)
			[22]: isInExperienceUIVREnabled_upvr (copied, readonly)
			[23]: var263_upvr (readonly)
			[24]: var276_upvw (read and write)
			[25]: var243_result2_2_upvr (readonly)
			[26]: any_useRef_result1_upvr_3 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
		local var302
		if FFlagTiltIconUnibarFocusNav_upvr then
		end
		local module_3 = {}
		if FFlagTiltIconUnibarFocusNav_upvr then
			var302 = Constants_upvr_2.ICON_NAME_PREFIX
		else
			var302 = "IconHitArea_"
		end
		module_3.Name = var302..arg1.integration.id
		var302 = any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr
		if var302 then
			var302 = Constants_upvr_2
			-- KONSTANTWARNING: GOTO [47] #37
		end
		-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 31. Error Block 41 start (CF ANALYSIS FAILED)
		var302 = 1
		module_3.Size = UDim2.new(var302, 0, 1, 0)
		var302 = any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr
		if var302 then
			var302 = 0.5
		else
		end
		module_3.AnchorPoint = nil
		module_3.BackgroundTransparency = 1
		module_3.BorderSizePixel = 0
		module_3.onStateChanged = any_useCallback_result1_upvr_8
		module_3.ref = any_useRef_result1_upvr_4
		var302 = FFlagUnibarMenuOpenHamburger_upvr
		local function INLINED_14() -- Internal function, doesn't exist in bytecode
			var302 = FFlagUnibarMenuOpenSubmenu_upvr
			return var302
		end
		if var302 or INLINED_14() then
			var302 = arg1.integration
		else
			var302 = arg1.integration.order
		end
		module_3.SelectionOrder = 100 - var302
		var302 = arg1
		module_3.Position = var302.isCurrentlyOpenSubMenu:map(function(arg1_25) -- Line 435
			--[[ Upvalues[2]:
				[1]: any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr (copied, readonly)
				[2]: FFlagHamburgerCursorFix_upvr (copied, readonly)
			]]
			if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
				local var299
				if not FFlagHamburgerCursorFix_upvr and arg1_25 then
					var299 = 1
				else
					var299 = 0
				end
				return UDim2.new(0.5, 0, 0.5, var299)
			end
			if not FFlagHamburgerCursorFix_upvr and arg1_25 then
				var299 = 1
			else
				var299 = 0
			end
			return UDim2.new(0, 0, 0, var299)
		end)
		var302 = any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr
		if var302 then
			var302 = Foundation_upvr_2_upvr.Enums.CursorType.SkinToneCircle
			local _ = Foundation_upvr(var302)
		else
			var302 = CursorKind_upvr.SelectedKnob
		end
		module_3.SelectionImageObject = useSelectionCursor_upvr(var302)
		module_3.SelectionGroup = true
		module_3.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
		var302 = arg1
		module_3.SelectionBehaviorDown = var302.isCurrentlyOpenSubMenu:map(function(arg1_26) -- Line 445
			--[[ Upvalues[2]:
				[1]: var293_upvw (copied, read and write)
				[2]: secondaryAction_upvr_2 (copied, readonly)
			]]
			if var293_upvw and secondaryAction_upvr_2 or arg1_26 then
				return Enum.SelectionBehavior.Escape
			end
			return Enum.SelectionBehavior.Stop
		end)
		var302 = FFlagTiltIconUnibarFocusNav_upvr
		if var302 then
			var302 = arg1.integration.id
			if var302 == Service_upvr:menuList():get()[1].id then
				var302 = logTooltipState_5_upvr
				-- KONSTANTWARNING: GOTO [152] #112
			end
		end
		module_3.NextSelectionLeft = nil
		var302 = React_upvr_2.Change
		module_3[var302.AbsolutePosition] = arg1_24
		var302 = React_upvr_2.Change
		module_3[var302.AbsoluteSize] = arg1_24
		var302 = React_upvr_2.Event
		var302 = any_useCallback_result1_upvr_3
		module_3[var302.InputBegan] = var302
		var302 = React_upvr_2.Event
		var302 = any_useCallback_result1_upvr_6
		module_3[var302.InputEnded] = var302
		var302 = React_upvr_2.Event
		function var302() -- Line 459
			--[[ Upvalues[7]:
				[1]: isInExperienceUIVREnabled_upvr (copied, readonly)
				[2]: var263_upvr (copied, readonly)
				[3]: var276_upvw (copied, read and write)
				[4]: Service_upvr (copied, readonly)
				[5]: var243_result2_2_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
				[7]: any_useRef_result1_upvr_3 (copied, readonly)
			]]
			if isInExperienceUIVREnabled_upvr and var263_upvr then
				if var276_upvw then return end
				Service_upvr:onTriggerVRToggleButton():fire(true)
			end
			var243_result2_2_upvr(true, true)
			arg1.integration.activated()
			if any_useRef_result1_upvr_3.current then
				any_useRef_result1_upvr_3.current:Disconnect()
				any_useRef_result1_upvr_3.current = nil
				Service_upvr:gesture(arg1.integration.id, nil)
			end
		end
		module_3[var302.Activated] = var302
		var302 = any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr
		if var302 then
			var302 = React_upvr_2.createElement
			var302 = var302("UICorner", {
				CornerRadius = UDim.new(1, 0);
			})
			;({}).corner = var302
		else
		end
		do
			return React_upvr_2.createElement(Interactable_upvr, module_3, nil)
		end
		-- KONSTANTERROR: [40] 31. Error Block 41 end (CF ANALYSIS FAILED)
	end
	local module_4 = {}
	if isInExperienceUIVREnabled_upvr then
		-- KONSTANTWARNING: GOTO [245] #214
	end
	if FFlagTiltIconUnibarFocusNav_upvr then
		-- KONSTANTWARNING: GOTO [251] #219
	end
	module_4[1] = any_useCallback_result1_upvr_8
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_4[2] = var243_result2_upvw
	module_4[3] = var243_result2_2_upvr
	module_4[4] = any_useCallback_result1_upvr_3
	module_4[5] = any_useCallback_result1_upvr_6
	module_4[6] = arg1.isCurrentlyOpenSubMenu
	module_4[7] = var293_upvw
	module_4[8] = secondaryAction_upvr_2
	module_4[9] = nil
	module_4[10] = nil
	local any_useRef_result1_upvr_2 = React_upvr_2.useRef(nil)
	if secondaryAction_upvr_2 then
		local _ = {
			text = secondaryAction_upvr_2.label;
			onStateChanged = function(arg1_28, arg2) -- Line 542, Named "onStateChanged"
				--[[ Upvalues[2]:
					[1]: ControlState_upvr_2 (copied, readonly)
					[2]: any_useState_result2_upvr_2 (readonly)
				]]
				if arg2 == ControlState_upvr_2.Selected then
					any_useState_result2_upvr_2(true)
				else
					any_useState_result2_upvr_2(false)
				end
			end;
			onActivated = function() -- Line 549, Named "onActivated"
				--[[ Upvalues[2]:
					[1]: secondaryAction_upvr_2 (readonly)
					[2]: arg1 (readonly)
				]]
				secondaryAction_upvr_2.activated(arg1.integration)
			end;
			NextSelectionUp = any_useRef_result1_upvr_4;
			NextSelectionLeft = any_useRef_result1_upvr_4;
			NextSelectionRight = any_useRef_result1_upvr_4;
			NextSelectionDown = any_useRef_result1_upvr_4;
		}
	else
	end
	if isInExperienceUIVREnabled_upvr and var263_upvr then
		local any_useBinding_result1_6_upvr, any_useBinding_result2_5_upvr = React_upvr_2.useBinding(Vector2.zero)
		local any_useBinding_result1_5_upvr, any_useBinding_result2_2_upvr = React_upvr_2.useBinding(Vector2.zero)
		local module_11 = {}
		local var323
		if var293_upvw and var199_upvw then
			var323 = React_upvr_2.createElement
			local tbl_15 = {
				panelType = var200_upvw.ToolTipsContainer;
			}
			local var325_upvr
			local any_useCallback_result1_upvr_4 = React_upvr_2.useCallback(function(arg1_27) -- Line 500
				--[[ Upvalues[2]:
					[1]: any_useRef_result1_upvr_2 (readonly)
					[2]: var243_result2_3_upvr (readonly)
				]]
				local var308_upvw
				local var309_upvw
				local var310_upvw
				if arg1_27 ~= any_useRef_result1_upvr_2.current then
					pcall(function() -- Line 507
						--[[ Upvalues[3]:
							[1]: var308_upvw (read and write)
							[2]: var309_upvw (read and write)
							[3]: var310_upvw (read and write)
						]]
						if var308_upvw then
							var308_upvw:disconnect()
							var308_upvw = nil
						end
						if var309_upvw then
							var309_upvw:disconnect()
							var309_upvw = nil
						end
						if var310_upvw then
							var310_upvw:disconnect()
							var310_upvw = nil
						end
					end)
					if arg1_27 then
						var308_upvw = arg1_27.MouseEnter:Connect(function() -- Line 525
							--[[ Upvalues[1]:
								[1]: var243_result2_3_upvr (copied, readonly)
							]]
							var243_result2_3_upvr(true, true)
						end)
						var309_upvw = arg1_27.MouseLeave:Connect(function() -- Line 528
							--[[ Upvalues[1]:
								[1]: var243_result2_3_upvr (copied, readonly)
							]]
							var243_result2_3_upvr(false)
						end)
						var310_upvw = arg1_27.Destroying:Connect(function() -- Line 531
							--[[ Upvalues[1]:
								[1]: var243_result2_3_upvr (copied, readonly)
							]]
							var243_result2_3_upvr(false)
						end)
					end
					any_useRef_result1_upvr_2.current = arg1_27
				end
			end, {var243_result2_3_upvr})
			function tbl_15.renderFunction(arg1_30) -- Line 575
				--[[ Upvalues[10]:
					[1]: any_useBinding_result1_6_upvr (readonly)
					[2]: any_useBinding_result1_5_upvr (readonly)
					[3]: var203_upvw (copied, read and write)
					[4]: React_upvr_2 (copied, readonly)
					[5]: var202_upvw (copied, read and write)
					[6]: arg1 (readonly)
					[7]: var201_upvw (copied, read and write)
					[8]: var325_upvr (readonly)
					[9]: secondaryAction_upvr_2 (readonly)
					[10]: any_useCallback_result1_upvr_4 (readonly)
				]]
				local module_18 = {
					textAlignment = Enum.TextXAlignment.Center;
					headerText = arg1.integration.integration.label;
					orientation = var201_upvw.Top;
					distanceOffset = 0;
					triggerPointCenter = Vector2.new(any_useBinding_result1_6_upvr:getValue().X + any_useBinding_result1_5_upvr:getValue().X / 2, arg1_30.Y - var203_upvw);
					contentOffsetVector = Vector2.zero;
					triggerPointRadius = Vector2.zero;
				}
				local var328 = var325_upvr
				module_18.buttonProps = var328
				if secondaryAction_upvr_2 then
					var328 = any_useCallback_result1_upvr_4
				else
					var328 = nil
				end
				module_18.ref = var328
				return React_upvr_2.createElement(var202_upvw, module_18)
			end
			var323 = var323(var199_upvw, tbl_15)
		else
			var323 = nil
		end
		module_11.VRSpatialTooltip = var323
		var323 = React_upvr_2.useCallback(function(arg1_29) -- Line 563
			--[[ Upvalues[2]:
				[1]: any_useBinding_result2_5_upvr (readonly)
				[2]: any_useBinding_result2_2_upvr (readonly)
			]]
			any_useBinding_result2_5_upvr(arg1_29.AbsolutePosition)
			any_useBinding_result2_2_upvr(arg1_29.AbsoluteSize)
		end, {any_useBinding_result2_5_upvr, any_useBinding_result2_2_upvr})
		module_11[1] = React_upvr_2.useCallback(var295, module_4)(var323)
		return React_upvr_2.createElement(React_upvr_2.Fragment, nil, module_11)
	end
	local module_12 = {
		headerText = arg1.integration.integration.label;
		hotkeyCodes = arg1.integration.integration.hotkeyCodes;
	}
	local Left = Enum.TextXAlignment.Left
	module_12.textAlignment = Left
	module_12.buttonProps = var325_upvr
	if secondaryAction_upvr_2 then
		Left = any_useCallback_result1_upvr_4
	else
		Left = nil
	end
	module_12.ref = Left
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return withTooltip_upvr(module_12, {
			active = var293_upvw;
			guiTarget = CoreGui_upvr;
			DisplayOrder = 10;
		}, React_upvr_2.useCallback(var295, module_4))
	end
	-- KONSTANTERROR: [78] 67. Error Block 106 end (CF ANALYSIS FAILED)
end
local useStyle_upvr = UIBlox_2.Core.Style.useStyle
local useMappedObservableValueBinding_upvr = require(ChromeShared_2.Hooks.useMappedObservableValueBinding)
function IconHost(arg1) -- Line 614
	--[[ Upvalues[5]:
		[1]: React_upvr_2 (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useMappedObservableValueBinding_upvr (readonly)
		[4]: Service_upvr (readonly)
		[5]: Constants_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var334
	if not arg1.integration or not arg1.integration.component then
		warn("IconHost has no component to render")
	end
	local any_useBinding_result1_4, any_useBinding_result2_4 = React_upvr_2.useBinding(false)
	local any_useBinding_result1_3, any_useBinding_result2_3 = React_upvr_2.useBinding(true)
	local BackgroundOnHover = useStyle_upvr().Theme.BackgroundOnHover
	local var333_result1 = useMappedObservableValueBinding_upvr(Service_upvr:currentSubMenu(), function(arg1_31) -- Line 628
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var341
		if arg1_31 ~= arg1.integration.id then
			var341 = false
		else
			var341 = true
		end
		return var341
	end)
	local module_9 = {}
	var334 = Constants_upvr_2
	module_9.Size = UDim2.new(0, Constants_upvr_2.ICON_CELL_WIDTH, 0, var334.ICON_CELL_WIDTH)
	module_9.LayoutOrder = arg1.integration.order
	module_9.BorderSizePixel = 0
	module_9.BackgroundTransparency = 1
	module_9.Position = arg1.position
	module_9.Visible = arg1.visible
	module_9.ZIndex = arg1.integration.order
	local module_8 = {}
	local var345 = "Frame"
	local tbl_3 = {
		Name = "IntegrationIconFrame";
	}
	var334 = 1
	tbl_3.Size = UDim2.new(var334, 0, 1, 0)
	tbl_3.BorderSizePixel = 0
	tbl_3.BackgroundTransparency = 1
	tbl_3.Visible = any_useBinding_result1_3
	local tbl_14 = {}
	local function INLINED_15() -- Internal function, doesn't exist in bytecode
		var334 = arg1.integration.component(arg1)
		return var334
	end
	if not arg1.integration or not arg1.integration.component or not INLINED_15() then
		var334 = nil
	end
	tbl_14.IntegrationIcon = var334
	var334 = React_upvr_2.createElement
	var334 = var334("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	})
	tbl_14.UIListLayout = var334
	var334 = arg1.integration
	if var334.integration.flashNotificationSource then
		local tbl_9 = {}
		var334 = arg1.integration
		tbl_9.integration = var334
		tbl_9.setIconVisible = any_useBinding_result2_3
	else
	end
	var334 = {}
	var334.name = "SelectedHighlighter"
	var334.color = BackgroundOnHover
	var334.visible = var333_result1
	var334 = React_upvr_2
	var334 = HighlightCircle
	var334 = React_upvr_2.createElement(NotificationBadge, arg1)
	if arg1.disableButtonBehaviors then
		local _
	else
	end
	module_8[1] = React_upvr_2.createElement(var345, tbl_3, tbl_14)
	module_8[2] = nil
	module_8[3] = React_upvr_2.createElement(HighlightCircle, var334)
	module_8[4] = var334.createElement(var334, {
		name = "Highlighter";
		color = BackgroundOnHover;
		visible = any_useBinding_result1_4;
	})
	module_8[5] = var334
	module_8[6] = React_upvr_2.createElement(TooltipButton, {
		integration = arg1.integration;
		setHovered = any_useBinding_result2_4;
		isCurrentlyOpenSubMenu = var333_result1;
	})
	return React_upvr_2.createElement("Frame", module_9, module_8)
end
do
	return IconHost
end
-- KONSTANTERROR: [136] 80. Error Block 24 end (CF ANALYSIS FAILED)