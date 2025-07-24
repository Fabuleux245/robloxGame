-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:41
-- Luau version 6, Types version 3
-- Time taken: 0.004262 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local dependencies = require(Parent.dependencies)
local Foundation_upvr = require(Parent_2.Foundation)
local ReactFocusNavigation_upvr = require(Parent_2.ReactFocusNavigation)
local CoreGui_upvr = game:GetService("CoreGui")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("ClientToastNotificationsEnabled")
local React_upvr = dependencies.React
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local StyleProviderWithDefaultTheme_upvr = require(Parent_2.Style).StyleProviderWithDefaultTheme
local LocalizationProvider_upvr = require(Parent_2.Localization).LocalizationProvider
local Localization_upvr = require(Parent_2.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local Provider_upvr = require(Parent_2.FocusNavigationUtils).FocusNavigableSurfaceRegistry.Provider
local FFlagFriendshipEventsLifecycleCallback_upvr = require(Parent_2.SharedFlags).FFlagFriendshipEventsLifecycleCallback
local InGameToastNotificationActionEventReceiver_upvr = require(script.Parent.InGameToastNotificationActionEventReceiver)
local GetFFlagEnableSecurityAlertToastCallback_upvr = require(Parent_2.SharedFlags).GetFFlagEnableSecurityAlertToastCallback
local SecurityAlertEventReceiver_upvr = require(script.Parent.receivers.SecurityAlertEventReceiver)
local ToastNotificationWrapper_upvr = require(Parent.ToastNotificationWrapper)
local ReactRoblox_upvr = dependencies.ReactRoblox
return function(arg1) -- Line 35
	--[[ Upvalues[18]:
		[1]: CoreGui_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: FoundationProvider_upvr (readonly)
		[5]: Foundation_upvr (readonly)
		[6]: StyleProviderWithDefaultTheme_upvr (readonly)
		[7]: LocalizationProvider_upvr (readonly)
		[8]: Localization_upvr (readonly)
		[9]: LocalizationService_upvr (readonly)
		[10]: ReactFocusNavigation_upvr (readonly)
		[11]: any_new_result1_upvr (readonly)
		[12]: Provider_upvr (readonly)
		[13]: FFlagFriendshipEventsLifecycleCallback_upvr (readonly)
		[14]: InGameToastNotificationActionEventReceiver_upvr (readonly)
		[15]: GetFFlagEnableSecurityAlertToastCallback_upvr (readonly)
		[16]: SecurityAlertEventReceiver_upvr (readonly)
		[17]: ToastNotificationWrapper_upvr (readonly)
		[18]: ReactRoblox_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Folder = Instance.new("Folder")
	Folder.Name = "ToastNotification"
	local var24 = CoreGui_upvr
	Folder.Parent = var24
	local var25
	if game_GetEngineFeature_result1_upvr then
		var24 = React_upvr.createElement
		local tbl_4 = {}
		local tbl = {}
		var25 = React_upvr.createElement
		local tbl_8 = {}
		local tbl_2 = {}
		local tbl_3 = {}
		if FFlagFriendshipEventsLifecycleCallback_upvr then
		else
		end
		tbl_3.InGameToastNotificationActionEventReceiver = nil
		if GetFFlagEnableSecurityAlertToastCallback_upvr() then
		else
		end
		tbl_3.SecurityAlertEventReceiver = nil
		tbl_3.ToastNotificationWrapper = React_upvr.createElement(ToastNotificationWrapper_upvr, {
			displayOrder = 13;
			renderLocation = arg1.renderLocation;
		})
		tbl_2.FocusNavigationRegistryProvider = React_upvr.createElement(Provider_upvr, nil, tbl_3)
		tbl_8.FocusNavigationProvider = React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
			value = any_new_result1_upvr;
		}, tbl_2)
		var25 = var25(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, tbl_8)
		tbl.LocalizationProvider = var25
		tbl_4.StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {
			withUiModeSupport = false;
			withDarkTheme = true;
		}, tbl)
		var24 = var24(FoundationProvider_upvr, {
			theme = Foundation_upvr.Enums.Theme.Dark;
		}, tbl_4)
	else
		var24 = React_upvr.createElement
		local tbl_5 = {}
		local tbl_7 = {}
		var25 = Localization_upvr
		var25 = LocalizationService_upvr.RobloxLocaleId
		tbl_7.localization = var25.new(var25)
		local tbl_6 = {}
		var25 = React_upvr.createElement
		var25 = var25(ToastNotificationWrapper_upvr, {
			displayOrder = 13;
			renderLocation = arg1.renderLocation;
		})
		tbl_6.ToastNotificationWrapper = var25
		if FFlagFriendshipEventsLifecycleCallback_upvr then
			var25 = React_upvr.createElement(InGameToastNotificationActionEventReceiver_upvr)
		else
			var25 = nil
		end
		tbl_6.InGameToastNotificationActionEventReceiver = var25
		tbl_5.LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, tbl_7, tbl_6)
		var24 = var24(StyleProviderWithDefaultTheme_upvr, {
			withUiModeSupport = false;
			withDarkTheme = true;
		}, tbl_5)
	end
	ReactRoblox_upvr.createRoot(Folder):render(var24)
end