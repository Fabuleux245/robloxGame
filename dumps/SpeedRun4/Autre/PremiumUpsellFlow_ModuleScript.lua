-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:13
-- Luau version 6, Types version 3
-- Time taken: 0.006797 seconds

local HttpService_upvr = game:GetService("HttpService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local Parent_3 = Parent.Parent
local Roact_upvr = require(Parent_3.Roact)
local PremiumUpsellFlowState_upvr = require(Parent_2.PremiumUpsellFlowState)
local Constants_upvr = require(Parent.Generic.Constants)
local getEnableCentralOverlayForUpsellPrompt_upvr = require(Parent.Flags.getEnableCentralOverlayForUpsellPrompt)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
function any_extend_result1.init(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	arg1.state = {
		analyticId = HttpService_upvr:GenerateGUID(false);
	}
	function arg1.closeModal() -- Line 69
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:reportUserInput("Cancel")
		arg1.props.cancelPurchase()
		arg1:closeCentralOverlay()
		arg1:UnbindActions()
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 79
	local props_5 = arg1.props
	if arg2.purchaseState ~= props_5.purchaseState then
		arg1:reportModalShown()
		arg1:dispatchCentralOverlayAndRenderModal(props_5)
	end
end
function any_extend_result1.UnbindActions(arg1) -- Line 88
	--[[ Upvalues[3]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if getEnableCentralOverlayForUpsellPrompt_upvr() and arg1.props.dispatchCentralOverlay then
		ContextActionService_upvr:UnbindAction(Constants_upvr.CLOSE_MODAL_ACTION)
	end
end
function any_extend_result1.BindCancelAction(arg1) -- Line 94
	--[[ Upvalues[3]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if getEnableCentralOverlayForUpsellPrompt_upvr() and arg1.props.dispatchCentralOverlay then
		ContextActionService_upvr:BindAction(Constants_upvr.CLOSE_MODAL_ACTION, arg1.closeModal, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
	end
end
function any_extend_result1.closeCentralOverlay(arg1) -- Line 110
	--[[ Upvalues[1]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
	]]
	local props_3 = arg1.props
	if getEnableCentralOverlayForUpsellPrompt_upvr() and props_3.dispatchCentralOverlay then
		props_3.dispatchCentralOverlay()
	end
end
local getPartialPageModalMiddleContentWidth_upvr = require(Parent_3.UIBlox).App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local PremiumUpsellPrompt_upvr = require(Parent.PremiumUpsell.PremiumUpsellPrompt)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("CompleteFlowInStudioAccept", false)
function any_extend_result1.constructPremiumUpsellPromptAnimatorObj(arg1) -- Line 118
	--[[ Upvalues[5]:
		[1]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[2]: PremiumUpsellFlowState_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: PremiumUpsellPrompt_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local props_6_upvr = arg1.props
	local renderChildren = props_6_upvr.screenSize
	local module_4 = {}
	if props_6_upvr.purchaseState ~= PremiumUpsellFlowState_upvr.PurchaseModal then
		renderChildren = false
	else
		renderChildren = true
	end
	module_4.shouldShow = renderChildren
	renderChildren = true
	module_4.shouldAnimate = renderChildren
	if getPartialPageModalMiddleContentWidth_upvr(renderChildren.X) ~= 492 then
		renderChildren = false
	else
		renderChildren = true
	end
	module_4.animateDown = renderChildren
	function renderChildren() -- Line 127
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: PremiumUpsellPrompt_upvr (copied, readonly)
			[3]: props_6_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(PremiumUpsellPrompt_upvr, {
			screenSize = props_6_upvr.screenSize;
			isCatalog = props_6_upvr.isCatalog;
			currencySymbol = props_6_upvr.currencySymbol;
			robuxPrice = props_6_upvr.robuxPrice;
			robuxAmount = props_6_upvr.robuxAmount;
			acceptControllerIcon = props_6_upvr.acceptControllerIcon;
			purchasePremiumActivated = function() -- Line 139, Named "purchasePremiumActivated"
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: props_6_upvr (copied, readonly)
					[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Subscribe")
				props_6_upvr.purchasePremium()
				if game_DefineFastFlag_result1_upvr and game:GetService("RunService"):IsStudio() then
					props_6_upvr.flowComplete()
				end
				arg1:closeCentralOverlay()
			end;
			cancelPurchaseActivated = function() -- Line 147, Named "cancelPurchaseActivated"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_6_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Cancel")
				props_6_upvr.cancelPurchase()
				arg1:closeCentralOverlay()
			end;
		})
	end
	module_4.renderChildren = renderChildren
	return module_4
end
local PurchaseErrorPrompt_upvr = require(Parent.Generic.PurchaseErrorPrompt)
function any_extend_result1.constructPurchaseErrorPromptAnimatorObj(arg1) -- Line 157
	--[[ Upvalues[3]:
		[1]: PremiumUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: PurchaseErrorPrompt_upvr (readonly)
	]]
	local props_4_upvr = arg1.props
	local module_3 = {}
	local renderChildren
	if props_4_upvr.purchaseState ~= PremiumUpsellFlowState_upvr.Error then
		renderChildren = false
	else
		renderChildren = true
	end
	module_3.shouldShow = renderChildren
	renderChildren = true
	module_3.shouldAnimate = renderChildren
	function renderChildren() -- Line 163
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: PurchaseErrorPrompt_upvr (copied, readonly)
			[3]: props_4_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(PurchaseErrorPrompt_upvr, {
			screenSize = props_4_upvr.screenSize;
			errorType = props_4_upvr.errorType;
			economicRestrictionError = props_4_upvr.economicRestrictionError;
			doneControllerIcon = props_4_upvr.acceptControllerIcon;
			doneActivated = function() -- Line 172, Named "doneActivated"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_4_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Done")
				props_4_upvr.flowComplete()
				arg1:closeCentralOverlay()
			end;
		})
	end
	module_3.renderChildren = renderChildren
	return module_3
end
local VerifiedParentalConsentDialog_upvr = require(Parent_3.VerifiedParentalConsentDialog).VerifiedParentalConsentDialog
function any_extend_result1.constructPurchaseVPCPromptAnimatorObj(arg1) -- Line 182
	--[[ Upvalues[3]:
		[1]: PremiumUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: VerifiedParentalConsentDialog_upvr (readonly)
	]]
	local props_7_upvr = arg1.props
	arg1:BindCancelAction()
	local module = {}
	local renderChildren
	if props_7_upvr.purchaseState ~= PremiumUpsellFlowState_upvr.PurchaseVPCModal then
		renderChildren = false
	else
		renderChildren = true
	end
	module.shouldShow = renderChildren
	renderChildren = true
	module.shouldAnimate = renderChildren
	function renderChildren() -- Line 190
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: VerifiedParentalConsentDialog_upvr (copied, readonly)
			[3]: props_7_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(VerifiedParentalConsentDialog_upvr, {
			screenSize = props_7_upvr.screenSize;
			isActionable = false;
			modalType = props_7_upvr.purchaseVPCType;
			onDismiss = function() -- Line 195, Named "onDismiss"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_7_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Cancel")
				props_7_upvr.cancelPurchase()
				arg1:closeCentralOverlay()
			end;
		})
	end
	module.renderChildren = renderChildren
	return module
end
function any_extend_result1.dispatchCentralOverlayAndRenderModal(arg1, arg2) -- Line 205
	--[[ Upvalues[3]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: PremiumUpsellFlowState_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if not getEnableCentralOverlayForUpsellPrompt_upvr() or not arg2.dispatchCentralOverlay then
	else
		local purchaseState = arg2.purchaseState
		if purchaseState == PremiumUpsellFlowState_upvr.PurchaseModal then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructPremiumUpsellPromptAnimatorObj())
		end
		if purchaseState == PremiumUpsellFlowState_upvr.Error then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructPurchaseErrorPromptAnimatorObj())
		end
		if purchaseState == PremiumUpsellFlowState_upvr.PurchaseVPCModal then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructPurchaseVPCPromptAnimatorObj())
		end
	end
end
local getModalShownEventData_upvr = require(Parent.Utility.getModalShownEventData)
function any_extend_result1.reportModalShown(arg1) -- Line 236
	--[[ Upvalues[3]:
		[1]: getModalShownEventData_upvr (readonly)
		[2]: PremiumUpsellFlowState_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local props = arg1.props
	if not arg1.props.onAnalyticEvent then
	else
		props.onAnalyticEvent("UserPurchaseFlow", getModalShownEventData_upvr(arg1.state.analyticId, props.eventPrefix, "PremiumUpsell", PremiumUpsellFlowState_upvr.toRawValue(props.purchaseState), HttpService_upvr:JSONEncode({
			universe_id = tostring(game.GameId);
		})))
	end
end
local getUserInputEventData_upvr = require(Parent.Utility.getUserInputEventData)
function any_extend_result1.reportUserInput(arg1, arg2) -- Line 257
	--[[ Upvalues[3]:
		[1]: getUserInputEventData_upvr (readonly)
		[2]: PremiumUpsellFlowState_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local props_2 = arg1.props
	if not arg1.props.onAnalyticEvent then
	else
		props_2.onAnalyticEvent("UserPurchaseFlow", getUserInputEventData_upvr(arg1.state.analyticId, props_2.eventPrefix, "PremiumUpsell", PremiumUpsellFlowState_upvr.toRawValue(props_2.purchaseState), arg2, HttpService_upvr:JSONEncode({
			universe_id = tostring(game.GameId);
		})))
	end
end
local Animator_upvr = require(Parent.Generic.Animator)
function any_extend_result1.getChildrenElements(arg1) -- Line 280
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Animator_upvr (readonly)
	]]
	return {
		PremiumUpsellPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructPremiumUpsellPromptAnimatorObj());
		PurchaseErrorPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructPurchaseErrorPromptAnimatorObj());
		PurchaseVPCPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructPurchaseVPCPromptAnimatorObj());
	}
end
function any_extend_result1.render(arg1) -- Line 288
	--[[ Upvalues[2]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local module_2 = {}
	if not getEnableCentralOverlayForUpsellPrompt_upvr() or not arg1.props.dispatchCentralOverlay then
		module_2 = arg1:getChildrenElements()
	end
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, module_2)
end
return any_extend_result1