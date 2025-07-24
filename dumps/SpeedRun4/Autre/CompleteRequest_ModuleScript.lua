-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:55
-- Luau version 6, Types version 3
-- Time taken: 0.005431 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local PublicBindables_upvr = require(Parent.Services.PublicBindables)
local module_upvr = {Analytics_upvr, PublicBindables_upvr}
local Thunk_upvr = require(Parent.Thunk)
local SelectedRobuxPackage_upvr = require(Parent.Utils.SelectedRobuxPackage)
local PromptState_upvr = require(Parent.Enums.PromptState)
local sendCounter_upvr = require(Parent.Thunks.sendCounter)
local Counter_upvr = require(Parent.Enums.Counter)
local RequestType_upvr = require(Parent.Enums.RequestType)
local Players_upvr = game:GetService("Players")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local CompleteRequest_upvr = require(Parent.Actions.CompleteRequest)
return function() -- Line 28, Named "completeRequest"
	--[[ Upvalues[13]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: SelectedRobuxPackage_upvr (readonly)
		[5]: PromptState_upvr (readonly)
		[6]: sendCounter_upvr (readonly)
		[7]: Counter_upvr (readonly)
		[8]: RequestType_upvr (readonly)
		[9]: Players_upvr (readonly)
		[10]: MarketplaceService_upvr (readonly)
		[11]: PurchaseError_upvr (readonly)
		[12]: PublicBindables_upvr (readonly)
		[13]: CompleteRequest_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 29
		--[[ Upvalues[11]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: SelectedRobuxPackage_upvr (copied, readonly)
			[3]: PromptState_upvr (copied, readonly)
			[4]: sendCounter_upvr (copied, readonly)
			[5]: Counter_upvr (copied, readonly)
			[6]: RequestType_upvr (copied, readonly)
			[7]: Players_upvr (copied, readonly)
			[8]: MarketplaceService_upvr (copied, readonly)
			[9]: PurchaseError_upvr (copied, readonly)
			[10]: PublicBindables_upvr (copied, readonly)
			[11]: CompleteRequest_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 89 start (CF ANALYSIS FAILED)
		local var16 = arg2[Analytics_upvr]
		local any_getState_result1 = arg1:getState()
		local requestType = any_getState_result1.promptRequest.requestType
		local hasCompletedPurchase = any_getState_result1.hasCompletedPurchase
		local any_getRobuxProductId_result1 = SelectedRobuxPackage_upvr.getRobuxProductId(any_getState_result1)
		local var21
		if var21 then
			var21 = any_getState_result1.productInfo.productId
		end
		if any_getState_result1.promptState == PromptState_upvr.U13PaymentModal then
			var16.signalScaryModalCanceled(var21, "U13PaymentModal", any_getRobuxProductId_result1)
			-- KONSTANTWARNING: GOTO [84] #58
		end
		-- KONSTANTERROR: [0] 1. Error Block 89 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [43] 29. Error Block 90 start (CF ANALYSIS FAILED)
		if any_getState_result1.promptState == PromptState_upvr.U13MonthlyThreshold1Modal then
			var16.signalScaryModalCanceled(var21, "U13MonthlyThreshold1Modal", any_getRobuxProductId_result1)
		elseif any_getState_result1.promptState == PromptState_upvr.U13MonthlyThreshold2Modal then
			var16.signalScaryModalCanceled(var21, "U13MonthlyThreshold2Modal", any_getRobuxProductId_result1)
		elseif any_getState_result1.promptState == PromptState_upvr.ParentalConsentWarningPaymentModal13To17 then
			var16.signalScaryModalCanceled(var21, "ParentalConsentWarningPaymentModal13To17", any_getRobuxProductId_result1)
		end
		if any_getState_result1.promptState == PromptState_upvr.PurchaseComplete then
			arg1:dispatch(sendCounter_upvr(Counter_upvr.Success))
		elseif any_getState_result1.promptState == PromptState_upvr.Error then
			arg1:dispatch(sendCounter_upvr(Counter_upvr.Failed))
		else
			arg1:dispatch(sendCounter_upvr(Counter_upvr.Cancelled))
		end
		if requestType == RequestType_upvr.Product then
			MarketplaceService_upvr:SignalPromptProductPurchaseFinished(Players_upvr.LocalPlayer.UserId, any_getState_result1.promptRequest.id, hasCompletedPurchase)
		elseif requestType == RequestType_upvr.GamePass then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			MarketplaceService_upvr:SignalPromptGamePassPurchaseFinished(Players_upvr.LocalPlayer, any_getState_result1.promptRequest.id, hasCompletedPurchase)
		elseif requestType == RequestType_upvr.Bundle then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			MarketplaceService_upvr:SignalPromptBundlePurchaseFinished(Players_upvr.LocalPlayer, any_getState_result1.promptRequest.id, hasCompletedPurchase)
		elseif requestType == RequestType_upvr.Asset then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			MarketplaceService_upvr:SignalPromptPurchaseFinished(Players_upvr.LocalPlayer, any_getState_result1.promptRequest.id, hasCompletedPurchase)
			local assetTypeId_upvr = any_getState_result1.productInfo.assetTypeId
			if hasCompletedPurchase and assetTypeId_upvr then
				local function var23() -- Line 72
					--[[ Upvalues[3]:
						[1]: MarketplaceService_upvr (copied, readonly)
						[2]: Players_upvr (copied, readonly)
						[3]: assetTypeId_upvr (readonly)
					]]
					MarketplaceService_upvr:SignalAssetTypePurchased(Players_upvr.LocalPlayer, assetTypeId_upvr)
				end
				pcall(var23)
				-- KONSTANTWARNING: GOTO [238] #170
			end
		else
			assetTypeId_upvr = RequestType_upvr.Premium
			if requestType == assetTypeId_upvr then
				assetTypeId_upvr = MarketplaceService_upvr
				var23 = hasCompletedPurchase
				local var24 = var23
				if not var24 then
					if any_getState_result1.purchaseError ~= PurchaseError_upvr.AlreadyPremium then
						var24 = false
					else
						var24 = true
					end
				end
				assetTypeId_upvr = assetTypeId_upvr:SignalPromptPremiumPurchaseFinished
				assetTypeId_upvr(var24)
			else
				assetTypeId_upvr = RequestType_upvr.Subscription
				if requestType == assetTypeId_upvr then
					assetTypeId_upvr = MarketplaceService_upvr
					local var25 = hasCompletedPurchase
					if not var25 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if any_getState_result1.purchaseError ~= PurchaseError_upvr.AlreadySubscribed then
							var25 = false
						else
							var25 = true
						end
					end
					assetTypeId_upvr = assetTypeId_upvr:SignalPromptSubscriptionPurchaseFinished
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					assetTypeId_upvr(any_getState_result1.promptRequest.id, var25)
				end
			end
		end
		assetTypeId_upvr = arg2[PublicBindables_upvr]
		local any_getWindowStateChangedBindable_result1 = assetTypeId_upvr.getWindowStateChangedBindable()
		if any_getWindowStateChangedBindable_result1 then
			any_getWindowStateChangedBindable_result1:Fire({
				isShown = false;
				hasCompletedPurchase = hasCompletedPurchase;
			})
		end
		do
			return arg1:dispatch(CompleteRequest_upvr())
		end
		-- KONSTANTERROR: [43] 29. Error Block 90 end (CF ANALYSIS FAILED)
	end)
end