-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:05
-- Luau version 6, Types version 3
-- Time taken: 0.011030 seconds

local Parent = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseFlow_upvr = require(Parent.Enums.PurchaseFlow)
local PromptState_upvr = require(Parent.Enums.PromptState)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local ABTest_upvr = require(Parent.Services.ABTest)
local Analytics_upvr = require(Parent.Services.Analytics)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local Network_upvr = require(Parent.Services.Network)
local Counter_upvr = require(Parent.Enums.Counter)
local sendCounter_upvr = require(Parent.Thunks.sendCounter)
local hasPendingRequest_upvr = require(Parent.Utils.hasPendingRequest)
local module_upvr = {ABTest_upvr, Analytics_upvr, ExternalSettings_upvr, Network_upvr}
local PromptNativeUpsellSuggestions_upvr = require(Parent.Actions.PromptNativeUpsellSuggestions)
local function handleSuccessfulUpsellSuggestions_upvr(arg1, arg2) -- Line 59, Named "handleSuccessfulUpsellSuggestions"
	--[[ Upvalues[4]:
		[1]: hasPendingRequest_upvr (readonly)
		[2]: PromptNativeUpsellSuggestions_upvr (readonly)
		[3]: sendCounter_upvr (readonly)
		[4]: Counter_upvr (readonly)
	]]
	if not hasPendingRequest_upvr(arg1:getState()) then
	else
		arg1:dispatch(PromptNativeUpsellSuggestions_upvr(arg2.products, 1, arg2.virtualItemBadgeType))
		arg1:dispatch(sendCounter_upvr(Counter_upvr.UpsellModalShown))
	end
end
local PromptNativeUpsell_upvr = require(Parent.Actions.PromptNativeUpsell)
local function handleSuccessfulUpsellProduct_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 68, Named "handleSuccessfulUpsellProduct"
	--[[ Upvalues[4]:
		[1]: hasPendingRequest_upvr (readonly)
		[2]: PromptNativeUpsell_upvr (readonly)
		[3]: sendCounter_upvr (readonly)
		[4]: Counter_upvr (readonly)
	]]
	if not hasPendingRequest_upvr(arg1:getState()) then
	else
		arg2.signalProductPurchaseUpsellShown(arg3.id, arg4.requestType, arg3.providerId)
		arg1:dispatch(PromptNativeUpsell_upvr(arg3.providerId, arg3.id, arg3.robuxAmount, arg3.robuxAmountBeforeBonus, arg3.price, arg5, arg6, arg7))
		arg1:dispatch(sendCounter_upvr(Counter_upvr.UpsellModalShown))
	end
end
local function handleFailedUpsellProduct_upvr(arg1, arg2) -- Line 93, Named "handleFailedUpsellProduct"
	--[[ Upvalues[8]:
		[1]: hasPendingRequest_upvr (readonly)
		[2]: PurchaseFlow_upvr (readonly)
		[3]: SetPromptState_upvr (readonly)
		[4]: PromptState_upvr (readonly)
		[5]: sendCounter_upvr (readonly)
		[6]: Counter_upvr (readonly)
		[7]: ErrorOccurred_upvr (readonly)
		[8]: PurchaseError_upvr (readonly)
	]]
	if not hasPendingRequest_upvr(arg1:getState()) then
	else
		if arg1:getState().purchaseFlow == PurchaseFlow_upvr.LargeRobuxUpsell then
			arg1:dispatch(SetPromptState_upvr(PromptState_upvr.LargeRobuxUpsell))
			arg1:dispatch(sendCounter_upvr(Counter_upvr.UpsellModalShown))
			return
		end
		arg1:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.NotEnoughRobuxXbox))
		arg1:dispatch(sendCounter_upvr(Counter_upvr.UpsellGenericModalShown))
	end
end
local Thunk_upvr = require(Parent.Thunk)
local ProductInfoReceived_upvr = require(Parent.Actions.ProductInfoReceived)
local AccountInfoReceived_upvr = require(Parent.Actions.AccountInfoReceived)
local BalanceInfoRecieved_upvr = require(Parent.Actions.BalanceInfoRecieved)
local meetsPrerequisites_upvr = require(Parent.Utils.meetsPrerequisites)
local CompleteRequest_upvr = require(Parent.Actions.CompleteRequest)
local getPlayerProductInfoPrice_upvr = require(Parent.Utils.getPlayerProductInfoPrice)
local UserInputService_upvr = game:GetService("UserInputService")
local DesktopUpsellExperiment_upvr = require(Parent.Utils.DesktopUpsellExperiment)
local getPaymentPlatform_upvr = require(Parent.Utils.getPaymentPlatform)
local PaymentPlatform_upvr = require(Parent.Enums.PaymentPlatform)
local SetPurchaseFlow_upvr = require(Parent.Actions.SetPurchaseFlow)
local LargerRobuxUpsellTest_upvr = require(Parent.Flags.LargerRobuxUpsellTest)
local GetFStringLargerRobuxUpsellIxpLayer_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local FFlagEnableUpsellSuggestionsAPI_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUpsellSuggestionsAPI
local FFlagEnableUpsellSuggestionsAnalyticsId_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUpsellSuggestionsAnalyticsId
local getRobuxUpsellSuggestions_upvr = require(Parent.Network.getRobuxUpsellSuggestions)
local getRobuxUpsellProduct_upvr = require(Parent.Network.getRobuxUpsellProduct)
local RequestType_upvr = require(Parent.Enums.RequestType)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 109, Named "resolvePromptState"
	--[[ Upvalues[35]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: ABTest_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: ExternalSettings_upvr (readonly)
		[6]: Network_upvr (readonly)
		[7]: ProductInfoReceived_upvr (readonly)
		[8]: AccountInfoReceived_upvr (readonly)
		[9]: BalanceInfoRecieved_upvr (readonly)
		[10]: meetsPrerequisites_upvr (readonly)
		[11]: PurchaseError_upvr (readonly)
		[12]: CompleteRequest_upvr (readonly)
		[13]: ErrorOccurred_upvr (readonly)
		[14]: getPlayerProductInfoPrice_upvr (readonly)
		[15]: UserInputService_upvr (readonly)
		[16]: DesktopUpsellExperiment_upvr (readonly)
		[17]: getPaymentPlatform_upvr (readonly)
		[18]: PaymentPlatform_upvr (readonly)
		[19]: SetPurchaseFlow_upvr (readonly)
		[20]: PurchaseFlow_upvr (readonly)
		[21]: LargerRobuxUpsellTest_upvr (readonly)
		[22]: GetFStringLargerRobuxUpsellIxpLayer_upvr (readonly)
		[23]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		[24]: FFlagEnableUpsellSuggestionsAnalyticsId_upvr (readonly)
		[25]: getRobuxUpsellSuggestions_upvr (readonly)
		[26]: handleSuccessfulUpsellSuggestions_upvr (readonly)
		[27]: handleFailedUpsellProduct_upvr (readonly)
		[28]: getRobuxUpsellProduct_upvr (readonly)
		[29]: hasPendingRequest_upvr (readonly)
		[30]: handleSuccessfulUpsellProduct_upvr (readonly)
		[31]: SetPromptState_upvr (readonly)
		[32]: PromptState_upvr (readonly)
		[33]: sendCounter_upvr (readonly)
		[34]: Counter_upvr (readonly)
		[35]: RequestType_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 110
		--[[ Upvalues[39]:
			[1]: ABTest_upvr (copied, readonly)
			[2]: Analytics_upvr (copied, readonly)
			[3]: ExternalSettings_upvr (copied, readonly)
			[4]: Network_upvr (copied, readonly)
			[5]: ProductInfoReceived_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: AccountInfoReceived_upvr (copied, readonly)
			[8]: arg2 (readonly)
			[9]: BalanceInfoRecieved_upvr (copied, readonly)
			[10]: arg3 (readonly)
			[11]: arg5 (readonly)
			[12]: meetsPrerequisites_upvr (copied, readonly)
			[13]: arg4 (readonly)
			[14]: arg6 (readonly)
			[15]: PurchaseError_upvr (copied, readonly)
			[16]: CompleteRequest_upvr (copied, readonly)
			[17]: ErrorOccurred_upvr (copied, readonly)
			[18]: getPlayerProductInfoPrice_upvr (copied, readonly)
			[19]: UserInputService_upvr (copied, readonly)
			[20]: DesktopUpsellExperiment_upvr (copied, readonly)
			[21]: getPaymentPlatform_upvr (copied, readonly)
			[22]: PaymentPlatform_upvr (copied, readonly)
			[23]: SetPurchaseFlow_upvr (copied, readonly)
			[24]: PurchaseFlow_upvr (copied, readonly)
			[25]: LargerRobuxUpsellTest_upvr (copied, readonly)
			[26]: GetFStringLargerRobuxUpsellIxpLayer_upvr (copied, readonly)
			[27]: FFlagEnableUpsellSuggestionsAPI_upvr (copied, readonly)
			[28]: FFlagEnableUpsellSuggestionsAnalyticsId_upvr (copied, readonly)
			[29]: getRobuxUpsellSuggestions_upvr (copied, readonly)
			[30]: handleSuccessfulUpsellSuggestions_upvr (copied, readonly)
			[31]: handleFailedUpsellProduct_upvr (copied, readonly)
			[32]: getRobuxUpsellProduct_upvr (copied, readonly)
			[33]: hasPendingRequest_upvr (copied, readonly)
			[34]: handleSuccessfulUpsellProduct_upvr (copied, readonly)
			[35]: SetPromptState_upvr (copied, readonly)
			[36]: PromptState_upvr (copied, readonly)
			[37]: sendCounter_upvr (copied, readonly)
			[38]: Counter_upvr (copied, readonly)
			[39]: RequestType_upvr (copied, readonly)
		]]
		local any_getState_result1_upvr = arg1_2:getState()
		local var59 = arg2_2[ABTest_upvr]
		local var60_upvr = arg2_2[Analytics_upvr]
		local var61 = arg2_2[ExternalSettings_upvr]
		arg1_2:dispatch(ProductInfoReceived_upvr(arg1))
		arg1_2:dispatch(AccountInfoReceived_upvr(arg2))
		arg1_2:dispatch(BalanceInfoRecieved_upvr(arg3))
		local var62
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var62 = not arg5
			return var62
		end
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var62 = var61.getLuaUseThirdPartyPermissions()
			return var62
		end
		if not var61.getFlagBypassThirdPartySettingForRobloxPurchase() or INLINED_4() or not INLINED_5() then
			var62 = var61.getFlagRestrictSales2()
		end
		local var22_result1, meetsPrerequisites_upvr_result2_2 = meetsPrerequisites_upvr(arg1, arg4, var62, var61, arg6)
		if not var22_result1 then
			if not var61.isStudio() and meetsPrerequisites_upvr_result2_2 == PurchaseError_upvr.ThirdPartyDisabled then
				return arg1_2:dispatch(CompleteRequest_upvr())
			end
			return arg1_2:dispatch(ErrorOccurred_upvr(meetsPrerequisites_upvr_result2_2))
		end
		local robux = arg3.robux
		local var24_result1_2 = getPlayerProductInfoPrice_upvr(arg1, arg2.isPremium)
		if arg6 ~= nil then
			var24_result1_2 = arg6
		end
		DesktopUpsellExperiment_upvr.determineVariant(arg1_2)
		if robux < var24_result1_2 then
			DesktopUpsellExperiment_upvr.logExposure()
			if var61.getFFlagDisableRobuxUpsell() then
				return arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.NotEnoughRobuxNoUpsell))
			end
			local var27_result1_2 = getPaymentPlatform_upvr(UserInputService_upvr:GetPlatform())
			if var27_result1_2 ~= PaymentPlatform_upvr.Web then
				arg1_2:dispatch(SetPurchaseFlow_upvr(PurchaseFlow_upvr.RobuxUpsellV2))
			end
			if LargerRobuxUpsellTest_upvr.isEnabled() then
				local GetFStringLargerRobuxUpsellIxpLayer_upvr_result1_2 = GetFStringLargerRobuxUpsellIxpLayer_upvr()
				local any_getLayerData_result1_2 = var59.getLayerData(GetFStringLargerRobuxUpsellIxpLayer_upvr_result1_2)
				if any_getLayerData_result1_2 then
					var59.logUserLayerExposure(GetFStringLargerRobuxUpsellIxpLayer_upvr_result1_2)
					if LargerRobuxUpsellTest_upvr.isUserEnrolled(any_getLayerData_result1_2) then
						arg1_2:dispatch(SetPurchaseFlow_upvr(PurchaseFlow_upvr.LargeRobuxUpsell))
					end
				end
			end
			local GameId_upvr = game.GameId
			local ProductId_upvr_2 = arg1.ProductId
			local DisplayName_upvr = arg1.DisplayName
			local var73
			if var73 then
				local function INLINED_6() -- Internal function, doesn't exist in bytecode
					var73 = any_getState_result1_upvr.purchaseFlowUUID
					return var73
				end
				if not FFlagEnableUpsellSuggestionsAnalyticsId_upvr or not INLINED_6() then
					var73 = nil
				end
				return getRobuxUpsellSuggestions_upvr(var24_result1_2, robux, var27_result1_2, ProductId_upvr_2, DisplayName_upvr, GameId_upvr, var73):andThen(function(arg1_5) -- Line 182
					--[[ Upvalues[2]:
						[1]: handleSuccessfulUpsellSuggestions_upvr (copied, readonly)
						[2]: arg1_2 (readonly)
					]]
					return handleSuccessfulUpsellSuggestions_upvr(arg1_2, arg1_5)
				end, function() -- Line 186
					--[[ Upvalues[3]:
						[1]: handleFailedUpsellProduct_upvr (copied, readonly)
						[2]: arg1_2 (readonly)
						[3]: any_getState_result1_upvr (readonly)
					]]
					return handleFailedUpsellProduct_upvr(arg1_2, any_getState_result1_upvr)
				end)
			end
			return getRobuxUpsellProduct_upvr(arg2_2[Network_upvr], var24_result1_2, robux, var27_result1_2, ProductId_upvr_2, DisplayName_upvr, GameId_upvr):andThen(function(arg1_6) -- Line 194
				--[[ Upvalues[8]:
					[1]: hasPendingRequest_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: handleSuccessfulUpsellProduct_upvr (copied, readonly)
					[4]: var60_upvr (readonly)
					[5]: any_getState_result1_upvr (readonly)
					[6]: ProductId_upvr_2 (readonly)
					[7]: DisplayName_upvr (readonly)
					[8]: GameId_upvr (readonly)
				]]
				if not hasPendingRequest_upvr(arg1_2:getState()) then return end
				return handleSuccessfulUpsellProduct_upvr(arg1_2, var60_upvr, arg1_6, any_getState_result1_upvr, ProductId_upvr_2, DisplayName_upvr, GameId_upvr)
			end, function() -- Line 202
				--[[ Upvalues[9]:
					[1]: hasPendingRequest_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: PurchaseFlow_upvr (copied, readonly)
					[4]: SetPromptState_upvr (copied, readonly)
					[5]: PromptState_upvr (copied, readonly)
					[6]: sendCounter_upvr (copied, readonly)
					[7]: Counter_upvr (copied, readonly)
					[8]: ErrorOccurred_upvr (copied, readonly)
					[9]: PurchaseError_upvr (copied, readonly)
				]]
				if not hasPendingRequest_upvr(arg1_2:getState()) then
				else
					if arg1_2:getState().purchaseFlow == PurchaseFlow_upvr.LargeRobuxUpsell then
						arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.LargeRobuxUpsell))
						arg1_2:dispatch(sendCounter_upvr(Counter_upvr.UpsellModalShown))
						return
					end
					arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.NotEnoughRobuxXbox))
					arg1_2:dispatch(sendCounter_upvr(Counter_upvr.UpsellGenericModalShown))
				end
			end)
		end
		GameId_upvr = RequestType_upvr
		if any_getState_result1_upvr.requestType ~= GameId_upvr.AvatarCreationFee then
			GameId_upvr = arg1
			GameId_upvr = any_getState_result1_upvr.requestType
			var60_upvr.signalProductPurchaseShown(GameId_upvr.productId, GameId_upvr)
		end
		GameId_upvr = SetPromptState_upvr
		DisplayName_upvr = PromptState_upvr
		ProductId_upvr_2 = DisplayName_upvr.PromptPurchase
		GameId_upvr = GameId_upvr(ProductId_upvr_2)
		return arg1_2:dispatch(GameId_upvr)
	end)
end