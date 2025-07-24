-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:19
-- Luau version 6, Types version 3
-- Time taken: 0.005116 seconds

local Parent = script.Parent.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local PromptState_upvr = require(Parent.Enums.PromptState)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local Roact_upvr = PurchasePromptDeps.Roact
local IAPExperience = PurchasePromptDeps.IAPExperience
local SubscriptionPurchaseFlowState_upvr = IAPExperience.PurchaseFlow.SubscriptionPurchaseFlowState
local PurchaseErrorType_upvr = IAPExperience.PurchaseFlow.PurchaseErrorType
local any_extend_result1 = Roact_upvr.PureComponent:extend(script.Name)
function any_extend_result1.init(arg1) -- Line 63
	--[[ Upvalues[1]:
		[1]: PromptState_upvr (readonly)
	]]
	function arg1.confirmButtonPressed() -- Line 64
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PromptState_upvr (copied, readonly)
		]]
		local props_3 = arg1.props
		local promptState_2 = props_3.promptState
		if promptState_2 == PromptState_upvr.PromptSubscriptionPurchase then
			props_3.promptSubscriptionPurchase()
		else
			if promptState_2 == PromptState_upvr.PurchaseComplete then
				props_3.endPurchase()
				return
			end
			if promptState_2 == PromptState_upvr.Error then
				props_3.endPurchase()
				return
			end
		end
	end
	function arg1.cancelButtonPressed() -- Line 80
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.endPurchase()
	end
end
local GetFFlagEnableVpcForInExperienceSubscriptionPurchase_upvr = require(Parent.Flags.GetFFlagEnableVpcForInExperienceSubscriptionPurchase)
function any_extend_result1.getFlowState(arg1) -- Line 87
	--[[ Upvalues[4]:
		[1]: PromptState_upvr (readonly)
		[2]: SubscriptionPurchaseFlowState_upvr (readonly)
		[3]: GetFFlagEnableVpcForInExperienceSubscriptionPurchase_upvr (readonly)
		[4]: PurchaseError_upvr (readonly)
	]]
	local props = arg1.props
	local promptState = props.promptState
	if promptState == PromptState_upvr.PromptSubscriptionPurchase then
		return SubscriptionPurchaseFlowState_upvr.PurchaseModal
	end
	if promptState == PromptState_upvr.Error then
		if GetFFlagEnableVpcForInExperienceSubscriptionPurchase_upvr() and props.purchaseError == PurchaseError_upvr.VpcRequired then
			return SubscriptionPurchaseFlowState_upvr.PurchaseVPCModal
		end
		return SubscriptionPurchaseFlowState_upvr.Error
	end
	return SubscriptionPurchaseFlowState_upvr.None
end
function any_extend_result1.getErrorType(arg1) -- Line 106
	--[[ Upvalues[2]:
		[1]: PurchaseError_upvr (readonly)
		[2]: PurchaseErrorType_upvr (readonly)
	]]
	local props_2 = arg1.props
	if props_2.purchaseError == PurchaseError_upvr.AlreadySubscribed then
		return PurchaseErrorType_upvr.AlreadySubscribed
	end
	if props_2.purchaseError == PurchaseError_upvr.SubscriptionExceededUserSpendLimit then
		return PurchaseErrorType_upvr.SubscriptionExceededUserSpendLimit
	end
	if props_2.purchaseError == PurchaseError_upvr.SubscriptionUnsupportedLocale then
		return PurchaseErrorType_upvr.SubscriptionUnsupportedLocale
	end
	if props_2.purchaseError == PurchaseError_upvr.RestrictedUser then
		return PurchaseErrorType_upvr.RestrictedUser
	end
	if props_2.purchaseError == PurchaseError_upvr.SubscriptionPurchasePlatformNotSupported then
		return PurchaseErrorType_upvr.SubscriptionPurchasePlatformNotSupported
	end
	if props_2.purchaseError == PurchaseError_upvr.SubscriptionInvalidSaleLocation then
		return PurchaseErrorType_upvr.SubscriptionInvalidSaleLocation
	end
	if props_2.purchaseError == PurchaseError_upvr.SubscriptionNotForSale then
		return PurchaseErrorType_upvr.SubscriptionNotForSale
	end
	if props_2.purchaseError == PurchaseError_upvr.VpcRequired then
		return PurchaseErrorType_upvr.VpcRequired
	end
	if props_2.purchaseError == PurchaseError_upvr.ExceedParentalSpendLimit then
		return PurchaseErrorType_upvr.ExceedParentalSpendLimit
	end
	return PurchaseErrorType_upvr.Unknown
end
local VPCModalType_upvr = require(Parent.Enums.VPCModalType)
function any_extend_result1.getVPCModalType(arg1, arg2) -- Line 132
	--[[ Upvalues[2]:
		[1]: SubscriptionPurchaseFlowState_upvr (readonly)
		[2]: VPCModalType_upvr (readonly)
	]]
	if arg2 == SubscriptionPurchaseFlowState_upvr.PurchaseVPCModal then
		return VPCModalType_upvr.toRawValue(VPCModalType_upvr.EnablePurchase)
	end
	return VPCModalType_upvr.toRawValue(VPCModalType_upvr.None)
end
local SubscriptionPurchaseFlow_upvr = IAPExperience.PurchaseFlow.SubscriptionPurchaseFlow
function any_extend_result1.render(arg1) -- Line 139
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: SubscriptionPurchaseFlow_upvr (readonly)
	]]
	local props_4 = arg1.props
	local any_getFlowState_result1 = arg1:getFlowState()
	local module = {
		screenSize = props_4.screenSize;
		purchaseState = any_getFlowState_result1;
		errorType = arg1:getErrorType();
		purchaseVPCType = arg1:getVPCModalType(any_getFlowState_result1);
		subscriptionId = props_4.subscriptionId;
		name = props_4.name;
		subscriptionProviderId = props_4.subscriptionProviderId;
		subscriptionProviderName = props_4.subscriptionProviderName;
		priceTier = props_4.priceTier;
		displayPrice = props_4.displayPrice;
		period = props_4.period;
		disclaimerText = props_4.disclaimerText;
		description = props_4.description;
		itemIcon = props_4.itemIcon;
		primaryPaymentMethod = props_4.primaryPaymentMethod;
	}
	local secondaryPaymentMethod = props_4.secondaryPaymentMethod
	module.secondaryPaymentMethod = secondaryPaymentMethod
	if props_4.isGamepadEnabled then
		secondaryPaymentMethod = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"
	else
		secondaryPaymentMethod = nil
	end
	module.acceptControllerIcon = secondaryPaymentMethod
	module.isTestingMode = props_4.isTestingMode
	module.purchaseSubscription = props_4.promptSubscriptionPurchase
	module.cancelPurchase = props_4.endPurchase
	module.flowComplete = props_4.endPurchase
	module.onAnalyticEvent = props_4.onAnalyticEvent
	module.eventPrefix = "InGame"
	return Roact_upvr.createElement(SubscriptionPurchaseFlow_upvr, module)
end
local GetFFlagEnableSubscriptionPurchaseToast_upvr = require(Parent.Flags.GetFFlagEnableSubscriptionPurchaseToast)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ToastType_upvr = require(CorePackages.Workspace.Packages.ToastRodux).Enums.ToastType
function any_extend_result1.didUpdate(arg1) -- Line 180
	--[[ Upvalues[5]:
		[1]: GetFFlagEnableSubscriptionPurchaseToast_upvr (readonly)
		[2]: SubscriptionPurchaseFlowState_upvr (readonly)
		[3]: PurchaseErrorType_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: ToastType_upvr (readonly)
	]]
	if GetFFlagEnableSubscriptionPurchaseToast_upvr() and arg1:getFlowState() == SubscriptionPurchaseFlowState_upvr.Error and arg1:getErrorType() == PurchaseErrorType_upvr.Unknown then
		arg1.props.setCurrentToastMessage({
			toastTitle = RobloxTranslator_upvr:FormatByKey("Feature.Subscription.Error.GenericSubscribeError");
			toastType = ToastType_upvr.NetworkingError;
		})
		arg1.props.endPurchase()
	end
end
return any_extend_result1