-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:30
-- Luau version 6, Types version 3
-- Time taken: 0.001080 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Promise)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
return function(arg1, arg2, arg3) -- Line 7, Named "performCreatorStorePurchase"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: PurchaseError_upvr (readonly)
	]]
	return arg1.performCreatorStorePurchase(arg2, arg3):andThen(function(arg1_2) -- Line 8
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PurchaseError_upvr (copied, readonly)
		]]
		if arg1_2.purchaseTransactionStatus == "PURCHASE_TRANSACTION_STATUS_ALREADY_OWNED" or arg1_2.purchaseTransactionStatus == "PURCHASE_TRANSACTION_STATUS_SUCCESS" then
			return Promise_upvr.resolve(arg1_2)
		end
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end, function(arg1_3) -- Line 17
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PurchaseError_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end)
end