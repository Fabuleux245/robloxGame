-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:15
-- Luau version 6, Types version 3
-- Time taken: 0.016915 seconds

local HttpService_upvr = game:GetService("HttpService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local Parent_3 = Parent.Parent
local Roact_upvr = require(Parent_3.Roact)
local RobuxUpsellFlowState_upvr = require(Parent_2.RobuxUpsellFlowState)
local Constants_upvr = require(Parent.Generic.Constants)
local shouldShowNewUpsellModalExperiment_upvr = require(Parent.Utility.Experiments.shouldShowNewUpsellModalExperiment)
local getEnableCentralOverlayForUpsellPrompt_upvr = require(Parent.Flags.getEnableCentralOverlayForUpsellPrompt)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
game:DefineFastFlag("DisableNonSchematizedInGameRobuxUpsellEvent", false)
game:DefineFastFlag("EnableSchematizedInGameRobuxUpsellEvent2", false)
function any_extend_result1.init(arg1) -- Line 129
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local props_10 = arg1.props
	local tbl_3 = {}
	local var14
	if props_10.analyticId then
		var14 = props_10.analyticId
	else
		var14 = HttpService_upvr:GenerateGUID(false)
	end
	tbl_3.analyticId = var14
	var14 = props_10.isDelayedInput
	tbl_3.isDelayedInput = var14
	var14 = false
	tbl_3.enableInputDelayed = var14
	arg1.state = tbl_3
	function arg1.closeModal() -- Line 139
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:reportUserInput("Cancel")
		arg1.props.cancelPurchase()
		arg1:closeCentralOverlay()
		arg1:UnbindActions()
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 149
	local props = arg1.props
	if arg2.purchaseState ~= props.purchaseState then
		arg1:reportModalShown()
		arg1:dispatchCentralOverlayAndRenderModal(props)
	end
end
function any_extend_result1.UnbindActions(arg1) -- Line 158
	--[[ Upvalues[3]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if getEnableCentralOverlayForUpsellPrompt_upvr() and arg1.props.dispatchCentralOverlay then
		ContextActionService_upvr:UnbindAction(Constants_upvr.CLOSE_MODAL_ACTION)
	end
end
function any_extend_result1.BindCancelAction(arg1) -- Line 164
	--[[ Upvalues[3]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if getEnableCentralOverlayForUpsellPrompt_upvr() and arg1.props.dispatchCentralOverlay then
		ContextActionService_upvr:BindAction(Constants_upvr.CLOSE_MODAL_ACTION, arg1.closeModal, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
	end
end
function any_extend_result1.closeCentralOverlay(arg1) -- Line 180
	--[[ Upvalues[1]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
	]]
	local props_2 = arg1.props
	if getEnableCentralOverlayForUpsellPrompt_upvr() and props_2.dispatchCentralOverlay then
		props_2.dispatchCentralOverlay()
	end
end
local overlayInGameMenu_upvr = require(Parent.Utility.overlayInGameMenu)
local RobuxUpsellModalMultiplePackage_upvr = require(Parent.ProductPurchaseRobuxUpsell.v2.RobuxUpsellModalMultiplePackage)
local RobuxUpsellModal_upvr = require(Parent.ProductPurchaseRobuxUpsell.v2.RobuxUpsellModal)
local RobuxUpsellPrompt_upvr = require(Parent.ProductPurchaseRobuxUpsell.RobuxUpsellPrompt)
local FFlagMobilePopularItemBadgingExperimentEnabled_upvr = require(Parent.Flags.FFlagMobilePopularItemBadgingExperimentEnabled)
function any_extend_result1.constructRobuxUpsellPromptAnimatorObj(arg1) -- Line 188
	--[[ Upvalues[8]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: overlayInGameMenu_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RobuxUpsellModalMultiplePackage_upvr (readonly)
		[5]: shouldShowNewUpsellModalExperiment_upvr (readonly)
		[6]: RobuxUpsellModal_upvr (readonly)
		[7]: RobuxUpsellPrompt_upvr (readonly)
		[8]: FFlagMobilePopularItemBadgingExperimentEnabled_upvr (readonly)
	]]
	local props_upvr_2 = arg1.props
	arg1:BindCancelAction()
	local module_18 = {}
	local renderChildren = props_upvr_2.shouldAnimate
	module_18.shouldAnimate = renderChildren
	if props_upvr_2.purchaseState ~= RobuxUpsellFlowState_upvr.PurchaseModal then
		renderChildren = false
	else
		renderChildren = true
	end
	module_18.shouldShow = renderChildren
	local function INLINED() -- Internal function, doesn't exist in bytecode
		function renderChildren() -- Line 197
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: props_upvr_2 (readonly)
			]]
			arg1:setState({
				enableInputDelayed = true;
			})
			delay(3, function() -- Line 201
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_2 (copied, readonly)
				]]
				arg1:setState({
					isDelayedInput = false;
					enableInputDelayed = false;
				})
				if props_upvr_2.onDelayedInputComplete then
					props_upvr_2.onDelayedInputComplete()
				end
			end)
		end
		return renderChildren
	end
	if not props_upvr_2.isDelayedInput or not INLINED() then
		renderChildren = nil
	end
	module_18.onShown = renderChildren
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		function renderChildren() -- Line 211
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: props_upvr_2 (readonly)
			]]
			arg1:setState({
				isDelayedInput = props_upvr_2.isDelayedInput;
				enableInputDelayed = false;
			})
		end
		return renderChildren
	end
	if not props_upvr_2.isDelayedInput or not INLINED_2() then
		renderChildren = nil
	end
	module_18.onHidden = renderChildren
	local state_upvr = arg1.state
	function renderChildren() -- Line 217
		--[[ Upvalues[10]:
			[1]: props_upvr_2 (readonly)
			[2]: overlayInGameMenu_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: RobuxUpsellModalMultiplePackage_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: state_upvr (readonly)
			[7]: shouldShowNewUpsellModalExperiment_upvr (copied, readonly)
			[8]: RobuxUpsellModal_upvr (copied, readonly)
			[9]: RobuxUpsellPrompt_upvr (copied, readonly)
			[10]: FFlagMobilePopularItemBadgingExperimentEnabled_upvr (copied, readonly)
		]]
		local var39
		if props_upvr_2.useUpsellSuggestions then
			var39 = {}
			var39.product = {
				model = props_upvr_2.model;
				itemIcon = props_upvr_2.itemIcon;
				itemName = props_upvr_2.itemName;
				itemRobuxCost = props_upvr_2.itemRobuxCost;
				badgeType = props_upvr_2.virtualItemBadgeType;
			}
			var39.userBalance = props_upvr_2.beforeRobuxBalance
			var39.upsellSuggestions = props_upvr_2.upsellSuggestions
			var39.selectedUpsellIndex = props_upvr_2.selectedUpsellIndex
			var39.onUpsellSuggestionsSelected = props_upvr_2.onUpsellSuggestionsSelected
			local tbl = {}
			local function buyItemActivated() -- Line 232
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_2 (copied, readonly)
				]]
				arg1:reportUserInput("Buy")
				props_upvr_2.purchaseRobux()
				arg1:closeCentralOverlay()
			end
			tbl.buyItemActivated = buyItemActivated
			tbl.buyItemControllerIcon = props_upvr_2.acceptControllerIcon
			tbl.buyItemisDelayedInput = state_upvr.isDelayedInput
			tbl.buyItemEnableInputDelayed = state_upvr.enableInputDelayed
			local function cancelPurchaseActivated() -- Line 242
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_2 (copied, readonly)
				]]
				arg1:reportUserInput("Cancel")
				props_upvr_2.cancelPurchase()
				arg1:closeCentralOverlay()
			end
			tbl.cancelPurchaseActivated = cancelPurchaseActivated
			tbl.cancelControllerIcon = props_upvr_2.cancelControllerIcon
			var39.buttons = tbl
			var39.isQuest = props_upvr_2.isQuest
			var39.isVng = props_upvr_2.isVng
			var39.screenSize = props_upvr_2.screenSize
			return overlayInGameMenu_upvr(Roact_upvr.createElement(RobuxUpsellModalMultiplePackage_upvr, var39))
		end
		local var37
		if shouldShowNewUpsellModalExperiment_upvr() then
			var39 = {}
			var37 = {}
			var37.model = props_upvr_2.model
			var37.itemIcon = props_upvr_2.itemIcon
			var37.itemName = props_upvr_2.itemName
			var37.itemRobuxCost = props_upvr_2.itemRobuxCost
			var37.badgeType = props_upvr_2.virtualItemBadgeType
			var39.product = var37
			var37 = {}
			var37.balanceAmount = props_upvr_2.beforeRobuxBalance
			var37.robuxPurchaseAmount = props_upvr_2.iapRobuxAmount
			var37.robuxPurchaseCost = props_upvr_2.iapCostStr
			var37.robuxPurchaseAmountBeforeBonus = props_upvr_2.iapRobuxAmountBeforeBonus
			var39.upsell = var37
			var37 = {}
			local function buyItemActivated() -- Line 270
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_2 (copied, readonly)
				]]
				arg1:reportUserInput("Buy")
				props_upvr_2.purchaseRobux()
				arg1:closeCentralOverlay()
			end
			var37.buyItemActivated = buyItemActivated
			var37.buyItemControllerIcon = props_upvr_2.acceptControllerIcon
			var37.buyItemisDelayedInput = state_upvr.isDelayedInput
			var37.buyItemEnableInputDelayed = state_upvr.enableInputDelayed
			local function cancelPurchaseActivated() -- Line 280
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_2 (copied, readonly)
				]]
				arg1:reportUserInput("Cancel")
				props_upvr_2.cancelPurchase()
				arg1:closeCentralOverlay()
			end
			var37.cancelPurchaseActivated = cancelPurchaseActivated
			var37.cancelControllerIcon = props_upvr_2.cancelControllerIcon
			var39.buttons = var37
			var37 = props_upvr_2.isQuest
			var39.isQuest = var37
			var37 = props_upvr_2.isVng
			var39.isVng = var37
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				function var37() -- Line 289
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: props_upvr_2 (copied, readonly)
					]]
					arg1:reportUserInput("TermsOfService")
					props_upvr_2.showTermsOfUse()
				end
				return var37
			end
			if not props_upvr_2.showTermsOfUse or not INLINED_3() then
				var37 = nil
			end
			var39.termsOfUseActivated = var37
			var37 = props_upvr_2.screenSize
			var39.screenSize = var37
			return overlayInGameMenu_upvr(Roact_upvr.createElement(RobuxUpsellModal_upvr, var39))
		end
		local module_15 = {}
		var39 = props_upvr_2.screenSize
		module_15.screenSize = var39
		var39 = state_upvr.isDelayedInput
		module_15.isDelayedInput = var39
		var39 = state_upvr.enableInputDelayed
		module_15.enableInputDelayed = var39
		var39 = props_upvr_2.model
		module_15.model = var39
		var39 = props_upvr_2.itemIcon
		module_15.itemIcon = var39
		var39 = props_upvr_2.itemName
		module_15.itemName = var39
		var39 = props_upvr_2.itemRobuxCost
		module_15.itemRobuxCost = var39
		var39 = props_upvr_2.iapRobuxAmount
		module_15.robuxPurchaseAmount = var39
		var39 = props_upvr_2.iapRobuxAmountBeforeBonus
		module_15.robuxPurchaseAmountBeforeBonus = var39
		var39 = props_upvr_2.beforeRobuxBalance
		module_15.balanceAmount = var39
		var39 = props_upvr_2.acceptControllerIcon
		module_15.buyItemControllerIcon = var39
		var39 = props_upvr_2.cancelControllerIcon
		module_15.cancelControllerIcon = var39
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var39 = tostring(props_upvr_2.itemProductId)
			return var39
		end
		if not FFlagMobilePopularItemBadgingExperimentEnabled_upvr or not INLINED_4() then
			var39 = nil
		end
		module_15.itemProductId = var39
		function var39() -- Line 313, Named "buyItemActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_upvr_2 (copied, readonly)
			]]
			arg1:reportUserInput("Buy")
			props_upvr_2.purchaseRobux()
			arg1:closeCentralOverlay()
		end
		module_15.buyItemActivated = var39
		function var39() -- Line 318, Named "cancelPurchaseActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_upvr_2 (copied, readonly)
			]]
			arg1:reportUserInput("Cancel")
			props_upvr_2.cancelPurchase()
			arg1:closeCentralOverlay()
		end
		module_15.cancelPurchaseActivated = var39
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			function var39() -- Line 323
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_2 (copied, readonly)
				]]
				arg1:reportUserInput("TermsOfService")
				props_upvr_2.showTermsOfUse()
			end
			return var39
		end
		if not props_upvr_2.showTermsOfUse or not INLINED_5() then
			var39 = nil
		end
		module_15.termsOfUseActivated = var39
		var39 = arg1.props.isQuest
		module_15.isQuest = var39
		var39 = arg1.props.isVng
		module_15.isVng = var39
		return Roact_upvr.createElement(RobuxUpsellPrompt_upvr, module_15)
	end
	module_18.renderChildren = renderChildren
	return module_18
end
local U13ConfirmPrompt_upvr = require(Parent.Generic.U13ConfirmPrompt)
function any_extend_result1.constructU13ConfirmPromptAnimatorObj(arg1) -- Line 334
	--[[ Upvalues[3]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: U13ConfirmPrompt_upvr (readonly)
	]]
	local props_3_upvr = arg1.props
	arg1:BindCancelAction()
	local module_14 = {}
	local shouldAnimate_7 = props_3_upvr.shouldAnimate
	module_14.shouldAnimate = shouldAnimate_7
	if props_3_upvr.purchaseState ~= RobuxUpsellFlowState_upvr.PurchaseWarning then
		shouldAnimate_7 = false
	else
		shouldAnimate_7 = true
	end
	module_14.shouldShow = shouldAnimate_7
	local function renderChildren() -- Line 342
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: U13ConfirmPrompt_upvr (copied, readonly)
			[3]: props_3_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local module_5 = {
			screenSize = props_3_upvr.screenSize;
			modalType = props_3_upvr.u13ConfirmType;
			doneControllerIcon = props_3_upvr.acceptControllerIcon;
			cancelControllerIcon = props_3_upvr.cancelControllerIcon;
		}
		local function doneActivated() -- Line 351
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_3_upvr (copied, readonly)
			]]
			arg1:reportUserInput("Confirm")
			props_3_upvr.acceptPurchaseWarning()
			arg1:closeCentralOverlay()
		end
		module_5.doneActivated = doneActivated
		local function cancelActivated() -- Line 356
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_3_upvr (copied, readonly)
			]]
			arg1:reportUserInput("Cancel")
			props_3_upvr.cancelPurchase()
			arg1:closeCentralOverlay()
		end
		module_5.cancelActivated = cancelActivated
		return Roact_upvr.createElement(U13ConfirmPrompt_upvr, module_5)
	end
	module_14.renderChildren = renderChildren
	return module_14
end
local PurchaseErrorType_upvr = require(Parent.Enums.PurchaseErrorType)
local RobuxUpsellModalTooExpensiveFallback_upvr = require(Parent.ProductPurchaseRobuxUpsell.v2.RobuxUpsellModalTooExpensiveFallback)
local PurchaseErrorPrompt_upvr = require(Parent.Generic.PurchaseErrorPrompt)
function any_extend_result1.constructPurchaseErrorPromptAnimatorObj(arg1) -- Line 366
	--[[ Upvalues[6]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: PurchaseErrorType_upvr (readonly)
		[3]: shouldShowNewUpsellModalExperiment_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: RobuxUpsellModalTooExpensiveFallback_upvr (readonly)
		[6]: PurchaseErrorPrompt_upvr (readonly)
	]]
	local props_upvr_3 = arg1.props
	arg1:BindCancelAction()
	local module = {}
	local shouldAnimate_5 = props_upvr_3.shouldAnimate
	module.shouldAnimate = shouldAnimate_5
	if props_upvr_3.purchaseState ~= RobuxUpsellFlowState_upvr.Error then
		shouldAnimate_5 = false
	else
		shouldAnimate_5 = true
	end
	module.shouldShow = shouldAnimate_5
	local function renderChildren() -- Line 374
		--[[ Upvalues[7]:
			[1]: props_upvr_3 (readonly)
			[2]: PurchaseErrorType_upvr (copied, readonly)
			[3]: shouldShowNewUpsellModalExperiment_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: RobuxUpsellModalTooExpensiveFallback_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: PurchaseErrorPrompt_upvr (copied, readonly)
		]]
		if props_upvr_3.errorType == PurchaseErrorType_upvr.NotEnoughRobux and shouldShowNewUpsellModalExperiment_upvr() then
			local module_2 = {
				product = {
					model = props_upvr_3.model;
					itemIcon = props_upvr_3.itemIcon;
					itemName = props_upvr_3.itemName;
					itemRobuxCost = props_upvr_3.itemRobuxCost;
				};
				balanceAmount = props_upvr_3.beforeRobuxBalance;
			}
			local function doneActivated() -- Line 385
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_3 (copied, readonly)
				]]
				arg1:reportUserInput("Done")
				props_upvr_3.flowComplete()
				arg1:closeCentralOverlay()
			end
			module_2.doneActivated = doneActivated
			module_2.doneControllerIcon = props_upvr_3.acceptControllerIcon
			module_2.isQuest = props_upvr_3.isQuest
			module_2.screenSize = props_upvr_3.screenSize
			return Roact_upvr.createElement(RobuxUpsellModalTooExpensiveFallback_upvr, module_2)
		end
		local module_4 = {
			screenSize = props_upvr_3.screenSize;
			errorType = props_upvr_3.errorType;
			economicRestrictionError = props_upvr_3.economicRestrictionError;
			doneControllerIcon = props_upvr_3.acceptControllerIcon;
		}
		local function doneActivated() -- Line 403
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_upvr_3 (copied, readonly)
			]]
			arg1:reportUserInput("Done")
			props_upvr_3.flowComplete()
			arg1:closeCentralOverlay()
		end
		module_4.doneActivated = doneActivated
		return Roact_upvr.createElement(PurchaseErrorPrompt_upvr, module_4)
	end
	module.renderChildren = renderChildren
	return module
end
local TwoStepReqPrompt_upvr = require(Parent.Generic.TwoStepReqPrompt)
function any_extend_result1.constructTwoStepRequiredAnimatorObj(arg1) -- Line 413
	--[[ Upvalues[3]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: TwoStepReqPrompt_upvr (readonly)
	]]
	local props_9_upvr = arg1.props
	arg1:BindCancelAction()
	local module_8 = {}
	local shouldAnimate_8 = props_9_upvr.shouldAnimate
	module_8.shouldAnimate = shouldAnimate_8
	if props_9_upvr.purchaseState ~= RobuxUpsellFlowState_upvr.TwoStepRequired then
		shouldAnimate_8 = false
	else
		shouldAnimate_8 = true
	end
	module_8.shouldShow = shouldAnimate_8
	local function renderChildren() -- Line 421
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: TwoStepReqPrompt_upvr (copied, readonly)
			[3]: props_9_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local module_16 = {
			screenSize = props_9_upvr.screenSize;
			doneControllerIcon = props_9_upvr.acceptControllerIcon;
			openSecuritySettings = function() -- Line 427, Named "openSecuritySettings"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_9_upvr (copied, readonly)
				]]
				arg1:reportUserInput("GoToSecuritySettings")
				props_9_upvr.openSecuritySettings()
				props_9_upvr.flowComplete()
				arg1:closeCentralOverlay()
			end;
		}
		local function closePrompt() -- Line 433
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_9_upvr (copied, readonly)
			]]
			arg1:reportUserInput("Cancel")
			props_9_upvr.flowComplete()
			arg1:closeCentralOverlay()
		end
		module_16.closePrompt = closePrompt
		return Roact_upvr.createElement(TwoStepReqPrompt_upvr, module_16)
	end
	module_8.renderChildren = renderChildren
	return module_8
end
local RobuxUpsellSuccessPrompt_upvr = require(Parent.ProductPurchaseRobuxUpsell.RobuxUpsellSuccessPrompt)
function any_extend_result1.constructRobuxUpsellSuccessPromptAnimatorObj(arg1) -- Line 443
	--[[ Upvalues[3]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RobuxUpsellSuccessPrompt_upvr (readonly)
	]]
	local props_upvr = arg1.props
	arg1:BindCancelAction()
	local module_6 = {}
	local shouldAnimate = props_upvr.shouldAnimate
	module_6.shouldAnimate = shouldAnimate
	if props_upvr.purchaseState ~= RobuxUpsellFlowState_upvr.Success then
		shouldAnimate = false
	else
		shouldAnimate = true
	end
	module_6.shouldShow = shouldAnimate
	local function renderChildren() -- Line 451
		--[[ Upvalues[4]:
			[1]: props_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RobuxUpsellSuccessPrompt_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local var63 = 0
		local var64 = props_upvr.beforeRobuxBalance - props_upvr.itemRobuxCost
		local var67
		if var64 < 0 then
			var63 = var64 + props_upvr.iapRobuxAmount
		else
			var63 = var64
		end
		local module_13 = {}
		var67 = props_upvr.screenSize
		module_13.screenSize = var67
		var67 = props_upvr.model
		module_13.model = var67
		var67 = props_upvr.itemIcon
		module_13.itemIcon = var67
		var67 = props_upvr.itemName
		module_13.itemName = var67
		module_13.balance = var63
		var67 = props_upvr.acceptControllerIcon
		module_13.confirmControllerIcon = var67
		var67 = props_upvr.cancelControllerIcon
		module_13.cancelControllerIcon = var67
		function var67() -- Line 467, Named "doneActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_upvr (copied, readonly)
			]]
			arg1:reportUserInput("Done")
			props_upvr.flowComplete()
			arg1:closeCentralOverlay()
		end
		module_13.doneActivated = var67
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			function var67() -- Line 472
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Equip")
				props_upvr.equipItem()
				arg1:closeCentralOverlay()
			end
			return var67
		end
		if not props_upvr.equipItem or not INLINED_6() then
			var67 = nil
		end
		module_13.equipActivated = var67
		return Roact_upvr.createElement(RobuxUpsellSuccessPrompt_upvr, module_13)
	end
	module_6.renderChildren = renderChildren
	return module_6
end
local RobuxUpsellModalTooExpensive_upvr = require(Parent.ProductPurchaseRobuxUpsell.v2.RobuxUpsellModalTooExpensive)
local InsufficientRobuxPrompt_upvr = require(Parent.Generic.InsufficientRobuxPrompt)
function any_extend_result1.constructInsufficientRobuxAnimatorObj(arg1) -- Line 482
	--[[ Upvalues[5]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: shouldShowNewUpsellModalExperiment_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RobuxUpsellModalTooExpensive_upvr (readonly)
		[5]: InsufficientRobuxPrompt_upvr (readonly)
	]]
	local props_upvr_4 = arg1.props
	arg1:BindCancelAction()
	local module_17 = {}
	local shouldAnimate_3 = props_upvr_4.shouldAnimate
	module_17.shouldAnimate = shouldAnimate_3
	if props_upvr_4.purchaseState ~= RobuxUpsellFlowState_upvr.GenericPurchaseModal then
		shouldAnimate_3 = false
	else
		shouldAnimate_3 = true
	end
	module_17.shouldShow = shouldAnimate_3
	local function renderChildren() -- Line 490
		--[[ Upvalues[6]:
			[1]: shouldShowNewUpsellModalExperiment_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RobuxUpsellModalTooExpensive_upvr (copied, readonly)
			[4]: props_upvr_4 (readonly)
			[5]: arg1 (readonly)
			[6]: InsufficientRobuxPrompt_upvr (copied, readonly)
		]]
		if shouldShowNewUpsellModalExperiment_upvr() then
			local module_3 = {
				product = {
					model = props_upvr_4.model;
					itemIcon = props_upvr_4.itemIcon;
					itemName = props_upvr_4.itemName;
					itemRobuxCost = props_upvr_4.itemRobuxCost;
				};
				balanceAmount = props_upvr_4.beforeRobuxBalance;
			}
			local tbl_4 = {
				buyItemActivated = function() -- Line 502, Named "buyItemActivated"
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: props_upvr_4 (copied, readonly)
					]]
					arg1:reportUserInput("Buy Robux")
					props_upvr_4.openBuyRobux()
					props_upvr_4.flowComplete()
					arg1:closeCentralOverlay()
				end;
				buyItemControllerIcon = props_upvr_4.acceptControllerIcon;
			}
			local function cancelPurchaseActivated() -- Line 510
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_4 (copied, readonly)
				]]
				arg1:reportUserInput("Cancel")
				props_upvr_4.flowComplete()
				arg1:closeCentralOverlay()
			end
			tbl_4.cancelPurchaseActivated = cancelPurchaseActivated
			tbl_4.cancelControllerIcon = props_upvr_4.cancelControllerIcon
			module_3.buttons = tbl_4
			module_3.isQuest = props_upvr_4.isQuest
			module_3.screenSize = props_upvr_4.screenSize
			return Roact_upvr.createElement(RobuxUpsellModalTooExpensive_upvr, module_3)
		end
		return Roact_upvr.createElement(InsufficientRobuxPrompt_upvr, {
			screenSize = props_upvr_4.screenSize;
			robuxBalance = props_upvr_4.beforeRobuxBalance;
			buyRobux = function() -- Line 526, Named "buyRobux"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_4 (copied, readonly)
				]]
				arg1:reportUserInput("Buy Robux")
				props_upvr_4.openBuyRobux()
				props_upvr_4.flowComplete()
				arg1:closeCentralOverlay()
			end;
			closePrompt = function() -- Line 532, Named "closePrompt"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_upvr_4 (copied, readonly)
				]]
				arg1:reportUserInput("Cancel")
				props_upvr_4.flowComplete()
				arg1:closeCentralOverlay()
			end;
		})
	end
	module_17.renderChildren = renderChildren
	return module_17
end
local InsufficientRobuxProductPrompt_upvr = require(Parent.ProductPurchaseRobuxUpsell.InsufficientRobuxProductPrompt)
function any_extend_result1.constructInsufficientRobuxProductAnimatorObj(arg1) -- Line 542
	--[[ Upvalues[3]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InsufficientRobuxProductPrompt_upvr (readonly)
	]]
	local props_11_upvr = arg1.props
	arg1:BindCancelAction()
	local module_12 = {}
	local shouldAnimate_4 = props_11_upvr.shouldAnimate
	module_12.shouldAnimate = shouldAnimate_4
	if props_11_upvr.purchaseState ~= RobuxUpsellFlowState_upvr.LargeRobuxPurchaseModal then
		shouldAnimate_4 = false
	else
		shouldAnimate_4 = true
	end
	module_12.shouldShow = shouldAnimate_4
	local function renderChildren() -- Line 550
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: InsufficientRobuxProductPrompt_upvr (copied, readonly)
			[3]: props_11_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(InsufficientRobuxProductPrompt_upvr, {
			screenSize = props_11_upvr.screenSize;
			model = props_11_upvr.model;
			itemIcon = props_11_upvr.itemIcon;
			itemName = props_11_upvr.itemName;
			itemRobuxCost = props_11_upvr.itemRobuxCost;
			balanceAmount = props_11_upvr.beforeRobuxBalance;
			acceptControllerIcon = props_11_upvr.acceptControllerIcon;
			cancelControllerIcon = props_11_upvr.cancelControllerIcon;
			robuxStoreActivated = function() -- Line 563, Named "robuxStoreActivated"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_11_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Go to Robux store")
				props_11_upvr.openBuyRobux()
				arg1:closeCentralOverlay()
			end;
			cancelPurchaseActivated = function() -- Line 568, Named "cancelPurchaseActivated"
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_11_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Cancel")
				props_11_upvr.flowComplete()
				arg1:closeCentralOverlay()
			end;
		})
	end
	module_12.renderChildren = renderChildren
	return module_12
end
local LeaveRobloxPrompt_upvr = require(Parent.Generic.LeaveRobloxPrompt)
function any_extend_result1.constructLeaveRobloxPromptAnimatorObj(arg1) -- Line 578
	--[[ Upvalues[3]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LeaveRobloxPrompt_upvr (readonly)
	]]
	local props_8_upvr = arg1.props
	arg1:BindCancelAction()
	local module_7 = {}
	local shouldAnimate_6 = props_8_upvr.shouldAnimate
	module_7.shouldAnimate = shouldAnimate_6
	if props_8_upvr.purchaseState ~= RobuxUpsellFlowState_upvr.LeaveRobloxWarning then
		shouldAnimate_6 = false
	else
		shouldAnimate_6 = true
	end
	module_7.shouldShow = shouldAnimate_6
	local function renderChildren() -- Line 586
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: LeaveRobloxPrompt_upvr (copied, readonly)
			[3]: props_8_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(LeaveRobloxPrompt_upvr, {
			screenSize = props_8_upvr.screenSize;
			cancelActivated = function() -- Line 590, Named "cancelActivated"
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:closeCentralOverlay()
			end;
			continueActivated = function() -- Line 593, Named "continueActivated"
				--[[ Upvalues[1]:
					[1]: props_8_upvr (copied, readonly)
				]]
				props_8_upvr.openVngShop()
			end;
		})
	end
	module_7.renderChildren = renderChildren
	return module_7
end
local VerifiedParentalConsentDialog_upvr = require(Parent_3.VerifiedParentalConsentDialog).VerifiedParentalConsentDialog
function any_extend_result1.constructPurchaseVPCPromptAnimatorObj(arg1) -- Line 601
	--[[ Upvalues[3]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: VerifiedParentalConsentDialog_upvr (readonly)
	]]
	local props_7_upvr = arg1.props
	arg1:BindCancelAction()
	local module_11 = {}
	local shouldAnimate_2 = props_7_upvr.shouldAnimate
	module_11.shouldAnimate = shouldAnimate_2
	if props_7_upvr.purchaseState ~= RobuxUpsellFlowState_upvr.PurchaseVPCModal then
		shouldAnimate_2 = false
	else
		shouldAnimate_2 = true
	end
	module_11.shouldShow = shouldAnimate_2
	function module_11.renderChildren() -- Line 609
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: VerifiedParentalConsentDialog_upvr (copied, readonly)
			[3]: props_7_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local module_10 = {}
		local screenSize = props_7_upvr.screenSize
		module_10.screenSize = screenSize
		if props_7_upvr.openSettingsPage == nil then
			screenSize = false
		else
			screenSize = true
		end
		module_10.isActionable = screenSize
		module_10.modalType = props_7_upvr.purchaseVPCType
		local openSettingsPage = props_7_upvr.openSettingsPage
		if openSettingsPage then
			function openSettingsPage() -- Line 614
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: props_7_upvr (copied, readonly)
				]]
				arg1:reportUserInput("Confirm")
				props_7_upvr.openSettingsPage()
				props_7_upvr.flowComplete()
			end
		end
		module_10.onAction = openSettingsPage
		function module_10.onDismiss() -- Line 619
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: props_7_upvr (copied, readonly)
			]]
			arg1:reportUserInput("Cancel")
			props_7_upvr.cancelPurchase()
			arg1:closeCentralOverlay()
		end
		return Roact_upvr.createElement(VerifiedParentalConsentDialog_upvr, module_10)
	end
	return module_11
end
function any_extend_result1.dispatchCentralOverlayAndRenderModal(arg1, arg2) -- Line 631
	--[[ Upvalues[3]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: RobuxUpsellFlowState_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if not getEnableCentralOverlayForUpsellPrompt_upvr() or not arg2.dispatchCentralOverlay then
	else
		local purchaseState = arg2.purchaseState
		if purchaseState == RobuxUpsellFlowState_upvr.PurchaseModal then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructRobuxUpsellPromptAnimatorObj())
			return
		end
		if purchaseState == RobuxUpsellFlowState_upvr.PurchaseWarning then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructU13ConfirmPromptAnimatorObj())
		end
		if purchaseState == RobuxUpsellFlowState_upvr.Error then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructPurchaseErrorPromptAnimatorObj())
		end
		if purchaseState == RobuxUpsellFlowState_upvr.TwoStepRequired then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructTwoStepRequiredAnimatorObj())
		end
		if purchaseState == RobuxUpsellFlowState_upvr.Success then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructRobuxUpsellSuccessPromptAnimatorObj())
		end
		if purchaseState == RobuxUpsellFlowState_upvr.GenericPurchaseModal then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructInsufficientRobuxAnimatorObj())
		end
		if purchaseState == RobuxUpsellFlowState_upvr.LargeRobuxPurchaseModal then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructInsufficientRobuxProductAnimatorObj())
		end
		if purchaseState == RobuxUpsellFlowState_upvr.LeaveRobloxWarning then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructLeaveRobloxPromptAnimatorObj())
		end
		if purchaseState == RobuxUpsellFlowState_upvr.PurchaseVPCModal then
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, arg1:constructPurchaseVPCPromptAnimatorObj())
		end
	end
end
local getModalShownEventData_upvr = require(Parent.Utility.getModalShownEventData)
function any_extend_result1.reportModalShown(arg1) -- Line 712
	--[[ Upvalues[3]:
		[1]: getModalShownEventData_upvr (readonly)
		[2]: RobuxUpsellFlowState_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local props_6 = arg1.props
	if not arg1.props.onAnalyticEvent then
	else
		props_6.onAnalyticEvent("UserPurchaseFlow", getModalShownEventData_upvr(arg1.state.analyticId, props_6.eventPrefix, "RobuxUpsell", RobuxUpsellFlowState_upvr.toRawValue(props_6.purchaseState), HttpService_upvr:JSONEncode({
			universe_id = tostring(game.GameId);
			item_product_id = tostring(props_6.itemProductId);
			item_name = props_6.itemName;
			price = tostring(props_6.itemRobuxCost);
			user_balance = tostring(props_6.beforeRobuxBalance) or nil;
			package_robux_amount = tostring(props_6.iapRobuxAmount) or nil;
			package_cost = props_6.iapCostStr or nil;
		})))
	end
end
local getUserInputEventData_upvr = require(Parent.Utility.getUserInputEventData)
local Players_upvr = game:GetService("Players")
local default_upvr = require(Parent_3.LoggingProtocol).default
local InGameRobuxUpsellEvent_upvr = require(Parent_2.Events.InGameRobuxUpsellEvent)
function any_extend_result1.reportUserInput(arg1, arg2) -- Line 741
	--[[ Upvalues[6]:
		[1]: getUserInputEventData_upvr (readonly)
		[2]: RobuxUpsellFlowState_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: InGameRobuxUpsellEvent_upvr (readonly)
	]]
	local props_5 = arg1.props
	local var99_result1 = getUserInputEventData_upvr(arg1.state.analyticId, props_5.eventPrefix, "RobuxUpsell", RobuxUpsellFlowState_upvr.toRawValue(props_5.purchaseState), arg2, HttpService_upvr:JSONEncode({
		universe_id = tostring(game.GameId);
		item_product_id = tostring(props_5.itemProductId);
		item_name = props_5.itemName;
		price = tostring(props_5.itemRobuxCost);
		user_balance = tostring(props_5.beforeRobuxBalance) or nil;
		package_robux_amount = tostring(props_5.iapRobuxAmount) or nil;
		package_cost = props_5.iapCostStr or nil;
	}))
	if not game:GetFastFlag("DisableNonSchematizedInGameRobuxUpsellEvent") and arg1.props.onAnalyticEvent then
		props_5.onAnalyticEvent("UserPurchaseFlow", var99_result1)
	end
	if game:GetFastFlag("EnableSchematizedInGameRobuxUpsellEvent2") then
		local var106
		if Players_upvr.LocalPlayer and 0 < Players_upvr.LocalPlayer.UserId then
			var106 = Players_upvr.LocalPlayer.UserId
		end
		local tbl_2 = {
			universe_id = game.GameId;
			price = props_5.itemRobuxCost;
			view_name = var99_result1.view_name;
			purchase_event_type = var99_result1.purchase_event_type;
		}
		tbl_2.input_type = arg2
		tbl_2.user_id = tostring(var106)
		default_upvr:logRobloxTelemetryEvent(InGameRobuxUpsellEvent_upvr, {default_upvr.StandardizedFields.addOsInfo, default_upvr.StandardizedFields.addSessionId}, tbl_2)
	end
end
local LoadingOverlayState_upvr = require(Parent.Generic.LoadingOverlayState)
function any_extend_result1.purchaseStateToOverlayState(arg1, arg2) -- Line 787
	--[[ Upvalues[2]:
		[1]: RobuxUpsellFlowState_upvr (readonly)
		[2]: LoadingOverlayState_upvr (readonly)
	]]
	if arg2 == RobuxUpsellFlowState_upvr.Loading then
		return LoadingOverlayState_upvr.Loading
	end
	if arg2 == RobuxUpsellFlowState_upvr.RobuxPurchasePending then
		return LoadingOverlayState_upvr.PurchasingRobux
	end
	if arg2 == RobuxUpsellFlowState_upvr.RobuxGrantPending then
		return LoadingOverlayState_upvr.WaitingForRobux
	end
	if arg2 == RobuxUpsellFlowState_upvr.ItemPurchasePending then
		return LoadingOverlayState_upvr.PurchasingItem
	end
	if arg2 == RobuxUpsellFlowState_upvr.None then
		return nil
	end
	return LoadingOverlayState_upvr.None
end
local Animator_upvr = require(Parent.Generic.Animator)
function any_extend_result1.getChildrenElements(arg1) -- Line 804
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Animator_upvr (readonly)
	]]
	return {
		RobuxUpsellPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructRobuxUpsellPromptAnimatorObj());
		U13ConfirmPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructU13ConfirmPromptAnimatorObj());
		PurchaseErrorPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructPurchaseErrorPromptAnimatorObj());
		TwoStepRequiredAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructTwoStepRequiredAnimatorObj());
		RobuxUpsellSuccessPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructRobuxUpsellSuccessPromptAnimatorObj());
		InsufficientRobuxAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructInsufficientRobuxAnimatorObj());
		InsufficientRobuxProductAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructInsufficientRobuxProductAnimatorObj());
		PurchaseVPCPromptAnimator = Roact_upvr.createElement(Animator_upvr, arg1:constructPurchaseVPCPromptAnimatorObj());
	}
end
local LoadingOverlay_upvr = require(Parent.Generic.LoadingOverlay)
function any_extend_result1.render(arg1) -- Line 823
	--[[ Upvalues[3]:
		[1]: getEnableCentralOverlayForUpsellPrompt_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LoadingOverlay_upvr (readonly)
	]]
	local props_4 = arg1.props
	local module_9 = {}
	if not getEnableCentralOverlayForUpsellPrompt_upvr() or not props_4.dispatchCentralOverlay then
		module_9 = arg1:getChildrenElements()
	end
	return Roact_upvr.createElement(LoadingOverlay_upvr, {
		shouldAnimate = props_4.shouldAnimate;
		loadingState = arg1:purchaseStateToOverlayState(props_4.purchaseState);
	}, module_9)
end
return any_extend_result1