-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:56
-- Luau version 6, Types version 3
-- Time taken: 0.005408 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Network_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local hasPendingRequest_upvr = require(Parent.Utils.hasPendingRequest)
local RequestBundlePurchase_upvr = require(Parent.Actions.RequestBundlePurchase)
local Players_upvr = game:GetService("Players")
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local Promise_upvr = require(Parent.Promise)
local getBundleDetails_upvr = require(Parent.Network.getBundleDetails)
local getAccountInfo_upvr = require(Parent.Network.getAccountInfo)
local getBalanceInfo_upvr = require(Parent.Network.getBalanceInfo)
local FFlagEnableBundlePurchaseChecks_upvr = require(Parent.Parent.Flags.FFlagEnableBundlePurchaseChecks)
local getIsAlreadyOwned_upvr = require(Parent.Network.getIsAlreadyOwned)
local GetFFlagReturnNotForSaleOnInvalidBundleId_upvr = require(Parent.Flags.GetFFlagReturnNotForSaleOnInvalidBundleId)
local GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr = require(Parent.Flags.GetFFlagUseCatalogItemDetailsToResolveBundlePurchase)
local getCatalogItemDetails_upvr = require(Parent.Network.getCatalogItemDetails)
local resolveBundlePromptState_upvr = require(script.Parent.resolveBundlePromptState)
local getProductPurchasableDetails_upvr = require(Parent.Network.getProductPurchasableDetails)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 34, Named "initiateBundlePurchase"
	--[[ Upvalues[20]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: hasPendingRequest_upvr (readonly)
		[6]: RequestBundlePurchase_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: ErrorOccurred_upvr (readonly)
		[9]: PurchaseError_upvr (readonly)
		[10]: Promise_upvr (readonly)
		[11]: getBundleDetails_upvr (readonly)
		[12]: getAccountInfo_upvr (readonly)
		[13]: getBalanceInfo_upvr (readonly)
		[14]: FFlagEnableBundlePurchaseChecks_upvr (readonly)
		[15]: getIsAlreadyOwned_upvr (readonly)
		[16]: GetFFlagReturnNotForSaleOnInvalidBundleId_upvr (readonly)
		[17]: GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr (readonly)
		[18]: getCatalogItemDetails_upvr (readonly)
		[19]: resolveBundlePromptState_upvr (readonly)
		[20]: getProductPurchasableDetails_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 43
		--[[ Upvalues[25]:
			[1]: Network_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: hasPendingRequest_upvr (copied, readonly)
			[4]: RequestBundlePurchase_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: arg2 (readonly)
			[7]: arg3 (readonly)
			[8]: arg4 (readonly)
			[9]: arg5 (readonly)
			[10]: arg6 (readonly)
			[11]: arg7 (readonly)
			[12]: Players_upvr (copied, readonly)
			[13]: ErrorOccurred_upvr (copied, readonly)
			[14]: PurchaseError_upvr (copied, readonly)
			[15]: Promise_upvr (copied, readonly)
			[16]: getBundleDetails_upvr (copied, readonly)
			[17]: getAccountInfo_upvr (copied, readonly)
			[18]: getBalanceInfo_upvr (copied, readonly)
			[19]: FFlagEnableBundlePurchaseChecks_upvr (copied, readonly)
			[20]: getIsAlreadyOwned_upvr (copied, readonly)
			[21]: GetFFlagReturnNotForSaleOnInvalidBundleId_upvr (copied, readonly)
			[22]: GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr (copied, readonly)
			[23]: getCatalogItemDetails_upvr (copied, readonly)
			[24]: resolveBundlePromptState_upvr (copied, readonly)
			[25]: getProductPurchasableDetails_upvr (copied, readonly)
		]]
		local var23_upvr = arg2_2[Network_upvr]
		local var24 = arg2_2[ExternalSettings_upvr]
		if hasPendingRequest_upvr(arg1_2:getState()) then
			return nil
		end
		arg1_2:dispatch(RequestBundlePurchase_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
		if not var24.isStudio() and Players_upvr.LocalPlayer.UserId <= 0 then
			arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.Guest))
			return nil
		end
		if var24.getFlagOrder66() then
			arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.PurchaseDisabled))
			return nil
		end
		local module = {
			bundleDetails = getBundleDetails_upvr(var23_upvr, arg1);
			accountInfo = getAccountInfo_upvr(var23_upvr, var24);
		}
		local getBalanceInfo_upvr_result1 = getBalanceInfo_upvr(var23_upvr, var24, false)
		module.balanceInfo = getBalanceInfo_upvr_result1
		if FFlagEnableBundlePurchaseChecks_upvr then
			getBalanceInfo_upvr_result1 = getIsAlreadyOwned_upvr(var23_upvr, arg1, Enum.InfoType.Bundle)
		else
			getBalanceInfo_upvr_result1 = nil
		end
		module.alreadyOwned = getBalanceInfo_upvr_result1
		return Promise_upvr.all(module):andThen(function(arg1_3) -- Line 82
			--[[ Upvalues[12]:
				[1]: GetFFlagReturnNotForSaleOnInvalidBundleId_upvr (copied, readonly)
				[2]: GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr (copied, readonly)
				[3]: getCatalogItemDetails_upvr (copied, readonly)
				[4]: var23_upvr (readonly)
				[5]: arg1 (copied, readonly)
				[6]: arg1_2 (readonly)
				[7]: resolveBundlePromptState_upvr (copied, readonly)
				[8]: arg7 (copied, readonly)
				[9]: FFlagEnableBundlePurchaseChecks_upvr (copied, readonly)
				[10]: ErrorOccurred_upvr (copied, readonly)
				[11]: getProductPurchasableDetails_upvr (copied, readonly)
				[12]: PurchaseError_upvr (copied, readonly)
			]]
			if GetFFlagReturnNotForSaleOnInvalidBundleId_upvr() then
				if arg1_3.bundleDetails.product then
					if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr() then
						getCatalogItemDetails_upvr(var23_upvr, arg1, "bundle"):andThen(function(arg1_4) -- Line 89
							--[[ Upvalues[5]:
								[1]: arg1_2 (copied, readonly)
								[2]: resolveBundlePromptState_upvr (copied, readonly)
								[3]: arg1_3 (readonly)
								[4]: arg7 (copied, readonly)
								[5]: FFlagEnableBundlePurchaseChecks_upvr (copied, readonly)
							]]
							local var29
							if FFlagEnableBundlePurchaseChecks_upvr then
								var29 = arg1_3.alreadyOwned
							else
								var29 = nil
							end
							arg1_2:dispatch(resolveBundlePromptState_upvr(arg1_4, arg1_3.bundleDetails, arg1_3.accountInfo, arg1_3.balanceInfo, arg7, var29))
						end):catch(function(arg1_5) -- Line 101
							--[[ Upvalues[2]:
								[1]: arg1_2 (copied, readonly)
								[2]: ErrorOccurred_upvr (copied, readonly)
							]]
							arg1_2:dispatch(ErrorOccurred_upvr(arg1_5))
						end)
					else
						getProductPurchasableDetails_upvr(var23_upvr, arg1_3.bundleDetails.product.id):andThen(function(arg1_6) -- Line 107
							--[[ Upvalues[5]:
								[1]: arg1_2 (copied, readonly)
								[2]: resolveBundlePromptState_upvr (copied, readonly)
								[3]: arg1_3 (readonly)
								[4]: arg7 (copied, readonly)
								[5]: FFlagEnableBundlePurchaseChecks_upvr (copied, readonly)
							]]
							local var32
							if FFlagEnableBundlePurchaseChecks_upvr then
								var32 = arg1_3.alreadyOwned
							else
								var32 = nil
							end
							arg1_2:dispatch(resolveBundlePromptState_upvr(arg1_6, arg1_3.bundleDetails, arg1_3.accountInfo, arg1_3.balanceInfo, arg7, var32))
						end)
					end
				end
				arg1_2:dispatch(ErrorOccurred_upvr(PurchaseError_upvr.NotForSale))
			else
				if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase_upvr() then
					getCatalogItemDetails_upvr(var23_upvr, arg1, "bundle"):andThen(function(arg1_7) -- Line 128
						--[[ Upvalues[4]:
							[1]: arg1_2 (copied, readonly)
							[2]: resolveBundlePromptState_upvr (copied, readonly)
							[3]: arg1_3 (readonly)
							[4]: arg7 (copied, readonly)
						]]
						arg1_2:dispatch(resolveBundlePromptState_upvr(arg1_7, arg1_3.bundleDetails, arg1_3.accountInfo, arg1_3.balanceInfo, arg7))
					end):catch(function(arg1_8) -- Line 139
						--[[ Upvalues[2]:
							[1]: arg1_2 (copied, readonly)
							[2]: ErrorOccurred_upvr (copied, readonly)
						]]
						arg1_2:dispatch(ErrorOccurred_upvr(arg1_8))
					end)
					return
				end
				getProductPurchasableDetails_upvr(var23_upvr, arg1_3.bundleDetails.product.id):andThen(function(arg1_9) -- Line 145
					--[[ Upvalues[4]:
						[1]: arg1_2 (copied, readonly)
						[2]: resolveBundlePromptState_upvr (copied, readonly)
						[3]: arg1_3 (readonly)
						[4]: arg7 (copied, readonly)
					]]
					arg1_2:dispatch(resolveBundlePromptState_upvr(arg1_9, arg1_3.bundleDetails, arg1_3.accountInfo, arg1_3.balanceInfo, arg7))
				end)
			end
		end):catch(function(arg1_10) -- Line 160
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
			]]
			arg1_2:dispatch(ErrorOccurred_upvr(arg1_10))
		end)
	end)
end