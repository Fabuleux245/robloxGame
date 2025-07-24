-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:55
-- Luau version 6, Types version 3
-- Time taken: 0.031677 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local FocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local ChromeUtils_upvr = require(ChromeShared.Service.ChromeUtils)
local LocalStore_upvr = require(ChromeShared.Service.LocalStore)
local NotifySignal_upvr = ChromeUtils_upvr.NotifySignal
local AvailabilitySignal_4_upvr = ChromeUtils_upvr.AvailabilitySignal
local Constants_upvr = require(ChromeShared.Unibar.Constants)
local GetFFlagEnableChromePinIntegrations_upvr = SharedFlags.GetFFlagEnableChromePinIntegrations
local GetFFlagChromeTrackWindowStatus_upvr = require(ChromeShared.Parent.Flags.GetFFlagChromeTrackWindowStatus)
local GetFFlagChromeTrackWindowPosition_upvr = require(ChromeShared.Parent.Flags.GetFFlagChromeTrackWindowPosition)
local FFlagEnableChromeShortcutBar_upvr = SharedFlags.FFlagEnableChromeShortcutBar
local isInExperienceUIVREnabled_upvr = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local module_6_upvr = {}
module_6_upvr.__index = module_6_upvr
module_6_upvr.AvailabilitySignal = ChromeUtils_upvr.AvailabilitySignalState
module_6_upvr.IntegrationStatus = {
	None = 0;
	Icon = 1;
	Window = 2;
}
local tbl_5 = {}
local var19 = "MRU"
tbl_5.MostRecentlyUsed = var19
if GetFFlagEnableChromePinIntegrations_upvr then
	var19 = "UP"
else
	var19 = nil
end
tbl_5.UserPinned = var19
module_6_upvr.Key = tbl_5
function noop() -- Line 81
end
local tbl_6_upvr = {
	id = "div";
	label = "div";
	initialAvailability = module_6_upvr.AvailabilitySignal.Unavailable;
	availability = AvailabilitySignal_4_upvr.new(module_6_upvr.AvailabilitySignal.Unavailable);
	notification = NotifySignal_upvr.new();
	components = {};
	hideNotificationCountWhileOpen = false;
}
function createUnibarLayoutInfo(arg1, arg2) -- Line 243
	return Rect.new(arg1, arg1 + arg2)
end
local LocalizationService_upvr = game:GetService("LocalizationService")
local ShortcutService_upvr = require(ChromeShared.Service.ShortcutService)
local ObservableValue_upvr = ChromeUtils_upvr.ObservableValue
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local Signal_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local ViewportUtil_upvr = require(ChromeShared.Service.ViewportUtil)
local FFlagChromeFocusOnAndOffUtils_upvr = SharedFlags.FFlagChromeFocusOnAndOffUtils
local FocusOnChromeSignal_upvr = FocusUtils.FocusOnChromeSignal
local FocusOffChromeSignal_upvr = FocusUtils.FocusOffChromeSignal
function module_6_upvr.new() -- Line 247
	--[[ Upvalues[14]:
		[1]: LocalizationService_upvr (readonly)
		[2]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[3]: ShortcutService_upvr (readonly)
		[4]: ChromeUtils_upvr (readonly)
		[5]: ObservableValue_upvr (readonly)
		[6]: NotifySignal_upvr (readonly)
		[7]: Localization_upvr (readonly)
		[8]: Signal_upvr (readonly)
		[9]: isInExperienceUIVREnabled_upvr (readonly)
		[10]: module_6_upvr (readonly)
		[11]: ViewportUtil_upvr (readonly)
		[12]: FFlagChromeFocusOnAndOffUtils_upvr (readonly)
		[13]: FocusOnChromeSignal_upvr (readonly)
		[14]: FocusOffChromeSignal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local tbl_7_upvr = {}
	local var31_upvr
	if FFlagEnableChromeShortcutBar_upvr then
		var31_upvr = ShortcutService_upvr.new()
	else
		var31_upvr = nil
	end
	tbl_7_upvr._shortcutService = var31_upvr
	var31_upvr = ChromeUtils_upvr.ObservableValue.new(createUnibarLayoutInfo(Vector2.zero, Vector2.zero))
	tbl_7_upvr._layout = var31_upvr
	var31_upvr = Vector2.zero
	tbl_7_upvr._menuAbsolutePosition = var31_upvr
	var31_upvr = Vector2.zero
	tbl_7_upvr._menuAbsoluteSizeOpen = var31_upvr
	var31_upvr = ChromeUtils_upvr.ObservableValue.new(nil)
	tbl_7_upvr._currentSubMenu = var31_upvr
	var31_upvr = ChromeUtils_upvr.ObservableValue.new(nil)
	tbl_7_upvr._selectedItem = var31_upvr
	var31_upvr = 0
	tbl_7_upvr._selectedItemIdx = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._integrations = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._integrationsConnections = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._integrationsStatus = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._menuConfig = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._subMenuConfig = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._compactUtilityConfig = var31_upvr
	var31_upvr = ObservableValue_upvr.new(nil)
	tbl_7_upvr._currentCompactUtility = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._subMenuNotifications = var31_upvr
	var31_upvr = ObservableValue_upvr.new({})
	tbl_7_upvr._menuList = var31_upvr
	var31_upvr = ObservableValue_upvr.new({})
	tbl_7_upvr._windowList = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._dragConnection = var31_upvr
	var31_upvr = ObservableValue_upvr.new({})
	tbl_7_upvr._windowPositions = var31_upvr
	var31_upvr = NotifySignal_upvr.new(true)
	tbl_7_upvr._totalNotifications = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._mostRecentlyUsedFullRecord = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._mostRecentlyUsed = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._userPins = var31_upvr
	var31_upvr = -1
	tbl_7_upvr._mostRecentlyUsedAndPinnedLimit = var31_upvr
	var31_upvr = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
	tbl_7_upvr._localization = var31_upvr
	var31_upvr = {}
	tbl_7_upvr._localizedLabelKeys = var31_upvr
	var31_upvr = ObservableValue_upvr.new(nil)
	tbl_7_upvr._currentShortcutBar = var31_upvr
	var31_upvr = ObservableValue_upvr.new(nil)
	tbl_7_upvr._notificationIndicator = var31_upvr
	var31_upvr = ObservableValue_upvr.new(Enum.HorizontalAlignment.Left)
	tbl_7_upvr._orderAlignment = var31_upvr
	var31_upvr = Signal_upvr.new()
	tbl_7_upvr._onIntegrationRegistered = var31_upvr
	var31_upvr = Signal_upvr.new()
	tbl_7_upvr._onIntegrationActivated = var31_upvr
	var31_upvr = Signal_upvr.new()
	tbl_7_upvr._onIntegrationStatusChanged = var31_upvr
	var31_upvr = Signal_upvr.new()
	tbl_7_upvr._onIntegrationHovered = var31_upvr
	var31_upvr = Signal_upvr.new()
	tbl_7_upvr._triggerMenuIcon = var31_upvr
	if isInExperienceUIVREnabled_upvr then
		var31_upvr = Signal_upvr.new()
		-- KONSTANTWARNING: GOTO [215] #137
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [214] 136. Error Block 29 start (CF ANALYSIS FAILED)
	var31_upvr = nil
	tbl_7_upvr._triggerVRToggleButton = var31_upvr
	if isInExperienceUIVREnabled_upvr then
		var31_upvr = ObservableValue_upvr.new(nil)
	else
		var31_upvr = nil
	end
	tbl_7_upvr._topBarVisibility = var31_upvr
	var31_upvr = ObservableValue_upvr.new(false)
	tbl_7_upvr._inFocusNav = var31_upvr
	var31_upvr = setmetatable(tbl_7_upvr, module_6_upvr)
	ViewportUtil_upvr.viewport:connect(function(arg1) -- Line 295
		--[[ Upvalues[1]:
			[1]: var31_upvr (readonly)
		]]
		var31_upvr:updateScreenSize(arg1.size, arg1.isMobileDevice, arg1.portraitOrientation, arg1.tinyPortrait)
	end, true)
	if FFlagEnableChromeShortcutBar_upvr then
		tbl_7_upvr._shortcutService.onShortcutBarChanged:connect(function(arg1) -- Line 305
			--[[ Upvalues[1]:
				[1]: var31_upvr (readonly)
			]]
			var31_upvr._currentShortcutBar:set(arg1)
		end)
	end
	if FFlagChromeFocusOnAndOffUtils_upvr then
		FocusOnChromeSignal_upvr:connect(function(arg1) -- Line 311
			--[[ Upvalues[2]:
				[1]: tbl_7_upvr (readonly)
				[2]: var31_upvr (readonly)
			]]
			if arg1 and not tbl_7_upvr._subMenuConfig.nine_dot[arg1] then
				var31_upvr:setSelected(arg1)
			end
			var31_upvr:enableFocusNav()
		end)
		FocusOffChromeSignal_upvr:connect(function() -- Line 318
			--[[ Upvalues[2]:
				[1]: var31_upvr (readonly)
				[2]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
			]]
			var31_upvr:disableFocusNav()
			if FFlagEnableChromeShortcutBar_upvr then
				var31_upvr:setShortcutBar(nil)
			end
		end)
	end
	do
		return var31_upvr
	end
	-- KONSTANTERROR: [214] 136. Error Block 29 end (CF ANALYSIS FAILED)
end
function module_6_upvr.storeChromeInteracted(arg1) -- Line 331
	--[[ Upvalues[1]:
		[1]: LocalStore_upvr (readonly)
	]]
	if LocalStore_upvr.isEnabled() then
		LocalStore_upvr.storeForLocalPlayer("ChromeInteracted3", true)
	end
end
function module_6_upvr.updateScreenSize(arg1, arg2, arg3, arg4, arg5) -- Line 337
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
	]]
	local var36 = 0
	if arg3 then
		if arg5 then
			var36 = Constants_upvr.MOBILE_TINY_PORTRAIT_SLOTS - Constants_upvr.CORE_SLOTS
		elseif arg4 then
			var36 = Constants_upvr.MOBILE_PORTRAIT_SLOTS - Constants_upvr.CORE_SLOTS
		else
			var36 = Constants_upvr.MOBILE_LANDSCAPE_SLOTS - Constants_upvr.CORE_SLOTS
		end
	else
		var36 = Constants_upvr.NON_MOBILE_SLOTS - Constants_upvr.CORE_SLOTS
	end
	if var36 ~= arg1._mostRecentlyUsedAndPinnedLimit then
		arg1._mostRecentlyUsedAndPinnedLimit = var36
		if GetFFlagEnableChromePinIntegrations_upvr() then
			arg1:rebuildUserPins()
		end
		arg1:rebuildMostRecentlyUsed()
	end
	arg1:updateWindowSizeSignals()
	arg1:updateContainerSlotSignals()
end
function module_6_upvr.rebuildMostRecentlyUsed(arg1) -- Line 378
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
	]]
	table.clear(arg1._mostRecentlyUsed)
	local len = #arg1._mostRecentlyUsedFullRecord
	if 0 < len then
		local var38 = len - arg1._mostRecentlyUsedAndPinnedLimit + 1
		if GetFFlagEnableChromePinIntegrations_upvr() then
			var38 = len - arg1._mostRecentlyUsedAndPinnedLimit + #arg1._userPins + 1
		end
		table.move(arg1._mostRecentlyUsedFullRecord, math.max(1, var38), len, 1, arg1._mostRecentlyUsed)
	end
	arg1:updateMenuList()
	arg1:updateNotificationTotals()
end
function module_6_upvr.rebuildUserPins(arg1) -- Line 402
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
	]]
	if GetFFlagEnableChromePinIntegrations_upvr() and arg1._mostRecentlyUsedAndPinnedLimit < #arg1._userPins then
		local tbl_2 = {}
		local len_3 = #arg1._userPins
		table.move(arg1._userPins, math.max(1, len_3 - arg1._mostRecentlyUsedAndPinnedLimit + 1), len_3, 1, tbl_2)
		arg1._userPins = tbl_2
		arg1:updateMenuList()
		arg1:updateNotificationTotals()
	end
end
function module_6_upvr.updateWindowSizeSignals(arg1) -- Line 421
	for _, v in arg1._integrations do
		if v.windowSize then
			v.windowSize:updateConstraints()
		end
	end
end
function module_6_upvr.updateContainerSlotSignals(arg1) -- Line 429
	for _, v_2 in arg1._integrations do
		if v_2.containerWidthSlots then
			v_2.containerWidthSlots:updateConstraints()
		end
	end
end
function module_6_upvr.notificationIndicator(arg1) -- Line 437
	return arg1._notificationIndicator
end
local FFlagChromeFixInitialFocusSubmenu_upvr = SharedFlags.FFlagChromeFixInitialFocusSubmenu
local FFlagSubmenuFocusNavFixes_upvr = SharedFlags.FFlagSubmenuFocusNavFixes
function module_6_upvr.toggleSubMenu(arg1, arg2) -- Line 441
	--[[ Upvalues[2]:
		[1]: FFlagChromeFixInitialFocusSubmenu_upvr (readonly)
		[2]: FFlagSubmenuFocusNavFixes_upvr (readonly)
	]]
	if not arg1._subMenuConfig[arg2] then
		warn("Not a valid subMenuId:"..arg2)
	else
		if arg1._currentSubMenu:get() == arg2 then
			arg1._currentSubMenu:set(nil)
			return
		end
		if not FFlagChromeFixInitialFocusSubmenu_upvr and FFlagSubmenuFocusNavFixes_upvr and not arg1._selectedItem:get() then
			arg1._selectedItem:set(arg2)
		end
		arg1._currentSubMenu:set(arg2)
	end
end
function module_6_upvr.currentSubMenu(arg1) -- Line 459
	return arg1._currentSubMenu
end
function module_6_upvr.inFocusNav(arg1) -- Line 463
	return arg1._inFocusNav
end
function module_6_upvr.enableFocusNav(arg1) -- Line 467
	--[[ Upvalues[2]:
		[1]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if not arg1._inFocusNav:get() then
		arg1._inFocusNav:set(true)
	end
	if FFlagEnableChromeShortcutBar_upvr then
		arg1:setShortcutBar(Constants_upvr.UNIBAR_SHORTCUTBAR_ID)
	end
end
function module_6_upvr.disableFocusNav(arg1) -- Line 477
	if arg1._inFocusNav:get() then
		arg1._inFocusNav:set(false)
		arg1._selectedItem:set(nil)
		arg1._currentSubMenu:set(nil)
	end
end
function module_6_upvr.toggleWindow(arg1, arg2) -- Line 486
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: GetFFlagChromeTrackWindowStatus_upvr (readonly)
		[3]: LocalStore_upvr (readonly)
	]]
	if arg1._integrations[arg2].components.Window then
		if not arg1._integrationsStatus[arg2] or arg1._integrationsStatus[arg2] == module_6_upvr.IntegrationStatus.None or arg1._integrationsStatus[arg2] == module_6_upvr.IntegrationStatus.Icon then
			arg1._integrationsStatus[arg2] = module_6_upvr.IntegrationStatus.Window
		else
			arg1._integrationsStatus[arg2] = module_6_upvr.IntegrationStatus.Icon
		end
		arg1._onIntegrationStatusChanged:fire(arg2, arg1._integrationsStatus[arg2])
	end
	if GetFFlagChromeTrackWindowStatus_upvr() and LocalStore_upvr.isEnabled() and arg1._integrations[arg2] then
		local var49
		if arg1._integrations[arg2].persistWindowState then
			var49 = LocalStore_upvr
			var49 = "ChromeWindowStatus"
			local any_loadForLocalPlayer_result1_5 = var49.loadForLocalPlayer(var49)
			if not any_loadForLocalPlayer_result1_5 then
				any_loadForLocalPlayer_result1_5 = {}
			end
			if arg1._integrationsStatus[arg2] ~= module_6_upvr.IntegrationStatus.Window then
				var49 = false
			else
				var49 = true
			end
			any_loadForLocalPlayer_result1_5[arg2] = var49
			var49 = LocalStore_upvr.storeForLocalPlayer
			var49("ChromeWindowStatus", any_loadForLocalPlayer_result1_5)
		end
	end
	arg1:updateMenuList()
end
function module_6_upvr.isWindowOpen(arg1, arg2) -- Line 512
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local Window = arg1._integrations[arg2].components.Window
	if Window then
		if arg1._integrationsStatus[arg2] ~= module_6_upvr.IntegrationStatus.Window then
			Window = false
		else
			Window = true
		end
	end
	return Window
end
function module_6_upvr.menuList(arg1) -- Line 516
	return arg1._menuList
end
function module_6_upvr.windowList(arg1) -- Line 520
	return arg1._windowList
end
function module_6_upvr.dragConnection(arg1, arg2) -- Line 524
	if arg1._integrations[arg2] then
		return arg1._dragConnection[arg2]
	end
	return nil
end
function module_6_upvr.updateLocalization(arg1, arg2) -- Line 532
	arg1._localizedLabelKeys[arg2.id] = {}
	arg1._localizedLabelKeys[arg2.id].label = arg2.label
	local label_upvw = arg2.label
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 543
		--[[ Upvalues[2]:
			[1]: label_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		label_upvw = arg1._localization:Format(label_upvw)
	end)
	if not pcall_result1 then
		label_upvw = arg2.label
		warn(pcall_result2_2)
	end
	arg2.label = label_upvw
	if arg2.secondaryAction then
		arg1._localizedLabelKeys[arg2.id].secondaryActionLabel = arg2.secondaryAction.label
		local label_upvw_2 = arg2.secondaryAction.label
		local pcall_result1_3, pcall_result2 = pcall(function() -- Line 557
			--[[ Upvalues[2]:
				[1]: label_upvw_2 (read and write)
				[2]: arg1 (readonly)
			]]
			label_upvw_2 = arg1._localization:Format(label_upvw_2)
		end)
		if not pcall_result1_3 then
			label_upvw_2 = arg2.secondaryAction.label
			warn(pcall_result2)
		end
		arg2.secondaryAction.label = label_upvw_2
	end
	return arg2
end
local WindowSizeSignal_upvr = require(ChromeShared.Service.WindowSizeSignal)
local ContainerSlotSignal_upvr = require(ChromeShared.Service.ContainerSlotSignal)
function module_6_upvr.register(arg1, arg2) -- Line 572
	--[[ Upvalues[9]:
		[1]: module_6_upvr (readonly)
		[2]: AvailabilitySignal_4_upvr (readonly)
		[3]: NotifySignal_upvr (readonly)
		[4]: WindowSizeSignal_upvr (readonly)
		[5]: GetFFlagChromeTrackWindowStatus_upvr (readonly)
		[6]: GetFFlagChromeTrackWindowPosition_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: ContainerSlotSignal_upvr (readonly)
		[9]: FFlagConsoleChatOnExpControls_upvr (readonly)
	]]
	if arg1._integrations[arg2.id] then
		warn(string.format(arg2.id.."already registered", debug.traceback()))
		for _, v_3 in arg1._integrationsConnections[arg2.id] do
			v_3:disconnect()
		end
	end
	arg1._integrationsConnections[arg2.id] = {}
	local var66 = arg1._integrationsConnections[arg2.id]
	if arg2.initialAvailability == nil then
		arg2.initialAvailability = module_6_upvr.AvailabilitySignal.Unavailable
	end
	if arg2.availability == nil then
		local initialAvailability = arg2.initialAvailability
		if not initialAvailability then
			initialAvailability = module_6_upvr.AvailabilitySignal.Unavailable
		end
		arg2.availability = AvailabilitySignal_4_upvr.new(initialAvailability)
	end
	if arg2.notification == nil then
		arg2.notification = NotifySignal_upvr.new()
	end
	if arg2.components == nil then
		arg2.components = {}
	end
	if arg2.availability then
		var66[#var66 + 1] = arg2.availability:connect(function() -- Line 601
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (read and write)
			]]
			arg1:availabilityChanged(arg2)
		end)
	end
	if arg2.notification and not arg2.notification:excludeFromTotalCounts() then
		var66[#var66 + 1] = arg2.notification:connect(function() -- Line 607
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:updateNotificationTotals()
		end)
	end
	if arg2.windowSize == nil and arg2.components and arg2.components.Window then
		arg2.windowSize = WindowSizeSignal_upvr.new()
	end
	if GetFFlagChromeTrackWindowStatus_upvr() and module_6_upvr:getWindowStatusFromStore(arg2.id) and arg2.persistWindowState or arg2.windowDefaultOpen then
		arg1._integrationsStatus[arg2.id] = module_6_upvr.IntegrationStatus.Window
		arg1._onIntegrationStatusChanged:fire(arg2.id, arg1._integrationsStatus[arg2.id])
	end
	if GetFFlagChromeTrackWindowPosition_upvr() then
		local udim2 = UDim2.fromOffset(Constants_upvr.MENU_ICON_SCREEN_SIDE_OFFSET, Constants_upvr.WINDOW_DEFAULT_PADDING)
		if arg2.startingWindowPosition then
			if arg2.persistWindowState then
				local any_getWindowPositionFromStore_result1 = arg1:getWindowPositionFromStore(arg2.id)
				if not any_getWindowPositionFromStore_result1 then
					any_getWindowPositionFromStore_result1 = arg2.startingWindowPosition
				end
				udim2 = any_getWindowPositionFromStore_result1
			else
				udim2 = arg2.startingWindowPosition
			end
		end
		arg1._windowPositions[arg2.id] = udim2
	end
	if arg2.containerWidthSlots == nil and arg2.components and arg2.components.Container then
		arg2.containerWidthSlots = ContainerSlotSignal_upvr.new()
	end
	if arg2.containerWidthSlots then
		var66[#var66 + 1] = arg2.containerWidthSlots:connect(function() -- Line 645
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (read and write)
			]]
			arg1:containerWidthSlotsChanged(arg2)
		end)
	end
	arg2 = arg1:updateLocalization(arg2)
	local var73_upvw = arg2
	local var74_upvr = var73_upvw
	arg1._integrations[var73_upvw.id] = var74_upvr
	if FFlagConsoleChatOnExpControls_upvr and var73_upvw.selected then
		var66[#var66 + 1] = arg1:selectedItem():connect(function(arg1_2) -- Line 656
			--[[ Upvalues[2]:
				[1]: var74_upvr (readonly)
				[2]: var73_upvw (read and write)
			]]
			if var74_upvr.id == arg1_2 then
				var73_upvw.selected(var74_upvr)
			end
		end)
	end
	return var74_upvr
end
function module_6_upvr.createIconProps(arg1, arg2, arg3, arg4) -- Line 666
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local var76 = arg3 or 0
	if arg1._integrations[arg2] then
		local module_4 = {}
		module_4.id = arg2
		module_4.children = {}
		module_4.order = var76
		module_4.component = arg1._integrations[arg2].components.Icon
		module_4.integration = arg1._integrations[arg2]
		module_4.isDivider = false
		module_4.recentlyUsedItem = arg4 or false
		local function activated() -- Line 681
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:activate(arg2)
		end
		module_4.activated = activated
		return module_4
	end
	local module_2 = {}
	module_2.id = arg2
	module_2.children = {}
	module_2.order = var76
	module_2.activated = noop
	module_2.integration = tbl_6_upvr
	return module_2
end
function module_6_upvr.createContainerProps(arg1, arg2, arg3, arg4) -- Line 696
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local var79 = arg3 or 0
	if arg1._integrations[arg2] then
		local module_5 = {}
		module_5.id = arg2
		module_5.children = {}
		module_5.order = var79
		module_5.component = arg1._integrations[arg2].components.Container
		module_5.integration = arg1._integrations[arg2]
		module_5.isDivider = false
		module_5.recentlyUsedItem = arg4 or false
		function module_5.activated() -- Line 711
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:activate(arg2)
		end
		return module_5
	end
	local module = {}
	module.id = arg2
	module.children = {}
	module.order = var79
	module.activated = noop
	module.integration = tbl_6_upvr
	return module
end
function reverseOrder(arg1) -- Line 726
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local len_2 = #arg1
	local tbl_3 = {}
	for i_4 = 1, len_2 do
		tbl_3[i_4] = arg1[i_4].order
	end
	for i_5 = 1, len_2 do
		arg1[i_5].order = tbl_3[len_2 - i_5 + 1]
	end
end
local reverse_upvr = require(CorePackages.Packages.LuauPolyfill).Array.reverse
function module_6_upvr.updateMenuList(arg1) -- Line 739
	--[[ Upvalues[4]:
		[1]: tbl_6_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
		[4]: reverse_upvr (readonly)
	]]
	local var95_upvw = 0
	local var96_upvw = 0
	local function iconProps_upvr(arg1_3, arg2) -- Line 743, Named "iconProps"
		--[[ Upvalues[2]:
			[1]: var96_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		var96_upvw += 1
		return arg1:createIconProps(arg1_3, var96_upvw, arg2)
	end
	local function containerProps_upvr(arg1_4, arg2) -- Line 748, Named "containerProps"
		--[[ Upvalues[2]:
			[1]: var96_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		var96_upvw += 1
		return arg1:createContainerProps(arg1_4, var96_upvw, arg2)
	end
	local function windowProps_upvr(arg1_5) -- Line 753, Named "windowProps"
		--[[ Upvalues[3]:
			[1]: var96_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: tbl_6_upvr (copied, readonly)
		]]
		var96_upvw += 1
		if arg1._integrations[arg1_5] then
			local module_7 = {}
			module_7.id = arg1_5
			module_7.children = {}
			module_7.order = var96_upvw
			module_7.component = arg1._integrations[arg1_5].components.Window
			module_7.activated = noop
			module_7.integration = arg1._integrations[arg1_5]
			return module_7
		end
		local module_3 = {}
		module_3.id = arg1_5
		module_3.children = {}
		module_3.order = var96_upvw
		module_3.activated = noop
		module_3.integration = tbl_6_upvr
		return module_3
	end
	local function divider_upvr(arg1_6) -- Line 775, Named "divider"
		--[[ Upvalues[3]:
			[1]: var95_upvw (read and write)
			[2]: var96_upvw (read and write)
			[3]: tbl_6_upvr (copied, readonly)
		]]
		var95_upvw += 1
		var96_upvw += 1
		return {
			id = "DIV"..var95_upvw;
			order = var96_upvw;
			isDivider = true;
			children = {};
			activated = noop;
			integration = tbl_6_upvr;
		}
	end
	local function _(arg1_7) -- Line 788, Named "valid"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: module_6_upvr (copied, readonly)
		]]
		local var100 = arg1._integrations[arg1_7]
		if var100 then
			local availability = var100.availability
			local var102 = availability
			if var102 then
				if availability:get() == module_6_upvr.AvailabilitySignal.Unavailable then
					var102 = false
				else
					var102 = true
				end
			end
			return var102
		end
		return false
	end
	local function collectMenu_upvr(arg1_8, arg2, arg3, arg4) -- Line 799, Named "collectMenu"
		--[[ Upvalues[10]:
			[1]: module_6_upvr (copied, readonly)
			[2]: collectMenu_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: GetFFlagEnableChromePinIntegrations_upvr (copied, readonly)
			[5]: divider_upvr (readonly)
			[6]: var95_upvw (read and write)
			[7]: var96_upvw (read and write)
			[8]: windowProps_upvr (readonly)
			[9]: iconProps_upvr (readonly)
			[10]: containerProps_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1_8)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [240] 186. Error Block 47 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [240] 186. Error Block 47 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [240.9]
		-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
	end
	local tbl = {
		children = {};
	}
	local any_get_result1_4 = arg1._currentCompactUtility:get()
	if any_get_result1_4 and arg1._compactUtilityConfig[any_get_result1_4] then
		collectMenu_upvr(arg1._compactUtilityConfig[any_get_result1_4], tbl, {})
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		collectMenu_upvr(arg1._menuConfig, tbl, {})
	end
	if #tbl.children and tbl.children[#tbl.children] and tbl.children[#tbl.children].isDivider then
		table.remove(tbl.children, #tbl.children)
	end
	if arg1._orderAlignment:get() == Enum.HorizontalAlignment.Left then
		tbl.children = reverse_upvr(tbl.children)
		reverseOrder(tbl.children)
	end
	if any_get_result1_4 and arg1._compactUtilityConfig[any_get_result1_4] then
		for _, v_4 in arg1._windowList:get() do
			if arg1:isWindowOpen(v_4.integration.id) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, v_4)
			end
		end
	end
	arg1._menuList:set(tbl.children)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1._windowList:set({})
	arg1:repairSelected()
end
function module_6_upvr.availabilityChanged(arg1, arg2) -- Line 895
	arg1:updateNotificationTotals()
	arg1:updateMenuList()
end
function module_6_upvr.containerWidthSlotsChanged(arg1, arg2) -- Line 901
	arg1:updateMenuList()
end
function module_6_upvr.subMenuNotifications(arg1, arg2) -- Line 905
	--[[ Upvalues[1]:
		[1]: NotifySignal_upvr (readonly)
	]]
	if not arg1._subMenuNotifications[arg2] then
		arg1._subMenuNotifications[arg2] = NotifySignal_upvr.new(true)
	end
	return arg1._subMenuNotifications[arg2]
end
function module_6_upvr.totalNotifications(arg1) -- Line 912
	return arg1._totalNotifications
end
function module_6_upvr.onIntegrationRegistered(arg1) -- Line 916
	return arg1._onIntegrationRegistered
end
function module_6_upvr.onIntegrationActivated(arg1) -- Line 920
	return arg1._onIntegrationActivated
end
function module_6_upvr.onIntegrationHovered(arg1) -- Line 924
	return arg1._onIntegrationHovered
end
function module_6_upvr.onIntegrationStatusChanged(arg1) -- Line 928
	return arg1._onIntegrationStatusChanged
end
function module_6_upvr.integrations(arg1) -- Line 932
	return arg1._integrations
end
function module_6_upvr.userPins(arg1) -- Line 936
	return arg1._userPins
end
function module_6_upvr.mostRecentlyUsed(arg1) -- Line 940
	return arg1._mostRecentlyUsed
end
function module_6_upvr.updateNotificationTotals(arg1) -- Line 944
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var162
	for _, v_5 in arg1._integrations do
		if v_5.availability:get() ~= module_6_upvr.AvailabilitySignal.Unavailable then
			local AvailabilitySignal_5 = module_6_upvr.AvailabilitySignal
			if v_5.availability:get() ~= AvailabilitySignal_5.Pinned then
				if not v_5.notification:excludeFromTotalCounts() then
					local any_get_result1_3 = v_5.notification:get()
					if any_get_result1_3 and any_get_result1_3.type == "count" then
						if typeof(any_get_result1_3.value) ~= "number" then
							AvailabilitySignal_5 = false
						else
							AvailabilitySignal_5 = true
						end
						assert(AvailabilitySignal_5, "Expected count value to be number")
						var162 += any_get_result1_3.value
					end
				end
			end
		end
	end
	arg1._totalNotifications:fireCount(var162)
	for i_8, v_6 in arg1._subMenuNotifications do
		local any_withinCurrentTopLevelMenu_result1_3 = arg1:withinCurrentTopLevelMenu(i_8)
		var162 = 0
		if any_withinCurrentTopLevelMenu_result1_3 then
			for _, v_7 in any_withinCurrentTopLevelMenu_result1_3.children do
				if not arg1:withinCurrentTopLevelMenu(v_7.id) then
					if v_7.integration.availability:get() ~= module_6_upvr.AvailabilitySignal.Unavailable and not v_7.integration.notification:excludeFromTotalCounts() then
						local any_get_result1_5 = v_7.integration.notification:get()
						if any_get_result1_5 then
							local var167
							if any_get_result1_5.type == "count" then
								if typeof(any_get_result1_5.value) ~= "number" then
									var167 = false
								else
									var167 = true
								end
								assert(var167, "Expected count value to be number")
								var162 += any_get_result1_5.value
							end
						end
					end
				end
			end
			v_6:fireCount(var162)
		end
	end
end
function module_6_upvr.configureReset(arg1) -- Line 988
	arg1._menuConfig = {}
	arg1._subMenuConfig = {}
	arg1._compactUtilityConfig = {}
	arg1._subMenuNotifications = {}
	arg1:updateMenuList()
end
function module_6_upvr.configureMenu(arg1, arg2) -- Line 996
	arg1._menuConfig = arg2
	arg1:updateNotificationTotals()
	arg1:updateMenuList()
end
function module_6_upvr.configureSubMenu(arg1, arg2, arg3) -- Line 1002
	--[[ Upvalues[1]:
		[1]: NotifySignal_upvr (readonly)
	]]
	arg1._subMenuConfig[arg2] = arg3
	if not arg1._subMenuNotifications[arg2] then
		arg1._subMenuNotifications[arg2] = NotifySignal_upvr.new(true)
	end
	arg1:updateNotificationTotals()
	arg1:updateMenuList()
end
if FFlagEnableChromeShortcutBar_upvr then
	local FFlagChromeShortcutDisableRespawn_upvr = SharedFlags.FFlagChromeShortcutDisableRespawn
	function module_6_upvr.registerShortcut(arg1, arg2) -- Line 1012
		--[[ Upvalues[2]:
			[1]: FFlagChromeShortcutDisableRespawn_upvr (readonly)
			[2]: module_6_upvr (readonly)
		]]
		arg1._shortcutService:registerShortcut(arg2)
		if FFlagChromeShortcutDisableRespawn_upvr then
			local any_getShortcut_result1_upvr_2 = arg1._shortcutService:getShortcut(arg2.id)
			if any_getShortcut_result1_upvr_2.integration then
				if arg1._integrations[any_getShortcut_result1_upvr_2.integration] then
					local var174_upvr = arg1._integrations[any_getShortcut_result1_upvr_2.integration]
					if var174_upvr.availability:get() == module_6_upvr.AvailabilitySignal.Unavailable then
						any_getShortcut_result1_upvr_2.availability:unavailable()
					end
					var174_upvr.availability:connect(function() -- Line 1022
						--[[ Upvalues[3]:
							[1]: var174_upvr (readonly)
							[2]: module_6_upvr (copied, readonly)
							[3]: any_getShortcut_result1_upvr_2 (readonly)
						]]
						local any_get_result1 = var174_upvr.availability:get()
						if any_get_result1 == module_6_upvr.AvailabilitySignal.Unavailable then
							any_getShortcut_result1_upvr_2.availability:unavailable()
						elseif any_get_result1 == module_6_upvr.AvailabilitySignal.Available or any_get_result1 == module_6_upvr.AvailabilitySignal.Pinned then
							any_getShortcut_result1_upvr_2.availability:available()
						end
					end)
				end
			end
		end
	end
	local FFlagIntegrationsChromeShortcutTelemetry_upvr = require(ChromeShared.Parent.Flags.FFlagIntegrationsChromeShortcutTelemetry)
	function module_6_upvr.activateShortcut(arg1, arg2) -- Line 1037
		--[[ Upvalues[1]:
			[1]: FFlagIntegrationsChromeShortcutTelemetry_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local any_getShortcut_result1 = arg1._shortcutService:getShortcut(arg2)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 23. Error Block 11 start (CF ANALYSIS FAILED)
		if FFlagIntegrationsChromeShortcutTelemetry_upvr then
			arg1:activate(any_getShortcut_result1.integration, {
				fromShortcut = true;
			})
			return
		end
		arg1:activate(any_getShortcut_result1.integration)
		do
			return
		end
		-- KONSTANTERROR: [32] 23. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [50] 36. Error Block 8 start (CF ANALYSIS FAILED)
		arg1._shortcutService:activateShortcut(arg2)
		-- KONSTANTERROR: [50] 36. Error Block 8 end (CF ANALYSIS FAILED)
	end
	function module_6_upvr.configureShortcutBar(arg1, arg2, arg3) -- Line 1057
		arg1._shortcutService:configureShortcutBar(arg2, arg3)
	end
	function module_6_upvr.setShortcutBar(arg1, arg2) -- Line 1061
		arg1._shortcutService:setShortcutBar(arg2)
	end
	function module_6_upvr.getCurrentShortcutBar(arg1) -- Line 1065
		return arg1._currentShortcutBar
	end
	function module_6_upvr.getShortcutsFromBar(arg1, arg2) -- Line 1069
		return arg1._shortcutService:getShortcutsFromBar(arg2, arg1._integrations)
	end
	function module_6_upvr.getCurrentShortcuts(arg1) -- Line 1073
		return arg1:getShortcutsFromBar(arg1._currentShortcutBar:get())
	end
	function module_6_upvr.onShortcutBarChanged(arg1) -- Line 1077
		return arg1._shortcutService.onShortcutBarChanged
	end
	function module_6_upvr.selectMenuIcon(arg1) -- Line 1081
		arg1._triggerMenuIcon:fire()
	end
	function module_6_upvr.onTriggerMenuIcon(arg1) -- Line 1085
		return arg1._triggerMenuIcon
	end
	function module_6_upvr.setHideShortcutBar(arg1, arg2, arg3) -- Line 1089
		arg1._shortcutService:setHideShortcutBar(arg2, arg3)
	end
	function module_6_upvr.getHideShortcutBar(arg1) -- Line 1093
		return arg1._shortcutService:getHideShortcutBar()
	end
end
if isInExperienceUIVREnabled_upvr then
	function module_6_upvr.onTriggerVRToggleButton(arg1) -- Line 1099
		return arg1._triggerVRToggleButton
	end
	function module_6_upvr.showTopBar(arg1) -- Line 1103
		return arg1._topBarVisibility:get()
	end
	function module_6_upvr.getTopBarVisibiity(arg1) -- Line 1107
		return arg1._topBarVisibility
	end
	function module_6_upvr.connectTopBarVisibility(arg1, arg2) -- Line 1111
		arg1._topBarVisibility = arg2
	end
end
function module_6_upvr.getCurrentUtility(arg1) -- Line 1116
	return arg1._currentCompactUtility
end
function module_6_upvr.gesture(arg1, arg2, arg3, arg4) -- Line 1120
	if arg1._integrations[arg2] then
		local tbl_4 = {}
		tbl_4.connection = arg3
		tbl_4.inputObject = arg4
		arg1._dragConnection[arg2] = tbl_4
	end
end
function module_6_upvr.withinCurrentTopLevelMenu(arg1, arg2) -- Line 1133
	for i_10, v_8 in arg1._menuList:get(), nil do
		if v_8.id == arg2 then
			return v_8, i_10
		end
	end
	return nil, 0
end
function module_6_upvr.withinCurrentSubmenu(arg1, arg2) -- Line 1143
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local any_get_result1_11 = arg1._currentSubMenu:get()
	if not any_get_result1_11 then
		return false
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.10]
	-- KONSTANTERROR: [18] 15. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_6_upvr.removeRecentlyUsed(arg1, arg2) -- Line 1172
	local table_find_result1 = table.find(arg1._mostRecentlyUsedFullRecord, arg2)
	if table_find_result1 then
		table.remove(arg1._mostRecentlyUsedFullRecord, table_find_result1)
	end
	arg1:rebuildMostRecentlyUsed()
end
function module_6_upvr.isUserPinned(arg1, arg2) -- Line 1181
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
	]]
	local GetFFlagEnableChromePinIntegrations_upvr_result1 = GetFFlagEnableChromePinIntegrations_upvr()
	if GetFFlagEnableChromePinIntegrations_upvr_result1 then
		if table.find(arg1._userPins, arg2) == nil then
			GetFFlagEnableChromePinIntegrations_upvr_result1 = false
		else
			GetFFlagEnableChromePinIntegrations_upvr_result1 = true
		end
	end
	return GetFFlagEnableChromePinIntegrations_upvr_result1
end
function module_6_upvr.removeUserPin(arg1, arg2) -- Line 1185
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
	]]
	if not GetFFlagEnableChromePinIntegrations_upvr() then
	else
		local table_find_result1_2 = table.find(arg1._userPins, arg2)
		if table_find_result1_2 then
			table.remove(arg1._userPins, table_find_result1_2)
		end
		arg1:updateMenuList()
		arg1:updateNotificationTotals()
	end
end
function module_6_upvr.setUserPin(arg1, arg2, arg3) -- Line 1199
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
	]]
	if arg3 or arg1:withinCurrentSubmenu(arg2) and not arg1:isUserPinned(arg2) then
		if #arg1._userPins < arg1._mostRecentlyUsedAndPinnedLimit and GetFFlagEnableChromePinIntegrations_upvr() then
			table.insert(arg1._userPins, arg2)
			arg1:removeRecentlyUsed(arg2)
		end
	end
end
function module_6_upvr.areUserPinsFull(arg1) -- Line 1211
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
	]]
	local var11_result1 = GetFFlagEnableChromePinIntegrations_upvr()
	if var11_result1 then
		if arg1._mostRecentlyUsedAndPinnedLimit > #arg1._userPins then
			var11_result1 = false
		else
			var11_result1 = true
		end
	end
	return var11_result1
end
function module_6_upvr.windowPosition(arg1, arg2) -- Line 1215
	return arg1._windowPositions[arg2]
end
function module_6_upvr.updateWindowPosition(arg1, arg2, arg3) -- Line 1219
	--[[ Upvalues[2]:
		[1]: GetFFlagChromeTrackWindowPosition_upvr (readonly)
		[2]: LocalStore_upvr (readonly)
	]]
	if GetFFlagChromeTrackWindowPosition_upvr() and LocalStore_upvr.isEnabled() and arg1._integrations[arg2] and arg1._integrations[arg2].persistWindowState then
		local any_loadForLocalPlayer_result1_4 = LocalStore_upvr.loadForLocalPlayer("ChromeWindowPosition")
		if not any_loadForLocalPlayer_result1_4 then
			any_loadForLocalPlayer_result1_4 = {}
		end
		any_loadForLocalPlayer_result1_4[arg2] = {arg3.X.Scale, arg3.X.Offset, arg3.Y.Scale, arg3.Y.Offset}
		LocalStore_upvr.storeForLocalPlayer("ChromeWindowPosition", any_loadForLocalPlayer_result1_4)
	end
	arg1._windowPositions[arg2] = arg3
end
function module_6_upvr.getWindowStatusFromStore(arg1, arg2) -- Line 1232
	--[[ Upvalues[2]:
		[1]: GetFFlagChromeTrackWindowStatus_upvr (readonly)
		[2]: LocalStore_upvr (readonly)
	]]
	if GetFFlagChromeTrackWindowStatus_upvr() and LocalStore_upvr.isEnabled() then
		local any_loadForLocalPlayer_result1_3 = LocalStore_upvr.loadForLocalPlayer("ChromeWindowStatus")
		if not any_loadForLocalPlayer_result1_3 then
			any_loadForLocalPlayer_result1_3 = {}
		end
		return any_loadForLocalPlayer_result1_3[arg2] or false
	end
	return nil
end
function module_6_upvr.getWindowPositionFromStore(arg1, arg2) -- Line 1242
	--[[ Upvalues[2]:
		[1]: GetFFlagChromeTrackWindowPosition_upvr (readonly)
		[2]: LocalStore_upvr (readonly)
	]]
	if GetFFlagChromeTrackWindowPosition_upvr() and LocalStore_upvr.isEnabled() then
		local any_loadForLocalPlayer_result1_2 = LocalStore_upvr.loadForLocalPlayer("ChromeWindowPosition")
		if not any_loadForLocalPlayer_result1_2 then
			any_loadForLocalPlayer_result1_2 = {}
		end
		local var192 = any_loadForLocalPlayer_result1_2[arg2] or nil
		if var192 then
			return UDim2.new(var192[1], var192[2], var192[3], var192[4])
		end
		return nil
	end
	return nil
end
local any_GetFFlagConnectGamepadChrome_result1_upvr = SharedFlags.GetFFlagConnectGamepadChrome()
function module_6_upvr.activate(arg1, arg2, arg3) -- Line 1253
	--[[ Upvalues[3]:
		[1]: FFlagIntegrationsChromeShortcutTelemetry_upvr (readonly)
		[2]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[3]: any_GetFFlagConnectGamepadChrome_result1_upvr (readonly)
	]]
	local var194
	if arg1._integrations[arg2] then
		local activated_3_upvr = arg1._integrations[arg2].activated
		if FFlagIntegrationsChromeShortcutTelemetry_upvr then
			arg1._onIntegrationActivated:fire(arg2, arg3)
		else
			arg1._onIntegrationActivated:fire(arg2)
		end
		arg1:storeChromeInteracted()
		if activated_3_upvr then
			local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 1269
				--[[ Upvalues[5]:
					[1]: activated_3_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: arg2 (readonly)
					[4]: FFlagConsoleChatOnExpControls_upvr (copied, readonly)
					[5]: any_GetFFlagConnectGamepadChrome_result1_upvr (copied, readonly)
				]]
				activated_3_upvr(arg1._integrations[arg2])
				if not FFlagConsoleChatOnExpControls_upvr and any_GetFFlagConnectGamepadChrome_result1_upvr then
					arg1:disableFocusNav()
				end
			end)
			if not pcall_result1_2 then
				warn("ChromeService: activate error thrown for "..arg2)
				var194 = pcall_result2_3
				-- KONSTANTWARNING: GOTO [60] #48
			end
		else
			if arg1._subMenuConfig[arg2] then
				arg1:toggleSubMenu(arg2)
			end
			arg1:toggleWindow(arg2)
		end
		if arg1._currentSubMenu:get() ~= arg2 then
			arg1._currentSubMenu:set(nil)
		end
	end
	if var194 then
		activated_3_upvr = error
		activated_3_upvr(var194)
	end
end
function module_6_upvr.selectedItem(arg1) -- Line 1297
	return arg1._selectedItem
end
local UserInputService_upvr = game:GetService("UserInputService")
function module_6_upvr.setSelected(arg1, arg2) -- Line 1301
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local any_withinCurrentTopLevelMenu_result1_4, any_withinCurrentTopLevelMenu_result2_3 = arg1:withinCurrentTopLevelMenu(arg2 or "")
	local var202
	if not any_withinCurrentTopLevelMenu_result1_4 then
	else
		local any_GetLastInputType_result1 = UserInputService_upvr:GetLastInputType()
		var202 = true
		if any_GetLastInputType_result1 ~= Enum.UserInputType.MouseButton1 then
			if any_GetLastInputType_result1 ~= Enum.UserInputType.Touch then
				var202 = false
			else
				var202 = true
			end
		end
		local any_get_result1_7 = arg1._currentSubMenu:get()
		if any_get_result1_7 and any_get_result1_7 ~= arg2 and not var202 then
			arg1:toggleSubMenu(any_get_result1_7)
		end
		arg1._selectedItemIdx = any_withinCurrentTopLevelMenu_result2_3
		arg1._selectedItem:set(arg2)
	end
end
function module_6_upvr.setSelectedByOffset(arg1, arg2) -- Line 1319
	local any_get_result1_6 = arg1._menuList:get()
	local _, any_withinCurrentTopLevelMenu_result2_2 = arg1:withinCurrentTopLevelMenu(arg1._selectedItem:get() or "")
	if 0 < any_withinCurrentTopLevelMenu_result2_2 then
		arg1:setSelected(any_get_result1_6[math.clamp(any_withinCurrentTopLevelMenu_result2_2 + arg2, 1, #any_get_result1_6)].id)
	end
end
function module_6_upvr.repairSelected(arg1) -- Line 1329
	if arg1._selectedItem:get() then
		local _, any_withinCurrentTopLevelMenu_result2 = arg1:withinCurrentTopLevelMenu(arg1._selectedItem:get() or "")
		if any_withinCurrentTopLevelMenu_result2 == 0 then
			any_withinCurrentTopLevelMenu_result2 = arg1._selectedItemIdx
		end
		local any_get_result1_8 = arg1._menuList:get()
		arg1:setSelected(any_get_result1_8[math.clamp(any_withinCurrentTopLevelMenu_result2, 1, #any_get_result1_8)].id)
	end
end
function module_6_upvr.configureOrderAlignment(arg1, arg2) -- Line 1343
	if arg1._orderAlignment:get() ~= arg2 then
		arg1._orderAlignment:set(arg2)
		arg1:updateMenuList()
	end
end
function module_6_upvr.orderAlignment(arg1) -- Line 1350
	return arg1._orderAlignment
end
function module_6_upvr.setMenuAbsolutePosition(arg1, arg2) -- Line 1354
	if arg2 ~= arg1._menuAbsolutePosition then
		arg1._menuAbsolutePosition = arg2
		arg1._layout:set(createUnibarLayoutInfo(arg2, arg1._menuAbsoluteSizeOpen))
	end
end
function module_6_upvr.setMenuAbsoluteSize(arg1, arg2) -- Line 1361
	if arg2 ~= arg1._menuAbsoluteSizeOpen then
		arg1._menuAbsoluteSizeOpen = arg2
		arg1._layout:set(createUnibarLayoutInfo(arg1._menuAbsolutePosition, arg2))
	end
end
function module_6_upvr.layout(arg1) -- Line 1368
	return arg1._layout
end
return module_6_upvr