-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:18
-- Luau version 6, Types version 3
-- Time taken: 0.004589 seconds

local Parent = script.Parent.Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Workspace.Packages.PurchasePromptDeps).Roact
local CoreGui_upvr = game:GetService("CoreGui")
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr = require(Parent.Flags.GetFFlagFixPlayerGuiSelectionBugOnPromptExit)
function any_extend_result1.init(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr (readonly)
	]]
	arg1.state = {
		screenSize = Vector2.new(0, 0);
	}
	function arg1.changeScreenSize(arg1_2) -- Line 43
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.screenSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				screenSize = arg1_2.AbsoluteSize;
			})
		end
	end
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr() then
		arg1.savedSelectedCoreObject = nil
		function arg1.endPurchase() -- Line 52
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:restoreSelectedObject()
			arg1.props.completeRequest()
		end
	end
end
function any_extend_result1.saveSelectedObject(arg1) -- Line 59
	--[[ Upvalues[2]:
		[1]: GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr() then
	else
		arg1.savedSelectedCoreObject = GuiService_upvr.SelectedCoreObject
		GuiService_upvr.SelectedCoreObject = nil
	end
end
function any_extend_result1.restoreSelectedObject(arg1) -- Line 68
	--[[ Upvalues[3]:
		[1]: GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr() then
	elseif arg1.savedSelectedCoreObject == nil or arg1.savedSelectedCoreObject:IsDescendantOf(CoreGui_upvr) then
		GuiService_upvr.SelectedCoreObject = arg1.savedSelectedCoreObject
	end
end
local SubscriptionPurchaseOverlay_upvr = require(script.Parent.SubscriptionPurchaseOverlay)
local ExternalEventConnection_upvr = require(Parent.Components.Connection.ExternalEventConnection)
function any_extend_result1.createElement(arg1) -- Line 79
	--[[ Upvalues[5]:
		[1]: GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: SubscriptionPurchaseOverlay_upvr (readonly)
		[4]: ExternalEventConnection_upvr (readonly)
		[5]: GuiService_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local callback
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr() then
		arg1:saveSelectedObject()
	end
	local var17
	local var18
	local subscriptionPurchaseInfo = props_upvr.subscriptionPurchaseInfo
	if subscriptionPurchaseInfo ~= nil then
		var17 = subscriptionPurchaseInfo.PrimaryPaymentProviderType
		if subscriptionPurchaseInfo.AllPaymentProviderTypes then
			var18 = subscriptionPurchaseInfo.AllPaymentProviderTypes[2]
		else
			var18 = nil
		end
	end
	local module_3 = {}
	callback = 0
	module_3.Size = UDim2.new(1, 0, 1, callback)
	module_3[Roact_upvr.Change.AbsoluteSize] = arg1.changeScreenSize
	module_3.BackgroundTransparency = 1
	local module_2 = {}
	local tbl = {}
	callback = arg1.state.screenSize
	tbl.screenSize = callback
	callback = props_upvr.promptState
	tbl.promptState = callback
	callback = props_upvr.purchaseError
	tbl.purchaseError = callback
	callback = props_upvr.subscriptionId
	tbl.subscriptionId = callback
	callback = props_upvr.subscriptionPurchaseInfo.Name
	tbl.name = callback
	callback = props_upvr.subscriptionPurchaseInfo.SubscriptionProviderId
	tbl.subscriptionProviderId = callback
	callback = props_upvr.subscriptionPurchaseInfo.SubscriptionProviderName
	tbl.subscriptionProviderName = callback
	callback = props_upvr.subscriptionPurchaseInfo.PriceTier
	tbl.priceTier = callback
	callback = props_upvr.subscriptionPurchaseInfo.DisplayPrice
	tbl.displayPrice = callback
	callback = props_upvr.subscriptionPurchaseInfo.DisplaySubscriptionPeriod
	tbl.period = callback
	callback = props_upvr.subscriptionPurchaseInfo.DisclaimerText
	tbl.disclaimerText = callback
	callback = props_upvr.subscriptionPurchaseInfo.Description
	tbl.description = callback
	callback = props_upvr.subscriptionPurchaseInfo.ImageUrl
	tbl.itemIcon = callback
	tbl.primaryPaymentMethod = var17
	tbl.secondaryPaymentMethod = var18
	callback = props_upvr.isGamepadEnabled
	tbl.isGamepadEnabled = callback
	callback = props_upvr.subscriptionPurchaseInfo.IsTestingMode
	tbl.isTestingMode = callback
	callback = props_upvr.promptSubscriptionPurchase
	tbl.promptSubscriptionPurchase = callback
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExit_upvr() then
		callback = arg1.endPurchase
	else
		callback = props_upvr.completeRequest
	end
	tbl.endPurchase = callback
	callback = props_upvr.onAnalyticEvent
	tbl.onAnalyticEvent = callback
	callback = props_upvr.setCurrentToastMessage
	tbl.setCurrentToastMessage = callback
	module_2.Prompt = Roact_upvr.createElement(SubscriptionPurchaseOverlay_upvr, tbl)
	local tbl_2 = {}
	callback = 0
	tbl_2.BackgroundTransparency = callback
	callback = true
	tbl_2.Modal = callback
	callback = UDim2.new(0, 0, 0, 0)
	tbl_2.Size = callback
	module_2.ModalFix = Roact_upvr.createElement("ImageButton", tbl_2)
	local tbl_3 = {}
	callback = GuiService_upvr.MenuOpened
	tbl_3.event = callback
	function callback() -- Line 138
		--[[ Upvalues[1]:
			[1]: props_upvr (readonly)
		]]
		props_upvr.completeRequest()
	end
	tbl_3.callback = callback
	module_2.OnCoreGuiMenuOpened = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_3)
	return Roact_upvr.createElement("Frame", module_3, module_2)
end
local RequestType_upvr = require(Parent.Enums.RequestType)
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local React_upvr = require(CorePackages.Packages.React)
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
function any_extend_result1.render(arg1) -- Line 145
	--[[ Upvalues[8]:
		[1]: RequestType_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CoreScriptsRootProvider_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[6]: FocusRoot_upvr (readonly)
		[7]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[8]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	if arg1.props.requestType ~= RequestType_upvr.Subscription then
		return nil
	end
	local module_4 = {}
	local var33 = React_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var33 = FocusRoot_upvr
	else
		var33 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local tbl_4 = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			isAutoFocusRoot = true;
		}
	else
	end
	module_4.FocusNavigationCoreScriptsWrapper = var33.createElement(var33, {
		selectionGroupName = "SubscriptionPurchaseContainer";
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
	}, {
		SubscriptionPurchaseContainer = arg1:createElement();
	})
	return Roact_upvr.createElement(CoreScriptsRootProvider_upvr, {}, module_4)
end
local launchSubscriptionPurchase_upvr = require(Parent.Thunks.launchSubscriptionPurchase)
local completeRequest_upvr = require(Parent.Thunks.completeRequest)
local sendEvent_upvr = require(Parent.Thunks.sendEvent)
local GetFFlagEnableSubscriptionPurchaseToast_upvr = require(Parent.Flags.GetFFlagEnableSubscriptionPurchaseToast)
local SetCurrentToastMessage_upvr = require(CorePackages.Workspace.Packages.ToastRodux).Actions.SetCurrentToastMessage
return require(Parent.connectToStore)(function(arg1) -- Line 169
	return {
		requestType = arg1.promptRequest.requestType;
		promptState = arg1.promptState;
		purchaseError = arg1.purchaseError;
		subscriptionPurchaseInfo = arg1.subscriptionPurchaseInfo;
		subscriptionId = arg1.promptRequest.id;
		isGamepadEnabled = arg1.gamepadEnabled;
	}
end, function(arg1) -- Line 180
	--[[ Upvalues[5]:
		[1]: launchSubscriptionPurchase_upvr (readonly)
		[2]: completeRequest_upvr (readonly)
		[3]: sendEvent_upvr (readonly)
		[4]: GetFFlagEnableSubscriptionPurchaseToast_upvr (readonly)
		[5]: SetCurrentToastMessage_upvr (readonly)
	]]
	local module = {
		promptSubscriptionPurchase = function(arg1_3) -- Line 182, Named "promptSubscriptionPurchase"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: launchSubscriptionPurchase_upvr (copied, readonly)
			]]
			return arg1(launchSubscriptionPurchase_upvr(arg1_3))
		end;
	}
	local function onAnalyticEvent() -- Line 185, Named "completeRequest"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: completeRequest_upvr (copied, readonly)
		]]
		return arg1(completeRequest_upvr())
	end
	module.completeRequest = onAnalyticEvent
	function onAnalyticEvent(arg1_4, arg2) -- Line 188
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: sendEvent_upvr (copied, readonly)
		]]
		return arg1(sendEvent_upvr(arg1_4, arg2))
	end
	local var47 = onAnalyticEvent
	module.onAnalyticEvent = var47
	if GetFFlagEnableSubscriptionPurchaseToast_upvr() then
		function var47(arg1_5) -- Line 192
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetCurrentToastMessage_upvr (copied, readonly)
			]]
			arg1(SetCurrentToastMessage_upvr(arg1_5))
		end
	else
		var47 = nil
	end
	module.setCurrentToastMessage = var47
	return module
end)(any_extend_result1)