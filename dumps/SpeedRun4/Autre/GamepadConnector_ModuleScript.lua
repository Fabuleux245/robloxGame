-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:17
-- Luau version 6, Types version 3
-- Time taken: 0.007987 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav_upvr = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagHideTopBarConsole_upvr = SharedFlags.FFlagHideTopBarConsole
local FFlagEnableChromeShortcutBar_upvr = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagIgnoreDevGamepadBindingsMenuOpen_upvr = SharedFlags.FFlagIgnoreDevGamepadBindingsMenuOpen
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagGamepadConnectorUseChromeFocusAPI_upvr = SharedFlags.FFlagGamepadConnectorUseChromeFocusAPI
local Parent = script.Parent.Parent.Parent
local LogGamepadOpenExperienceControlsMenu_upvr = require(Parent.TopBar:WaitForChild("Telemetry")).LogGamepadOpenExperienceControlsMenu
local Chrome = Parent.Chrome
local var14_upvr = require(Chrome.Enabled)()
local var15_upvr
if var14_upvr then
	var15_upvr = require(Chrome.Service)
else
	var15_upvr = nil
end
local Chrome_upvr = require(CorePackages.Workspace.Packages.Chrome)
local FocusUtils_upvr = Chrome_upvr.FocusUtils
if var14_upvr and (FFlagTiltIconUnibarFocusNav_upvr or FFlagHideTopBarConsole_upvr) then
	Chrome_upvr = require(Chrome.ChromeShared.Service.ChromeUtils).ObservableValue
else
	Chrome_upvr = nil
end
local Constants_upvr = require(script.Parent.Parent.Constants)
local any_GetFocusNavigationStore_result1_upvr = require(CorePackages.Workspace.Packages.ExpChat).Stores.GetFocusNavigationStore(false)
local var20_upvw
if SharedFlags.GetFFlagToastNotificationsGamepadSupport() then
	local var22_upvw
	local CoreGui_upvr = game:GetService("CoreGui")
	local var24_upvw
	task.spawn(function() -- Line 57
		--[[ Upvalues[4]:
			[1]: var22_upvw (read and write)
			[2]: CoreGui_upvr (readonly)
			[3]: var24_upvw (read and write)
			[4]: var20_upvw (read and write)
		]]
		local ToastNotification = CoreGui_upvr:WaitForChild("ToastNotification", 3)
		var22_upvw = ToastNotification
		if var22_upvw ~= nil then
			ToastNotification = var22_upvw:WaitForChild("ToastNotificationWrapper", 3)
		else
			ToastNotification = nil
		end
		var24_upvw = ToastNotification
		if var24_upvw ~= nil then
			ToastNotification = var24_upvw:FindFirstChild("Toast", true)
		else
			ToastNotification = nil
		end
		var20_upvw = ToastNotification
	end)
end
local function createSelectedCoreObject_upvr() -- Line 107, Named "createSelectedCoreObject"
	--[[ Upvalues[5]:
		[1]: Chrome_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[4]: FFlagIgnoreDevGamepadBindingsMenuOpen_upvr (readonly)
		[5]: var15_upvr (readonly)
	]]
	local any_new_result1_upvr = Chrome_upvr.new(GuiService_upvr.SelectedCoreObject)
	GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 109
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		any_new_result1_upvr:set(GuiService_upvr.SelectedCoreObject)
	end)
	if not FFlagConsoleChatOnExpControls_upvr and FFlagIgnoreDevGamepadBindingsMenuOpen_upvr then
		any_new_result1_upvr:connect(function(arg1) -- Line 114
			--[[ Upvalues[2]:
				[1]: var15_upvr (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
			]]
			if not arg1 then
				var15_upvr:disableFocusNav()
				GuiService_upvr:SetMenuIsOpen(false, "TopbarMenu")
			end
		end)
	end
	return any_new_result1_upvr
end
local function _(arg1) -- Line 125, Named "isInputGamepad"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	for _, v in Constants_upvr.GamepadInputTypes do
		if arg1 == v then
			return true
		end
	end
	return false
end
local module_upvr = {}
module_upvr.__index = module_upvr
local UserInputService_upvr = game:GetService("UserInputService")
local SettingsShowSignal_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
local FFlagShowUnibarOnVirtualCursor_upvr = SharedFlags.FFlagShowUnibarOnVirtualCursor
local GamepadService_upvr = game:GetService("GamepadService")
local FFlagGamepadConnectorSetCoreGuiNavEnabled_upvr = SharedFlags.FFlagGamepadConnectorSetCoreGuiNavEnabled
function module_upvr.new() -- Line 138
	--[[ Upvalues[15]:
		[1]: GuiService_upvr (readonly)
		[2]: var15_upvr (readonly)
		[3]: var14_upvr (readonly)
		[4]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[5]: FFlagHideTopBarConsole_upvr (readonly)
		[6]: createSelectedCoreObject_upvr (readonly)
		[7]: Chrome_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
		[9]: Constants_upvr (readonly)
		[10]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[11]: SettingsShowSignal_upvr (readonly)
		[12]: FFlagShowUnibarOnVirtualCursor_upvr (readonly)
		[13]: GamepadService_upvr (readonly)
		[14]: FFlagGamepadConnectorSetCoreGuiNavEnabled_upvr (readonly)
		[15]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	local module_upvr_2 = {
		_loggedExperienceMenuGamepadExposure = false;
		_devSetCoreGuiNavEnabled = GuiService_upvr.CoreGuiNavigationEnabled;
		_topbarFocused = var15_upvr:inFocusNav();
	}
	local var38 = 0
	module_upvr_2._lastMenuButtonPress = var38
	if var14_upvr and (FFlagTiltIconUnibarFocusNav_upvr or FFlagHideTopBarConsole_upvr) then
		var38 = createSelectedCoreObject_upvr()
	else
		var38 = nil
	end
	module_upvr_2._selectedCoreObject = var38
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 26. Error Block 9 start (CF ANALYSIS FAILED)
	local var39 = FFlagHideTopBarConsole_upvr
	-- KONSTANTERROR: [33] 26. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 42. Error Block 44 start (CF ANALYSIS FAILED)
	var39 = var39(false)
	local var40 = var39
	module_upvr_2._gamepadActive = var40
	if FFlagEnableChromeShortcutBar_upvr then
		var40 = Chrome_upvr.new(false)
	else
		var40 = nil
	end
	module_upvr_2._tiltMenuOpen = var40
	module_upvr_2._showTopBar = Chrome_upvr.new(true)
	UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1) -- Line 151
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 11. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 11. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.8]
		if arg1 == nil then
			-- KONSTANTWARNING: GOTO [16] #13
		end
		-- KONSTANTERROR: [9] 8. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	if FFlagEnableChromeShortcutBar_upvr then
		SettingsShowSignal_upvr:connect(function(arg1) -- Line 156
			--[[ Upvalues[1]:
				[1]: module_upvr_2 (readonly)
			]]
			module_upvr_2._tiltMenuOpen:set(arg1)
		end)
	end
	local function var43() -- Line 161
		--[[ Upvalues[6]:
			[1]: module_upvr_2 (readonly)
			[2]: FFlagEnableChromeShortcutBar_upvr (copied, readonly)
			[3]: FFlagShowUnibarOnVirtualCursor_upvr (copied, readonly)
			[4]: GamepadService_upvr (copied, readonly)
			[5]: FFlagGamepadConnectorSetCoreGuiNavEnabled_upvr (copied, readonly)
			[6]: GuiService_upvr (copied, readonly)
		]]
		local var44
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var44 = module_upvr_2._topbarFocused:get()
			return var44
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var44 = true
			return module_upvr_2._selectedCoreObject:get() == nil
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var44 = module_upvr_2._tiltMenuOpen:get()
			return var44
		end
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var44 = FFlagShowUnibarOnVirtualCursor_upvr
			return var44
		end
		if not var44 and not INLINED() and INLINED_2() and (not FFlagEnableChromeShortcutBar_upvr or not INLINED_3()) or INLINED_4() then
			var44 = GamepadService_upvr.GamepadCursorEnabled
		end
		module_upvr_2._showTopBar:set(var44)
		if FFlagGamepadConnectorSetCoreGuiNavEnabled_upvr then
			if var44 then
				GuiService_upvr.CoreGuiNavigationEnabled = true
				return
			end
			GuiService_upvr.CoreGuiNavigationEnabled = module_upvr_2._devSetCoreGuiNavEnabled
		end
	end
	module_upvr_2._selectedCoreObject:connect(var43)
	module_upvr_2._topbarFocused:connect(var43)
	if FFlagEnableChromeShortcutBar_upvr then
		module_upvr_2._tiltMenuOpen:connect(var43)
	end
	if FFlagShowUnibarOnVirtualCursor_upvr then
		GamepadService_upvr:GetPropertyChangedSignal("GamepadCursorEnabled"):Connect(var43)
	end
	module_upvr_2._gamepadActive:connect(var43, true)
	-- KONSTANTERROR: [54] 42. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 108. Error Block 35 start (CF ANALYSIS FAILED)
	if FFlagGamepadConnectorSetCoreGuiNavEnabled_upvr then
		GuiService_upvr:GetPropertyChangedSignal("CoreGuiNavigationEnabled"):Connect(function() -- Line 190
			--[[ Upvalues[2]:
				[1]: module_upvr_2 (readonly)
				[2]: GuiService_upvr (copied, readonly)
			]]
			module_upvr_2._devSetCoreGuiNavEnabled = GuiService_upvr.CoreGuiNavigationEnabled
		end)
	end
	do
		return setmetatable(module_upvr_2, module_upvr)
	end
	-- KONSTANTERROR: [138] 108. Error Block 35 end (CF ANALYSIS FAILED)
end
function module_upvr.connectToTopbar(arg1) -- Line 198
	--[[ Upvalues[6]:
		[1]: var14_upvr (readonly)
		[2]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[5]: FFlagIgnoreDevGamepadBindingsMenuOpen_upvr (readonly)
		[6]: var15_upvr (readonly)
	]]
	if var14_upvr then
		if FFlagEnableChromeShortcutBar_upvr then
			arg1:disconnectFromTopbar()
		end
		ContextActionService_upvr:BindCoreAction("FocusGamepadToTopbar", arg1:_bindSelf(arg1._toggleTopbar), false, Enum.KeyCode.ButtonStart)
		if FFlagConsoleChatOnExpControls_upvr and FFlagIgnoreDevGamepadBindingsMenuOpen_upvr then
			arg1:getSelectedCoreObject():connect(function(arg1_2) -- Line 211
				--[[ Upvalues[2]:
					[1]: var15_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				if not arg1_2 then
					var15_upvr:disableFocusNav()
					arg1.setTopbarActive(false)
				end
			end)
		end
	end
end
function module_upvr.disconnectFromTopbar(arg1) -- Line 221
	--[[ Upvalues[2]:
		[1]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
	]]
	if FFlagConsoleChatOnExpControls_upvr then
		arg1.setTopbarActive(false)
	end
	ContextActionService_upvr:UnbindCoreAction("FocusGamepadToTopbar")
end
function module_upvr.getSelectedCoreObject(arg1) -- Line 228
	return arg1._selectedCoreObject
end
function module_upvr.getShowTopBar(arg1) -- Line 232
	return arg1._showTopBar
end
function module_upvr.getGamepadActive(arg1) -- Line 236
	return arg1._gamepadActive
end
function module_upvr.setTopbarActive(arg1) -- Line 240
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr:SetMenuIsOpen(arg1, "TopbarMenu")
end
local FFlagChromeFixDelayLoadControlLock_upvr = SharedFlags.FFlagChromeFixDelayLoadControlLock
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UseToBarFocusedToToggleTopBar", false)
local MenuIconSelectedSignal_upvr = FocusUtils_upvr.MenuIconSelectedSignal
function module_upvr._toggleTopbar(arg1, arg2, arg3, arg4) -- Line 245
	--[[ Upvalues[13]:
		[1]: var14_upvr (readonly)
		[2]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[3]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[4]: FFlagHideTopBarConsole_upvr (readonly)
		[5]: FFlagChromeFixDelayLoadControlLock_upvr (readonly)
		[6]: var15_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: MenuIconSelectedSignal_upvr (readonly)
		[9]: any_GetFocusNavigationStore_result1_upvr (readonly)
		[10]: FFlagGamepadConnectorUseChromeFocusAPI_upvr (readonly)
		[11]: FFlagIgnoreDevGamepadBindingsMenuOpen_upvr (readonly)
		[12]: GuiService_upvr (readonly)
		[13]: LogGamepadOpenExperienceControlsMenu_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 54 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [121] 94. Error Block 41 start (CF ANALYSIS FAILED)
	do
		return Enum.ContextActionResult.Sink
	end
	-- KONSTANTERROR: [121] 94. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [124] 96. Error Block 42 start (CF ANALYSIS FAILED)
	do
		return Enum.ContextActionResult.Pass
	end
	-- KONSTANTERROR: [124] 96. Error Block 42 end (CF ANALYSIS FAILED)
end
function module_upvr._toggleUnibarMenu(arg1) -- Line 291
	--[[ Upvalues[3]:
		[1]: FFlagGamepadConnectorUseChromeFocusAPI_upvr (readonly)
		[2]: var15_upvr (readonly)
		[3]: LogGamepadOpenExperienceControlsMenu_upvr (readonly)
	]]
	local any_get_result1 = arg1._topbarFocused:get()
	if any_get_result1 then
		if FFlagGamepadConnectorUseChromeFocusAPI_upvr then
			arg1:_unfocusGamepadFromTopBar()
		else
			var15_upvr:disableFocusNav()
		end
	elseif FFlagGamepadConnectorUseChromeFocusAPI_upvr then
		arg1:_focusGamepadToTopBar()
	else
		var15_upvr:enableFocusNav()
	end
	arg1:_logExperienceMenuGamepadExposure()
	LogGamepadOpenExperienceControlsMenu_upvr(any_get_result1)
end
function module_upvr._focusGamepadToTopBar(arg1) -- Line 310
	--[[ Upvalues[2]:
		[1]: FocusUtils_upvr (readonly)
		[2]: FFlagIgnoreDevGamepadBindingsMenuOpen_upvr (readonly)
	]]
	FocusUtils_upvr.FocusOnChrome(function() -- Line 311
		--[[ Upvalues[2]:
			[1]: FFlagIgnoreDevGamepadBindingsMenuOpen_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if FFlagIgnoreDevGamepadBindingsMenuOpen_upvr then
			arg1.setTopbarActive(true)
		end
	end)
end
local FFlagConsoleChatUseChromeFocusUtils_upvr = SharedFlags.FFlagConsoleChatUseChromeFocusUtils
function module_upvr._unfocusGamepadFromTopBar(arg1) -- Line 318
	--[[ Upvalues[5]:
		[1]: FocusUtils_upvr (readonly)
		[2]: FFlagConsoleChatUseChromeFocusUtils_upvr (readonly)
		[3]: any_GetFocusNavigationStore_result1_upvr (readonly)
		[4]: FFlagIgnoreDevGamepadBindingsMenuOpen_upvr (readonly)
		[5]: GuiService_upvr (readonly)
	]]
	FocusUtils_upvr.FocusOffChrome(function() -- Line 319
		--[[ Upvalues[5]:
			[1]: FFlagConsoleChatUseChromeFocusUtils_upvr (copied, readonly)
			[2]: any_GetFocusNavigationStore_result1_upvr (copied, readonly)
			[3]: FFlagIgnoreDevGamepadBindingsMenuOpen_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: GuiService_upvr (copied, readonly)
		]]
		if FFlagConsoleChatUseChromeFocusUtils_upvr and any_GetFocusNavigationStore_result1_upvr.getChatInputBarFocused(false) then
			any_GetFocusNavigationStore_result1_upvr.unfocusChatInputBar()
		end
		if FFlagIgnoreDevGamepadBindingsMenuOpen_upvr then
			arg1.setTopbarActive(false)
		end
		GuiService_upvr.SelectedCoreObject = nil
	end)
end
local ToastNotificationConstants_upvr = require(CorePackages.Workspace.Packages.ToastNotification).ToastNotificationConstants
function module_upvr._focusToastNotification(arg1, arg2) -- Line 330
	--[[ Upvalues[2]:
		[1]: var20_upvw (read and write)
		[2]: ToastNotificationConstants_upvr (readonly)
	]]
	local function _() -- Line 331, Named "buttonHoldTime"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return tick() - arg1._lastMenuButtonPress
	end
	local var57
	if var20_upvw ~= nil then
		var57 = var20_upvw.Visible
	end
	if arg2 == Enum.UserInputState.Begin then
		arg1._lastMenuButtonPress = tick()
		return false
	end
	local var58 = false
	if arg2 == Enum.UserInputState.End then
		var58 = var57
		if var58 then
			if tick() - arg1._lastMenuButtonPress >= ToastNotificationConstants_upvr.MenuButtonPressHoldTime then
				var58 = false
			else
				var58 = true
			end
		end
	end
	return var58
end
local FFlagExperienceMenuGamepadExposureEnabled_upvr = SharedFlags.FFlagExperienceMenuGamepadExposureEnabled
local IXPServiceWrapper_upvr = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local AppUserLayers_upvr = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers
function module_upvr._logExperienceMenuGamepadExposure(arg1) -- Line 345
	--[[ Upvalues[3]:
		[1]: FFlagExperienceMenuGamepadExposureEnabled_upvr (readonly)
		[2]: IXPServiceWrapper_upvr (readonly)
		[3]: AppUserLayers_upvr (readonly)
	]]
	if FFlagExperienceMenuGamepadExposureEnabled_upvr and not arg1._loggedExperienceMenuGamepadExposure then
		IXPServiceWrapper_upvr:LogFlagLinkedUserLayerExposure(AppUserLayers_upvr.ExperienceMenuGamepadExposureLayer)
		arg1._loggedExperienceMenuGamepadExposure = true
	end
end
function module_upvr._bindSelf(arg1, arg2) -- Line 352
	return function(...) -- Line 353
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		return arg2(arg1, ...)
	end
end
if FFlagHideTopBarConsole_upvr then
	return module_upvr.new()
end
return module_upvr