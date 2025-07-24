-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:04
-- Luau version 6, Types version 3
-- Time taken: 0.006160 seconds

local Parent = script.Parent.Parent
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local Analytics_upvr = require(Parent.Services.Analytics)
local Network_upvr = require(Parent.Services.Network)
local FFlagEnableBundlePurchaseChecks_upvr = require(Parent.Parent.Flags.FFlagEnableBundlePurchaseChecks)
local function _(arg1, arg2) -- Line 45, Named "getBundlePriceFromProductInfo"
	if arg1 and arg1.product ~= nil then
		if arg2 and arg1.product.premiumPricing ~= nil then
			return arg1.product.premiumPricing.premiumPriceInRobux or 0
		end
		return arg1.product.priceInRobux or 0
	end
	return 0
end
local function meetsBundlePrerequisitesV2_upvr(arg1, arg2, arg3, arg4) -- Line 58, Named "meetsBundlePrerequisitesV2"
	--[[ Upvalues[1]:
		[1]: PurchaseError_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local collectibleItemDetail_2 = arg2.collectibleItemDetail
	local var10 = collectibleItemDetail_2
	if var10 then
		var10 = false
		if collectibleItemDetail_2.collectibleItemId ~= nil then
			if collectibleItemDetail_2.collectibleItemId == "" then
				var10 = false
			else
				var10 = true
			end
		end
	end
	if collectibleItemDetail_2 then
		if collectibleItemDetail_2.collectibleItemType ~= "Limited" then
		else
		end
	end
	if var10 then
		if not true and arg1.owned then
			do
				return false, PurchaseError_upvr.AlreadyOwn
			end
			-- KONSTANTWARNING: GOTO [40] #31
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg1.owned then
			return false, PurchaseError_upvr.AlreadyOwn
		end
	end
	if not arg1.isPurchasable then
		return false, PurchaseError_upvr.NotForSale
	end
	if arg4 ~= nil and arg3.robux ~= nil and arg3.robux < arg4 then
		return false, PurchaseError_upvr.NotEnoughRobux
	end
	return true, nil
end
local Players_upvr = game:GetService("Players")
local function meetsBundlePrerequisites_upvr(arg1, arg2, arg3, arg4) -- Line 95, Named "meetsBundlePrerequisites"
	--[[ Upvalues[3]:
		[1]: FFlagEnableBundlePurchaseChecks_upvr (readonly)
		[2]: PurchaseError_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local collectibleItemDetail_3 = arg1.collectibleItemDetail
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 52 start (CF ANALYSIS FAILED)
	if collectibleItemDetail_3.collectibleItemId == "" then
	else
	end
	-- KONSTANTERROR: [9] 7. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 47 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 47 end (CF ANALYSIS FAILED)
end
local module_upvr = {Analytics_upvr, Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local BundleProductInfoReceived_upvr = require(Parent.Actions.BundleProductInfoReceived)
local AccountInfoReceived_upvr = require(Parent.Actions.AccountInfoReceived)
local BalanceInfoRecieved_upvr = require(Parent.Actions.BalanceInfoRecieved)
local GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr = require(Parent.Flags.GetFFlagUseCatalogItemDetailsToResolveBundlePurchase)
local UserInputService_upvr = game:GetService("UserInputService")
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local RunService_upvr = game:GetService("RunService")
local GetFFlagRespectBalanceInfoForBundleUpsellInStudio_upvr = require(Parent.Flags.GetFFlagRespectBalanceInfoForBundleUpsellInStudio)
local GetFFlagEnableInsufficientRobuxForBundleUpsellFix_upvr = require(Parent.Flags.GetFFlagEnableInsufficientRobuxForBundleUpsellFix)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
local getPaymentPlatform_upvr = require(Parent.Utils.getPaymentPlatform)
local FFlagEnableUpsellSuggestionsAPI_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).FFlagEnableUpsellSuggestionsAPI
local getRobuxUpsellSuggestions_upvr = require(Parent.Network.getRobuxUpsellSuggestions)
local PromptNativeUpsellSuggestions_upvr = require(Parent.Actions.PromptNativeUpsellSuggestions)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local getRobuxUpsellProduct_upvr = require(Parent.Network.getRobuxUpsellProduct)
local PromptNativeUpsell_upvr = require(Parent.Actions.PromptNativeUpsell)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 160, Named "resolveBundlePromptState"
	--[[ Upvalues[27]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: Network_upvr (readonly)
		[5]: BundleProductInfoReceived_upvr (readonly)
		[6]: AccountInfoReceived_upvr (readonly)
		[7]: BalanceInfoRecieved_upvr (readonly)
		[8]: FFlagEnableBundlePurchaseChecks_upvr (readonly)
		[9]: GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr (readonly)
		[10]: meetsBundlePrerequisitesV2_upvr (readonly)
		[11]: meetsBundlePrerequisites_upvr (readonly)
		[12]: UserInputService_upvr (readonly)
		[13]: getUpsellFlow_upvr (readonly)
		[14]: PurchaseError_upvr (readonly)
		[15]: RunService_upvr (readonly)
		[16]: GetFFlagRespectBalanceInfoForBundleUpsellInStudio_upvr (readonly)
		[17]: GetFFlagEnableInsufficientRobuxForBundleUpsellFix_upvr (readonly)
		[18]: UpsellFlow_upvr (readonly)
		[19]: SetPromptState_upvr (readonly)
		[20]: PromptState_upvr (readonly)
		[21]: getPaymentPlatform_upvr (readonly)
		[22]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		[23]: getRobuxUpsellSuggestions_upvr (readonly)
		[24]: PromptNativeUpsellSuggestions_upvr (readonly)
		[25]: ErrorOccurred_upvr (readonly)
		[26]: getRobuxUpsellProduct_upvr (readonly)
		[27]: PromptNativeUpsell_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 168
		--[[ Upvalues[31]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: Network_upvr (copied, readonly)
			[3]: BundleProductInfoReceived_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: AccountInfoReceived_upvr (copied, readonly)
			[6]: arg3 (readonly)
			[7]: BalanceInfoRecieved_upvr (copied, readonly)
			[8]: arg4 (readonly)
			[9]: FFlagEnableBundlePurchaseChecks_upvr (copied, readonly)
			[10]: arg5 (read and write)
			[11]: GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr (copied, readonly)
			[12]: meetsBundlePrerequisitesV2_upvr (copied, readonly)
			[13]: arg1 (readonly)
			[14]: meetsBundlePrerequisites_upvr (copied, readonly)
			[15]: arg6 (readonly)
			[16]: UserInputService_upvr (copied, readonly)
			[17]: getUpsellFlow_upvr (copied, readonly)
			[18]: PurchaseError_upvr (copied, readonly)
			[19]: RunService_upvr (copied, readonly)
			[20]: GetFFlagRespectBalanceInfoForBundleUpsellInStudio_upvr (copied, readonly)
			[21]: GetFFlagEnableInsufficientRobuxForBundleUpsellFix_upvr (copied, readonly)
			[22]: UpsellFlow_upvr (copied, readonly)
			[23]: SetPromptState_upvr (copied, readonly)
			[24]: PromptState_upvr (copied, readonly)
			[25]: getPaymentPlatform_upvr (copied, readonly)
			[26]: FFlagEnableUpsellSuggestionsAPI_upvr (copied, readonly)
			[27]: getRobuxUpsellSuggestions_upvr (copied, readonly)
			[28]: PromptNativeUpsellSuggestions_upvr (copied, readonly)
			[29]: ErrorOccurred_upvr (copied, readonly)
			[30]: getRobuxUpsellProduct_upvr (copied, readonly)
			[31]: PromptNativeUpsell_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 62 start (CF ANALYSIS FAILED)
		arg1_2:dispatch(BundleProductInfoReceived_upvr(arg2))
		arg1_2:dispatch(AccountInfoReceived_upvr(arg3))
		arg1_2:dispatch(BalanceInfoRecieved_upvr(arg4))
		if FFlagEnableBundlePurchaseChecks_upvr and arg5 == nil then
			local var35 = arg2
			local var36
			if var35 and var35.product ~= nil then
				if arg3.isPremium and var35.product.premiumPricing ~= nil then
					var36 = var35.product.premiumPricing.premiumPriceInRobux or 0
				else
					var36 = var35.product.priceInRobux or 0
				end
			else
				var36 = 0
			end
			arg5 = var36
		end
		if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr() then
			local _, _ = meetsBundlePrerequisitesV2_upvr(arg1, arg2, arg4, arg5)
			-- KONSTANTWARNING: GOTO [84] #69
		end
		-- KONSTANTERROR: [0] 1. Error Block 62 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [76] 61. Error Block 58 start (CF ANALYSIS FAILED)
		local var39
		var39 = arg5
		local _, meetsBundlePrerequisites_upvr_result2 = meetsBundlePrerequisites_upvr(arg2, arg4, var39, arg6)
		local var42 = meetsBundlePrerequisites_upvr_result2
		local var43 = arg5
		local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
		var39 = any_GetPlatform_result1
		if var42 ~= PurchaseError_upvr.NotEnoughRobux then
			var39 = false
		else
			var39 = true
		end
		local var45
		if RunService_upvr:IsStudio() and GetFFlagRespectBalanceInfoForBundleUpsellInStudio_upvr() and var39 then
			if arg4.robux >= var43 then
				var39 = false
			else
				var39 = true
			end
			if not var45 then
				var45 = not var39
			end
		end
		if not var45 then
			if var39 then
				if not GetFFlagEnableInsufficientRobuxForBundleUpsellFix_upvr() and getUpsellFlow_upvr(var39) == UpsellFlow_upvr.Web then
					return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.RobuxUpsell))
				end
				local var27_result1 = getPaymentPlatform_upvr(any_GetPlatform_result1)
				local robux = arg4.robux
				if FFlagEnableUpsellSuggestionsAPI_upvr then
					return getRobuxUpsellSuggestions_upvr(var43, robux, var27_result1):andThen(function(arg1_3) -- Line 226
						--[[ Upvalues[2]:
							[1]: arg1_2 (readonly)
							[2]: PromptNativeUpsellSuggestions_upvr (copied, readonly)
						]]
						arg1_2:dispatch(PromptNativeUpsellSuggestions_upvr(arg1_3.products, 1, arg1_3.virtualItemBadgeType))
					end, function() -- Line 230
						--[[ Upvalues[3]:
							[1]: arg1_2 (readonly)
							[2]: ErrorOccurred_upvr (copied, readonly)
							[3]: PurchaseError_upvr (copied, readonly)
						]]
						arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.NotEnoughRobuxXbox))
					end)
				end
				local var51_upvr = arg2_2[Analytics_upvr]
				local any_getState_result1_upvr = arg1_2:getState()
				return getRobuxUpsellProduct_upvr(arg2_2[Network_upvr], var43, robux, var27_result1):andThen(function(arg1_4) -- Line 237
					--[[ Upvalues[4]:
						[1]: var51_upvr (readonly)
						[2]: any_getState_result1_upvr (readonly)
						[3]: arg1_2 (readonly)
						[4]: PromptNativeUpsell_upvr (copied, readonly)
					]]
					var51_upvr.signalProductPurchaseUpsellShown(arg1_4.id, any_getState_result1_upvr.requestType, arg1_4.providerId)
					arg1_2:dispatch(PromptNativeUpsell_upvr(arg1_4.providerId, arg1_4.id, arg1_4.robuxAmount, arg1_4.robuxAmountBeforeBonus, arg1_4.price))
				end, function() -- Line 253
					--[[ Upvalues[3]:
						[1]: arg1_2 (readonly)
						[2]: ErrorOccurred_upvr (copied, readonly)
						[3]: PurchaseError_upvr (copied, readonly)
					]]
					arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.NotEnoughRobuxXbox))
				end)
			end
			return arg1_2:dispatch(ErrorOccurred_upvr(var42))
		end
		do
			return arg1_2:dispatch(SetPromptState_upvr(PromptState_upvr.PromptPurchase))
		end
		-- KONSTANTERROR: [76] 61. Error Block 58 end (CF ANALYSIS FAILED)
	end)
end