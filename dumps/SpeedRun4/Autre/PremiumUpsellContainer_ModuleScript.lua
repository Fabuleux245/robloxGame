-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:14
-- Luau version 6, Types version 3
-- Time taken: 0.004446 seconds

local Parent = script.Parent.Parent.Parent
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Workspace.Packages.PurchasePromptDeps).Roact
local CoreGui_upvr = game:GetService("CoreGui")
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr = require(Parent.Flags.GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium)
function any_extend_result1.init(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr (readonly)
	]]
	arg1.state = {
		screenSize = Vector2.new(0, 0);
	}
	function arg1.changeScreenSize(arg1_2) -- Line 45
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.screenSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				screenSize = arg1_2.AbsoluteSize;
			})
		end
	end
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr() then
		arg1.savedSelectedCoreObject = nil
		function arg1.endPurchase() -- Line 54
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:restoreSelectedObject()
			arg1.props.completeRequest()
		end
	end
end
function any_extend_result1.saveSelectedObject(arg1) -- Line 61
	--[[ Upvalues[2]:
		[1]: GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr() then
	else
		arg1.savedSelectedCoreObject = GuiService_upvr.SelectedCoreObject
		GuiService_upvr.SelectedCoreObject = nil
	end
end
function any_extend_result1.restoreSelectedObject(arg1) -- Line 70
	--[[ Upvalues[3]:
		[1]: GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr() then
	elseif arg1.savedSelectedCoreObject == nil or arg1.savedSelectedCoreObject:IsDescendantOf(CoreGui_upvr) then
		GuiService_upvr.SelectedCoreObject = arg1.savedSelectedCoreObject
	end
end
local RequestType_upvr = require(Parent.Enums.RequestType)
local PremiumUpsellOverlay_upvr = require(script.Parent.PremiumUpsellOverlay)
local ExternalEventConnection_upvr = require(Parent.Components.Connection.ExternalEventConnection)
function any_extend_result1.createElement(arg1) -- Line 81
	--[[ Upvalues[6]:
		[1]: RequestType_upvr (readonly)
		[2]: GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: PremiumUpsellOverlay_upvr (readonly)
		[5]: ExternalEventConnection_upvr (readonly)
		[6]: GuiService_upvr (readonly)
	]]
	local props_upvr = arg1.props
	if props_upvr.requestType ~= RequestType_upvr.Premium then
		return nil
	end
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr() then
		arg1:saveSelectedObject()
	end
	local module_2 = {}
	local tbl = {
		screenSize = arg1.state.screenSize;
		promptState = props_upvr.promptState;
		purchaseError = props_upvr.purchaseError;
		economicRestrictionError = props_upvr.economicRestrictionError;
		currencySymbol = props_upvr.premiumProductInfo.currencySymbol;
		robuxPrice = props_upvr.premiumProductInfo.price;
		robuxAmount = props_upvr.premiumProductInfo.robuxAmount;
		isGamepadEnabled = props_upvr.isGamepadEnabled;
		promptPremiumPurchase = props_upvr.promptPremiumPurchase;
	}
	local dispatchPremiumPrecheck = props_upvr.dispatchPremiumPrecheck
	tbl.dispatchPremiumPrecheck = dispatchPremiumPrecheck
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium_upvr() then
		dispatchPremiumPrecheck = arg1.endPurchase
	else
		dispatchPremiumPrecheck = props_upvr.completeRequest
	end
	tbl.endPurchase = dispatchPremiumPrecheck
	tbl.onAnalyticEvent = props_upvr.onAnalyticEvent
	module_2.Prompt = Roact_upvr.createElement(PremiumUpsellOverlay_upvr, tbl)
	module_2.ModalFix = Roact_upvr.createElement("ImageButton", {
		BackgroundTransparency = 0;
		Modal = true;
		Size = UDim2.new(0, 0, 0, 0);
	})
	module_2.OnCoreGuiMenuOpened = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = GuiService_upvr.MenuOpened;
		callback = function() -- Line 127, Named "callback"
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
	}, module_2)
end
local GetFFLagUseCoreScriptsRootProviderForUpsellModal_upvr = require(Parent.Flags.GetFFLagUseCoreScriptsRootProviderForUpsellModal)
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local React_upvr = require(CorePackages.Packages.React)
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
function any_extend_result1.render(arg1) -- Line 134
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
		local module = {}
		local var31 = React_upvr
		if FFlagCSFocusWrapperRefactor_upvr then
			var31 = FocusRoot_upvr
		else
			var31 = FocusNavigationCoreScriptsWrapper_upvr
		end
		if FFlagCSFocusWrapperRefactor_upvr then
			local tbl_2 = {
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
				isIsolated = true;
				isAutoFocusRoot = true;
			}
		else
		end
		module.FocusNavigationCoreScriptsWrapper = var31.createElement(var31, {
			selectionGroupName = "PremiumUpsellContainer";
			focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
		}, {
			PremiumUpsellContainer = arg1:createElement();
		})
		return Roact_upvr.createElement(CoreScriptsRootProvider_upvr, {}, module)
	end
	return arg1:createElement()
end
local launchPremiumUpsell_upvr = require(Parent.Thunks.launchPremiumUpsell)
local completeRequest_upvr = require(Parent.Thunks.completeRequest)
local sendEvent_upvr = require(Parent.Thunks.sendEvent)
local initiatePremiumPrecheck_upvr = require(Parent.Thunks.initiatePremiumPrecheck)
return require(Parent.connectToStore)(function(arg1) -- Line 159
	return {
		requestType = arg1.promptRequest.requestType;
		promptState = arg1.promptState;
		purchaseError = arg1.purchaseError;
		economicRestrictionError = arg1.economicRestrictionError;
		premiumProductInfo = arg1.premiumProductInfo;
		isGamepadEnabled = arg1.gamepadEnabled;
	}
end, function(arg1) -- Line 171
	--[[ Upvalues[4]:
		[1]: launchPremiumUpsell_upvr (readonly)
		[2]: completeRequest_upvr (readonly)
		[3]: sendEvent_upvr (readonly)
		[4]: initiatePremiumPrecheck_upvr (readonly)
	]]
	return {
		promptPremiumPurchase = function() -- Line 173, Named "promptPremiumPurchase"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: launchPremiumUpsell_upvr (copied, readonly)
			]]
			return arg1(launchPremiumUpsell_upvr())
		end;
		completeRequest = function() -- Line 176, Named "completeRequest"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: completeRequest_upvr (copied, readonly)
			]]
			return arg1(completeRequest_upvr())
		end;
		onAnalyticEvent = function(arg1_3, arg2) -- Line 179, Named "onAnalyticEvent"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: sendEvent_upvr (copied, readonly)
			]]
			return arg1(sendEvent_upvr(arg1_3, arg2))
		end;
		dispatchPremiumPrecheck = function() -- Line 182, Named "dispatchPremiumPrecheck"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: initiatePremiumPrecheck_upvr (copied, readonly)
			]]
			return arg1(initiatePremiumPrecheck_upvr())
		end;
	}
end)(any_extend_result1)