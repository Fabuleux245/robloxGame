-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:14
-- Luau version 6, Types version 3
-- Time taken: 0.002887 seconds

local Parent = script.Parent.Parent.Parent
local ContextActionService_upvr = game:GetService("ContextActionService")
local PurchasePromptDeps = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps)
local Roact_upvr = PurchasePromptDeps.Roact
local IAPExperience = PurchasePromptDeps.IAPExperience
local PromptState_upvr = require(Parent.Enums.PromptState)
local any_extend_result1 = Roact_upvr.PureComponent:extend(script.Name)
local GetFFlagEnableVpcForInExperiencePremiumUpsell_upvr = require(Parent.Flags.GetFFlagEnableVpcForInExperiencePremiumUpsell)
function any_extend_result1.init(arg1) -- Line 52
	--[[ Upvalues[2]:
		[1]: PromptState_upvr (readonly)
		[2]: GetFFlagEnableVpcForInExperiencePremiumUpsell_upvr (readonly)
	]]
	function arg1.confirmButtonPressed() -- Line 53
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: PromptState_upvr (copied, readonly)
			[3]: GetFFlagEnableVpcForInExperiencePremiumUpsell_upvr (copied, readonly)
		]]
		local props_2 = arg1.props
		local promptState = props_2.promptState
		if promptState == PromptState_upvr.PremiumUpsell then
			if GetFFlagEnableVpcForInExperiencePremiumUpsell_upvr() then
				props_2.dispatchPremiumPrecheck()
			else
				props_2.promptPremiumPurchase()
			end
		end
		if promptState == PromptState_upvr.PurchaseComplete then
			props_2.endPurchase()
		elseif promptState == PromptState_upvr.Error then
			props_2.endPurchase()
			return
		end
	end
	function arg1.cancelButtonPressed() -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.endPurchase()
	end
end
function any_extend_result1.didMount(arg1) -- Line 80
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("PremiumPurchaseConfirmButtonBind", function(arg1_2, arg2, arg3) -- Line 81
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.confirmButtonPressed()
		end
	end, false, Enum.KeyCode.ButtonA)
	ContextActionService_upvr:BindCoreAction("PremiumPurchaseCancelButtonBind", function(arg1_3, arg2, arg3) -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.cancelButtonPressed()
		end
	end, false, Enum.KeyCode.ButtonB)
end
function any_extend_result1.willUnmount(arg1) -- Line 93
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("PremiumPurchaseConfirmButtonBind")
	ContextActionService_upvr:UnbindCoreAction("PremiumPurchaseCancelButtonBind")
end
local PremiumUpsellFlowState_upvr = IAPExperience.PurchaseFlow.PremiumUpsellFlowState
function any_extend_result1.getFlowState(arg1) -- Line 98
	--[[ Upvalues[2]:
		[1]: PromptState_upvr (readonly)
		[2]: PremiumUpsellFlowState_upvr (readonly)
	]]
	local promptState_2 = arg1.props.promptState
	if promptState_2 == PromptState_upvr.PremiumUpsell then
		return PremiumUpsellFlowState_upvr.PurchaseModal
	end
	if promptState_2 == PromptState_upvr.Error then
		return PremiumUpsellFlowState_upvr.Error
	end
	if promptState_2 == PromptState_upvr.EnablePurchaseVPCModal then
		return PremiumUpsellFlowState_upvr.PurchaseVPCModal
	end
	return PremiumUpsellFlowState_upvr.None
end
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local PurchaseErrorType_upvr = IAPExperience.PurchaseFlow.PurchaseErrorType
function any_extend_result1.getErrorType(arg1) -- Line 114
	--[[ Upvalues[2]:
		[1]: PurchaseError_upvr (readonly)
		[2]: PurchaseErrorType_upvr (readonly)
	]]
	local props_3 = arg1.props
	if props_3.purchaseError == PurchaseError_upvr.AlreadyPremium then
		return PurchaseErrorType_upvr.AlreadyPremium
	end
	if props_3.purchaseError == PurchaseError_upvr.PremiumUnavailablePlatform then
		return PurchaseErrorType_upvr.PremiumPlatformUnavailable
	end
	if props_3.purchaseError == PurchaseError_upvr.EconomicRestriction then
		return PurchaseErrorType_upvr.EconomicRestriction
	end
	return PurchaseErrorType_upvr.Unknown
end
local VPCModalType_upvr = require(Parent.Enums.VPCModalType)
function any_extend_result1.getVPCModalType(arg1) -- Line 128
	--[[ Upvalues[2]:
		[1]: PromptState_upvr (readonly)
		[2]: VPCModalType_upvr (readonly)
	]]
	if arg1.props.promptState == PromptState_upvr.EnablePurchaseVPCModal then
		return VPCModalType_upvr.toRawValue(VPCModalType_upvr.EnablePurchase)
	end
	return VPCModalType_upvr.toRawValue(VPCModalType_upvr.None)
end
local PremiumUpsellFlow_upvr = IAPExperience.PurchaseFlow.PremiumUpsellFlow
function any_extend_result1.render(arg1) -- Line 138
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: PremiumUpsellFlow_upvr (readonly)
		[3]: GetFFlagEnableVpcForInExperiencePremiumUpsell_upvr (readonly)
	]]
	local props = arg1.props
	local module = {
		screenSize = props.screenSize;
		isCatalog = false;
		currencySymbol = props.currencySymbol;
		robuxPrice = props.robuxPrice;
		robuxAmount = props.robuxAmount;
		purchaseState = arg1:getFlowState();
		errorType = arg1:getErrorType();
		economicRestrictionError = props.economicRestrictionError;
	}
	local any_getVPCModalType_result1 = arg1:getVPCModalType()
	module.purchaseVPCType = any_getVPCModalType_result1
	if props.isGamepadEnabled then
		any_getVPCModalType_result1 = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"
	else
		any_getVPCModalType_result1 = nil
	end
	module.acceptControllerIcon = any_getVPCModalType_result1
	if GetFFlagEnableVpcForInExperiencePremiumUpsell_upvr() then
		any_getVPCModalType_result1 = props.dispatchPremiumPrecheck
	else
		any_getVPCModalType_result1 = props.promptPremiumPurchase
	end
	module.purchasePremium = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props.endPurchase
	module.cancelPurchase = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props.endPurchase
	module.flowComplete = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props.onAnalyticEvent
	module.onAnalyticEvent = any_getVPCModalType_result1
	any_getVPCModalType_result1 = "InGame"
	module.eventPrefix = any_getVPCModalType_result1
	return Roact_upvr.createElement(PremiumUpsellFlow_upvr, module)
end
return any_extend_result1