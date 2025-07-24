-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:05
-- Luau version 6, Types version 3
-- Time taken: 0.023922 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
local ChromeShared = script:FindFirstAncestor("ChromeShared")
local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagEnableChromePinIntegrations_upvr = SharedFlags.GetFFlagEnableChromePinIntegrations
local GetFFlagKeepSubmenuOpenOnPin_upvr = SharedFlags.GetFFlagKeepSubmenuOpenOnPin
local GetFFlagEnableCaptureBadge_upvr = SharedFlags.GetFFlagEnableCaptureBadge
local GetFIntNumTimesNewBadgeIsDisplayed_upvr = SharedFlags.GetFIntNumTimesNewBadgeIsDisplayed
local GetFFlagAnimateSubMenu_upvr = SharedFlags.GetFFlagAnimateSubMenu
local any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()
local FFlagFocusNavOutOfSubmenu_upvr = SharedFlags.FFlagFocusNavOutOfSubmenu
local React_upvr = require(CorePackages.Packages.React)
local UIBlox_upvr = CorePackages.Packages.UIBlox
local var17_2 = require(UIBlox_upvr)
local var19
if FFlagFocusNavOutOfSubmenu_upvr then
	UIBlox_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Utils.GamepadUtils
else
	UIBlox_upvr = nil
end
local LocalStore_upvr = require(ChromeShared.Service.LocalStore)
local useStyle_upvr = var17_2.Core.Style.useStyle
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
	-- KONSTANTWARNING: GOTO [155] #90
end
-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [149] 87. Error Block 60 start (CF ANALYSIS FAILED)
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
else
end
local Images = var17_2.App.ImageSet.Images
var19 = var17_2.App.Container
var19 = CorePackages.Packages.ReactOtter
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
	var19 = require(CorePackages.Packages.Foundation)
else
	var19 = nil
end
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
else
end
local Service_upvr = require(ChromeShared.Service)
local Constants_upvr = require(ChromeShared.Unibar.Constants)
if FFlagFocusNavOutOfSubmenu_upvr then
else
end
local SubMenuContext_upvr = require(ChromeShared.Unibar.SubMenuContext)
local UserInputService_upvr = game:GetService("UserInputService")
local useObservableValue_upvr = require(ChromeShared.Hooks.useObservableValue)
local isSpatial_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
if isInExperienceUIVREnabled_upvr then
	local UIManager_upvw = require(CorePackages.Workspace.Packages.VrSpatialUi).UIManager
end
local Unibar_upvr = ChromeShared.Unibar
local SUB_MENU_ROW_HEIGHT_upvr = Constants_upvr.SUB_MENU_ROW_HEIGHT
if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
	Unibar_upvr = var19.Enums.CursorType.RoundedSlot
else
	Unibar_upvr = nil
end
local var33_upvw
if SharedFlags.GetFFlagUseNewPinIcon() then
	var33_upvw = Images["icons/controls/pinned_small"]
else
	var33_upvw = Images["icons/actions/edit/remove"]
end
local var35_upvw = false
local tbl_2_upvr = {
	Closed = 0;
	Open = 1;
}
for i in string.gmatch(SharedFlags.GetFStringNewFeatureList(), "([^, ]+)") do
	({})[i] = true
	local var40_upvr
end
function ClearBadge(arg1) -- Line 119
	--[[ Upvalues[3]:
		[1]: var40_upvr (readonly)
		[2]: LocalStore_upvr (readonly)
		[3]: GetFIntNumTimesNewBadgeIsDisplayed_upvr (readonly)
	]]
	if var40_upvr[arg1] then
		var40_upvr[arg1] = false
		if LocalStore_upvr.isEnabled() then
			local any_loadForLocalPlayer_result1_2 = LocalStore_upvr.loadForLocalPlayer("TimesSeenNewFeatures")
			if not any_loadForLocalPlayer_result1_2 then
				any_loadForLocalPlayer_result1_2 = {}
			end
			any_loadForLocalPlayer_result1_2[arg1] = GetFIntNumTimesNewBadgeIsDisplayed_upvr()
			LocalStore_upvr.storeForLocalPlayer("TimesSeenNewFeatures", any_loadForLocalPlayer_result1_2)
		end
	end
end
local var43_upvr
local GetFFlagNewSubmenuTouchTargets_upvr = SharedFlags.GetFFlagNewSubmenuTouchTargets
local ControlState_upvr = var17_2.Core.Control.Enum.ControlState
local FFlagChromeFixStopFocusBeforeMenuRowActive_upvr = SharedFlags.FFlagChromeFixStopFocusBeforeMenuRowActive
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagEnableChromeShortcutBar_upvr = SharedFlags.FFlagEnableChromeShortcutBar
local IconHost_upvr = require(Unibar_upvr.ComponentHosts.IconHost)
local StyledTextLabel_upvr = var17_2.App.Text.StyledTextLabel
local Interactable_upvr = var17_2.Core.Control.Interactable
local var52_upvr
local useSelectionCursor_upvr = var17_2.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = var17_2.App.SelectionImage.CursorKind
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FixChromeIntegrationLayoutBug", false)
local ImageSetLabel_upvr = var17_2.Core.ImageSet.ImageSetLabel
local icons_actions_edit_add_upvw = Images["icons/actions/edit/add"]
local Badge_upvr = var17_2.App.Indicator.Badge
function MenuRow(arg1) -- Line 130
	--[[ Upvalues[35]:
		[1]: useStyle_upvr (readonly)
		[2]: any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SubMenuContext_upvr (readonly)
		[5]: FFlagFocusNavOutOfSubmenu_upvr (readonly)
		[6]: var43_upvr (readonly)
		[7]: GetFFlagNewSubmenuTouchTargets_upvr (readonly)
		[8]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
		[9]: Service_upvr (readonly)
		[10]: ControlState_upvr (readonly)
		[11]: GetFFlagEnableCaptureBadge_upvr (readonly)
		[12]: FFlagChromeFixStopFocusBeforeMenuRowActive_upvr (readonly)
		[13]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[14]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[15]: GuiService_upvr (readonly)
		[16]: Constants_upvr (readonly)
		[17]: IconHost_upvr (readonly)
		[18]: StyledTextLabel_upvr (readonly)
		[19]: GetFFlagAnimateSubMenu_upvr (readonly)
		[20]: isInExperienceUIVREnabled_upvr (readonly)
		[21]: UIManager_upvw (read and write)
		[22]: Interactable_upvr (readonly)
		[23]: SUB_MENU_ROW_HEIGHT_upvr (readonly)
		[24]: var52_upvr (readonly)
		[25]: Unibar_upvr (readonly)
		[26]: useSelectionCursor_upvr (readonly)
		[27]: CursorKind_upvr (readonly)
		[28]: GetFFlagKeepSubmenuOpenOnPin_upvr (readonly)
		[29]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[30]: var40_upvr (readonly)
		[31]: var35_upvw (read and write)
		[32]: ImageSetLabel_upvr (readonly)
		[33]: var33_upvw (read and write)
		[34]: icons_actions_edit_add_upvw (read and write)
		[35]: Badge_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 191 start (CF ANALYSIS FAILED)
	local Theme_upvr = useStyle_upvr().Theme
	local var61
	if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
	else
	end
	local tbl_upvr = {}
	var61 = 0
	tbl_upvr.Color = Color3.new(0, 0, var61)
	tbl_upvr.Transparency = 1
	if FFlagFocusNavOutOfSubmenu_upvr then
		-- KONSTANTWARNING: GOTO [36] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 191 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 29. Error Block 214 start (CF ANALYSIS FAILED)
	if GetFFlagEnableChromePinIntegrations_upvr() then
		var61 = Service_upvr:isUserPinned(arg1.id)
	else
		var61 = nil
	end
	if GetFFlagEnableChromePinIntegrations_upvr() then
		if Service_upvr:areUserPinsFull() then
			-- KONSTANTWARNING: GOTO [60] #51
		end
	else
	end
	local _, any_useBinding_result2_upvr = React_upvr.useBinding(tbl_upvr)
	local _, any_useBinding_result2_upvr_2 = React_upvr.useBinding(tbl_upvr)
	local function _(arg1_2, arg2) -- Line 151
		--[[ Upvalues[4]:
			[1]: ControlState_upvr (copied, readonly)
			[2]: any_useBinding_result2_upvr (readonly)
			[3]: Theme_upvr (readonly)
			[4]: tbl_upvr (readonly)
		]]
		if arg2 == ControlState_upvr.Pressed then
			any_useBinding_result2_upvr(Theme_upvr.BackgroundOnPress)
		else
			if arg2 == ControlState_upvr.Hover then
				any_useBinding_result2_upvr(Theme_upvr.BackgroundOnHover)
				return
			end
			any_useBinding_result2_upvr(tbl_upvr)
		end
	end
	local function _(arg1_3, arg2) -- Line 161
		--[[ Upvalues[4]:
			[1]: ControlState_upvr (copied, readonly)
			[2]: any_useBinding_result2_upvr_2 (readonly)
			[3]: Theme_upvr (readonly)
			[4]: tbl_upvr (readonly)
		]]
		if arg2 == ControlState_upvr.Pressed then
			any_useBinding_result2_upvr_2(Theme_upvr.BackgroundOnPress)
		else
			if arg2 == ControlState_upvr.Hover then
				any_useBinding_result2_upvr_2(Theme_upvr.BackgroundOnHover)
				return
			end
			any_useBinding_result2_upvr_2(tbl_upvr)
		end
	end
	local function _() -- Line 171
		--[[ Upvalues[7]:
			[1]: GetFFlagEnableCaptureBadge_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FFlagChromeFixStopFocusBeforeMenuRowActive_upvr (copied, readonly)
			[4]: FFlagConsoleChatOnExpControls_upvr (copied, readonly)
			[5]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
			[6]: Service_upvr (copied, readonly)
			[7]: GuiService_upvr (copied, readonly)
		]]
		if GetFFlagEnableCaptureBadge_upvr() then
			ClearBadge(arg1.id)
		end
		if FFlagChromeFixStopFocusBeforeMenuRowActive_upvr then
			if FFlagConsoleChatOnExpControls_upvr or FFlagEnableChromeShortcutBar_upvr then
				Service_upvr:disableFocusNav()
				GuiService_upvr.SelectedCoreObject = nil
				Service_upvr:setShortcutBar(nil)
			end
			arg1.activated()
		else
			arg1.activated()
			if FFlagConsoleChatOnExpControls_upvr or FFlagEnableChromeShortcutBar_upvr then
				Service_upvr:disableFocusNav()
				GuiService_upvr.SelectedCoreObject = nil
			end
		end
	end
	local _ = {arg1.id}
	local tbl_6 = {}
	tbl_6.integration = arg1
	tbl_6.disableButtonBehaviors = true
	;({
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, Constants_upvr.SUBMENU_PADDING_LEFT);
			PaddingRight = UDim.new(0, Constants_upvr.SUBMENU_PADDING_RIGHT);
		});
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Constants_upvr.SUBMENU_ROW_PADDING);
		});
	}).IconHost = React_upvr.createElement(IconHost_upvr, tbl_6)
	if any_GetFFlagAdaptUnibarAndTiltSizing_result1_upvr then
		-- KONSTANTWARNING: GOTO [214] #165
	end
	-- KONSTANTERROR: [35] 29. Error Block 214 end (CF ANALYSIS FAILED)
end
function isLeft(arg1) -- Line 380
	local var75
	if arg1 ~= Enum.HorizontalAlignment.Left then
		var75 = false
	else
		var75 = true
	end
	return var75
end
local ChromeAnalytics_upvr = require(ChromeShared.Analytics.ChromeAnalytics)
function pinActivated(arg1) -- Line 384
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
		[2]: Service_upvr (readonly)
		[3]: ChromeAnalytics_upvr (readonly)
	]]
	if not GetFFlagEnableChromePinIntegrations_upvr() then
	else
		if Service_upvr:isUserPinned(arg1) then
			Service_upvr:removeUserPin(arg1)
			ChromeAnalytics_upvr.default:setPin(arg1, false, Service_upvr:userPins())
			return
		end
		Service_upvr:setUserPin(arg1)
		ChromeAnalytics_upvr.default:setPin(arg1, true, Service_upvr:userPins())
	end
end
local var77_upvw = false
local ViewportUtil_upvr = require(ChromeShared.Service.ViewportUtil)
local useTopbarInsetHeight_upvr = require(ChromeShared.Hooks.useTopbarInsetHeight)
local var80_upvr = SUB_MENU_ROW_HEIGHT_upvr * 0.5
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local useMappedObservableValue_upvr = require(ChromeShared.Hooks.useMappedObservableValue)
local GetFFlagChromeUsePreferredTransparency_upvr = SharedFlags.GetFFlagChromeUsePreferredTransparency
local FFlagSubmenuFocusNavFixes_upvr = SharedFlags.FFlagSubmenuFocusNavFixes
local VerticalScrollView_upvr = var17_2.App.Container.VerticalScrollView
local ScrollBarType_upvr = var19.Enum.ScrollBarType
function SubMenu(arg1) -- Line 398
	--[[ Upvalues[28]:
		[1]: GetFFlagEnableCaptureBadge_upvr (readonly)
		[2]: var77_upvw (read and write)
		[3]: LocalStore_upvr (readonly)
		[4]: var40_upvr (readonly)
		[5]: GetFIntNumTimesNewBadgeIsDisplayed_upvr (readonly)
		[6]: useStyle_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: useObservableValue_upvr (readonly)
		[9]: ViewportUtil_upvr (readonly)
		[10]: useTopbarInsetHeight_upvr (readonly)
		[11]: Constants_upvr (readonly)
		[12]: GuiService_upvr (readonly)
		[13]: Service_upvr (readonly)
		[14]: FFlagFocusNavOutOfSubmenu_upvr (readonly)
		[15]: UserInputService_upvr (readonly)
		[16]: UIBlox_upvr (readonly)
		[17]: SUB_MENU_ROW_HEIGHT_upvr (readonly)
		[18]: var80_upvr (readonly)
		[19]: GetFFlagAnimateSubMenu_upvr (readonly)
		[20]: UserGameSettings_upvr (readonly)
		[21]: useMappedObservableValue_upvr (readonly)
		[22]: GetFFlagChromeUsePreferredTransparency_upvr (readonly)
		[23]: isInExperienceUIVREnabled_upvr (readonly)
		[24]: UIManager_upvw (read and write)
		[25]: isSpatial_upvr (readonly)
		[26]: FFlagSubmenuFocusNavFixes_upvr (readonly)
		[27]: VerticalScrollView_upvr (readonly)
		[28]: ScrollBarType_upvr (readonly)
	]]
	local var135_upvw
	if GetFFlagEnableCaptureBadge_upvr() then
		if not var77_upvw then
			var77_upvw = true
			local var136
			if var136 then
				var136 = LocalStore_upvr.loadForLocalPlayer("TimesSeenNewFeatures")
				if not var136 then
					var136 = {}
				end
				for i_2, v in pairs(var40_upvr) do
					if v then
						var136[i_2] = (var136[i_2] or 0) + 1
						var135_upvw = GetFIntNumTimesNewBadgeIsDisplayed_upvr()
						if var135_upvw < var136[i_2] then
							var135_upvw = false
							var40_upvr[i_2] = var135_upvw
						end
					end
				end
				LocalStore_upvr.storeForLocalPlayer("TimesSeenNewFeatures", var136)
			end
		end
	end
	local var21_result1_2 = useStyle_upvr()
	local any_useRef_result1_upvr_4 = React_upvr.useRef(nil)
	local useObservableValue_upvr_result1 = useObservableValue_upvr(ViewportUtil_upvr.screenSize)
	local var79_result1 = useTopbarInsetHeight_upvr()
	var135_upvw = {}
	React_upvr.useEffect(function() -- Line 428
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_4 (readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: Service_upvr (copied, readonly)
			[4]: FFlagFocusNavOutOfSubmenu_upvr (copied, readonly)
			[5]: UserInputService_upvr (copied, readonly)
			[6]: UIBlox_upvr (copied, readonly)
		]]
		local function _() -- Line 429, Named "moveLeft"
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr_4 (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: Service_upvr (copied, readonly)
			]]
			local current_2 = any_useRef_result1_upvr_4.current
			if current_2 then
				current_2 = any_useRef_result1_upvr_4.current:IsAncestorOf(GuiService_upvr.SelectedCoreObject)
			end
			if current_2 then
				Service_upvr:setSelectedByOffset(-1)
			end
		end
		local function _() -- Line 436, Named "moveRight"
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr_4 (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: Service_upvr (copied, readonly)
			]]
			local current = any_useRef_result1_upvr_4.current
			if current then
				current = any_useRef_result1_upvr_4.current:IsAncestorOf(GuiService_upvr.SelectedCoreObject)
			end
			if current then
				Service_upvr:setSelectedByOffset(1)
			end
		end
		local var147_upvw
		if FFlagFocusNavOutOfSubmenu_upvr then
			var147_upvw = UserInputService_upvr.InputChanged:Connect(function(arg1_8) -- Line 447
				--[[ Upvalues[5]:
					[1]: UserInputService_upvr (copied, readonly)
					[2]: UIBlox_upvr (copied, readonly)
					[3]: any_useRef_result1_upvr_4 (copied, readonly)
					[4]: GuiService_upvr (copied, readonly)
					[5]: Service_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [69] 50. Error Block 14 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [69] 50. Error Block 14 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [10] 9. Error Block 25 start (CF ANALYSIS FAILED)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.7]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.8]
				if nil == nil then
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.9]
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.10]
					if nil < nil then
						if nil then
						end
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if nil then
							-- KONSTANTWARNING: GOTO [69] #50
						end
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
						if nil < nil then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							if nil then
							end
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							if nil then
							end
						end
					end
				end
				-- KONSTANTERROR: [10] 9. Error Block 25 end (CF ANALYSIS FAILED)
			end)
		end
		local any_Connect_result1_upvr = UserInputService_upvr.InputBegan:Connect(function(arg1_9) -- Line 467
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr_4 (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: Service_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local KeyCode = arg1_9.KeyCode
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 6. Error Block 20 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 6. Error Block 20 end (CF ANALYSIS FAILED)
		end)
		return function() -- Line 476
			--[[ Upvalues[3]:
				[1]: FFlagFocusNavOutOfSubmenu_upvr (copied, readonly)
				[2]: var147_upvw (read and write)
				[3]: any_Connect_result1_upvr (readonly)
			]]
			if FFlagFocusNavOutOfSubmenu_upvr then
				var147_upvw:Disconnect()
			end
			any_Connect_result1_upvr:Disconnect()
		end
	end, var135_upvw)
	var135_upvw = Constants_upvr
	local var153 = var79_result1 + var135_upvw.ICON_CELL_WIDTH
	if arg1 then
		var135_upvw = arg1.items
		if var135_upvw then
			var135_upvw = SUB_MENU_ROW_HEIGHT_upvr
			-- KONSTANTWARNING: GOTO [93] #78
		end
	end
	local var154 = 0
	var135_upvw = math.min(useObservableValue_upvr_result1.Y - var153, var154)
	if useObservableValue_upvr_result1.Y - var153 < var154 then
		local floored_2 = math.floor((useObservableValue_upvr_result1.Y - var153) / SUB_MENU_ROW_HEIGHT_upvr)
		if SUB_MENU_ROW_HEIGHT_upvr * floored_2 + var80_upvr <= useObservableValue_upvr_result1.Y - var153 then
			var135_upvw = SUB_MENU_ROW_HEIGHT_upvr * floored_2 + var80_upvr
		else
			var135_upvw = SUB_MENU_ROW_HEIGHT_upvr * floored_2 - var80_upvr
		end
	end
	floored_2 = {}
	local var156 = floored_2
	local tbl_7 = {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
	}
	local LayoutOrder = Enum.SortOrder.LayoutOrder
	tbl_7.SortOrder = LayoutOrder
	var156.UIListLayout = React_upvr.createElement("UIListLayout", tbl_7)
	local var159
	if GetFFlagAnimateSubMenu_upvr() and not UserGameSettings_upvr.ReducedMotion and arg1.menuTransition then
		LayoutOrder = arg1.menuTransition
		LayoutOrder = LayoutOrder:map(function(arg1_10) -- Line 509
			--[[ Upvalues[1]:
				[1]: var135_upvw (read and write)
			]]
			return Vector2.new(0, var135_upvw * arg1_10)
		end)
	else
		LayoutOrder = Vector2.new(0, var135_upvw)
	end
	var159.MinSize = LayoutOrder
	var156.UISizeConstraint = React_upvr.createElement("UISizeConstraint", var159)
	var159 = {}
	LayoutOrder = UDim2.new(0, 0, 0, Constants_upvr.SUBMENU_BOTTOM_PADDING)
	var159.Size = LayoutOrder
	LayoutOrder = 1
	var159.BackgroundTransparency = LayoutOrder
	LayoutOrder = 10000
	var159.LayoutOrder = LayoutOrder
	var156.BottomPadding = React_upvr.createElement("Frame", var159)
	var159 = nil
	for i_3, v_2 in arg1.items, nil, var159 do
		var156[v_2.id] = React_upvr.createElement(MenuRow, v_2)
	end
	var159 = isLeft
	var159 = GetFFlagChromeUsePreferredTransparency_upvr()
	if var159 then
		v_2 = var21_result1_2.Theme
		i_3 = v_2.BackgroundUIContrast
		var159 = i_3.Transparency
		v_2 = var21_result1_2.Settings
		i_3 = v_2.PreferredTransparency
		-- KONSTANTWARNING: GOTO [263] #199
	end
	var159 = var21_result1_2.Theme.BackgroundUIContrast
	if isInExperienceUIVREnabled_upvr then
		var159 = UIManager_upvw.getInstance():getAdditionalCameraScaleIfNeeded()
	else
		var159 = 1
	end
	if isInExperienceUIVREnabled_upvr and isSpatial_upvr() then
		-- KONSTANTWARNING: GOTO [297] #228
	end
	if useMappedObservableValue_upvr(Service_upvr:orderAlignment(), var159) then
	else
	end
	local module_2 = {}
	local var162
	if isInExperienceUIVREnabled_upvr and isSpatial_upvr() then
		var162 = UDim2.new(1, 0, 0, var154 * var159)
	else
		var162 = UDim2.new(0, Constants_upvr.ICON_CELL_WIDTH * 4 + Constants_upvr.UNIBAR_LEFT_MARGIN + Constants_upvr.UNIBAR_END_PADDING * 2, 0, 0)
	end
	module_2.Size = var162
	module_2.AnchorPoint = Vector2.new(1, 0)
	if isInExperienceUIVREnabled_upvr and isSpatial_upvr() then
		var162 = UDim2.new(0, 0, 1, 0)
	else
		var162 = UDim2.new
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var162 = var162(0, -var79_result1 - 2 + Constants_upvr.UNIBAR_LEFT_MARGIN, 0, 0)
	end
	module_2.Position = var162
	var162 = var21_result1_2.Theme.BackgroundUIContrast.Color
	module_2.BackgroundColor3 = var162
	if GetFFlagAnimateSubMenu_upvr() and arg1.menuTransition then
		var162 = arg1.menuTransition
		local Transparency_upvr_2 = var159.Transparency
		var162 = var162:map(function(arg1_11) -- Line 554
			--[[ Upvalues[1]:
				[1]: Transparency_upvr_2 (readonly)
			]]
			return Transparency_upvr_2 + (1 - Transparency_upvr_2) * (1 - arg1_11)
		end)
	else
		var162 = Transparency_upvr_2
	end
	module_2.BackgroundTransparency = var162
	if isInExperienceUIVREnabled_upvr and isSpatial_upvr() then
		var162 = nil
	else
		var162 = Enum.AutomaticSize.Y
	end
	module_2.AutomaticSize = var162
	module_2.ref = any_useRef_result1_upvr_4
	if FFlagSubmenuFocusNavFixes_upvr then
		var162 = true
		-- KONSTANTWARNING: GOTO [400] #311
	end
	var162 = nil
	module_2.SelectionGroup = var162
	if FFlagSubmenuFocusNavFixes_upvr then
		var162 = Enum.SelectionBehavior.Stop
	else
		var162 = nil
	end
	module_2.SelectionBehaviorDown = var162
	var162 = {}
	var162.UICorner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, Constants_upvr.SUBMENU_CORNER_RADIUS);
	})
	var162.ScrollingFrame = React_upvr.createElement(VerticalScrollView_upvr, {
		size = UDim2.new(1, 0, 1, 0);
		canvasSizeY = UDim.new(0, var154);
		selectable = false;
		scrollBarType = ScrollBarType_upvr.Compact;
	}, var156)
	return React_upvr.createElement("Frame", module_2, var162)
end
local useChromeMenuItems_upvr = require(ChromeShared.Hooks.useChromeMenuItems)
local var19_2_upvr = require(var19)
local tbl_upvw = {}
local var171_upvw
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SubmenuFixInvisibleButtons", false)
local GetFFlagFixSubmenuCloseIOS_upvr = SharedFlags.GetFFlagFixSubmenuCloseIOS
local vector2_upvw = Vector2.new(0, 0)
local FFlagUnibarMenuOpenSubmenu_upvr = require(script.Parent.Parent.Parent.Flags.FFlagUnibarMenuOpenSubmenu)
do
	return function(arg1) -- Line 579
		--[[ Upvalues[20]:
			[1]: React_upvr (readonly)
			[2]: useObservableValue_upvr (readonly)
			[3]: Service_upvr (readonly)
			[4]: tbl_2_upvr (readonly)
			[5]: useChromeMenuItems_upvr (readonly)
			[6]: var19_2_upvr (readonly)
			[7]: GetFFlagAnimateSubMenu_upvr (readonly)
			[8]: tbl_upvw (read and write)
			[9]: var171_upvw (read and write)
			[10]: game_DefineFastFlag_result1_upvr (readonly)
			[11]: Constants_upvr (readonly)
			[12]: GetFFlagFixSubmenuCloseIOS_upvr (readonly)
			[13]: UserInputService_upvr (readonly)
			[14]: vector2_upvw (read and write)
			[15]: GetFFlagKeepSubmenuOpenOnPin_upvr (readonly)
			[16]: var35_upvw (read and write)
			[17]: isInExperienceUIVREnabled_upvr (readonly)
			[18]: isSpatial_upvr (readonly)
			[19]: FFlagUnibarMenuOpenSubmenu_upvr (readonly)
			[20]: SubMenuContext_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local module_3 = {}
		local useObservableValue_upvr_result1_2_upvr = useObservableValue_upvr(Service_upvr:currentSubMenu())
		local _, any_useState_result2_upvr = React_upvr.useState(tbl_2_upvr.Closed)
		local tbl_5_upvw = {}
		local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = var19_2_upvr.useAnimatedBinding(tbl_2_upvr.Closed, function(arg1_12) -- Line 592
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(arg1_12)
		end)
		local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
		local any_useRef_result1_upvr_5 = React_upvr.useRef(nil)
		local any_useRef_result1_upvr = React_upvr.useRef(nil)
		React_upvr.useEffect(function() -- Line 597
			--[[ Upvalues[22]:
				[1]: GetFFlagAnimateSubMenu_upvr (copied, readonly)
				[2]: tbl_upvw (copied, read and write)
				[3]: tbl_5_upvw (read and write)
				[4]: var171_upvw (copied, read and write)
				[5]: useObservableValue_upvr_result1_2_upvr (readonly)
				[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[7]: any_useState_result2_upvr (readonly)
				[8]: tbl_2_upvr (copied, readonly)
				[9]: any_useAnimatedBinding_result2_upvr (readonly)
				[10]: var19_2_upvr (copied, readonly)
				[11]: Constants_upvr (copied, readonly)
				[12]: GetFFlagFixSubmenuCloseIOS_upvr (copied, readonly)
				[13]: any_useRef_result1_upvr_3 (readonly)
				[14]: UserInputService_upvr (copied, readonly)
				[15]: vector2_upvw (copied, read and write)
				[16]: any_useRef_result1_upvr_5 (readonly)
				[17]: Service_upvr (copied, readonly)
				[18]: GetFFlagKeepSubmenuOpenOnPin_upvr (copied, readonly)
				[19]: var35_upvw (copied, read and write)
				[20]: any_useRef_result1_upvr (readonly)
				[21]: isInExperienceUIVREnabled_upvr (copied, readonly)
				[22]: isSpatial_upvr (copied, readonly)
			]]
			if GetFFlagAnimateSubMenu_upvr() then
				tbl_upvw = tbl_5_upvw
				var171_upvw = useObservableValue_upvr_result1_2_upvr
			end
			if useObservableValue_upvr_result1_2_upvr then
				if GetFFlagAnimateSubMenu_upvr() then
					if game_DefineFastFlag_result1_upvr then
						any_useState_result2_upvr(tbl_2_upvr.Closed)
					end
					any_useAnimatedBinding_result2_upvr(var19_2_upvr.spring(tbl_2_upvr.Open, Constants_upvr.MENU_ANIMATION_SPRING))
				end
				if GetFFlagFixSubmenuCloseIOS_upvr() then
					any_useRef_result1_upvr_3.current = UserInputService_upvr.TouchStarted:Connect(function(arg1_13) -- Line 612
						--[[ Upvalues[1]:
							[1]: vector2_upvw (copied, read and write)
						]]
						vector2_upvw = Vector2.new(arg1_13.Position.X, arg1_13.Position.Y)
					end)
				end
				any_useRef_result1_upvr_5.current = UserInputService_upvr.TouchTap:Connect(function(arg1_14) -- Line 617
					--[[ Upvalues[5]:
						[1]: GetFFlagFixSubmenuCloseIOS_upvr (copied, readonly)
						[2]: vector2_upvw (copied, read and write)
						[3]: Service_upvr (copied, readonly)
						[4]: GetFFlagKeepSubmenuOpenOnPin_upvr (copied, readonly)
						[5]: var35_upvw (copied, read and write)
					]]
					if GetFFlagFixSubmenuCloseIOS_upvr() then
						if arg1_14[1] - vector2_upvw ~= Vector2.zero then return end
					end
					local any_get_result1_3 = Service_upvr:currentSubMenu():get()
					if any_get_result1_3 then
						if GetFFlagKeepSubmenuOpenOnPin_upvr() and var35_upvw then
							var35_upvw = false
							return
						end
						Service_upvr:toggleSubMenu(any_get_result1_3)
					end
				end)
				any_useRef_result1_upvr.current = UserInputService_upvr.InputEnded:Connect(function(arg1_15, arg2) -- Line 633
					--[[ Upvalues[5]:
						[1]: isInExperienceUIVREnabled_upvr (copied, readonly)
						[2]: isSpatial_upvr (copied, readonly)
						[3]: Service_upvr (copied, readonly)
						[4]: GetFFlagKeepSubmenuOpenOnPin_upvr (copied, readonly)
						[5]: var35_upvw (copied, read and write)
					]]
					local var194
					if var194 then
						var194 = isSpatial_upvr()
						if var194 then return end
					end
					if arg1_15.UserInputType ~= Enum.UserInputType.MouseButton1 then
						var194 = false
					else
						var194 = true
					end
					local any_get_result1 = Service_upvr:currentSubMenu():get()
					if any_get_result1 and var194 then
						if GetFFlagKeepSubmenuOpenOnPin_upvr() then
							if var35_upvw then
								var35_upvw = false
								return
							end
						end
						Service_upvr:toggleSubMenu(any_get_result1)
					end
				end)
			elseif GetFFlagAnimateSubMenu_upvr() then
				if game_DefineFastFlag_result1_upvr then
					any_useState_result2_upvr(tbl_2_upvr.Open)
				end
				any_useAnimatedBinding_result2_upvr(var19_2_upvr.spring(tbl_2_upvr.Closed, Constants_upvr.MENU_ANIMATION_SPRING))
			end
			return function() -- Line 658
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr_5 (copied, readonly)
					[3]: any_useRef_result1_upvr_3 (copied, readonly)
				]]
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current:Disconnect()
					any_useRef_result1_upvr.current = nil
				end
				if any_useRef_result1_upvr_5.current then
					any_useRef_result1_upvr_5.current:Disconnect()
					any_useRef_result1_upvr_5.current = nil
				end
				if any_useRef_result1_upvr_3.current then
					any_useRef_result1_upvr_3.current:Disconnect()
					any_useRef_result1_upvr_3.current = nil
				end
			end
		end, {useObservableValue_upvr_result1_2_upvr})
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [76] 64. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [76] 64. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [90] 74. Error Block 48 start (CF ANALYSIS FAILED)
		local var198
		if 0 < #tbl_5_upvw then
			local tbl = {
				items = tbl_5_upvw;
			}
			if GetFFlagAnimateSubMenu_upvr() then
				var198 = any_useAnimatedBinding_result1
			else
				var198 = nil
			end
			tbl.menuTransition = var198
			module_3[useObservableValue_upvr_result1_2_upvr] = React_upvr.createElement(SubMenu, tbl)
		elseif GetFFlagAnimateSubMenu_upvr() and 0 < #tbl_upvw then
			var198 = {}
			var198.items = tbl_upvw
			var198.menuTransition = any_useAnimatedBinding_result1
			module_3[var171_upvw] = React_upvr.createElement(SubMenu, var198)
		end
		local module = {}
		var198 = "SubMenuHost"
		module.Name = var198
		if isInExperienceUIVREnabled_upvr and isSpatial_upvr() then
			var198 = UDim2.new(1, 0, 1, 0)
		else
			var198 = UDim2.new(0, 0, 1, 0)
		end
		module.Size = var198
		var198 = 0
		module.BorderSizePixel = var198
		var198 = 1
		module.BackgroundTransparency = var198
		if FFlagUnibarMenuOpenSubmenu_upvr then
			var198 = arg1.subMenuHostRef
		else
			var198 = nil
		end
		module.ref = var198
		if GetFFlagAnimateSubMenu_upvr() then
			local _ = {
				value = any_useAnimatedBinding_result1;
			}
		else
		end
		do
			return React_upvr.createElement("Frame", module, module_3)
		end
		-- KONSTANTERROR: [90] 74. Error Block 48 end (CF ANALYSIS FAILED)
	end
end
-- KONSTANTERROR: [149] 87. Error Block 60 end (CF ANALYSIS FAILED)