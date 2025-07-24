-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:26
-- Luau version 6, Types version 3
-- Time taken: 0.022589 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local CoreGui_upvr = game:GetService("CoreGui")
local GuiService_upvr = game:GetService("GuiService")
local VRService_upvr = game:GetService("VRService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local Modules_upvr = CoreGui_upvr:WaitForChild("RobloxGui").Modules
local TopBar = Modules_upvr.TopBar
local TenFootInterface_upvr = require(Modules_upvr.TenFootInterface)
local ChatSelector_upvr = require(Modules_upvr.ChatSelector)
local PlayerListManager_upvr = require(Modules_upvr.PlayerList.PlayerListManager)
local isNewInGameMenuEnabled_upvr = require(Modules_upvr.isNewInGameMenuEnabled)
local InGameMenuConstants_upvr = require(Modules_upvr.InGameMenuConstants)
local Enabled_upvr = require(Modules_upvr.Chrome.Enabled)
local module = require(TopBar:WaitForChild("Telemetry"))
local GameSettings_upvr = UserSettings().GameSettings
local EnumGamepadMenuOptions_upvr = require(script.EnumGamepadMenuOptions)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GamepadMenu")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagToastNotificationsGamepadSupport_upvr = SharedFlags.GetFFlagToastNotificationsGamepadSupport
local FFlagGamepadMenuActionTelemetry_upvr = require(TopBar.Flags.FFlagGamepadMenuActionTelemetry)
local FFlagExperienceMenuGamepadExposureEnabled_upvr = SharedFlags.FFlagExperienceMenuGamepadExposureEnabled
local TenFootInterfaceExpChatExperimentation_upvr = require(CorePackages.Workspace.Packages.SocialExperiments).TenFootInterfaceExpChatExperimentation
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SaveChatVisibilityUserSettings", false)
local FFlagMountCoreGuiBackpack_upvr = require(Modules_upvr.Flags.FFlagMountCoreGuiBackpack)
local var29_upvw
local var30
if GetFFlagToastNotificationsGamepadSupport_upvr() then
	local var32_upvw
	local var33_upvw
	task.spawn(function() -- Line 111
		--[[ Upvalues[4]:
			[1]: var32_upvw (read and write)
			[2]: CoreGui_upvr (readonly)
			[3]: var33_upvw (read and write)
			[4]: var29_upvw (read and write)
		]]
		local ToastNotification = CoreGui_upvr:WaitForChild("ToastNotification", 3)
		var32_upvw = ToastNotification
		if var32_upvw ~= nil then
			ToastNotification = var32_upvw:WaitForChild("ToastNotificationWrapper", 3)
		else
			ToastNotification = nil
		end
		var33_upvw = ToastNotification
		if var33_upvw ~= nil then
			ToastNotification = var33_upvw:FindFirstChild("Toast", true)
		else
			ToastNotification = nil
		end
		var29_upvw = ToastNotification
	end)
end
local tbl_13 = {}
var30 = t.Vector2
tbl_13.screenSize = var30
var30 = t.optional(t.EnumItem)
tbl_13.chatVersion = var30
var30 = t.boolean
tbl_13.chatEnabled = var30
var30 = t.boolean
tbl_13.leaderboardEnabled = var30
var30 = t.boolean
tbl_13.emotesEnabled = var30
if FFlagMountCoreGuiBackpack_upvr then
	var30 = nil
else
	var30 = t.boolean
end
tbl_13.backpackEnabled = var30
tbl_13.respawnEnabled = t.boolean
tbl_13.leaderboardOpen = t.boolean
tbl_13.backpackOpen = t.boolean
tbl_13.emotesOpen = t.boolean
tbl_13.menuOpen = t.boolean
if FFlagMountCoreGuiBackpack_upvr then
else
end
tbl_13.topBarEnabled = nil
tbl_13.setGamepadMenuOpen = t.callback
tbl_13.isGamepadMenuOpen = t.boolean
any_extend_result1_upvr.validateProps = t.strictInterface(tbl_13)
local StarterGui_upvr = game:GetService("StarterGui")
local default_upvr = module.GamepadMenuTelemetry.default
local LogGamepadOpenExperienceControlsMenu_upvr = module.LogGamepadOpenExperienceControlsMenu
function any_extend_result1_upvr.init(arg1) -- Line 140
	--[[ Upvalues[13]:
		[1]: FFlagMountCoreGuiBackpack_upvr (readonly)
		[2]: StarterGui_upvr (readonly)
		[3]: FFlagExperienceMenuGamepadExposureEnabled_upvr (readonly)
		[4]: FFlagGamepadMenuActionTelemetry_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: EnumGamepadMenuOptions_upvr (readonly)
		[7]: ChatSelector_upvr (readonly)
		[8]: GetFFlagToastNotificationsGamepadSupport_upvr (readonly)
		[9]: var29_upvw (read and write)
		[10]: LogGamepadOpenExperienceControlsMenu_upvr (readonly)
		[11]: any_extend_result1_upvr (readonly)
		[12]: GuiService_upvr (readonly)
		[13]: PlayerListManager_upvr (readonly)
	]]
	if FFlagMountCoreGuiBackpack_upvr then
		arg1:setState({
			selectedIndex = 1;
			menuActions = {};
			mountBackpack = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack);
		})
		StarterGui_upvr.CoreGuiChangedSignal:Connect(function(arg1_2, arg2) -- Line 148
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2 == Enum.CoreGuiType.Backpack or arg1_2 == Enum.CoreGuiType.All then
				local tbl_10 = {}
				tbl_10.mountBackpack = arg2
				arg1:setState(tbl_10)
			end
		end)
	else
		arg1:setState({
			selectedIndex = 1;
			menuActions = {};
		})
	end
	if FFlagExperienceMenuGamepadExposureEnabled_upvr then
		arg1.loggedExperienceMenuGamepadExposure = false
	end
	arg1.boundMenuOpenActions = false
	arg1.lastMenuButtonPress = 0
	function arg1.toggleChatVisibilityAction(arg1_3, arg2, arg3) -- Line 170
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: FFlagGamepadMenuActionTelemetry_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: EnumGamepadMenuOptions_upvr (copied, readonly)
			[5]: ChatSelector_upvr (copied, readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.toggleChatVisible()
			if FFlagGamepadMenuActionTelemetry_upvr then
				default_upvr.onOptionSelected({
					menuOptionName = EnumGamepadMenuOptions_upvr.Chat;
					usedShortcut = true;
					isToggleOpen = ChatSelector_upvr:GetVisibility();
				})
			end
		end
	end
	function arg1.toggleMenuVisibleAction(arg1_4, arg2, arg3) -- Line 183
		--[[ Upvalues[4]:
			[1]: GetFFlagToastNotificationsGamepadSupport_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var29_upvw (copied, read and write)
			[4]: LogGamepadOpenExperienceControlsMenu_upvr (copied, readonly)
		]]
		local var47
		if var47 then
			var47 = arg1.props.menuOpen
			if var47 then
				var47 = Enum.ContextActionResult.Pass
				return var47
			end
			var47 = false
			if var29_upvw ~= nil then
				var47 = var29_upvw.Visible
			end
			if arg2 == Enum.UserInputState.Begin then
				arg1.lastMenuButtonPress = tick()
				return Enum.ContextActionResult.Pass
			end
			if arg2 == Enum.UserInputState.End and (not var47 or tick() - arg1.lastMenuButtonPress < 1) then
				arg1.props.setGamepadMenuOpen(not arg1.props.isGamepadMenuOpen)
				LogGamepadOpenExperienceControlsMenu_upvr(not arg1.props.isGamepadMenuOpen)
				arg1:logExperienceMenuGamepadExposure()
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end
		if arg2 ~= Enum.UserInputState.Begin or arg1.props.menuOpen then
			return Enum.ContextActionResult.Pass
		end
		arg1.props.setGamepadMenuOpen(not arg1.props.isGamepadMenuOpen)
		LogGamepadOpenExperienceControlsMenu_upvr(not arg1.props.isGamepadMenuOpen)
		arg1:logExperienceMenuGamepadExposure()
		return Enum.ContextActionResult.Sink
	end
	function arg1.closeMenuAction(arg1_5, arg2, arg3) -- Line 217
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		arg1.props.setGamepadMenuOpen(false)
		return Enum.ContextActionResult.Sink
	end
	function arg1.leaveGameMenuAction(arg1_6, arg2, arg3) -- Line 227
		--[[ Upvalues[5]:
			[1]: any_extend_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FFlagGamepadMenuActionTelemetry_upvr (copied, readonly)
			[4]: default_upvr (copied, readonly)
			[5]: EnumGamepadMenuOptions_upvr (copied, readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		any_extend_result1_upvr.leaveGame()
		arg1.props.setGamepadMenuOpen(false)
		if FFlagGamepadMenuActionTelemetry_upvr then
			default_upvr.onOptionSelected({
				menuOptionName = EnumGamepadMenuOptions_upvr.Leave;
				usedShortcut = true;
				isToggleOpen = true;
			})
		end
		return Enum.ContextActionResult.Sink
	end
	function arg1.respawnMenuAction(arg1_7, arg2, arg3) -- Line 247
		--[[ Upvalues[5]:
			[1]: any_extend_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FFlagGamepadMenuActionTelemetry_upvr (copied, readonly)
			[4]: default_upvr (copied, readonly)
			[5]: EnumGamepadMenuOptions_upvr (copied, readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		any_extend_result1_upvr.respawnCharacter()
		arg1.props.setGamepadMenuOpen(false)
		if FFlagGamepadMenuActionTelemetry_upvr then
			default_upvr.onOptionSelected({
				menuOptionName = EnumGamepadMenuOptions_upvr.Respawn;
				usedShortcut = true;
				isToggleOpen = true;
			})
		end
		return Enum.ContextActionResult.Sink
	end
	arg1.lastThumbStickMove = 0
	function arg1.moveSelectionAction(arg1_8, arg2, arg3) -- Line 269
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
		if arg2 == Enum.UserInputState.Begin then
			if arg3.KeyCode == Enum.KeyCode.DPadUp then
				if 1 < arg1.state.selectedIndex then
					arg1:setState({
						selectedIndex = arg1.state.selectedIndex - 1;
					})
				end
				return Enum.ContextActionResult.Sink
			end
			if arg3.KeyCode == Enum.KeyCode.DPadDown then
				if arg1.state.selectedIndex < #arg1.state.menuActions then
					arg1:setState({
						selectedIndex = arg1.state.selectedIndex + 1;
					})
				end
				do
					return Enum.ContextActionResult.Sink
				end
				-- KONSTANTWARNING: GOTO [168] #108
			end
		elseif arg3.KeyCode == Enum.KeyCode.Thumbstick1 then
			if tick() - arg1.lastThumbStickMove < 0.15 then
				return Enum.ContextActionResult.Pass
			end
			if 0.8 < arg3.Position.Y then
				if 1 < arg1.state.selectedIndex then
					arg1:setState({
						selectedIndex = arg1.state.selectedIndex - 1;
					})
					arg1.lastThumbStickMove = tick()
				end
				return Enum.ContextActionResult.Pass
			end
			if arg3.Position.Y < -0.8 then
				if arg1.state.selectedIndex < #arg1.state.menuActions then
					arg1:setState({
						selectedIndex = arg1.state.selectedIndex + 1;
					})
					arg1.lastThumbStickMove = tick()
				end
				return Enum.ContextActionResult.Sink
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [168] 108. Error Block 22 start (CF ANALYSIS FAILED)
		do
			return Enum.ContextActionResult.Pass
		end
		-- KONSTANTERROR: [168] 108. Error Block 22 end (CF ANALYSIS FAILED)
	end
	function arg1.goToTopAction(arg1_9, arg2, arg3) -- Line 311
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		arg1:setState({
			selectedIndex = 1;
		})
	end
	function arg1.goToBottomAction(arg1_10, arg2, arg3) -- Line 321
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		arg1:setState({
			selectedIndex = #arg1.state.menuActions;
		})
	end
	function arg1.activateSelectionAction(arg1_11, arg2, arg3) -- Line 331
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: FFlagGamepadMenuActionTelemetry_upvr (copied, readonly)
			[4]: EnumGamepadMenuOptions_upvr (copied, readonly)
			[5]: PlayerListManager_upvr (copied, readonly)
			[6]: default_upvr (copied, readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		local var63 = arg1.state.menuActions[arg1.state.selectedIndex]
		arg1.props.setGamepadMenuOpen(false)
		GuiService_upvr:SetMenuIsOpen(false, "GamepadMenu")
		var63.onActivated()
		if FFlagGamepadMenuActionTelemetry_upvr then
			local function _(arg1_12) -- Line 347, Named "isMenuOptionToggleOpenOnSelect"
				--[[ Upvalues[2]:
					[1]: EnumGamepadMenuOptions_upvr (copied, readonly)
					[2]: PlayerListManager_upvr (copied, readonly)
				]]
				if arg1_12 == EnumGamepadMenuOptions_upvr.Leaderboard then
					return PlayerListManager_upvr:GetSetVisible()
				end
				return true
			end
			local tbl_2 = {
				menuOptionName = var63.name;
			}
			local var65 = false
			tbl_2.usedShortcut = var65
			if var63.name == EnumGamepadMenuOptions_upvr.Leaderboard then
				var65 = PlayerListManager_upvr:GetSetVisible()
			else
				var65 = true
			end
			tbl_2.isToggleOpen = var65
			default_upvr.onOptionSelected(tbl_2)
		end
		return Enum.ContextActionResult.Sink
	end
	function arg1.overlayDismiss() -- Line 365
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setGamepadMenuOpen(false)
	end
end
function any_extend_result1_upvr.openRootMenu() -- Line 370
	--[[ Upvalues[3]:
		[1]: isNewInGameMenuEnabled_upvr (readonly)
		[2]: Modules_upvr (readonly)
		[3]: InGameMenuConstants_upvr (readonly)
	]]
	if isNewInGameMenuEnabled_upvr() then
		require(Modules_upvr.InGameMenuInit).openInGameMenu(InGameMenuConstants_upvr.MainPagePageKey)
	else
		require(Modules_upvr.Settings.SettingsHub):SetVisibility(true, nil, nil, true, InGameMenuConstants_upvr.AnalyticsMenuOpenTypes.PlayersTriggered)
	end
end
function any_extend_result1_upvr.openUnibarMenu() -- Line 381
	--[[ Upvalues[1]:
		[1]: Modules_upvr (readonly)
	]]
	require(Modules_upvr.Chrome.Service):enableFocusNav()
end
function any_extend_result1_upvr.closeUnibarMenu() -- Line 386
	--[[ Upvalues[1]:
		[1]: Modules_upvr (readonly)
	]]
	require(Modules_upvr.Chrome.Service):disableFocusNav()
end
function any_extend_result1_upvr.toggleChatVisible() -- Line 391
	--[[ Upvalues[3]:
		[1]: ChatSelector_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: GameSettings_upvr (readonly)
	]]
	ChatSelector_upvr:ToggleVisibility()
	if game_DefineFastFlag_result1_upvr then
		GameSettings_upvr.ChatVisible = ChatSelector_upvr:GetVisibility()
	end
end
function any_extend_result1_upvr.focusChatBar() -- Line 398
	--[[ Upvalues[4]:
		[1]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[2]: ChatSelector_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: GameSettings_upvr (readonly)
	]]
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		ChatSelector_upvr:SetVisible(true)
		if game_DefineFastFlag_result1_upvr then
			GameSettings_upvr.ChatVisible = true
		end
		ChatSelector_upvr:FocusChatBar()
	end
end
function any_extend_result1_upvr.toggleLeaderboard() -- Line 408
	--[[ Upvalues[3]:
		[1]: isNewInGameMenuEnabled_upvr (readonly)
		[2]: Modules_upvr (readonly)
		[3]: PlayerListManager_upvr (readonly)
	]]
	if isNewInGameMenuEnabled_upvr() then
		require(Modules_upvr.InGameMenuInit).openPlayersPage()
	else
		PlayerListManager_upvr:SetVisibility(not PlayerListManager_upvr:GetSetVisible())
	end
end
local EmotesMenuMaster_upvr = require(Modules_upvr.EmotesMenu.EmotesMenuMaster)
function any_extend_result1_upvr.toggleEmotesMenu() -- Line 418
	--[[ Upvalues[1]:
		[1]: EmotesMenuMaster_upvr (readonly)
	]]
	if EmotesMenuMaster_upvr:isOpen() then
		EmotesMenuMaster_upvr:close()
	else
		EmotesMenuMaster_upvr:open()
	end
end
local BackpackScript_upvr = require(Modules_upvr.BackpackScript)
function any_extend_result1_upvr.toggleBackpack() -- Line 426
	--[[ Upvalues[1]:
		[1]: BackpackScript_upvr (readonly)
	]]
	BackpackScript_upvr:OpenClose()
end
function any_extend_result1_upvr.leaveGame() -- Line 430
	--[[ Upvalues[3]:
		[1]: isNewInGameMenuEnabled_upvr (readonly)
		[2]: Modules_upvr (readonly)
		[3]: InGameMenuConstants_upvr (readonly)
	]]
	if isNewInGameMenuEnabled_upvr() then
		require(Modules_upvr.InGameMenuInit).openGameLeavePage()
	else
		local SettingsHub_2 = require(Modules_upvr.Settings.SettingsHub)
		SettingsHub_2:SetVisibility(true, false, SettingsHub_2.Instance.LeaveGamePage, true, InGameMenuConstants_upvr.AnalyticsMenuOpenTypes.GamepadLeaveGame)
	end
end
function any_extend_result1_upvr.respawnCharacter() -- Line 447
	--[[ Upvalues[3]:
		[1]: isNewInGameMenuEnabled_upvr (readonly)
		[2]: Modules_upvr (readonly)
		[3]: InGameMenuConstants_upvr (readonly)
	]]
	if isNewInGameMenuEnabled_upvr() then
		require(Modules_upvr.InGameMenuInit).openCharacterResetPage()
	else
		local SettingsHub = require(Modules_upvr.Settings.SettingsHub)
		SettingsHub:SetVisibility(true, false, SettingsHub.Instance.ResetCharacterPage, true, InGameMenuConstants_upvr.AnalyticsMenuOpenTypes.GamepadResetCharacter)
	end
end
local TextChatService_upvr = game:GetService("TextChatService")
local getFFlagCheckForTCSMigration_upvr = SharedFlags.getFFlagCheckForTCSMigration
local getFFlagExpChatAlwaysRunTCS_upvr = SharedFlags.getFFlagExpChatAlwaysRunTCS
function any_extend_result1_upvr.shouldShowChatMenuOption(arg1, arg2) -- Line 463
	--[[ Upvalues[4]:
		[1]: TenFootInterface_upvr (readonly)
		[2]: TextChatService_upvr (readonly)
		[3]: getFFlagCheckForTCSMigration_upvr (readonly)
		[4]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
	]]
	if not TenFootInterface_upvr:IsEnabled() then
		return arg2
	end
	local var75 = arg1
	if not var75 then
		var75 = TextChatService_upvr.ChatVersion
	end
	if getFFlagCheckForTCSMigration_upvr() then
		if getFFlagExpChatAlwaysRunTCS_upvr() then
			return arg2
		end
	end
	local var76 = arg2
	if var76 then
		if var75 ~= Enum.ChatVersion.TextChatService then
			var76 = false
		else
			var76 = true
		end
	end
	return var76
end
local icons_logo_block_upvr = Images["icons/logo/block"]
local ChatIcon_upvr = require(script.ChatIcon)
local icons_menu_AR_upvr = Images["icons/menu/AR"]
local icons_actions_respawn_upvr = Images["icons/actions/respawn"]
local icons_navigation_close_upvr = Images["icons/navigation/close"]
function any_extend_result1_upvr.getMenuActionsFromProps(arg1, arg2) -- Line 481
	--[[ Upvalues[12]:
		[1]: FFlagGamepadMenuActionTelemetry_upvr (readonly)
		[2]: EnumGamepadMenuOptions_upvr (readonly)
		[3]: icons_logo_block_upvr (readonly)
		[4]: any_extend_result1_upvr (readonly)
		[5]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[6]: ChatIcon_upvr (readonly)
		[7]: Enabled_upvr (readonly)
		[8]: icons_menu_AR_upvr (readonly)
		[9]: TenFootInterface_upvr (readonly)
		[10]: FFlagMountCoreGuiBackpack_upvr (readonly)
		[11]: icons_actions_respawn_upvr (readonly)
		[12]: icons_navigation_close_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 102 start (CF ANALYSIS FAILED)
	local tbl_9 = {}
	local tbl_19 = {}
	local var84
	if FFlagGamepadMenuActionTelemetry_upvr then
		var84 = EnumGamepadMenuOptions_upvr.Menu
	else
		var84 = "Menu"
	end
	tbl_19.name = var84
	var84 = icons_logo_block_upvr
	tbl_19.icon = var84
	var84 = nil
	tbl_19.iconComponent = var84
	var84 = "CoreScripts.TopBar.Menu"
	tbl_19.localizationKey = var84
	var84 = any_extend_result1_upvr.openRootMenu
	tbl_19.onActivated = var84
	table.insert(tbl_9, tbl_19)
	-- KONSTANTERROR: [0] 1. Error Block 102 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 27. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 27. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 33. Error Block 103 start (CF ANALYSIS FAILED)
	local tbl_14 = {}
	if FFlagGamepadMenuActionTelemetry_upvr then
		var84 = EnumGamepadMenuOptions_upvr.Chat
	else
		var84 = "Chat"
	end
	tbl_14.name = var84
	var84 = nil
	tbl_14.icon = var84
	var84 = ChatIcon_upvr
	tbl_14.iconComponent = var84
	var84 = "CoreScripts.TopBar.Chat"
	tbl_14.localizationKey = var84
	var84 = any_extend_result1_upvr.focusChatBar
	tbl_14.onActivated = var84
	table.insert(tbl_9, tbl_14)
	-- KONSTANTERROR: [46] 33. Error Block 103 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 54. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 54. Error Block 12 end (CF ANALYSIS FAILED)
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
function any_extend_result1_upvr.getDerivedStateFromProps(arg1, arg2) -- Line 607
	--[[ Upvalues[3]:
		[1]: FFlagMountCoreGuiBackpack_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local var87
	if FFlagMountCoreGuiBackpack_upvr then
		var87 = any_extend_result1_upvr.getMenuActionsFromProps(arg1, arg2)
	else
		var87 = any_extend_result1_upvr.getMenuActionsFromProps(arg1)
	end
	local var88 = arg2.selectedIndex or 1
	if #var87 < var88 then
		var88 = #var87
	end
	return Cryo_upvr.Dictionary.join(arg2, {
		selectedIndex = var88;
		menuActions = var87;
	})
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local MenuHeader_upvr = require(script.MenuHeader)
local MenuCell_upvr = require(script.MenuCell)
local QuickMenuControllerBar_upvr = require(script.QuickMenuControllerBar)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local component_assets_circle_17_upvr = Images["component_assets/circle_17"]
local Rect_new_result1_upvr = Rect.new(8, 8, 9, 9)
local FFlagTiltIconUnibarFocusNav_upvr = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagAddMenuNavigationToggleDialog_upvr = SharedFlags.FFlagAddMenuNavigationToggleDialog
local MenuNavigationToggleDialog_upvr = require(script.MenuNavigationToggleDialog)
function any_extend_result1_upvr.render(arg1) -- Line 626
	--[[ Upvalues[13]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: MenuHeader_upvr (readonly)
		[4]: MenuCell_upvr (readonly)
		[5]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
		[6]: QuickMenuControllerBar_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: component_assets_circle_17_upvr (readonly)
		[9]: Rect_new_result1_upvr (readonly)
		[10]: Enabled_upvr (readonly)
		[11]: FFlagTiltIconUnibarFocusNav_upvr (readonly)
		[12]: FFlagAddMenuNavigationToggleDialog_upvr (readonly)
		[13]: MenuNavigationToggleDialog_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_13) -- Line 627
		--[[ Upvalues[13]:
			[1]: Roact_upvr (copied, readonly)
			[2]: MenuHeader_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: MenuCell_upvr (copied, readonly)
			[5]: TenFootInterfaceExpChatExperimentation_upvr (copied, readonly)
			[6]: QuickMenuControllerBar_upvr (copied, readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: component_assets_circle_17_upvr (copied, readonly)
			[9]: Rect_new_result1_upvr (copied, readonly)
			[10]: Enabled_upvr (copied, readonly)
			[11]: FFlagTiltIconUnibarFocusNav_upvr (copied, readonly)
			[12]: FFlagAddMenuNavigationToggleDialog_upvr (copied, readonly)
			[13]: MenuNavigationToggleDialog_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_13.Theme
		local tbl_12 = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Top;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			MenuHeader = Roact_upvr.createElement(MenuHeader_upvr, {
				layoutOrder = 1;
				height = 120;
			});
		}
		local ipairs_result1, ipairs_result2, ipairs_result3_2 = ipairs(arg1.state.menuActions)
		local var143
		for i, v in ipairs_result1, var143, ipairs_result3_2 do
			local tbl_17 = {
				layoutOrder = i + 1;
				icon = v.icon;
				iconComponent = v.iconComponent;
				localizationKey = v.localizationKey;
			}
			local var145 = 56
			tbl_17.height = var145
			if i == #arg1.state.menuActions then
				var145 = false
			else
				var145 = true
			end
			tbl_17.hasDivider = var145
			if i ~= arg1.state.selectedIndex then
				var145 = false
			else
				var145 = true
			end
			tbl_17.isSelected = var145
			tbl_12[v.name] = Roact_upvr.createElement(MenuCell_upvr, tbl_17)
		end
		var143 = #arg1.state.menuActions * 56
		local var146 = var143 + 120
		var143 = 1
		if arg1.props.screenSize.Y * 0.75 < var146 then
			var143 = arg1.props.screenSize.Y * 0.75 / var146
		end
		if arg1.props.screenSize.X * 0.75 < 336 then
			local var147 = arg1.props.screenSize.X * 0.75 / 336
			if var147 < var143 then
				var143 = var147
			end
		end
		if var143 < 1 then
			tbl_12.UIScale = Roact_upvr.createElement("UIScale", {
				Scale = var143;
			})
		end
		local var149
		if var149 then
			if arg1.props.isGamepadMenuOpen then
				var149 = Roact_upvr.createElement
				local tbl_4 = {}
				var145 = arg1.props
				var145 = arg1.props.chatEnabled
				tbl_4.chatMenuEnabled = arg1.shouldShowChatMenuOption(var145.chatVersion, var145)
				var149 = var149(QuickMenuControllerBar_upvr, tbl_4)
				-- KONSTANTWARNING: GOTO [212] #143
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var149 = Roact_upvr.createElement(QuickMenuControllerBar_upvr)
				return var149
			end
			if not arg1.props.isGamepadMenuOpen or not INLINED_2() then
				var149 = nil
			end
		end
		var149 = {}
		local tbl_16 = {
			BackgroundTransparency = 1;
			Image = component_assets_circle_17_upvr;
			SliceCenter = Rect_new_result1_upvr;
			ScaleType = Enum.ScaleType.Slice;
		}
		var145 = Theme.BackgroundUIContrast
		tbl_16.ImageTransparency = var145.Transparency
		var145 = Theme.BackgroundUIContrast
		tbl_16.ImageColor3 = var145.Color
		var145 = 336
		tbl_16.Size = UDim2.fromOffset(var145, var146)
		var145 = 0.5
		tbl_16.Position = UDim2.fromScale(var145, 0.5)
		var145 = 0.5
		tbl_16.AnchorPoint = Vector2.new(var145, 0.5)
		local any_createElement_result1_2 = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_16, tbl_12)
		var149.Menu = any_createElement_result1_2
		var149.ControllerBar = var149
		if not Enabled_upvr() and not FFlagTiltIconUnibarFocusNav_upvr and FFlagAddMenuNavigationToggleDialog_upvr then
			any_createElement_result1_2 = Roact_upvr.createElement
			local tbl_6 = {}
			var145 = 0.5
			tbl_6.Position = UDim2.fromScale(var145, 0.1)
			any_createElement_result1_2 = any_createElement_result1_2(MenuNavigationToggleDialog_upvr, tbl_6)
		else
			any_createElement_result1_2 = nil
		end
		var149.MenuNavigationToggleDialog = any_createElement_result1_2
		any_createElement_result1_2 = Roact_upvr.createElement
		local tbl_15 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_15.Visible = arg1.props.isGamepadMenuOpen
		tbl_15.Text = ""
		var145 = Theme.Overlay
		tbl_15.BackgroundTransparency = var145.Transparency
		var145 = Theme.Overlay
		tbl_15.BackgroundColor3 = var145.Color
		var145 = 1
		tbl_15.Size = UDim2.fromScale(var145, 1)
		tbl_15.BorderSizePixel = 0
		tbl_15.ZIndex = 10
		var145 = Roact_upvr.Event
		var145 = arg1.overlayDismiss
		tbl_15[var145.Activated] = var145
		any_createElement_result1_2 = any_createElement_result1_2("TextButton", tbl_15, var149)
		return any_createElement_result1_2
	end)
end
function any_extend_result1_upvr.didMount(arg1) -- Line 727
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
	]]
	if not VRService_upvr.VREnabled then
		ContextActionService_upvr:BindCoreAction("TopBarGamepadToggleGamepadMenu", arg1.toggleMenuVisibleAction, false, Enum.KeyCode.ButtonStart)
	end
end
function any_extend_result1_upvr.bindMenuOpenActions(arg1) -- Line 738
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
	]]
	arg1.boundMenuOpenActions = true
	ContextActionService_upvr:BindCoreAction("TopBarGamepadFreezeController", function() -- Line 743
	end, false, Enum.UserInputType.Gamepad1)
	ContextActionService_upvr:BindCoreAction("TopBarGamepadCloseMenu", arg1.closeMenuAction, false, Enum.KeyCode.ButtonB)
	ContextActionService_upvr:BindCoreAction("TopBarGamepadLeaveGame", arg1.leaveGameMenuAction, false, Enum.KeyCode.ButtonX)
	ContextActionService_upvr:BindCoreAction("TopBarGamepadRespawnAction", arg1.respawnMenuAction, false, Enum.KeyCode.ButtonY)
	ContextActionService_upvr:BindCoreAction("TopBarGamepadActivateSelection", arg1.activateSelectionAction, false, Enum.KeyCode.ButtonA)
	ContextActionService_upvr:BindCoreAction("TopBarGamepadMoveSelection", arg1.moveSelectionAction, false, Enum.KeyCode.Thumbstick1, Enum.KeyCode.DPadUp, Enum.KeyCode.DPadDown)
	ContextActionService_upvr:BindCoreAction("TopBarGamepadMoveSelectionTop", arg1.goToTopAction, false, Enum.KeyCode.ButtonL2)
	ContextActionService_upvr:BindCoreAction("TopBarGamepadMoveSelectionBottom", arg1.goToBottomAction, false, Enum.KeyCode.ButtonR2)
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		ContextActionService_upvr:BindCoreAction("TopBarGamepadToggleChatVisibility", arg1.toggleChatVisibilityAction, false, Enum.KeyCode.ButtonR1)
	end
	ContextActionService_upvr:BindCoreAction("TopBarGamepadToggleGamepadMenu", arg1.toggleMenuVisibleAction, false, Enum.KeyCode.ButtonStart)
end
function any_extend_result1_upvr.unbindMenuOpenActions(arg1) -- Line 785
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
	]]
	arg1.boundMenuOpenActions = false
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadFreezeController")
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadCloseMenu")
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadActivateSelection")
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadLeaveGame")
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadRespawnAction")
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadMoveSelection")
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadMoveSelectionTop")
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadMoveSelectionBottom")
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		ContextActionService_upvr:UnbindCoreAction("TopBarGamepadToggleChatVisibility")
	end
end
function any_extend_result1_upvr.unbindAllActions(arg1) -- Line 802
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if arg1.boundMenuOpenActions then
		arg1:unbindMenuOpenActions()
	end
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadToggleGamepadMenu")
end
function any_extend_result1_upvr.didUpdate(arg1, arg2, arg3) -- Line 810
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: Enabled_upvr (readonly)
		[3]: any_extend_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	local var156
	if arg2.isGamepadMenuOpen == arg1.props.isGamepadMenuOpen then
		var156 = false
	else
		var156 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 23. Error Block 9 start (CF ANALYSIS FAILED)
	arg1.savedSelectedCoreObject = GuiService_upvr.SelectedCoreObject
	GuiService_upvr.SelectedCoreObject = nil
	arg1.savedSelectedObject = GuiService_upvr.SelectedObject
	GuiService_upvr.SelectedObject = nil
	GuiService_upvr:SetMenuIsOpen(true, "GamepadMenu")
	-- KONSTANTERROR: [34] 23. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 47. Error Block 11 start (CF ANALYSIS FAILED)
	arg1:unbindMenuOpenActions()
	GuiService_upvr:SetMenuIsOpen(false, "GamepadMenu")
	-- KONSTANTERROR: [66] 47. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [75] 54. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [75] 54. Error Block 12 end (CF ANALYSIS FAILED)
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 843
	arg1:unbindAllActions()
end
local IXPServiceWrapper_upvr = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local AppUserLayers_upvr = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers
function any_extend_result1_upvr.logExperienceMenuGamepadExposure(arg1) -- Line 847
	--[[ Upvalues[3]:
		[1]: FFlagExperienceMenuGamepadExposureEnabled_upvr (readonly)
		[2]: IXPServiceWrapper_upvr (readonly)
		[3]: AppUserLayers_upvr (readonly)
	]]
	if FFlagExperienceMenuGamepadExposureEnabled_upvr then
		if not arg1.loggedExperienceMenuGamepadExposure then
			IXPServiceWrapper_upvr:LogFlagLinkedUserLayerExposure(AppUserLayers_upvr.ExperienceMenuGamepadExposureLayer)
			arg1.loggedExperienceMenuGamepadExposure = true
		end
	end
end
local SetGamepadMenuOpen_upvr = require(script.Parent.Parent.Parent.Actions.SetGamepadMenuOpen)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 854, Named "mapStateToProps"
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: FFlagMountCoreGuiBackpack_upvr (readonly)
	]]
	local topbarEnabled_2 = arg1.displayOptions.topbarEnabled
	local module_2 = {
		screenSize = arg1.displayOptions.screenSize;
	}
	local var164
	if var164 then
		var164 = topbarEnabled_2
		if var164 then
			var164 = not VRService_upvr.VREnabled
		end
	end
	module_2.chatEnabled = var164
	var164 = arg1.coreGuiEnabled[Enum.CoreGuiType.PlayerList] and topbarEnabled_2
	module_2.leaderboardEnabled = var164
	var164 = arg1.moreMenu.emotesEnabled
	if var164 then
		var164 = arg1.coreGuiEnabled[Enum.CoreGuiType.EmotesMenu]
		if var164 then
			var164 = topbarEnabled_2
		end
	end
	module_2.emotesEnabled = var164
	if FFlagMountCoreGuiBackpack_upvr then
		var164 = nil
	else
		var164 = arg1.coreGuiEnabled[Enum.CoreGuiType.Backpack] and topbarEnabled_2
	end
	module_2.backpackEnabled = var164
	var164 = arg1.respawn.enabled
	module_2.respawnEnabled = var164
	if FFlagMountCoreGuiBackpack_upvr then
		var164 = topbarEnabled_2
	else
		var164 = nil
	end
	module_2.topBarEnabled = var164
	var164 = arg1.moreMenu.leaderboardOpen
	module_2.leaderboardOpen = var164
	var164 = arg1.moreMenu.backpackOpen
	module_2.backpackOpen = var164
	var164 = arg1.moreMenu.emotesOpen
	module_2.emotesOpen = var164
	var164 = arg1.displayOptions.menuOpen
	module_2.menuOpen = var164
	var164 = arg1.displayOptions.isGamepadMenuOpen
	module_2.isGamepadMenuOpen = var164
	return module_2
end, function(arg1) -- Line 880, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetGamepadMenuOpen_upvr (readonly)
	]]
	return {
		setGamepadMenuOpen = function(arg1_14) -- Line 882, Named "setGamepadMenuOpen"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetGamepadMenuOpen_upvr (copied, readonly)
			]]
			return arg1(SetGamepadMenuOpen_upvr(arg1_14))
		end;
	}
end)(any_extend_result1_upvr)