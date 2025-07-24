-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:31
-- Luau version 6, Types version 3
-- Time taken: 0.001042 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Promise)
local Constants_upvr = require(Parent.Misc.Constants)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local isGenericChallengeResponse_upvr = require(Parent.Utils.isGenericChallengeResponse)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 8, Named "performPurchase"
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: PurchaseError_upvr (readonly)
		[4]: isGenericChallengeResponse_upvr (readonly)
	]]
	return arg1.performPurchase(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10):andThen(function(arg1_2) -- Line 32
		--[[ Upvalues[4]:
			[1]: Promise_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: PurchaseError_upvr (copied, readonly)
			[4]: isGenericChallengeResponse_upvr (copied, readonly)
		]]
		if arg1_2.purchased or arg1_2.reason == "AlreadyOwned" then
			return Promise_upvr.resolve(arg1_2)
		end
		if arg1_2.reason == Constants_upvr.PurchaseFailureReason.EconomyDisabled then
			return Promise_upvr.reject(PurchaseError_upvr.PurchaseDisabled)
		end
		if arg1_2.reason == Constants_upvr.PurchaseFailureReason.TwoStepVerificationRequired then
			return Promise_upvr.reject(PurchaseError_upvr.TwoFactorNeeded)
		end
		if arg1_2.transactionStatus == 24 then
			return Promise_upvr.reject(PurchaseError_upvr.TwoFactorNeeded)
		end
		if isGenericChallengeResponse_upvr(arg1_2) then
			return Promise_upvr.reject(arg1_2)
		end
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end, function(arg1_3) -- Line 52
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PurchaseError_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end)
end