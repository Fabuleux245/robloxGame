-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:45
-- Luau version 6, Types version 3
-- Time taken: 0.008711 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local SetCurrentPage_upvr = require(script.Actions.SetCurrentPage)
local OpenMenu_upvr = require(script.Thunks.OpenMenu)
local Constants_upvr = require(script.Resources.Constants)
local BindableEvent_upvr_2 = Instance.new("BindableEvent")
local BindableEvent_upvr = Instance.new("BindableEvent")
local var10_upvr = require(script.createStore)()
local module = {}
local registerSetCores_upvr = require(script.SetupFunctions.registerSetCores)
local bindMenuActions_upvr = require(script.SetupFunctions.bindMenuActions)
local requestGameNameAndDescription_upvr = require(script.SetupFunctions.requestGameNameAndDescription)
local GlobalConfig_upvr = require(script.GlobalConfig)
local Roact_upvr = InGameMenuDependencies.Roact
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local SetLocaleId_upvr = require(script.Actions.SetLocaleId)
local SetInspectMenuEnabled_upvr = require(script.Actions.SetInspectMenuEnabled)
local GuiService_upvr = game:GetService("GuiService")
local initVoiceChatStore_upvr = require(RobloxGui.Modules.VoiceChat.initVoiceChatStore)
local renderWithCoreScriptsStyleProvider_upvr = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local SelectionCursorProvider_upvr = InGameMenuDependencies.UIBlox.App.SelectionImage.SelectionCursorProvider
local GetFFlagIGMGamepadSelectionHistory_upvr = require(script.Flags.GetFFlagIGMGamepadSelectionHistory)
local FocusHandlerContextProvider_upvr = require(script.Components.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local App_upvr = require(script.Components.App)
local GetFFlagEnableUISoundAndHaptics_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableUISoundAndHaptics
local AppInteractionFeedbackProvider_upvr = require(CorePackages.Workspace.Packages.RobloxAppInteractionFeedbackConfig).AppInteractionFeedbackProvider
local FeedbackManagerInjectionContextProvider_upvr = require(CorePackages.Workspace.Packages.InteractionFeedback).FeedbackManagerInjectionContextProvider
local SetScreenSize_upvr = require(script.Actions.SetScreenSize)
local RoactRodux_upvr = InGameMenuDependencies.RoactRodux
local InGameMenuPolicy_upvr = require(script.InGameMenuPolicy)
function module.mountInGameMenu() -- Line 58
	--[[ Upvalues[28]:
		[1]: registerSetCores_upvr (readonly)
		[2]: var10_upvr (readonly)
		[3]: bindMenuActions_upvr (readonly)
		[4]: requestGameNameAndDescription_upvr (readonly)
		[5]: GlobalConfig_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: BindableEvent_upvr_2 (readonly)
		[8]: BindableEvent_upvr (readonly)
		[9]: Localization_upvr (readonly)
		[10]: LocalizationService_upvr (readonly)
		[11]: SetLocaleId_upvr (readonly)
		[12]: SetInspectMenuEnabled_upvr (readonly)
		[13]: GuiService_upvr (readonly)
		[14]: initVoiceChatStore_upvr (readonly)
		[15]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[16]: LocalizationProvider_upvr (readonly)
		[17]: SelectionCursorProvider_upvr (readonly)
		[18]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[19]: FocusHandlerContextProvider_upvr (readonly)
		[20]: App_upvr (readonly)
		[21]: GetFFlagEnableUISoundAndHaptics_upvr (readonly)
		[22]: AppInteractionFeedbackProvider_upvr (readonly)
		[23]: FeedbackManagerInjectionContextProvider_upvr (readonly)
		[24]: Constants_upvr (readonly)
		[25]: SetScreenSize_upvr (readonly)
		[26]: RoactRodux_upvr (readonly)
		[27]: InGameMenuPolicy_upvr (readonly)
		[28]: CoreGui_upvr (readonly)
	]]
	registerSetCores_upvr(var10_upvr)
	bindMenuActions_upvr(var10_upvr)
	requestGameNameAndDescription_upvr(var10_upvr)
	local var35
	if GlobalConfig_upvr.propValidation then
		Roact_upvr.setGlobalConfig({
			propValidation = true;
		})
	end
	if GlobalConfig_upvr.elementTracing then
		Roact_upvr.setGlobalConfig({
			elementTracing = true;
		})
	end
	var10_upvr.changed:connect(function(arg1, arg2) -- Line 74
		--[[ Upvalues[2]:
			[1]: BindableEvent_upvr_2 (copied, readonly)
			[2]: BindableEvent_upvr (copied, readonly)
		]]
		if arg1.isMenuOpen ~= arg2.isMenuOpen then
			BindableEvent_upvr_2:Fire(arg1.isMenuOpen)
		end
		local enabled = arg1.respawn.enabled
		local customCallback = arg1.respawn.customCallback
		if enabled ~= arg2.respawn.enabled and customCallback ~= arg2.respawn.customCallback then
			BindableEvent_upvr:Fire(enabled, customCallback)
		end
	end)
	local any_new_result1_upvr = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
	var10_upvr:dispatch(SetLocaleId_upvr(LocalizationService_upvr.RobloxLocaleId))
	LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function() -- Line 92
		--[[ Upvalues[4]:
			[1]: any_new_result1_upvr (readonly)
			[2]: LocalizationService_upvr (copied, readonly)
			[3]: var10_upvr (copied, readonly)
			[4]: SetLocaleId_upvr (copied, readonly)
		]]
		any_new_result1_upvr:SetLocale(LocalizationService_upvr.RobloxLocaleId)
		var10_upvr:dispatch(SetLocaleId_upvr(LocalizationService_upvr.RobloxLocaleId))
	end)
	var10_upvr:dispatch(SetInspectMenuEnabled_upvr(GuiService_upvr:GetInspectMenuEnabled()))
	GuiService_upvr.InspectMenuEnabledChangedSignal:Connect(function(arg1) -- Line 98
		--[[ Upvalues[2]:
			[1]: var10_upvr (copied, readonly)
			[2]: SetInspectMenuEnabled_upvr (copied, readonly)
		]]
		var10_upvr:dispatch(SetInspectMenuEnabled_upvr(arg1))
	end)
	initVoiceChatStore_upvr(var10_upvr)
	local tbl_5 = {}
	local tbl_2 = {}
	local tbl_3 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var35 = var35(FocusHandlerContextProvider_upvr, {}, tbl)
		tbl.InGameMenu = Roact_upvr.createElement(App_upvr)
		local tbl = {}
		var35 = Roact_upvr.createElement
		return var35
	end
	if not GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED() then
		var35 = nil
	end
	tbl_3.FocusHandlerContextProvider = var35
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var35 = Roact_upvr.createElement(App_upvr)
		return var35
	end
	if GetFFlagIGMGamepadSelectionHistory_upvr() or not INLINED_2() then
		var35 = nil
	end
	tbl_3.InGameMenu = var35
	tbl_2.CursorProvider = Roact_upvr.createElement(SelectionCursorProvider_upvr, {}, tbl_3)
	tbl_5.LocalizationProvider = Roact_upvr.createElement(LocalizationProvider_upvr, {
		localization = any_new_result1_upvr;
	}, tbl_2)
	local renderWithCoreScriptsStyleProvider_upvr_result1 = renderWithCoreScriptsStyleProvider_upvr(tbl_5)
	if GetFFlagEnableUISoundAndHaptics_upvr() then
		renderWithCoreScriptsStyleProvider_upvr_result1 = Roact_upvr.createElement(AppInteractionFeedbackProvider_upvr, {}, {
			tree = Roact_upvr.createElement(FeedbackManagerInjectionContextProvider_upvr, nil, {
				tree = renderWithCoreScriptsStyleProvider_upvr_result1;
			});
		})
	end
	local tbl_4 = {}
	local tbl_6 = {}
	var35 = Roact_upvr
	var35 = InGameMenuPolicy_upvr.Provider
	tbl_6.PolicyProvider = var35.createElement(var35, {
		policy = {InGameMenuPolicy_upvr.Mapper};
	}, {
		ThemeProvider = renderWithCoreScriptsStyleProvider_upvr_result1;
	})
	tbl_4.StoreProvider = Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = var10_upvr;
	}, tbl_6)
	Roact_upvr.mount(Roact_upvr.createElement("ScreenGui", {
		ResetOnSpawn = false;
		IgnoreGuiInset = true;
		DisplayOrder = Constants_upvr.DisplayOrder.RootMenu;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		[Roact_upvr.Change.AbsoluteSize] = function(arg1) -- Line 132
			--[[ Upvalues[2]:
				[1]: var10_upvr (copied, readonly)
				[2]: SetScreenSize_upvr (copied, readonly)
			]]
			var10_upvr:dispatch(SetScreenSize_upvr(arg1.AbsoluteSize))
		end;
	}, tbl_4), CoreGui_upvr, "InGameMenu")
end
function module.openInGameMenu(arg1) -- Line 149
	--[[ Upvalues[3]:
		[1]: var10_upvr (readonly)
		[2]: OpenMenu_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	var10_upvr:dispatch(OpenMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.TopbarButton, arg1))
end
local CloseMenu_upvr = require(script.Thunks.CloseMenu)
function module.closeInGameMenu() -- Line 153
	--[[ Upvalues[2]:
		[1]: CloseMenu_upvr (readonly)
		[2]: var10_upvr (readonly)
	]]
	CloseMenu_upvr(var10_upvr)
end
local TrustAndSafety_upvr = require(RobloxGui.Modules.TrustAndSafety)
function module.openReportDialog(arg1, arg2) -- Line 157
	--[[ Upvalues[4]:
		[1]: var10_upvr (readonly)
		[2]: OpenMenu_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: TrustAndSafety_upvr (readonly)
	]]
	var10_upvr:dispatch(OpenMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.ReportAbuseTriggered, Constants_upvr.ReportDialogKey))
	local var62
	if arg2 ~= nil then
		var62 = arg2
	else
		var62 = Constants_upvr.AnalyticsInGameMenuName
	end
	TrustAndSafety_upvr.openReportDialogForPlayer(arg1, var62)
end
function module.openGameSettingsPage() -- Line 163
	--[[ Upvalues[4]:
		[1]: var10_upvr (readonly)
		[2]: OpenMenu_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SetCurrentPage_upvr (readonly)
	]]
	var10_upvr:dispatch(OpenMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.SettingsTriggered))
	var10_upvr:dispatch(SetCurrentPage_upvr("GameSettings"))
end
function module.openGameLeavePage() -- Line 168
	--[[ Upvalues[4]:
		[1]: var10_upvr (readonly)
		[2]: OpenMenu_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SetCurrentPage_upvr (readonly)
	]]
	var10_upvr:dispatch(OpenMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.GamepadLeaveGame))
	var10_upvr:dispatch(SetCurrentPage_upvr(Constants_upvr.LeaveGamePromptPageKey))
end
local SetRespawning_upvr = require(script.Actions.SetRespawning)
function module.openCharacterResetPage() -- Line 173
	--[[ Upvalues[5]:
		[1]: var10_upvr (readonly)
		[2]: OpenMenu_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SetCurrentPage_upvr (readonly)
		[5]: SetRespawning_upvr (readonly)
	]]
	var10_upvr:dispatch(OpenMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.GamepadResetCharacter))
	var10_upvr:dispatch(SetCurrentPage_upvr(Constants_upvr.MainPagePageKey))
	var10_upvr:dispatch(SetRespawning_upvr(true))
end
function module.openPlayersPage() -- Line 179
	--[[ Upvalues[4]:
		[1]: var10_upvr (readonly)
		[2]: OpenMenu_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SetCurrentPage_upvr (readonly)
	]]
	var10_upvr:dispatch(OpenMenu_upvr(Constants_upvr.AnalyticsMenuOpenTypes.PlayersTriggered))
	var10_upvr:dispatch(SetCurrentPage_upvr("Players"))
end
function module.getOpenChangedEvent() -- Line 184
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr_2 (readonly)
	]]
	return BindableEvent_upvr_2
end
function module.getOpen() -- Line 188
	--[[ Upvalues[1]:
		[1]: var10_upvr (readonly)
	]]
	return var10_upvr:getState().isMenuOpen
end
function module.getRespawnBehaviour() -- Line 192
	--[[ Upvalues[1]:
		[1]: var10_upvr (readonly)
	]]
	local any_getState_result1 = var10_upvr:getState()
	return any_getState_result1.respawn.enabled, any_getState_result1.respawn.customCallback
end
function module.getRespawnBehaviourChangedEvent() -- Line 197
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr (readonly)
	]]
	return BindableEvent_upvr
end
local SetMenuIconTooltipOpen_upvr = require(script.Actions.SetMenuIconTooltipOpen)
function module.setMenuIconTooltipOpen(arg1) -- Line 201
	--[[ Upvalues[2]:
		[1]: var10_upvr (readonly)
		[2]: SetMenuIconTooltipOpen_upvr (readonly)
	]]
	var10_upvr:dispatch(SetMenuIconTooltipOpen_upvr(arg1))
end
return module