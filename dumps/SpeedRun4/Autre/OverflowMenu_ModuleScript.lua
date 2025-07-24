-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:43
-- Luau version 6, Types version 3
-- Time taken: 0.021495 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages_2 = game:GetService("CorePackages")
local React_upvr = require(CorePackages_2.Packages.React)
local Service_upvr_2 = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local ChromeIntegrationUtils_upvr = require(Chrome.Integrations.ChromeIntegrationUtils)
local RespawnUtils_upvr_2 = require(Chrome.Integrations.RespawnUtils)
local MappedSignal_2 = ChromeUtils.MappedSignal
local CommonIcon_upvr = require(Chrome.Integrations.CommonIcon)
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local PlayerListManager_upvr = require(RobloxGui_upvr.Modules.PlayerList.PlayerListManager)
local EmotesMenuMaster_upvr = require(RobloxGui_upvr.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackScript_upvr_2 = require(RobloxGui_upvr.Modules.BackpackScript)
local UIBlox_2 = require(CorePackages_2.Packages.UIBlox)
local Constants_upvr_2 = require(Chrome.ChromeShared.Unibar.Constants)
local isSpatial_upvr_2 = require(CorePackages_2.Workspace.Packages.AppCommonLib).isSpatial
local FFlagEnableUnibarFtuxTooltips = require(CorePackages_2.Workspace.Packages.SharedFlags).FFlagEnableUnibarFtuxTooltips
local any_GetFFlagEnableAppChatInExperience_result1_upvr = require(CorePackages_2.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience()
if any_GetFFlagEnableAppChatInExperience_result1_upvr then
	any_GetFFlagEnableAppChatInExperience_result1_upvr = FFlagEnableUnibarFtuxTooltips
	if any_GetFFlagEnableAppChatInExperience_result1_upvr then
		any_GetFFlagEnableAppChatInExperience_result1_upvr = require(CorePackages_2.Workspace.Packages.AppChat).App.InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeDropdownEntryPoint
		if any_GetFFlagEnableAppChatInExperience_result1_upvr then
			any_GetFFlagEnableAppChatInExperience_result1_upvr = game:DefineFastFlag("AppChatEnabledChromeDropdownFtuxTooltip", false)
			if any_GetFFlagEnableAppChatInExperience_result1_upvr then
				any_GetFFlagEnableAppChatInExperience_result1_upvr = require(Chrome.Flags.GetShouldShowPlatformChatBasedOnPolicy)()
			end
		end
	end
end
local var148_upvr = FFlagEnableUnibarFtuxTooltips
if var148_upvr then
	var148_upvr = require(Chrome.Flags.GetFFlagShouldShowMusicFtuxTooltip)()
	if var148_upvr then
		var148_upvr = require(Chrome.Flags.GetFFlagEnableSongbirdInChrome)()
	end
end
local isInExperienceUIVREnabled_upvr = require(CorePackages_2.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local any_new_result1_upvr = MappedSignal_2.new(PlayerListManager_upvr:GetSetVisibleChangedEvent().Event, function() -- Line 88
	--[[ Upvalues[1]:
		[1]: PlayerListManager_upvr (readonly)
	]]
	return PlayerListManager_upvr:GetSetVisible()
end)
local tbl_9 = {
	id = "leaderboard";
	label = "CoreScripts.TopBar.Leaderboard";
}
local VRService_upvr_2 = game:GetService("VRService")
local function activated(arg1) -- Line 95
	--[[ Upvalues[6]:
		[1]: isInExperienceUIVREnabled_upvr (readonly)
		[2]: VRService_upvr_2 (readonly)
		[3]: RobloxGui_upvr (readonly)
		[4]: PlayerListManager_upvr (readonly)
		[5]: isSpatial_upvr_2 (readonly)
		[6]: ChromeIntegrationUtils_upvr (readonly)
	]]
	if not isInExperienceUIVREnabled_upvr and VRService_upvr_2.VREnabled then
		require(RobloxGui_upvr.Modules.InGameMenu).openPlayersPage()
	else
		if PlayerListManager_upvr:GetSetVisible() then
			PlayerListManager_upvr:SetVisibility(not PlayerListManager_upvr:GetSetVisible())
			return
		end
		if isInExperienceUIVREnabled_upvr and isSpatial_upvr_2() then
			PlayerListManager_upvr:SetVisibility(not PlayerListManager_upvr:GetSetVisible())
			return
		end
		ChromeIntegrationUtils_upvr.dismissRobloxMenuAndRun(function() -- Line 106
			--[[ Upvalues[1]:
				[1]: PlayerListManager_upvr (copied, readonly)
			]]
			PlayerListManager_upvr:SetVisibility(not PlayerListManager_upvr:GetSetVisible())
		end)
	end
end
tbl_9.activated = activated
local function isActivated() -- Line 113
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	return any_new_result1_upvr:get()
end
tbl_9.isActivated = isActivated
local tbl_3 = {}
local function Icon(arg1) -- Line 117
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	return CommonIcon_upvr("icons/controls/leaderboardOff", "icons/controls/leaderboardOn", any_new_result1_upvr)
end
tbl_3.Icon = Icon
tbl_9.components = tbl_3
ChromeUtils.setCoreGuiAvailability(Service_upvr_2:register(tbl_9), Enum.CoreGuiType.PlayerList)
local any_new_result1_upvr_6 = MappedSignal_2.new(EmotesMenuMaster_upvr.EmotesMenuToggled.Event, function() -- Line 124
	--[[ Upvalues[1]:
		[1]: EmotesMenuMaster_upvr (readonly)
	]]
	return EmotesMenuMaster_upvr:isOpen()
end)
local tbl_22 = {
	id = "emotes";
	label = "CoreScripts.TopBar.Emotes";
}
local function activated(arg1) -- Line 130
	--[[ Upvalues[4]:
		[1]: EmotesMenuMaster_upvr (readonly)
		[2]: isInExperienceUIVREnabled_upvr (readonly)
		[3]: isSpatial_upvr_2 (readonly)
		[4]: ChromeIntegrationUtils_upvr (readonly)
	]]
	if EmotesMenuMaster_upvr:isOpen() then
		EmotesMenuMaster_upvr:close()
	else
		if isInExperienceUIVREnabled_upvr and isSpatial_upvr_2() then
			EmotesMenuMaster_upvr:open()
			return
		end
		ChromeIntegrationUtils_upvr.dismissRobloxMenuAndRun(function() -- Line 137
			--[[ Upvalues[1]:
				[1]: EmotesMenuMaster_upvr (copied, readonly)
			]]
			EmotesMenuMaster_upvr:open()
		end)
	end
end
tbl_22.activated = activated
local function isActivated() -- Line 143
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr_6 (readonly)
	]]
	return any_new_result1_upvr_6:get()
end
tbl_22.isActivated = isActivated
local tbl_20 = {}
local function Icon(arg1) -- Line 147
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr_6 (readonly)
	]]
	return CommonIcon_upvr("icons/controls/emoteOff", "icons/controls/emoteOn", any_new_result1_upvr_6)
end
tbl_20.Icon = Icon
tbl_22.components = tbl_20
local any_register_result1_upvr_4 = Service_upvr_2:register(tbl_22)
local var162_upvw = false
local MenuIsVisible_upvw_2 = EmotesMenuMaster_upvr.MenuIsVisible
function updateEmoteAvailability() -- Line 156
	--[[ Upvalues[3]:
		[1]: var162_upvw (read and write)
		[2]: MenuIsVisible_upvw_2 (read and write)
		[3]: any_register_result1_upvr_4 (readonly)
	]]
	if var162_upvw and MenuIsVisible_upvw_2 then
		any_register_result1_upvr_4.availability:available()
	else
		any_register_result1_upvr_4.availability:unavailable()
	end
end
ChromeUtils.setCoreGuiAvailability(any_register_result1_upvr_4, Enum.CoreGuiType.EmotesMenu, function(arg1) -- Line 164
	--[[ Upvalues[1]:
		[1]: var162_upvw (read and write)
	]]
	var162_upvw = arg1
	updateEmoteAvailability()
end)
EmotesMenuMaster_upvr.MenuVisibilityChanged.Event:Connect(function() -- Line 169
	--[[ Upvalues[2]:
		[1]: MenuIsVisible_upvw_2 (read and write)
		[2]: EmotesMenuMaster_upvr (readonly)
	]]
	MenuIsVisible_upvw_2 = EmotesMenuMaster_upvr.MenuIsVisible
	updateEmoteAvailability()
end)
local any_new_result1_upvr_2 = MappedSignal_2.new(BackpackScript_upvr_2.StateChanged.Event, function() -- Line 174
	--[[ Upvalues[1]:
		[1]: BackpackScript_upvr_2 (readonly)
	]]
	return BackpackScript_upvr_2.IsOpen
end)
local tbl_7 = {
	id = "backpack";
	label = "CoreScripts.TopBar.Inventory";
}
local function activated(arg1) -- Line 180
	--[[ Upvalues[4]:
		[1]: BackpackScript_upvr_2 (readonly)
		[2]: isInExperienceUIVREnabled_upvr (readonly)
		[3]: isSpatial_upvr_2 (readonly)
		[4]: ChromeIntegrationUtils_upvr (readonly)
	]]
	if BackpackScript_upvr_2.IsOpen then
		BackpackScript_upvr_2:OpenClose()
	else
		if isInExperienceUIVREnabled_upvr and isSpatial_upvr_2() then
			BackpackScript_upvr_2:OpenClose()
			return
		end
		ChromeIntegrationUtils_upvr.dismissRobloxMenuAndRun(function() -- Line 187
			--[[ Upvalues[1]:
				[1]: BackpackScript_upvr_2 (copied, readonly)
			]]
			BackpackScript_upvr_2:OpenClose()
		end)
	end
end
tbl_7.activated = activated
local function isActivated() -- Line 193
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr_2 (readonly)
	]]
	return any_new_result1_upvr_2:get()
end
tbl_7.isActivated = isActivated
local tbl = {}
local function Icon(arg1) -- Line 197
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr_2 (readonly)
	]]
	return CommonIcon_upvr("icons/menu/inventoryOff", "icons/menu/inventory", any_new_result1_upvr_2)
end
tbl.Icon = Icon
tbl_7.components = tbl
ChromeUtils.setCoreGuiAvailability(Service_upvr_2:register(tbl_7), Enum.CoreGuiType.Backpack)
local tbl_5 = {
	id = "respawn";
	label = "CoreScripts.InGameMenu.QuickActions.Respawn";
	activated = function(arg1) -- Line 207, Named "activated"
		--[[ Upvalues[1]:
			[1]: RespawnUtils_upvr_2 (readonly)
		]]
		RespawnUtils_upvr_2.respawnPage()
	end;
	isActivated = function() -- Line 210, Named "isActivated"
		--[[ Upvalues[1]:
			[1]: RespawnUtils_upvr_2 (readonly)
		]]
		return RespawnUtils_upvr_2.respawnPageOpenSignal:get()
	end;
}
local tbl_19 = {}
local function Icon(arg1) -- Line 214
	--[[ Upvalues[1]:
		[1]: CommonIcon_upvr (readonly)
	]]
	return CommonIcon_upvr("icons/actions/respawn")
end
tbl_19.Icon = Icon
tbl_5.components = tbl_19
local any_register_result1_upvr_2 = Service_upvr_2:register(tbl_5)
local GetFFlagUnpinUnavailable_upvr_2 = require(Chrome.Flags.GetFFlagUnpinUnavailable)
function updateRespawn(arg1) -- Line 220
	--[[ Upvalues[3]:
		[1]: any_register_result1_upvr_2 (readonly)
		[2]: GetFFlagUnpinUnavailable_upvr_2 (readonly)
		[3]: Service_upvr_2 (readonly)
	]]
	if arg1 then
		any_register_result1_upvr_2.availability:available()
	else
		any_register_result1_upvr_2.availability:unavailable()
		if GetFFlagUnpinUnavailable_upvr_2() then
			Service_upvr_2:removeUserPin(any_register_result1_upvr_2.id)
		end
	end
end
task.defer(function() -- Line 231
	--[[ Upvalues[1]:
		[1]: RobloxGui_upvr (readonly)
	]]
	local SettingsHub_2 = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
	SettingsHub_2.RespawnBehaviourChangedEvent.Event:connect(updateRespawn)
	updateRespawn(SettingsHub_2:GetRespawnBehaviour())
end)
local any_currentSubMenu_result1_upvr_2 = Service_upvr_2:currentSubMenu()
local any_new_result1_upvr_7 = MappedSignal_2.new(any_currentSubMenu_result1_upvr_2:signal(), function() -- Line 238
	--[[ Upvalues[1]:
		[1]: any_currentSubMenu_result1_upvr_2 (readonly)
	]]
	local var179
	if any_currentSubMenu_result1_upvr_2:get() ~= "nine_dot" then
		var179 = false
	else
		var179 = true
	end
	return var179
end)
if Service_upvr_2:orderAlignment():get() == Enum.HorizontalAlignment.Right then
	any_new_result1_upvr_7:connect(function(arg1) -- Line 243
		--[[ Upvalues[1]:
			[1]: PlayerListManager_upvr (readonly)
		]]
		PlayerListManager_upvr:SetMinimized(arg1)
	end)
end
local useStyle_upvr_2 = UIBlox_2.Core.Style.useStyle
local useMappedSignal_upvr_2 = require(Chrome.ChromeShared.Hooks.useMappedSignal)
local GetFFlagShouldShowSimpleMusicFtuxTooltip_upvr_2 = require(Chrome.Flags.GetFFlagShouldShowSimpleMusicFtuxTooltip)
local GetFFlagShouldShowMusicFtuxTooltipXTimes_upvr_2 = require(Chrome.Flags.GetFFlagShouldShowMusicFtuxTooltipXTimes)
local useCurrentSong_upvr = require(CorePackages_2.Workspace.Packages.Songbird).useCurrentSong
local useMemo_upvr = React_upvr.useMemo
local LocalStore_upvr_2 = require(Chrome.ChromeShared.Service.LocalStore)
local GetFStringConnectTooltipLocalStorageKey_upvr_2 = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local GetFStringMusicTooltipLocalStorageKey_v2_upvr_2 = require(Chrome.Flags.GetFStringMusicTooltipLocalStorageKey_v2)
local GetFStringMusicTooltipLocalStorageKey_upvr = require(Chrome.Flags.GetFStringMusicTooltipLocalStorageKey)
local useState_upvr_2 = React_upvr.useState
local useEffect_upvr_2 = React_upvr.useEffect
local useCallback_upvr_2 = React_upvr.useCallback
local CommonFtuxTooltip_upvr = require(Chrome.Integrations.CommonFtuxTooltip)
local var196_upvr = require(Chrome.Flags.FFlagEnableUnibarTooltipQueue)()
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("UnibarConnectTooltipPriority", 2000)
local GetFFlagAppChatRebrandStringUpdates_upvr = require(CorePackages_2.Workspace.Packages.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr_2 = require(CorePackages_2.Workspace.Packages.SocialExperiments).SquadExperimentation
local GetFIntRobloxConnectFtuxShowDelayMs_upvr_2 = require(Chrome.Flags.GetFIntRobloxConnectFtuxShowDelayMs)
local GetFIntRobloxConnectFtuxDismissDelayMs_upvr_2 = require(Chrome.Flags.GetFIntRobloxConnectFtuxDismissDelayMs)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UnibarMusicIconTooltipPriority", 3000)
local GetFIntMusicFtuxShowDelayMs_upvr_2 = require(Chrome.Flags.GetFIntMusicFtuxShowDelayMs)
local GetFIntMusicFtuxDismissDelayMs_upvr = require(Chrome.Flags.GetFIntMusicFtuxDismissDelayMs)
local ICON_SIZE_upvr_2 = Constants_upvr_2.ICON_SIZE
local ImageSetLabel_upvr_2 = UIBlox_2.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox_2.App.ImageSet.Images
local SelfieView_upvr_2 = require(RobloxGui_upvr.Modules.SelfieView)
local SELFIE_VIEW_ID_upvr_2 = Constants_upvr_2.SELFIE_VIEW_ID
function HamburgerButton(arg1) -- Line 248
	--[[ Upvalues[34]:
		[1]: useStyle_upvr_2 (readonly)
		[2]: any_new_result1_upvr_7 (readonly)
		[3]: useMappedSignal_upvr_2 (readonly)
		[4]: var148_upvr (readonly)
		[5]: GetFFlagShouldShowSimpleMusicFtuxTooltip_upvr_2 (readonly)
		[6]: GetFFlagShouldShowMusicFtuxTooltipXTimes_upvr_2 (readonly)
		[7]: useCurrentSong_upvr (readonly)
		[8]: useMemo_upvr (readonly)
		[9]: any_GetFFlagEnableAppChatInExperience_result1_upvr (readonly)
		[10]: LocalStore_upvr_2 (readonly)
		[11]: GetFStringConnectTooltipLocalStorageKey_upvr_2 (readonly)
		[12]: GetFStringMusicTooltipLocalStorageKey_v2_upvr_2 (readonly)
		[13]: Constants_upvr_2 (readonly)
		[14]: GetFStringMusicTooltipLocalStorageKey_upvr (readonly)
		[15]: useState_upvr_2 (readonly)
		[16]: useEffect_upvr_2 (readonly)
		[17]: useCallback_upvr_2 (readonly)
		[18]: CommonFtuxTooltip_upvr (readonly)
		[19]: var196_upvr (readonly)
		[20]: game_DefineFastInt_result1_upvr_2 (readonly)
		[21]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[22]: SquadExperimentation_upvr_2 (readonly)
		[23]: GetFIntRobloxConnectFtuxShowDelayMs_upvr_2 (readonly)
		[24]: GetFIntRobloxConnectFtuxDismissDelayMs_upvr_2 (readonly)
		[25]: game_DefineFastInt_result1_upvr (readonly)
		[26]: GetFIntMusicFtuxShowDelayMs_upvr_2 (readonly)
		[27]: GetFIntMusicFtuxDismissDelayMs_upvr (readonly)
		[28]: React_upvr (readonly)
		[29]: ICON_SIZE_upvr_2 (readonly)
		[30]: ImageSetLabel_upvr_2 (readonly)
		[31]: Images_upvr (readonly)
		[32]: SelfieView_upvr_2 (readonly)
		[33]: Service_upvr_2 (readonly)
		[34]: SELFIE_VIEW_ID_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 166 start (CF ANALYSIS FAILED)
	local var210_upvr
	if not any_new_result1_upvr_7 or not useMappedSignal_upvr_2(any_new_result1_upvr_7) then
	end
	var210_upvr = var148_upvr
	if var210_upvr then
		var210_upvr = GetFFlagShouldShowSimpleMusicFtuxTooltip_upvr_2()
		if not var210_upvr then
			var210_upvr = GetFFlagShouldShowMusicFtuxTooltipXTimes_upvr_2()
			if var210_upvr then
				var210_upvr = useCurrentSong_upvr()
				local useMemo_upvr_result1_upvw = useMemo_upvr(function() -- Line 263
					--[[ Upvalues[1]:
						[1]: var210_upvr (readonly)
					]]
					if var210_upvr then
						return var210_upvr.meetsCriteria
					end
					return false
				end, {var210_upvr})
			end
		end
	end
	if any_GetFFlagEnableAppChatInExperience_result1_upvr then
		var210_upvr = LocalStore_upvr_2.getValue(GetFStringConnectTooltipLocalStorageKey_upvr_2()) or false
	else
		var210_upvr = true
	end
	if GetFFlagShouldShowMusicFtuxTooltipXTimes_upvr_2() then
		if Constants_upvr_2.MAX_NUM_UNIVERSES_SHOWN > LocalStore_upvr_2.getNumUniversesExposedTo(GetFStringMusicTooltipLocalStorageKey_v2_upvr_2()) then
		else
		end
		-- KONSTANTWARNING: GOTO [66] #59
	end
	-- KONSTANTERROR: [0] 1. Error Block 166 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [60] 54. Error Block 128 start (CF ANALYSIS FAILED)
	local var214_upvw
	if GetFFlagShouldShowMusicFtuxTooltipXTimes_upvr_2() then
		if GetFFlagShouldShowSimpleMusicFtuxTooltip_upvr_2() then
			local var192_result1, var192_result2_2 = useState_upvr_2(var148_upvr and var210_upvr)
			local var217_upvw = var192_result1
			var214_upvw = var192_result2_2
			useEffect_upvr_2(function() -- Line 283
				--[[ Upvalues[4]:
					[1]: var217_upvw (read and write)
					[2]: var148_upvr (copied, readonly)
					[3]: var210_upvr (readonly)
					[4]: var214_upvw (read and write)
				]]
				if not var217_upvw and var148_upvr and var210_upvr then
					var214_upvw(true)
				end
			end, {var217_upvw, var148_upvr, var210_upvr})
			local function var220() -- Line 289
				--[[ Upvalues[2]:
					[1]: LocalStore_upvr_2 (copied, readonly)
					[2]: GetFStringMusicTooltipLocalStorageKey_v2_upvr_2 (copied, readonly)
				]]
				LocalStore_upvr_2.addUniverseToExposureList(GetFStringMusicTooltipLocalStorageKey_v2_upvr_2(), game.GameId)
			end
			local _ = {game.GameId}
		else
			var220 = var148_upvr
			local var222 = var220
			if var222 then
				var222 = var210_upvr
				if var222 then
					var222 = useMemo_upvr_result1_upvw
				end
			end
			local useState_upvr_2_result1_2, var192_result2 = useState_upvr_2(var222)
			var217_upvw = useState_upvr_2_result1_2
			local var225_upvw = var217_upvw
			var214_upvw = var192_result2
			useEffect_upvr_2(function() -- Line 296
				--[[ Upvalues[5]:
					[1]: var225_upvw (read and write)
					[2]: var148_upvr (copied, readonly)
					[3]: var210_upvr (readonly)
					[4]: useMemo_upvr_result1_upvw (read and write)
					[5]: var214_upvw (read and write)
				]]
				if not var225_upvw and var148_upvr and var210_upvr and useMemo_upvr_result1_upvw then
					var214_upvw(true)
				end
			end, {var225_upvw, var148_upvr, var210_upvr, useMemo_upvr_result1_upvw})
			local function _() -- Line 312
				--[[ Upvalues[2]:
					[1]: LocalStore_upvr_2 (copied, readonly)
					[2]: GetFStringMusicTooltipLocalStorageKey_v2_upvr_2 (copied, readonly)
				]]
				LocalStore_upvr_2.addUniverseToExposureList(GetFStringMusicTooltipLocalStorageKey_v2_upvr_2(), game.GameId)
			end
			local _ = {game.GameId}
		end
	else
		local useState_upvr_2_result1, useState_upvr_2_result2 = useState_upvr_2(var148_upvr and var210_upvr)
		var225_upvw = useState_upvr_2_result1
		var214_upvw = useState_upvr_2_result2
	end
	local function _() -- Line 321
		--[[ Upvalues[1]:
			[1]: var214_upvw (read and write)
		]]
		var214_upvw(true)
	end
	-- KONSTANTERROR: [60] 54. Error Block 128 end (CF ANALYSIS FAILED)
end
local module_2 = {
	initialAvailability = Service_upvr_2.AvailabilitySignal.Pinned;
	notification = Service_upvr_2:subMenuNotifications("nine_dot");
	id = "nine_dot";
}
local var235 = "CoreScripts.TopBar.MoreMenu"
module_2.label = var235
if game:DefineFastFlag("FixIntegrationActivated1", false) then
	function var235() -- Line 454
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_7 (readonly)
		]]
		return any_new_result1_upvr_7:get()
	end
else
	var235 = nil
end
module_2.isActivated = var235
module_2.components = {
	Icon = function(arg1) -- Line 459, Named "Icon"
		--[[ Upvalues[1]:
			[1]: React_upvr (readonly)
		]]
		return React_upvr.createElement(HamburgerButton, arg1)
	end;
}
return Service_upvr_2:register(module_2)