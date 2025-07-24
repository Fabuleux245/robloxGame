-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:18
-- Luau version 6, Types version 3
-- Time taken: 0.005616 seconds

local Parent = script.Parent.Parent.Parent
local ContextActionService_upvr = game:GetService("ContextActionService")
local PurchasePromptDeps = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps)
local Roact_upvr = PurchasePromptDeps.Roact
local IAPExperience = PurchasePromptDeps.IAPExperience
local PromptState_upvr = require(Parent.Enums.PromptState)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local any_extend_result1 = Roact_upvr.PureComponent:extend(script.Name)
local Players_upvr = game:GetService("Players")
function any_extend_result1.init(arg1) -- Line 81
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: PromptState_upvr (readonly)
		[3]: PurchaseError_upvr (readonly)
	]]
	arg1.state = {
		canAcceptInput = false;
	}
	function arg1.dispatchFetchPurchaseWarning() -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.dispatchFetchPurchaseWarning(arg1.props.robuxProviderId)
	end
	function arg1.promptRobuxPurchase() -- Line 91
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local props_3 = arg1.props
		arg1.props.promptRobuxPurchase(arg1.props.networking, props_3.robuxProviderId, props_3.robuxProductId)
	end
	function arg1.onDelayedInputComplete() -- Line 96
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			canAcceptInput = true;
		})
	end
	function arg1.canAcceptInput() -- Line 102
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		if Players_upvr and Players_upvr.LocalPlayer and Players_upvr.LocalPlayer.GameplayPaused then
			return false
		end
		return arg1.state.canAcceptInput
	end
	function arg1.confirmButtonPressed() -- Line 112
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: PromptState_upvr (copied, readonly)
			[3]: PurchaseError_upvr (copied, readonly)
		]]
		local props = arg1.props
		local promptState = props.promptState
		local purchaseError_2 = props.purchaseError
		if not arg1.canAcceptInput() then
		else
			if promptState == PromptState_upvr.RobuxUpsell then
				props.dispatchFetchPurchaseWarning()
				return
			end
			if promptState == PromptState_upvr.LargeRobuxUpsell then
				props.openRobuxStore()
				return
			end
			if promptState == PromptState_upvr.U13PaymentModal or promptState == PromptState_upvr.U13MonthlyThreshold1Modal or promptState == PromptState_upvr.U13MonthlyThreshold2Modal or promptState == PromptState_upvr.ParentalConsentWarningPaymentModal13To17 then
				props.promptRobuxPurchase()
				return
			end
			if promptState == PromptState_upvr.PurchaseComplete then
				props.endPurchase()
				return
			end
			if promptState == PromptState_upvr.Error then
				if purchaseError_2 == PurchaseError_upvr.TwoFactorNeeded or purchaseError_2 == PurchaseError_upvr.TwoFactorNeededSettings then
					props.openSecuritySettings()
				else
					props.endPurchase()
				end
			end
		end
	end
	function arg1.cancelButtonPressed() -- Line 152
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.endPurchase()
	end
end
function any_extend_result1.didMount(arg1) -- Line 159
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("ProductPurchaseConfirmButtonBind", function(arg1_2, arg2, arg3) -- Line 160
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.confirmButtonPressed()
		end
	end, false, Enum.KeyCode.ButtonA)
	ContextActionService_upvr:BindCoreAction("ProductPurchaseCancelButtonBind", function(arg1_3, arg2, arg3) -- Line 165
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.cancelButtonPressed()
		end
	end, false, Enum.KeyCode.ButtonB)
end
function any_extend_result1.willUnmount(arg1) -- Line 172
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("ProductPurchaseConfirmButtonBind")
	ContextActionService_upvr:UnbindCoreAction("ProductPurchaseCancelButtonBind")
end
local RobuxUpsellFlowState_upvr = IAPExperience.PurchaseFlow.RobuxUpsellFlowState
function any_extend_result1.getFlowState(arg1) -- Line 177
	--[[ Upvalues[3]:
		[1]: PromptState_upvr (readonly)
		[2]: RobuxUpsellFlowState_upvr (readonly)
		[3]: PurchaseError_upvr (readonly)
	]]
	local props_5 = arg1.props
	local promptState_3 = props_5.promptState
	local purchaseError = props_5.purchaseError
	if promptState_3 == PromptState_upvr.RobuxUpsell then
		return RobuxUpsellFlowState_upvr.PurchaseModal
	end
	if promptState_3 == PromptState_upvr.LargeRobuxUpsell then
		return RobuxUpsellFlowState_upvr.LargeRobuxPurchaseModal
	end
	if promptState_3 == PromptState_upvr.PurchaseInProgress then
		return RobuxUpsellFlowState_upvr.ItemPurchasePending
	end
	if promptState_3 == PromptState_upvr.UpsellInProgress then
		return RobuxUpsellFlowState_upvr.RobuxPurchasePending
	end
	if promptState_3 == PromptState_upvr.PollingBalance then
		return RobuxUpsellFlowState_upvr.RobuxGrantPending
	end
	if promptState_3 == PromptState_upvr.U13PaymentModal then
		return RobuxUpsellFlowState_upvr.PurchaseWarning
	end
	if promptState_3 == PromptState_upvr.U13MonthlyThreshold1Modal then
		return RobuxUpsellFlowState_upvr.PurchaseWarning
	end
	if promptState_3 == PromptState_upvr.U13MonthlyThreshold2Modal then
		return RobuxUpsellFlowState_upvr.PurchaseWarning
	end
	if promptState_3 == PromptState_upvr.PurchaseComplete then
		return RobuxUpsellFlowState_upvr.Success
	end
	if promptState_3 == PromptState_upvr.LeaveRobloxWarning then
		return RobuxUpsellFlowState_upvr.LeaveRobloxWarning
	end
	if promptState_3 == PromptState_upvr.EnablePurchaseVPCModal then
		return RobuxUpsellFlowState_upvr.PurchaseVPCModal
	end
	if promptState_3 == PromptState_upvr.Error then
		if purchaseError == PurchaseError_upvr.TwoFactorNeeded or purchaseError == PurchaseError_upvr.TwoFactorNeededSettings then
			return RobuxUpsellFlowState_upvr.TwoStepRequired
		end
		return RobuxUpsellFlowState_upvr.Error
	end
	return RobuxUpsellFlowState_upvr.None
end
local U13ConfirmType_upvr = IAPExperience.PurchaseFlow.U13ConfirmType
function any_extend_result1.getU13ConfirmType(arg1) -- Line 215
	--[[ Upvalues[2]:
		[1]: PromptState_upvr (readonly)
		[2]: U13ConfirmType_upvr (readonly)
	]]
	local promptState_2 = arg1.props.promptState
	if promptState_2 == PromptState_upvr.U13PaymentModal then
		return U13ConfirmType_upvr.U13PaymentModal
	end
	if promptState_2 == PromptState_upvr.U13MonthlyThreshold1Modal then
		return U13ConfirmType_upvr.U13MonthlyThreshold1Modal
	end
	if promptState_2 == PromptState_upvr.U13MonthlyThreshold2Modal then
		return U13ConfirmType_upvr.U13MonthlyThreshold2Modal
	end
	if promptState_2 == PromptState_upvr.ParentalConsentWarningPaymentModal13To17 then
		return U13ConfirmType_upvr.ParentalConsentWarningPaymentModal13To17
	end
	return U13ConfirmType_upvr.None
end
local PurchaseErrorType_upvr = IAPExperience.PurchaseFlow.PurchaseErrorType
function any_extend_result1.getErrorType(arg1) -- Line 233
	--[[ Upvalues[2]:
		[1]: PurchaseError_upvr (readonly)
		[2]: PurchaseErrorType_upvr (readonly)
	]]
	local props_4 = arg1.props
	if props_4.purchaseError == PurchaseError_upvr.AlreadyOwn then
		return PurchaseErrorType_upvr.AlreadyOwn
	end
	if props_4.purchaseError == PurchaseError_upvr.NotEnoughRobux or props_4.purchaseError == PurchaseError_upvr.NotEnoughRobuxXbox or props_4.purchaseError == PurchaseError_upvr.NotEnoughRobuxNoUpsell then
		return PurchaseErrorType_upvr.NotEnoughRobux
	end
	if props_4.purchaseError == PurchaseError_upvr.Limited then
		return PurchaseErrorType_upvr.Limited
	end
	if props_4.purchaseError == PurchaseError_upvr.NotForSale then
		return PurchaseErrorType_upvr.NotForSale
	end
	if props_4.purchaseError == PurchaseError_upvr.NotForSaleHere then
		return PurchaseErrorType_upvr.NotForSaleExperience
	end
	if props_4.purchaseError == PurchaseError_upvr.PremiumOnly then
		return PurchaseErrorType_upvr.PremiumOnly
	end
	if props_4.purchaseError == PurchaseError_upvr.ThirdPartyDisabled then
		return PurchaseErrorType_upvr.ThirdPartyDisabled
	end
	if props_4.purchaseError == PurchaseError_upvr.Under13 then
		return PurchaseErrorType_upvr.Under13
	end
	if props_4.purchaseError == PurchaseError_upvr.InvalidFunds then
		return PurchaseErrorType_upvr.FailedGrant
	end
	if props_4.purchaseError == PurchaseError_upvr.InvalidFundsUnknown then
		return PurchaseErrorType_upvr.FailedGrantUnknown
	end
	if props_4.purchaseError == PurchaseError_upvr.EconomicRestriction then
		return PurchaseErrorType_upvr.EconomicRestriction
	end
	return PurchaseErrorType_upvr.Unknown
end
local VPCModalType_upvr = require(Parent.Enums.VPCModalType)
function any_extend_result1.getVPCModalType(arg1) -- Line 267
	--[[ Upvalues[2]:
		[1]: PromptState_upvr (readonly)
		[2]: VPCModalType_upvr (readonly)
	]]
	if arg1.props.promptState == PromptState_upvr.EnablePurchaseVPCModal then
		return VPCModalType_upvr.toRawValue(VPCModalType_upvr.EnablePurchase)
	end
	return VPCModalType_upvr.toRawValue(VPCModalType_upvr.None)
end
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local RobuxUpsellFlow_upvr = IAPExperience.PurchaseFlow.RobuxUpsellFlow
local GetFFlagDisablePurchasePromptFunctionForMaquettes_upvr = require(Parent.Flags.GetFFlagDisablePurchasePromptFunctionForMaquettes)
local getPaymentPlatform_upvr = require(Parent.Utils.getPaymentPlatform)
local PaymentPlatform_upvr = require(Parent.Enums.PaymentPlatform)
function any_extend_result1.render(arg1) -- Line 279
	--[[ Upvalues[6]:
		[1]: ExternalSettings_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RobuxUpsellFlow_upvr (readonly)
		[4]: GetFFlagDisablePurchasePromptFunctionForMaquettes_upvr (readonly)
		[5]: getPaymentPlatform_upvr (readonly)
		[6]: PaymentPlatform_upvr (readonly)
	]]
	local props_2 = arg1.props
	local module = {
		screenSize = props_2.screenSize;
		shouldAnimate = true;
		isDelayedInput = true;
		onDelayedInputComplete = arg1.onDelayedInputComplete;
		model = props_2.humanoidModel;
		itemIcon = props_2.itemIcon;
		itemProductId = props_2.itemProductId;
		itemName = props_2.itemName;
		itemRobuxCost = props_2.itemRobuxCost;
		iapCostStr = props_2.iapCostStr;
		iapRobuxAmount = props_2.iapRobuxAmount;
		beforeRobuxBalance = props_2.beforeRobuxBalance;
		useUpsellSuggestions = props_2.useUpsellSuggestions;
		upsellSuggestions = props_2.upsellSuggestions;
		selectedUpsellIndex = props_2.selectedUpsellIndex;
		onUpsellSuggestionsSelected = props_2.onUpsellSuggestionsSelected;
		virtualItemBadgeType = props_2.virtualItemBadgeType;
		purchaseState = arg1:getFlowState();
		errorType = arg1:getErrorType();
		economicRestrictionError = props_2.economicRestrictionError;
		u13ConfirmType = arg1:getU13ConfirmType();
	}
	local any_getVPCModalType_result1 = arg1:getVPCModalType()
	module.purchaseVPCType = any_getVPCModalType_result1
	if props_2.isGamepadEnabled then
		any_getVPCModalType_result1 = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"
	else
		any_getVPCModalType_result1 = nil
	end
	module.acceptControllerIcon = any_getVPCModalType_result1
	if props_2.isGamepadEnabled then
		any_getVPCModalType_result1 = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB.png"
	else
		any_getVPCModalType_result1 = nil
	end
	module.cancelControllerIcon = any_getVPCModalType_result1
	any_getVPCModalType_result1 = arg1.dispatchFetchPurchaseWarning
	module.purchaseRobux = any_getVPCModalType_result1
	any_getVPCModalType_result1 = arg1.promptRobuxPurchase
	module.acceptPurchaseWarning = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props_2.openRobuxStore
	module.openBuyRobux = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props_2.openTermsOfUse
	module.showTermsOfUse = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props_2.openSecuritySettings
	module.openSecuritySettings = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props_2.endPurchase
	module.cancelPurchase = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props_2.endPurchase
	module.flowComplete = any_getVPCModalType_result1
	any_getVPCModalType_result1 = props_2.onAnalyticEvent
	module.onAnalyticEvent = any_getVPCModalType_result1
	any_getVPCModalType_result1 = "InGame"
	module.eventPrefix = any_getVPCModalType_result1
	any_getVPCModalType_result1 = GetFFlagDisablePurchasePromptFunctionForMaquettes_upvr()
	if any_getVPCModalType_result1 then
		if getPaymentPlatform_upvr(ExternalSettings_upvr.new().getPlatform()) ~= PaymentPlatform_upvr.Maquettes then
			any_getVPCModalType_result1 = false
		else
			any_getVPCModalType_result1 = true
		end
	end
	module.isQuest = any_getVPCModalType_result1
	return Roact_upvr.createElement(RobuxUpsellFlow_upvr, module)
end
return any_extend_result1