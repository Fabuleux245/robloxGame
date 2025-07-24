-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:17
-- Luau version 6, Types version 3
-- Time taken: 0.006289 seconds

local Parent = script.Parent.Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Workspace.Packages.PurchasePromptDeps).Roact
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
function any_extend_result1.init(arg1) -- Line 58
	arg1.state = {
		screenSize = Vector2.new(0, 0);
	}
	function arg1.changeScreenSize(arg1_2) -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.screenSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				screenSize = arg1_2.AbsoluteSize;
			})
		end
	end
end
local PurchaseFlow_upvr = require(Parent.Enums.PurchaseFlow)
local isLinksAllowed_upvr = require(Parent.Utils.isLinksAllowed)
local RobuxUpsellOverlay_upvr = require(script.Parent.RobuxUpsellOverlay)
local FFlagEnableUpsellSuggestionsAPI_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUpsellSuggestionsAPI
local UpsellSuggestionsAPIMaxPackages_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UpsellSuggestionsAPIMaxPackages
local getPlayerPrice_upvr = require(Parent.Utils.getPlayerPrice)
local ExternalEventConnection_upvr = require(Parent.Components.Connection.ExternalEventConnection)
function any_extend_result1.createElement(arg1) -- Line 72
	--[[ Upvalues[9]:
		[1]: PurchaseFlow_upvr (readonly)
		[2]: isLinksAllowed_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RobuxUpsellOverlay_upvr (readonly)
		[5]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		[6]: UpsellSuggestionsAPIMaxPackages_upvr (readonly)
		[7]: getPlayerPrice_upvr (readonly)
		[8]: ExternalEventConnection_upvr (readonly)
		[9]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local props_upvr = arg1.props
	local var18
	if props_upvr.purchaseFlow ~= PurchaseFlow_upvr.RobuxUpsellV2 and props_upvr.purchaseFlow ~= PurchaseFlow_upvr.LargeRobuxUpsell then
		return nil
	end
	local var11_result1 = isLinksAllowed_upvr()
	local imageUrl = props_upvr.productInfo.imageUrl
	if string.find(props_upvr.productInfo.imageUrl, "assetid=0") then
		imageUrl = nil
	end
	local module = {}
	local tbl = {
		screenSize = arg1.state.screenSize;
		requestType = props_upvr.requestType;
		promptState = props_upvr.promptState;
		purchaseFlow = props_upvr.purchaseFlow;
		purchaseError = props_upvr.purchaseError;
		economicRestrictionError = props_upvr.economicRestrictionError;
	}
	if FFlagEnableUpsellSuggestionsAPI_upvr then
		var18 = 1
		if var18 >= UpsellSuggestionsAPIMaxPackages_upvr then
		else
		end
	end
	tbl.useUpsellSuggestions = true
	tbl.upsellSuggestions = props_upvr.robuxSuggestions
	tbl.selectedUpsellIndex = props_upvr.robuxPackageSelection
	tbl.virtualItemBadgeType = props_upvr.virtualItemBadgeType
	local function onUpsellSuggestionsSelected(arg1_3) -- Line 107
		--[[ Upvalues[1]:
			[1]: props_upvr (readonly)
		]]
		props_upvr.onUpsellSuggestionsSelected(props_upvr.robuxSuggestions, arg1_3, props_upvr.virtualItemBadgeType)
	end
	tbl.onUpsellSuggestionsSelected = onUpsellSuggestionsSelected
	tbl.robuxProviderId = props_upvr.robuxProductId
	tbl.robuxProductId = props_upvr.productId
	tbl.itemIcon = imageUrl
	tbl.itemProductId = props_upvr.productInfo.productId
	tbl.itemName = props_upvr.productInfo.name
	if props_upvr.accountInfo.membershipType ~= 4 then
		var18 = false
	else
		var18 = true
	end
	tbl.itemRobuxCost = getPlayerPrice_upvr(props_upvr.productInfo, var18, props_upvr.expectedPrice)
	tbl.iapRobuxAmount = props_upvr.robuxPurchaseAmount or 0
	tbl.iapCostStr = props_upvr.price
	tbl.beforeRobuxBalance = props_upvr.accountInfo.balance
	tbl.isTestPurchase = props_upvr.isTestPurchase
	tbl.isGamepadEnabled = props_upvr.isGamepadEnabled
	tbl.purchaseItem = props_upvr.purchaseItem
	tbl.promptRobuxPurchase = props_upvr.promptRobuxPurchase
	tbl.openRobuxStore = props_upvr.openRobuxStore
	if not var11_result1 or not props_upvr.openTermsOfUse then
	end
	tbl.openTermsOfUse = nil
	if not var11_result1 or not props_upvr.openSecuritySettings then
	end
	tbl.openSecuritySettings = nil
	tbl.dispatchFetchPurchaseWarning = props_upvr.dispatchFetchPurchaseWarning
	tbl.endPurchase = props_upvr.completeRequest
	tbl.onAnalyticEvent = props_upvr.onAnalyticEvent
	tbl.humanoidModel = props_upvr.humanoidModel
	module.Prompt = Roact_upvr.createElement(RobuxUpsellOverlay_upvr, tbl)
	local tbl_2 = {
		BackgroundTransparency = 0;
		Modal = true;
	}
	var18 = 0
	tbl_2.Size = UDim2.new(0, var18, 0, 0)
	module.ModalFix = Roact_upvr.createElement("ImageButton", tbl_2)
	module.OnCoreGuiMenuOpened = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = GuiService_upvr.MenuOpened;
		callback = function() -- Line 149, Named "callback"
			--[[ Upvalues[1]:
				[1]: props_upvr (readonly)
			]]
			props_upvr.completeRequest()
		end;
	})
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		[Roact_upvr.Change.AbsoluteSize] = arg1.changeScreenSize;
		BackgroundTransparency = 1;
	}, module)
end
local GetFFLagUseCoreScriptsRootProviderForUpsellModal_upvr = require(Parent.Flags.GetFFLagUseCoreScriptsRootProviderForUpsellModal)
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local React_upvr = require(CorePackages.Packages.React)
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
function any_extend_result1.render(arg1) -- Line 156
	--[[ Upvalues[8]:
		[1]: GetFFLagUseCoreScriptsRootProviderForUpsellModal_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CoreScriptsRootProvider_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[6]: FocusRoot_upvr (readonly)
		[7]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[8]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	if GetFFLagUseCoreScriptsRootProviderForUpsellModal_upvr() then
		local module_2 = {}
		local var34 = React_upvr
		if FFlagCSFocusWrapperRefactor_upvr then
			var34 = FocusRoot_upvr
		else
			var34 = FocusNavigationCoreScriptsWrapper_upvr
		end
		if FFlagCSFocusWrapperRefactor_upvr then
			local tbl_3 = {
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
				isIsolated = true;
				isAutoFocusRoot = true;
			}
		else
		end
		module_2.FocusNavigationCoreScriptsWrapper = var34.createElement(var34, {
			selectionGroupName = "RobuxUpsellContainer";
			focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
		}, {
			RobuxUpsellContainer = arg1:createElement();
		})
		return Roact_upvr.createElement(CoreScriptsRootProvider_upvr, {}, module_2)
	end
	return arg1:createElement()
end
local isMockingPurchases_upvr = require(Parent.Utils.isMockingPurchases)
local SelectedRobuxPackage_upvr = require(Parent.Utils.SelectedRobuxPackage)
local purchaseItem_upvr = require(Parent.Thunks.purchaseItem)
local launchRobuxUpsell_upvr = require(Parent.Thunks.launchRobuxUpsell)
local openRobuxStore_upvr = require(Parent.Thunks.openRobuxStore)
local openSecuritySettings_upvr = require(Parent.Thunks.openSecuritySettings)
local openTermsOfUse_upvr = require(Parent.Thunks.openTermsOfUse)
local GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow_upvr = require(Parent.Flags.GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow)
local initiateUserPurchaseSettingsPrecheck_upvr = require(Parent.Thunks.initiateUserPurchaseSettingsPrecheck)
local initiatePurchasePrecheck_upvr = require(Parent.Thunks.initiatePurchasePrecheck)
local completeRequest_upvr = require(Parent.Thunks.completeRequest)
local PromptNativeUpsellSuggestions_upvr = require(Parent.Actions.PromptNativeUpsellSuggestions)
local sendEvent_upvr = require(Parent.Thunks.sendEvent)
return require(Parent.connectToStore)(function(arg1) -- Line 181
	--[[ Upvalues[2]:
		[1]: isMockingPurchases_upvr (readonly)
		[2]: SelectedRobuxPackage_upvr (readonly)
	]]
	return {
		purchaseFlow = arg1.purchaseFlow;
		requestType = arg1.promptRequest.requestType;
		expectedPrice = arg1.promptRequest.expectedPrice;
		promptState = arg1.promptState;
		purchaseError = arg1.purchaseError;
		economicRestrictionError = arg1.economicRestrictionError;
		productInfo = arg1.productInfo;
		accountInfo = arg1.accountInfo;
		robuxSuggestions = arg1.robuxUpsellSuggestions.products;
		robuxPackageSelection = arg1.robuxUpsellSuggestions.selection;
		virtualItemBadgeType = arg1.robuxUpsellSuggestions.virtualItemBadgeType;
		robuxProductId = SelectedRobuxPackage_upvr.getRobuxProductId(arg1);
		productId = SelectedRobuxPackage_upvr.getProductId(arg1);
		robuxPurchaseAmount = SelectedRobuxPackage_upvr.getRobuxPurchaseAmount(arg1);
		robuxAmountBeforeBonus = SelectedRobuxPackage_upvr.getRobuxAmountBeforeBonus(arg1);
		price = SelectedRobuxPackage_upvr.getPrice(arg1);
		isTestPurchase = isMockingPurchases_upvr(arg1.promptRequest.requestType);
		isGamepadEnabled = arg1.gamepadEnabled;
		humanoidModel = arg1.promptRequest.humanoidModel;
	}
end, function(arg1) -- Line 213
	--[[ Upvalues[12]:
		[1]: purchaseItem_upvr (readonly)
		[2]: launchRobuxUpsell_upvr (readonly)
		[3]: openRobuxStore_upvr (readonly)
		[4]: openSecuritySettings_upvr (readonly)
		[5]: openTermsOfUse_upvr (readonly)
		[6]: GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow_upvr (readonly)
		[7]: initiateUserPurchaseSettingsPrecheck_upvr (readonly)
		[8]: initiatePurchasePrecheck_upvr (readonly)
		[9]: GuiService_upvr (readonly)
		[10]: completeRequest_upvr (readonly)
		[11]: PromptNativeUpsellSuggestions_upvr (readonly)
		[12]: sendEvent_upvr (readonly)
	]]
	return {
		purchaseItem = function() -- Line 215, Named "purchaseItem"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: purchaseItem_upvr (copied, readonly)
			]]
			return arg1(purchaseItem_upvr())
		end;
		promptRobuxPurchase = function() -- Line 218, Named "promptRobuxPurchase"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: launchRobuxUpsell_upvr (copied, readonly)
			]]
			return arg1(launchRobuxUpsell_upvr())
		end;
		openRobuxStore = function() -- Line 221, Named "openRobuxStore"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: openRobuxStore_upvr (copied, readonly)
			]]
			return arg1(openRobuxStore_upvr())
		end;
		openSecuritySettings = function() -- Line 224, Named "openSecuritySettings"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: openSecuritySettings_upvr (copied, readonly)
			]]
			return arg1(openSecuritySettings_upvr())
		end;
		openTermsOfUse = function() -- Line 227, Named "openTermsOfUse"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: openTermsOfUse_upvr (copied, readonly)
			]]
			return arg1(openTermsOfUse_upvr())
		end;
		dispatchFetchPurchaseWarning = function() -- Line 230, Named "dispatchFetchPurchaseWarning"
			--[[ Upvalues[4]:
				[1]: GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiateUserPurchaseSettingsPrecheck_upvr (copied, readonly)
				[4]: initiatePurchasePrecheck_upvr (copied, readonly)
			]]
			if GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow_upvr() then
				return arg1(initiateUserPurchaseSettingsPrecheck_upvr())
			end
			return arg1(initiatePurchasePrecheck_upvr())
		end;
		completeRequest = function() -- Line 237, Named "completeRequest"
			--[[ Upvalues[3]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: completeRequest_upvr (copied, readonly)
			]]
			GuiService_upvr.SelectedCoreObject = nil
			return arg1(completeRequest_upvr())
		end;
		onUpsellSuggestionsSelected = function(arg1_4, arg2, arg3) -- Line 241, Named "onUpsellSuggestionsSelected"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PromptNativeUpsellSuggestions_upvr (copied, readonly)
			]]
			return arg1(PromptNativeUpsellSuggestions_upvr(arg1_4, arg2, arg3))
		end;
		onAnalyticEvent = function(arg1_5, arg2) -- Line 244, Named "onAnalyticEvent"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: sendEvent_upvr (copied, readonly)
			]]
			return arg1(sendEvent_upvr(arg1_5, arg2))
		end;
	}
end)(any_extend_result1)