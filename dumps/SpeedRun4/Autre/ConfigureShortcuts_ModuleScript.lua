-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:00
-- Luau version 6, Types version 3
-- Time taken: 0.006894 seconds

local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Chrome = script:FindFirstAncestor("Chrome")
local ChromeShared = script:FindFirstAncestor("ChromeShared")
local Service_upvr = require(ChromeShared.Service)
local any_GetFocusNavigationStore_result1_upvr = require(CorePackages.Workspace.Packages.ExpChat).Stores.GetFocusNavigationStore(false)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConsoleChatOnExpControls_upvr = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagChromeShortcutAddRespawnLeaveToIEM_upvr = SharedFlags.FFlagChromeShortcutAddRespawnLeaveToIEM
local FFlagConsoleChatUseChromeFocusUtils_upvr = SharedFlags.FFlagConsoleChatUseChromeFocusUtils
local Flags = Chrome.Flags
local FFlagRespawnChromeShortcutTelemetry_upvr = require(Flags.FFlagRespawnChromeShortcutTelemetry)
local FFlagRespawnActionChromeShortcutTelemetry_upvr = Flags.FFlagRespawnActionChromeShortcutTelemetry
if FFlagConsoleChatOnExpControls_upvr then
	FFlagRespawnActionChromeShortcutTelemetry_upvr = require(RobloxGui_upvr.Modules.ChatSelector)
else
	FFlagRespawnActionChromeShortcutTelemetry_upvr = nil
end
local tbl_7_upvr = {
	keyCode = Enum.KeyCode.ButtonX;
}
local FFlagLeaveActionChromeShortcutTelemetry_upvr = require(Flags.FFlagLeaveActionChromeShortcutTelemetry)
local leaveGame_upvr = require(RobloxGui_upvr.Modules.Settings.leaveGame)
local FFlagLeaveChromeShortcutTelemetry_upvr = require(Flags.FFlagLeaveChromeShortcutTelemetry)
local function activated() -- Line 42
	--[[ Upvalues[7]:
		[1]: RobloxGui_upvr (readonly)
		[2]: FFlagLeaveActionChromeShortcutTelemetry_upvr (readonly)
		[3]: leaveGame_upvr (readonly)
		[4]: FFlagLeaveChromeShortcutTelemetry_upvr (readonly)
		[5]: FFlagConsoleChatUseChromeFocusUtils_upvr (readonly)
		[6]: any_GetFocusNavigationStore_result1_upvr (readonly)
		[7]: FFlagRespawnChromeShortcutTelemetry_upvr (readonly)
	]]
	local SettingsHub_2_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
	local LeaveGamePage_upvr = SettingsHub_2_upvr.Instance.LeaveGamePage
	local function _() -- Line 45, Named "switchToLeavePage"
		--[[ Upvalues[2]:
			[1]: SettingsHub_2_upvr (readonly)
			[2]: LeaveGamePage_upvr (readonly)
		]]
		SettingsHub_2_upvr.Instance:SwitchToPage(LeaveGamePage_upvr, true, nil, nil, nil, {
			used_shortcut = true;
		})
	end
	if SettingsHub_2_upvr:GetVisibility() then
		if SettingsHub_2_upvr.Instance.Pages.CurrentPage == LeaveGamePage_upvr then
			if FFlagLeaveActionChromeShortcutTelemetry_upvr then
				leaveGame_upvr(true, {
					telemetryFields = {
						used_shortcut = true;
					};
				})
			else
				leaveGame_upvr(true)
			end
		end
		if FFlagLeaveChromeShortcutTelemetry_upvr then
			SettingsHub_2_upvr.Instance:SwitchToPage(LeaveGamePage_upvr, true, nil, nil, nil, {
				used_shortcut = true;
			})
		else
			SettingsHub_2_upvr:SwitchToPage(LeaveGamePage_upvr, true)
		end
	end
	if FFlagConsoleChatUseChromeFocusUtils_upvr and any_GetFocusNavigationStore_result1_upvr.getChatInputBarFocused(false) then
		any_GetFocusNavigationStore_result1_upvr.unfocusChatInputBar()
	end
	if FFlagRespawnChromeShortcutTelemetry_upvr then
		SettingsHub_2_upvr:SetVisibility(true)
		SettingsHub_2_upvr.Instance:SwitchToPage(LeaveGamePage_upvr, true, nil, nil, nil, {
			used_shortcut = true;
		})
	else
		SettingsHub_2_upvr:SetVisibility(true, false, LeaveGamePage_upvr)
	end
end
tbl_7_upvr.activated = activated
local tbl_6_upvr = {
	keyCode = Enum.KeyCode.ButtonY;
	integration = "respawn";
}
local FFlagRespawnActionChromeShortcutTelemetry_upvr_2_upvr = require(FFlagRespawnActionChromeShortcutTelemetry_upvr)
local RespawnUtils_upvr = require(Chrome.Integrations.RespawnUtils)
local function activated() -- Line 89
	--[[ Upvalues[7]:
		[1]: RobloxGui_upvr (readonly)
		[2]: FFlagRespawnActionChromeShortcutTelemetry_upvr_2_upvr (readonly)
		[3]: FFlagConsoleChatUseChromeFocusUtils_upvr (readonly)
		[4]: any_GetFocusNavigationStore_result1_upvr (readonly)
		[5]: FFlagRespawnChromeShortcutTelemetry_upvr (readonly)
		[6]: RespawnUtils_upvr (readonly)
		[7]: Service_upvr (readonly)
	]]
	local SettingsHub_3 = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
	if SettingsHub_3:GetVisibility() and SettingsHub_3.Instance.Pages.CurrentPage == SettingsHub_3.Instance.ResetCharacterPage then
		if FFlagRespawnActionChromeShortcutTelemetry_upvr_2_upvr then
			SettingsHub_3.Instance.ResetCharacterPage.ResetFunction({
				resetTelemetryFields = {
					used_shortcut = true;
				};
			})
		else
			SettingsHub_3.Instance.ResetCharacterPage.ResetFunction()
		end
	end
	if FFlagConsoleChatUseChromeFocusUtils_upvr and any_GetFocusNavigationStore_result1_upvr.getChatInputBarFocused(false) then
		any_GetFocusNavigationStore_result1_upvr.unfocusChatInputBar()
	end
	if FFlagRespawnChromeShortcutTelemetry_upvr then
		RespawnUtils_upvr.respawnPage({
			usedShortcut = true;
		})
	else
		Service_upvr:activate("respawn")
	end
end
tbl_6_upvr.activated = activated
local FocusSelectExpChat_upvr = require(ChromeShared.Utility.FocusSelectExpChat)
local FocusUtils_upvr = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local FFlagShortcutBarUseTokens_upvr = SharedFlags.FFlagShortcutBarUseTokens
local FFlagChromeFixMenuIconBackButton_upvr = SharedFlags.FFlagChromeFixMenuIconBackButton
local GuiService_upvr = game:GetService("GuiService")
local FFlagConsoleSinglePressIntegrationExit_upvr = SharedFlags.FFlagConsoleSinglePressIntegrationExit
local GamepadService_upvr = game:GetService("GamepadService")
function registerShortcuts() -- Line 121
	--[[ Upvalues[16]:
		[1]: Service_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: FFlagChromeShortcutAddRespawnLeaveToIEM_upvr (readonly)
		[5]: FFlagConsoleChatOnExpControls_upvr (readonly)
		[6]: FFlagRespawnActionChromeShortcutTelemetry_upvr (readonly)
		[7]: FocusSelectExpChat_upvr (readonly)
		[8]: FFlagConsoleChatUseChromeFocusUtils_upvr (readonly)
		[9]: any_GetFocusNavigationStore_result1_upvr (readonly)
		[10]: FocusUtils_upvr (readonly)
		[11]: RobloxGui_upvr (readonly)
		[12]: FFlagShortcutBarUseTokens_upvr (readonly)
		[13]: FFlagChromeFixMenuIconBackButton_upvr (readonly)
		[14]: GuiService_upvr (readonly)
		[15]: FFlagConsoleSinglePressIntegrationExit_upvr (readonly)
		[16]: GamepadService_upvr (readonly)
	]]
	Service_upvr:registerShortcut({
		id = "leave";
		label = "CoreScripts.TopBar.Leave";
		keyCode = tbl_7_upvr.keyCode;
		integration = nil;
		actionName = "UnibarGamepadLeaveGame";
		activated = tbl_7_upvr.activated;
	})
	Service_upvr:registerShortcut({
		id = "respawn";
		label = "CoreScripts.InGameMenu.QuickActions.Respawn";
		keyCode = tbl_6_upvr.keyCode;
		integration = tbl_6_upvr.integration;
		actionName = "UnibarGamepadRespawn";
		activated = tbl_6_upvr.activated;
	})
	local var45
	if FFlagChromeShortcutAddRespawnLeaveToIEM_upvr then
		local tbl_5 = {}
		var45 = "leave_in_experience_menu"
		tbl_5.id = var45
		var45 = nil
		tbl_5.label = var45
		var45 = tbl_7_upvr.keyCode
		tbl_5.keyCode = var45
		var45 = nil
		tbl_5.integration = var45
		var45 = "IEMGamepadLeaveGame"
		tbl_5.actionName = var45
		var45 = tbl_7_upvr.activated
		tbl_5.activated = var45
		Service_upvr:registerShortcut(tbl_5)
		local tbl_8 = {}
		var45 = "respawn_in_experience_menu"
		tbl_8.id = var45
		var45 = nil
		tbl_8.label = var45
		var45 = tbl_6_upvr.keyCode
		tbl_8.keyCode = var45
		var45 = tbl_6_upvr.integration
		tbl_8.integration = var45
		var45 = "IEMGamepadRespawn"
		tbl_8.actionName = var45
		var45 = tbl_6_upvr.activated
		tbl_8.activated = var45
		Service_upvr:registerShortcut(tbl_8)
	end
	local tbl_3 = {}
	var45 = "chat"
	tbl_3.id = var45
	var45 = "CoreScripts.TopBar.Chat"
	tbl_3.label = var45
	var45 = Enum.KeyCode.ButtonR1
	tbl_3.keyCode = var45
	var45 = "chat"
	tbl_3.integration = var45
	var45 = "UnibarGamepadChat"
	tbl_3.actionName = var45
	if FFlagConsoleChatOnExpControls_upvr then
		function var45() -- Line 167
			--[[ Upvalues[5]:
				[1]: FFlagRespawnActionChromeShortcutTelemetry_upvr (copied, readonly)
				[2]: FocusSelectExpChat_upvr (copied, readonly)
				[3]: FFlagConsoleChatUseChromeFocusUtils_upvr (copied, readonly)
				[4]: any_GetFocusNavigationStore_result1_upvr (copied, readonly)
				[5]: FocusUtils_upvr (copied, readonly)
			]]
			local any_GetVisibility_result1 = FFlagRespawnActionChromeShortcutTelemetry_upvr:GetVisibility()
			FFlagRespawnActionChromeShortcutTelemetry_upvr:SetVisible(not any_GetVisibility_result1)
			if not any_GetVisibility_result1 then
				FocusSelectExpChat_upvr("chat")
			elseif FFlagConsoleChatUseChromeFocusUtils_upvr and any_GetFocusNavigationStore_result1_upvr.getChatInputBarFocused(false) then
				FocusUtils_upvr.FocusOnChrome(function() -- Line 175
					--[[ Upvalues[1]:
						[1]: any_GetFocusNavigationStore_result1_upvr (copied, readonly)
					]]
					any_GetFocusNavigationStore_result1_upvr.unfocusChatInputBar()
				end, "chat")
			end
		end
	else
		var45 = nil
	end
	tbl_3.activated = var45
	Service_upvr:registerShortcut(tbl_3)
	local tbl_2 = {
		id = "tiltMenu";
		label = "CoreScripts.TopBar.Menu";
		keyCode = Enum.KeyCode.ButtonR2;
		integration = nil;
		actionName = "UnibarGamepadMenu";
	}
	local function activated() -- Line 190
		--[[ Upvalues[3]:
			[1]: RobloxGui_upvr (copied, readonly)
			[2]: FFlagConsoleChatUseChromeFocusUtils_upvr (copied, readonly)
			[3]: any_GetFocusNavigationStore_result1_upvr (copied, readonly)
		]]
		local SettingsHub = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
		if SettingsHub:GetVisibility() then
			SettingsHub:SetVisibility(false)
		else
			if FFlagConsoleChatUseChromeFocusUtils_upvr and any_GetFocusNavigationStore_result1_upvr.getChatInputBarFocused(false) then
				any_GetFocusNavigationStore_result1_upvr.unfocusChatInputBar()
			end
			SettingsHub:SetVisibility(true)
		end
	end
	tbl_2.activated = activated
	Service_upvr:registerShortcut(tbl_2)
	local tbl_4 = {
		id = "back";
		label = "CoreScripts.TopBar.Back";
		keyCode = Enum.KeyCode.ButtonB;
	}
	if FFlagShortcutBarUseTokens_upvr then
	else
	end
	tbl_4.displayPriority = nil
	tbl_4.integration = nil
	tbl_4.actionName = "UnibarGamepadBack"
	local function activated() -- Line 213
		--[[ Upvalues[8]:
			[1]: FFlagChromeFixMenuIconBackButton_upvr (copied, readonly)
			[2]: FocusUtils_upvr (copied, readonly)
			[3]: FFlagConsoleChatUseChromeFocusUtils_upvr (copied, readonly)
			[4]: Service_upvr (copied, readonly)
			[5]: RobloxGui_upvr (copied, readonly)
			[6]: GuiService_upvr (copied, readonly)
			[7]: FFlagConsoleSinglePressIntegrationExit_upvr (copied, readonly)
			[8]: any_GetFocusNavigationStore_result1_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 3 end (CF ANALYSIS FAILED)
	end
	tbl_4.activated = activated
	Service_upvr:registerShortcut(tbl_4)
	local tbl = {
		id = "close";
		label = nil;
		keyCode = Enum.KeyCode.ButtonStart;
		actionName = "UnibarGamepadClose";
	}
	local function activated() -- Line 256
		--[[ Upvalues[3]:
			[1]: RobloxGui_upvr (copied, readonly)
			[2]: Service_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		require(RobloxGui_upvr.Modules.Settings.SettingsHub):SetVisibility(false)
		Service_upvr:disableFocusNav()
		Service_upvr:setShortcutBar(nil)
		GuiService_upvr.SelectedCoreObject = nil
	end
	tbl.activated = activated
	Service_upvr:registerShortcut(tbl)
	Service_upvr:registerShortcut({
		id = "virtualCursor";
		label = nil;
		keyCode = Enum.KeyCode.ButtonSelect;
		actionName = "VirtualCursorShortcut";
		activated = function() -- Line 272, Named "activated"
			--[[ Upvalues[3]:
				[1]: Service_upvr (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
				[3]: GamepadService_upvr (copied, readonly)
			]]
			Service_upvr:disableFocusNav()
			Service_upvr:setShortcutBar(nil)
			GuiService_upvr.SelectedCoreObject = nil
			GamepadService_upvr.GamepadCursorEnabled = true
		end;
	})
	Service_upvr:registerShortcut({
		id = "tiltMenuPreviousTab";
		label = "CoreScripts.InGameMenu.Controls.PreviousTab";
		keyCode = Enum.KeyCode.ButtonL1;
		integration = nil;
		actionName = nil;
		activated = nil;
	})
	Service_upvr:registerShortcut({
		id = "tiltMenuNextTab";
		label = "CoreScripts.InGameMenu.Controls.NextTab";
		keyCode = Enum.KeyCode.ButtonR1;
		integration = nil;
		actionName = nil;
		activated = nil;
	})
end
local Constants_upvr = require(ChromeShared.Unibar.Constants)
local FFlagShowUnibarOnVirtualCursor_upvr = SharedFlags.FFlagShowUnibarOnVirtualCursor
local FFlagTweakTiltMenuShortcuts_upvr = SharedFlags.FFlagTweakTiltMenuShortcuts
local FFlagChromeShortcutRemoveRespawnOnLeavePage_upvr = SharedFlags.FFlagChromeShortcutRemoveRespawnOnLeavePage
local FFlagChromeShortcutRemoveLeaveOnRespawnPage_upvr = SharedFlags.FFlagChromeShortcutRemoveLeaveOnRespawnPage
function configureShortcutBars() -- Line 302
	--[[ Upvalues[7]:
		[1]: Service_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: FFlagShowUnibarOnVirtualCursor_upvr (readonly)
		[4]: FFlagChromeShortcutAddRespawnLeaveToIEM_upvr (readonly)
		[5]: FFlagTweakTiltMenuShortcuts_upvr (readonly)
		[6]: FFlagChromeShortcutRemoveRespawnOnLeavePage_upvr (readonly)
		[7]: FFlagChromeShortcutRemoveLeaveOnRespawnPage_upvr (readonly)
	]]
	if FFlagShowUnibarOnVirtualCursor_upvr then
		local _ = {"leave", "respawn", "chat", "tiltMenu", "back", "virtualCursor"}
	else
	end
	Service_upvr:configureShortcutBar(Constants_upvr.UNIBAR_SHORTCUTBAR_ID, {"leave", "respawn", "chat", "tiltMenu", "back"})
	if FFlagChromeShortcutAddRespawnLeaveToIEM_upvr then
		local _ = {"leave_in_experience_menu", "respawn_in_experience_menu", "tiltMenuPreviousTab", "tiltMenuNextTab", "back", "close"}
	elseif FFlagTweakTiltMenuShortcuts_upvr then
		local _ = {"tiltMenuPreviousTab", "tiltMenuNextTab", "back", "close"}
	else
	end
	Service_upvr:configureShortcutBar(Constants_upvr.TILTMENU_SHORTCUTBAR_ID, {"leave", "respawn", "tiltMenuPreviousTab", "tiltMenuNextTab", "back", "close"})
	if not FFlagChromeShortcutRemoveRespawnOnLeavePage_upvr or not FFlagChromeShortcutRemoveLeaveOnRespawnPage_upvr then
		Service_upvr:configureShortcutBar(Constants_upvr.TILTMENU_DIALOG_SHORTCUTBAR_ID, {"leave", "respawn", "back", "close"})
	end
	if FFlagChromeShortcutRemoveRespawnOnLeavePage_upvr then
		Service_upvr:configureShortcutBar(Constants_upvr.TILTMENU_LEAVE_DIALOG_SHORTCUTBAR_ID, {"leave", "back", "close"})
	end
	if FFlagChromeShortcutRemoveLeaveOnRespawnPage_upvr then
		Service_upvr:configureShortcutBar(Constants_upvr.TILTMENU_RESPAWN_DIALOG_SHORTCUTBAR_ID, {"respawn", "back", "close"})
	end
end
return function() -- Line 345
	registerShortcuts()
	configureShortcutBars()
end