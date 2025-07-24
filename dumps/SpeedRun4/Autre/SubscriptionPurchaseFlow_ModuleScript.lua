-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:16
-- Luau version 6, Types version 3
-- Time taken: 0.003268 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local SubscriptionPurchaseFlowState_upvr = require(Parent.SubscriptionPurchaseFlowState)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local HttpService_upvr = game:GetService("HttpService")
function any_extend_result1.init(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	arg1.state = {
		analyticId = HttpService_upvr:GenerateGUID(false);
	}
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 77
	if arg2.purchaseState ~= arg1.props.purchaseState then
		arg1:reportPurchaseEvent("ViewShown")
	end
end
function any_extend_result1.reportUserInput(arg1, arg2) -- Line 85
	arg1:reportPurchaseEvent("UserInput", arg2)
end
local formatSubscriptionPurchaseEventData_upvr = require(Parent_3.Utility.formatSubscriptionPurchaseEventData)
function any_extend_result1.reportPurchaseEvent(arg1, arg2, arg3) -- Line 89
	--[[ Upvalues[2]:
		[1]: formatSubscriptionPurchaseEventData_upvr (readonly)
		[2]: SubscriptionPurchaseFlowState_upvr (readonly)
	]]
	local props = arg1.props
	if not props.onAnalyticEvent then
	else
		props.onAnalyticEvent("SubscriptionPurchase", formatSubscriptionPurchaseEventData_upvr(arg1.state.analyticId, arg2, SubscriptionPurchaseFlowState_upvr.toRawValue(props.purchaseState), arg3, props.subscriptionProviderId, props.subscriptionId, props.name, props.description, props.period, props.priceTier, props.displayPrice))
	end
end
local getPartialPageModalMiddleContentWidth_upvr = require(Parent_2.UIBlox).App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local Animator_upvr = require(Parent_3.Generic.Animator)
local SubscriptionPurchasePrompt_upvr = require(Parent_3.Subscription.SubscriptionPurchasePrompt)
local getEnableDisableSubPurchase_upvr = require(Parent_3.Flags.getEnableDisableSubPurchase)
local PurchaseErrorPrompt_upvr = require(Parent_3.Generic.PurchaseErrorPrompt)
local PurchaseFlowType_upvr = require(Parent_3.Generic.PurchaseFlowType)
local VerifiedParentalConsentDialog_upvr = require(Parent_2.VerifiedParentalConsentDialog).VerifiedParentalConsentDialog
function any_extend_result1.render(arg1) -- Line 113
	--[[ Upvalues[9]:
		[1]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Animator_upvr (readonly)
		[4]: SubscriptionPurchaseFlowState_upvr (readonly)
		[5]: SubscriptionPurchasePrompt_upvr (readonly)
		[6]: getEnableDisableSubPurchase_upvr (readonly)
		[7]: PurchaseErrorPrompt_upvr (readonly)
		[8]: PurchaseFlowType_upvr (readonly)
		[9]: VerifiedParentalConsentDialog_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local props_upvr = arg1.props
	local purchaseState = props_upvr.purchaseState
	local tbl_2 = {}
	local var21 = 0
	tbl_2.Size = UDim2.new(1, 0, 1, var21)
	tbl_2.BackgroundTransparency = 1
	local tbl = {}
	if purchaseState ~= SubscriptionPurchaseFlowState_upvr.PurchaseModal then
		var21 = false
	else
		var21 = true
	end
	tbl.shouldShow = var21
	tbl.shouldAnimate = true
	if getPartialPageModalMiddleContentWidth_upvr(props_upvr.screenSize.X) ~= 492 then
		-- KONSTANTWARNING: GOTO [49] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 35. Error Block 29 start (CF ANALYSIS FAILED)
	tbl.animateDown = true
	function tbl.renderChildren() -- Line 127
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: SubscriptionPurchasePrompt_upvr (copied, readonly)
			[3]: props_upvr (readonly)
			[4]: getEnableDisableSubPurchase_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module = {
			name = props_upvr.name;
			subscriptionProviderName = props_upvr.subscriptionProviderName;
			displayPrice = props_upvr.displayPrice;
			period = props_upvr.period;
			disclaimerText = props_upvr.disclaimerText;
			description = props_upvr.description;
		}
		local itemIcon = props_upvr.itemIcon
		module.itemIcon = itemIcon
		if getEnableDisableSubPurchase_upvr() then
			itemIcon = props_upvr.disablePurchase
		else
			itemIcon = nil
		end
		module.disablePurchase = itemIcon
		if getEnableDisableSubPurchase_upvr() then
			itemIcon = props_upvr.disablePurchaseText
		else
			itemIcon = nil
		end
		module.disablePurchaseText = itemIcon
		itemIcon = props_upvr.primaryPaymentMethod
		module.primaryPaymentMethod = itemIcon
		itemIcon = props_upvr.secondaryPaymentMethod
		module.secondaryPaymentMethod = itemIcon
		itemIcon = props_upvr.isTestingMode
		module.isTestingMode = itemIcon
		itemIcon = props_upvr.screenSize
		module.screenSize = itemIcon
		function itemIcon(arg1_2) -- Line 145, Named "purchaseSubscriptionActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_upvr (copied, readonly)
			]]
			arg1:reportUserInput("Subscribe")
			props_upvr.purchaseSubscription(arg1_2)
			if props_upvr.isTestingMode then
				props_upvr.flowComplete()
			end
		end
		module.purchaseSubscriptionActivated = itemIcon
		function itemIcon() -- Line 152, Named "cancelPurchaseActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_upvr (copied, readonly)
			]]
			arg1:reportUserInput("Cancel")
			props_upvr.cancelPurchase()
		end
		module.cancelPurchaseActivated = itemIcon
		return Roact_upvr.createElement(SubscriptionPurchasePrompt_upvr, module)
	end
	;({}).SubscriptionPurchasePromptAnimator = Roact_upvr.createElement(Animator_upvr, tbl)
	if purchaseState ~= SubscriptionPurchaseFlowState_upvr.Error then
		-- KONSTANTWARNING: GOTO [74] #55
	end
	-- KONSTANTERROR: [48] 35. Error Block 29 end (CF ANALYSIS FAILED)
end
return any_extend_result1