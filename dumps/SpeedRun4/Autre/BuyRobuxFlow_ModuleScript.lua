-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:11
-- Luau version 6, Types version 3
-- Time taken: 0.005927 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local BuyRobuxFlowState_upvr = require(Parent.BuyRobuxFlowState)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local HttpService_upvr = game:GetService("HttpService")
function any_extend_result1.init(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local tbl_4 = {}
	local var9
	if arg1.props.analyticId then
		var9 = arg1.props.analyticId
	else
		var9 = HttpService_upvr:GenerateGUID(false)
	end
	tbl_4.analyticId = var9
	arg1.state = tbl_4
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 70
	local props_2 = arg1.props
	if arg2.purchaseState ~= props_2.purchaseState then
		arg1:reportModalShown()
		arg1:dispatchAndRenderModal(props_2)
	end
end
local Constants_upvr = require(Parent_3.Generic.Constants)
local PurchaseErrorPrompt_upvr = require(Parent_3.Generic.PurchaseErrorPrompt)
local U13ConfirmPrompt_upvr = require(Parent_3.Generic.U13ConfirmPrompt)
local VerifiedParentalConsentDialog_upvr = require(Parent_2.VerifiedParentalConsentDialog).VerifiedParentalConsentDialog
function any_extend_result1.dispatchAndRenderModal(arg1, arg2) -- Line 80
	--[[ Upvalues[6]:
		[1]: BuyRobuxFlowState_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: PurchaseErrorPrompt_upvr (readonly)
		[5]: U13ConfirmPrompt_upvr (readonly)
		[6]: VerifiedParentalConsentDialog_upvr (readonly)
	]]
	if arg2.purchaseState == BuyRobuxFlowState_upvr.Error then
		local tbl_2 = {}
		local shouldAnimate = arg2.shouldAnimate
		tbl_2.shouldAnimate = shouldAnimate
		if arg2.purchaseState ~= BuyRobuxFlowState_upvr.Error then
			shouldAnimate = false
		else
			shouldAnimate = true
		end
		tbl_2.shouldShow = shouldAnimate
		local function renderChildren() -- Line 85
			--[[ Upvalues[4]:
				[1]: Roact_upvr (copied, readonly)
				[2]: PurchaseErrorPrompt_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: arg1 (readonly)
			]]
			local module_2 = {
				screenSize = arg2.screenSize;
				errorType = arg2.errorType;
				economicRestrictionError = arg2.economicRestrictionError;
				doneControllerIcon = arg2.acceptControllerIcon;
			}
			local function doneActivated() -- Line 94
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				arg1:reportUserInput("Done")
				arg2.flowComplete()
				arg2.dispatchCentralOverlay()
			end
			module_2.doneActivated = doneActivated
			return Roact_upvr.createElement(PurchaseErrorPrompt_upvr, module_2)
		end
		tbl_2.renderChildren = renderChildren
		arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, tbl_2)
	else
		if arg2.purchaseState == BuyRobuxFlowState_upvr.PurchaseWarning then
			local tbl_6 = {}
			renderChildren = arg2.shouldAnimate
			local var19 = renderChildren
			tbl_6.shouldAnimate = var19
			if arg2.purchaseState ~= BuyRobuxFlowState_upvr.PurchaseWarning then
				var19 = false
			else
				var19 = true
			end
			tbl_6.shouldShow = var19
			local function renderChildren() -- Line 109
				--[[ Upvalues[4]:
					[1]: Roact_upvr (copied, readonly)
					[2]: U13ConfirmPrompt_upvr (copied, readonly)
					[3]: arg2 (readonly)
					[4]: arg1 (readonly)
				]]
				return Roact_upvr.createElement(U13ConfirmPrompt_upvr, {
					screenSize = arg2.screenSize;
					modalType = arg2.u13ConfirmType;
					doneActivated = function() -- Line 115, Named "doneActivated"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg2 (copied, readonly)
						]]
						arg1:reportUserInput("Confirm")
						arg2.acceptPurchaseWarning()
						arg2.dispatchCentralOverlay()
					end;
					cancelActivated = function() -- Line 120, Named "cancelActivated"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg2 (copied, readonly)
						]]
						arg1:reportUserInput("Cancel")
						arg2.cancelPurchase()
						arg2.dispatchCentralOverlay()
					end;
				})
			end
			tbl_6.renderChildren = renderChildren
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, tbl_6)
			return
		end
		if arg2.purchaseState == BuyRobuxFlowState_upvr.PurchaseVPC then
			local tbl_5 = {}
			renderChildren = arg2.shouldAnimate
			local var22 = renderChildren
			tbl_5.shouldAnimate = var22
			if arg2.purchaseState ~= BuyRobuxFlowState_upvr.PurchaseVPC then
				var22 = false
			else
				var22 = true
			end
			tbl_5.shouldShow = var22
			function tbl_5.renderChildren() -- Line 135
				--[[ Upvalues[4]:
					[1]: Roact_upvr (copied, readonly)
					[2]: VerifiedParentalConsentDialog_upvr (copied, readonly)
					[3]: arg2 (readonly)
					[4]: arg1 (readonly)
				]]
				return Roact_upvr.createElement(VerifiedParentalConsentDialog_upvr, {
					screenSize = arg2.screenSize;
					isActionable = false;
					modalType = arg2.purchaseVPCType;
					onDismiss = function() -- Line 140, Named "onDismiss"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg2 (copied, readonly)
						]]
						arg1:reportUserInput("Close")
						arg2.flowComplete()
						arg2.dispatchCentralOverlay()
					end;
				})
			end
			arg2.dispatchCentralOverlay(Constants_upvr.CENTRAL_OVERLAY_TYPE_ANIMATOR, tbl_5)
		end
	end
end
local getModalShownEventData_upvr = require(Parent_3.Utility.getModalShownEventData)
function any_extend_result1.reportModalShown(arg1) -- Line 151
	--[[ Upvalues[2]:
		[1]: getModalShownEventData_upvr (readonly)
		[2]: BuyRobuxFlowState_upvr (readonly)
	]]
	local props_4 = arg1.props
	if not arg1.props.onAnalyticEvent then
	else
		props_4.onAnalyticEvent("UserPurchaseFlow", getModalShownEventData_upvr(arg1.state.analyticId, "", "BuyRobux", BuyRobuxFlowState_upvr.toRawValue(props_4.purchaseState)))
	end
end
local getUserInputEventData_upvr = require(Parent_3.Utility.getUserInputEventData)
function any_extend_result1.reportUserInput(arg1, arg2) -- Line 165
	--[[ Upvalues[2]:
		[1]: getUserInputEventData_upvr (readonly)
		[2]: BuyRobuxFlowState_upvr (readonly)
	]]
	local props = arg1.props
	if not arg1.props.onAnalyticEvent then
	else
		props.onAnalyticEvent("UserPurchaseFlow", getUserInputEventData_upvr(arg1.state.analyticId, "", "BuyRobux", BuyRobuxFlowState_upvr.toRawValue(props.purchaseState), arg2))
	end
end
local LoadingOverlayState_upvr = require(Parent_3.Generic.LoadingOverlayState)
function any_extend_result1.purchaseStateToOverlayState(arg1, arg2) -- Line 184
	--[[ Upvalues[2]:
		[1]: BuyRobuxFlowState_upvr (readonly)
		[2]: LoadingOverlayState_upvr (readonly)
	]]
	if arg2 == BuyRobuxFlowState_upvr.Loading then
		return LoadingOverlayState_upvr.Loading
	end
	if arg2 == BuyRobuxFlowState_upvr.RobuxPurchasePending then
		return LoadingOverlayState_upvr.PurchasingRobux
	end
	if arg2 == BuyRobuxFlowState_upvr.RobuxGrantPending then
		return LoadingOverlayState_upvr.WaitingForRobux
	end
	if arg2 == BuyRobuxFlowState_upvr.PurchaseWarning then
		return LoadingOverlayState_upvr.None
	end
	if arg2 == BuyRobuxFlowState_upvr.None then
		return LoadingOverlayState_upvr.None
	end
	return nil
end
local BuyRobuxPage_upvr = require(Parent_3.BuyRobux.BuyRobuxPage)
local LoadingOverlay_upvr = require(Parent_3.Generic.LoadingOverlay)
function any_extend_result1.render(arg1) -- Line 200
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: BuyRobuxPage_upvr (readonly)
		[3]: BuyRobuxFlowState_upvr (readonly)
		[4]: LoadingOverlay_upvr (readonly)
	]]
	local props_3_upvr = arg1.props
	local any_purchaseStateToOverlayState_result1 = arg1:purchaseStateToOverlayState(props_3_upvr.purchaseState)
	local module = {}
	local tbl_3 = {
		showCloseButton = props_3_upvr.showCloseButton;
		showBackground = props_3_upvr.showBackground;
		isConsoleSize = props_3_upvr.isConsoleSize;
		robuxBalance = props_3_upvr.robuxBalance;
		robuxPackages = props_3_upvr.robuxPackages;
	}
	local function robuxPackageActivated(arg1_2) -- Line 219
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: props_3_upvr (readonly)
		]]
		arg1:reportUserInput("Confirm")
		props_3_upvr.purchaseRobux(arg1_2)
	end
	tbl_3.robuxPackageActivated = robuxPackageActivated
	robuxPackageActivated = props_3_upvr.onPageClose
	local var36 = robuxPackageActivated
	tbl_3.onPageClose = var36
	if props_3_upvr.purchaseState ~= BuyRobuxFlowState_upvr.Succeed then
		var36 = false
	else
		var36 = true
	end
	tbl_3.hasNativePurchaseSucceeded = var36
	var36 = props_3_upvr.shouldAnimate
	tbl_3.shouldAnimate = var36
	var36 = arg1.state.analyticId
	tbl_3.analyticId = var36
	var36 = props_3_upvr.onAnalyticEvent
	tbl_3.onAnalyticEvent = var36
	module.BuyRobuxFrame = Roact_upvr.createElement(BuyRobuxPage_upvr, tbl_3)
	local tbl = {}
	var36 = false
	tbl.shouldAnimate = var36
	if any_purchaseStateToOverlayState_result1 == nil then
		var36 = false
	else
		var36 = true
	end
	tbl.showOverlay = var36
	tbl.loadingState = any_purchaseStateToOverlayState_result1
	module.LoadingOverlay = Roact_upvr.createElement(LoadingOverlay_upvr, tbl)
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, module)
end
return any_extend_result1