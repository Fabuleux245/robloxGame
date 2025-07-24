-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:32
-- Luau version 6, Types version 3
-- Time taken: 0.004009 seconds

local Parent = script.Parent.Parent
local var2_upvw
if game:DefineFastFlag("SwitchCSRootProviderTranslationsPackage", false) then
	var2_upvw = require(Parent.InExperienceLocales).Localization
else
	var2_upvw = require(Parent.RobloxAppLocales).Localization
end
local UIBlox_upvr = require(Parent.UIBlox)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local DeviceType_upvr = require(Parent.RobloxAppEnums).DeviceType
local tbl_2_upvr = {
	themeName = "dark";
}
local var7 = "gotham"
tbl_2_upvr.fontName = var7
if game:GetService("GuiService"):IsTenFootInterface() then
	var7 = DeviceType_upvr.Console
else
	var7 = DeviceType_upvr.Desktop
end
tbl_2_upvr.deviceType = var7
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local RoactRodux_upvr = require(Parent.RoactRodux)
local Rodux_upvr = require(Parent.Rodux)
local DesignTokenProvider_upvr = require(Parent.Style).DesignTokenProvider
local GamepadDisconnectTokenMapper_upvr = require(Parent.InputUi).Gamepad.GamepadDisconnectTokenMapper
local SelectionCursorProvider_upvr = UIBlox_upvr.App.SelectionImage.SelectionCursorProvider
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local LocalizationService_upvr = game:GetService("LocalizationService")
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local Provider_upvr = require(Parent.FocusNavigationUtils).FocusNavigableSurfaceRegistry.Provider
local Foundation_upvr = require(Parent.Foundation)
local GetFFlagEnableUISoundAndHaptics_upvr = require(Parent.SharedFlags).GetFFlagEnableUISoundAndHaptics
local AppInteractionFeedbackProvider_upvr = require(Parent.RobloxAppInteractionFeedbackConfig).AppInteractionFeedbackProvider
local FeedbackManagerInjectionContextProvider_upvr = require(Parent.InteractionFeedback).FeedbackManagerInjectionContextProvider
return function(arg1) -- Line 62, Named "CoreScriptsRootProvider"
	--[[ Upvalues[20]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: RoactRodux_upvr (readonly)
		[5]: Rodux_upvr (readonly)
		[6]: UIBlox_upvr (readonly)
		[7]: DesignTokenProvider_upvr (readonly)
		[8]: GamepadDisconnectTokenMapper_upvr (readonly)
		[9]: SelectionCursorProvider_upvr (readonly)
		[10]: LocalizationProvider_upvr (readonly)
		[11]: var2_upvw (read and write)
		[12]: LocalizationService_upvr (readonly)
		[13]: ReactFocusNavigation_upvr (readonly)
		[14]: any_new_result1_upvr (readonly)
		[15]: Provider_upvr (readonly)
		[16]: Foundation_upvr (readonly)
		[17]: DeviceType_upvr (readonly)
		[18]: GetFFlagEnableUISoundAndHaptics_upvr (readonly)
		[19]: AppInteractionFeedbackProvider_upvr (readonly)
		[20]: FeedbackManagerInjectionContextProvider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local styleOverride = arg1.styleOverride
	if not styleOverride then
		styleOverride = {}
	end
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_2_upvr, styleOverride)
	local tbl = {}
	if any_join_result1.themeName == "dark" then
	else
	end
	tbl.theme = Foundation_upvr.Enums.Theme.Light
	if any_join_result1.deviceType == DeviceType_upvr.Console then
	else
	end
	tbl.device = Foundation_upvr.Enums.Device.Desktop
	local any_createElement_result1 = React_upvr.createElement(Foundation_upvr.FoundationProvider, tbl, {
		tree = React_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = Rodux_upvr.Store.new(function(arg1_2) -- Line 66
				return arg1_2
			end, {}, {});
		}, {
			AppStyleProvider = React_upvr.createElement(UIBlox_upvr.App.Style.AppStyleProvider, {
				style = any_join_result1;
			}, {
				DesignTokenProvider = React_upvr.createElement(DesignTokenProvider_upvr, {
					tokenMappers = {
						GamepadDisconnect = GamepadDisconnectTokenMapper_upvr;
					};
				}, {
					CursorProvider = React_upvr.createElement(SelectionCursorProvider_upvr, {}, {
						LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
							localization = var2_upvw.new(LocalizationService_upvr.RobloxLocaleId);
						}, {
							FocusNavigationProvider = React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
								value = any_new_result1_upvr;
							}, {
								FocusNavigationRegistryProvider = React_upvr.createElement(Provider_upvr, nil, arg1.children);
							});
						});
					});
				});
			});
		});
	})
	if GetFFlagEnableUISoundAndHaptics_upvr() then
		any_createElement_result1 = React_upvr.createElement(AppInteractionFeedbackProvider_upvr, {}, {
			tree = React_upvr.createElement(FeedbackManagerInjectionContextProvider_upvr, nil, {
				tree = any_createElement_result1;
			});
		})
	end
	return any_createElement_result1
end