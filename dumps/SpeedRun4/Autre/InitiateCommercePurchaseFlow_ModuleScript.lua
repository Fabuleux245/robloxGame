-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:09
-- Luau version 6, Types version 3
-- Time taken: 0.002291 seconds

local CommercePurchaseApp = script:FindFirstAncestor("CommercePurchaseApp")
local ErrorCodeEnum_upvr = require(CommercePurchaseApp.Enums.ErrorCodeEnum)
local ToastRodux = require(CommercePurchaseApp.Parent.ToastRodux)
local FFlagAddCommerceErrors_upvr = require(CommercePurchaseApp.Flags.FFlagAddCommerceErrors)
local function convertErrorMessageToErrorCode_upvr(arg1) -- Line 16, Named "convertErrorMessageToErrorCode"
	--[[ Upvalues[2]:
		[1]: FFlagAddCommerceErrors_upvr (readonly)
		[2]: ErrorCodeEnum_upvr (readonly)
	]]
	if FFlagAddCommerceErrors_upvr then
		if arg1 == "DeviceTypeNotAllowed" or arg1 == "PurchasePlatformNotSupported" then
			return ErrorCodeEnum_upvr.DeviceNotSupported
		end
		if arg1 == "UniverseNotAllowed" or arg1 == "ProductContentModerated" or arg1 == "ProductNotFound" then
			return ErrorCodeEnum_upvr.NotPurchasable
		end
		if arg1 == "UserNotAllowed" or arg1 == "AccountCountryNotSupported" or arg1 == "UserAgeNotAllowed" then
			return ErrorCodeEnum_upvr.AccountNotSupported
		end
		return ErrorCodeEnum_upvr.Generic
	end
	if arg1 == "NotPurchasable" then
		return ErrorCodeEnum_upvr.NotPurchasable
	end
	return ErrorCodeEnum_upvr.Generic
end
local SetCurrentToastMessage_upvr = ToastRodux.Actions.SetCurrentToastMessage
local ToastType_upvr = ToastRodux.Enums.ToastType
local CommercePurchaseEnded_upvr = require(CommercePurchaseApp.Store.Actions.CommercePurchaseEnded)
local CommercePurchaseFailed_upvr = require(CommercePurchaseApp.Store.Actions.CommercePurchaseFailed)
local function handleError_upvr(arg1, arg2, arg3) -- Line 44, Named "handleError"
	--[[ Upvalues[6]:
		[1]: convertErrorMessageToErrorCode_upvr (readonly)
		[2]: ErrorCodeEnum_upvr (readonly)
		[3]: SetCurrentToastMessage_upvr (readonly)
		[4]: ToastType_upvr (readonly)
		[5]: CommercePurchaseEnded_upvr (readonly)
		[6]: CommercePurchaseFailed_upvr (readonly)
	]]
	local convertErrorMessageToErrorCode_upvr_result1 = convertErrorMessageToErrorCode_upvr(arg1)
	if convertErrorMessageToErrorCode_upvr_result1 == ErrorCodeEnum_upvr.Generic then
		local tbl = {
			toastType = ToastType_upvr.NetworkingError;
		}
		tbl.toastTitle = arg3
		arg2:dispatch(SetCurrentToastMessage_upvr(tbl))
		arg2:dispatch(CommercePurchaseEnded_upvr())
	else
		arg2:dispatch(CommercePurchaseFailed_upvr(convertErrorMessageToErrorCode_upvr_result1))
	end
end
local CommercePurchaseStarted_upvr = require(CommercePurchaseApp.Store.Actions.CommercePurchaseStarted)
local CommerceService_upvr = game:GetService("CommerceService")
local CommercePurchaseCheckout_upvr = require(CommercePurchaseApp.Store.Actions.CommercePurchaseCheckout)
return function(arg1, arg2) -- Line 58, Named "InitiateCommercePurchaseFlow"
	--[[ Upvalues[4]:
		[1]: CommercePurchaseStarted_upvr (readonly)
		[2]: CommerceService_upvr (readonly)
		[3]: CommercePurchaseCheckout_upvr (readonly)
		[4]: handleError_upvr (readonly)
	]]
	return function(arg1_2) -- Line 59
		--[[ Upvalues[6]:
			[1]: CommercePurchaseStarted_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CommerceService_upvr (copied, readonly)
			[4]: CommercePurchaseCheckout_upvr (copied, readonly)
			[5]: handleError_upvr (copied, readonly)
			[6]: arg2 (readonly)
		]]
		arg1_2:dispatch(CommercePurchaseStarted_upvr(arg1))
		local pcall_result1, pcall_result2 = pcall(function() -- Line 61
			--[[ Upvalues[2]:
				[1]: CommerceService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			return CommerceService_upvr:PrepareCommerceProductPurchase(arg1)
		end)
		if pcall_result1 then
			arg1_2:dispatch(CommercePurchaseCheckout_upvr(pcall_result2.CheckoutSessionId))
		else
			handleError_upvr(pcall_result2, arg1_2, arg2)
		end
	end
end