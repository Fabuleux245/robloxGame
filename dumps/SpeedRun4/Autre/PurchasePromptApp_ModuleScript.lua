-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:17
-- Luau version 6, Types version 3
-- Time taken: 0.007448 seconds

local Parent = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact_upvr = PurchasePromptDeps.Roact
local ReactFocusNavigation_upvr = require(CorePackages.Packages.ReactFocusNavigation)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local any_extend_result1 = Roact_upvr.Component:extend("PurchasePromptApp")
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
function any_extend_result1.init(arg1) -- Line 58
	--[[ Upvalues[1]:
		[1]: ExternalSettings_upvr (readonly)
	]]
	arg1.state = {
		isTenFootInterface = ExternalSettings_upvr.new().isTenFootInterface();
	}
end
local renderWithCoreScriptsStyleProvider_upvr = require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1.renderWithStyle(arg1, arg2) -- Line 66
	--[[ Upvalues[1]:
		[1]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	return renderWithCoreScriptsStyleProvider_upvr(arg2)
end
local provideRobloxLocale_upvr = require(script.Parent.Connection.provideRobloxLocale)
local LocaleProvider_upvr = require(CorePackages.Workspace.Packages.IAPExperience).Locale.LocaleProvider
local LocalizationService_upvr = game:GetService("LocalizationService")
local ProductPurchaseContainer_upvr = require(script.Parent.ProductPurchase.ProductPurchaseContainer)
local RobuxUpsellContainer_upvr = require(script.Parent.RobuxUpsell.RobuxUpsellContainer)
local PremiumUpsellContainer_upvr = require(script.Parent.PremiumUpsell.PremiumUpsellContainer)
local SubscriptionPurchaseContainer_upvr = require(script.Parent.SubscriptionPurchase.SubscriptionPurchaseContainer)
local EventConnections_upvr = require(script.Parent.Connection.EventConnections)
local GetFFlagEnableToastLiteRender_upvr = require(Parent.Flags.GetFFlagEnableToastLiteRender)
local Toast_upvr = require(CorePackages.Workspace.Packages.ToastLite).Components.Toast
local FFlagAddCursorProviderToPurchasePromptApp_upvr = require(Parent.Flags.FFlagAddCursorProviderToPurchasePromptApp)
local SelectionCursorProvider_upvr = require(CorePackages.Packages.UIBlox).App.SelectionImage.SelectionCursorProvider
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local Provider_upvr = FocusNavigationUtils.FocusNavigableSurfaceRegistry.Provider
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local RoactRodux_upvr = PurchasePromptDeps.RoactRodux
local LayoutValuesProvider_upvr = require(script.Parent.Connection.LayoutValuesProvider)
local PurchasePromptPolicy_upvr = require(Parent.Components.Connection.PurchasePromptPolicy)
function any_extend_result1.render(arg1) -- Line 70
	--[[ Upvalues[23]:
		[1]: provideRobloxLocale_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LocaleProvider_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: ProductPurchaseContainer_upvr (readonly)
		[6]: RobuxUpsellContainer_upvr (readonly)
		[7]: PremiumUpsellContainer_upvr (readonly)
		[8]: SubscriptionPurchaseContainer_upvr (readonly)
		[9]: EventConnections_upvr (readonly)
		[10]: GetFFlagEnableToastLiteRender_upvr (readonly)
		[11]: Toast_upvr (readonly)
		[12]: FFlagAddCursorProviderToPurchasePromptApp_upvr (readonly)
		[13]: SelectionCursorProvider_upvr (readonly)
		[14]: ReactFocusNavigation_upvr (readonly)
		[15]: any_new_result1_upvr (readonly)
		[16]: Provider_upvr (readonly)
		[17]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[18]: FocusRoot_upvr (readonly)
		[19]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[20]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[21]: RoactRodux_upvr (readonly)
		[22]: LayoutValuesProvider_upvr (readonly)
		[23]: PurchasePromptPolicy_upvr (readonly)
	]]
	return provideRobloxLocale_upvr(function() -- Line 71
		--[[ Upvalues[23]:
			[1]: Roact_upvr (copied, readonly)
			[2]: LocaleProvider_upvr (copied, readonly)
			[3]: LocalizationService_upvr (copied, readonly)
			[4]: ProductPurchaseContainer_upvr (copied, readonly)
			[5]: RobuxUpsellContainer_upvr (copied, readonly)
			[6]: PremiumUpsellContainer_upvr (copied, readonly)
			[7]: SubscriptionPurchaseContainer_upvr (copied, readonly)
			[8]: EventConnections_upvr (copied, readonly)
			[9]: GetFFlagEnableToastLiteRender_upvr (copied, readonly)
			[10]: Toast_upvr (copied, readonly)
			[11]: FFlagAddCursorProviderToPurchasePromptApp_upvr (copied, readonly)
			[12]: SelectionCursorProvider_upvr (copied, readonly)
			[13]: ReactFocusNavigation_upvr (copied, readonly)
			[14]: any_new_result1_upvr (copied, readonly)
			[15]: Provider_upvr (copied, readonly)
			[16]: FFlagCSFocusWrapperRefactor_upvr (copied, readonly)
			[17]: FocusRoot_upvr (copied, readonly)
			[18]: FocusNavigationCoreScriptsWrapper_upvr (copied, readonly)
			[19]: FocusNavigableSurfaceIdentifierEnum_upvr (copied, readonly)
			[20]: RoactRodux_upvr (copied, readonly)
			[21]: arg1 (readonly)
			[22]: LayoutValuesProvider_upvr (copied, readonly)
			[23]: PurchasePromptPolicy_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl = {
			LocaleProvider = Roact_upvr.createElement(LocaleProvider_upvr, {
				locale = LocalizationService_upvr.RobloxLocaleId;
			}, {
				ProductPurchaseContainer = Roact_upvr.createElement(ProductPurchaseContainer_upvr);
				RobuxUpsellContainer = Roact_upvr.createElement(RobuxUpsellContainer_upvr);
				PremiumUpsellContainer = Roact_upvr.createElement(PremiumUpsellContainer_upvr);
				SubscriptionPurchaseContainer = Roact_upvr.createElement(SubscriptionPurchaseContainer_upvr);
			});
		}
		local any_createElement_result1 = Roact_upvr.createElement(EventConnections_upvr)
		tbl.EventConnections = any_createElement_result1
		if GetFFlagEnableToastLiteRender_upvr() then
			any_createElement_result1 = Roact_upvr.createElement(Toast_upvr)
		else
			any_createElement_result1 = nil
		end
		tbl.Toast = any_createElement_result1
		if FFlagAddCursorProviderToPurchasePromptApp_upvr then
			local tbl_2 = {}
			local tbl_3 = {}
			local tbl_5 = {}
			local tbl_4 = {}
			local var42 = Roact_upvr
			if FFlagCSFocusWrapperRefactor_upvr then
				var42 = FocusRoot_upvr
			else
				var42 = FocusNavigationCoreScriptsWrapper_upvr
			end
			if FFlagCSFocusWrapperRefactor_upvr then
				local tbl_6 = {
					surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
					isIsolated = true;
					isAutoFocusRoot = true;
				}
			else
			end
			tbl_4.FocusNavigationCoreScriptsWrapper = var42.createElement(var42, {
				selectionGroupName = "PurchasePromptApp";
				focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			}, tbl)
			tbl_5.FocusNavigationRegistryProvider = Roact_upvr.createElement(Provider_upvr, nil, tbl_4)
			tbl_3.FocusNavigationProvider = Roact_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
				value = any_new_result1_upvr;
			}, tbl_5)
			tbl_2.CursorProvider = Roact_upvr.createElement(SelectionCursorProvider_upvr, {}, tbl_3)
		end
		return Roact_upvr.createElement("ScreenGui", {
			AutoLocalize = false;
			IgnoreGuiInset = true;
		}, {
			StoreProvider = Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
				store = arg1.props.store;
			}, {
				StyleProvider = arg1:renderWithStyle({
					LayoutValuesProvider = Roact_upvr.createElement(LayoutValuesProvider_upvr, {
						isTenFootInterface = arg1.state.isTenFootInterface;
					}, {
						PolicyProvider = Roact_upvr.createElement(PurchasePromptPolicy_upvr.Provider, {
							policy = {PurchasePromptPolicy_upvr.Mapper};
						}, tbl_2);
					});
				});
			});
		})
	end)
end
return any_extend_result1