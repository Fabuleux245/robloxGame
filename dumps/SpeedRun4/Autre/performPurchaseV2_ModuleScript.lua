-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:31
-- Luau version 6, Types version 3
-- Time taken: 0.002578 seconds

local Parent = script.Parent.Parent
local FFlagEnableCollectibleCheckToPurchaseItem_upvr = require(Parent.Parent.Flags.FFlagEnableCollectibleCheckToPurchaseItem)
local FFlagEnableTempFixCollectibleBundlePurchase_upvr = require(Parent.Parent.Flags.FFlagEnableTempFixCollectibleBundlePurchase)
local Promise_upvr = require(Parent.Promise)
local Constants_upvr = require(Parent.Misc.Constants)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local isGenericChallengeResponse_upvr = require(Parent.Utils.isGenericChallengeResponse)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) -- Line 14, Named "performPurchaseV2"
	--[[ Upvalues[6]:
		[1]: FFlagEnableCollectibleCheckToPurchaseItem_upvr (readonly)
		[2]: FFlagEnableTempFixCollectibleBundlePurchase_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: PurchaseError_upvr (readonly)
		[6]: isGenericChallengeResponse_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12
	if not FFlagEnableCollectibleCheckToPurchaseItem_upvr and FFlagEnableTempFixCollectibleBundlePurchase_upvr then
		local var13 = false
		if var12 == Enum.InfoType.Bundle then
			var13 = arg7
			if var13 then
				if arg7 == "" then
					var13 = false
				else
					var13 = true
				end
			end
		end
		if var13 then
			var12 = Enum.InfoType.Asset
		end
	end
	return arg1.performPurchaseV2(var12, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, nil):andThen(function(arg1_4) -- Line 53
		--[[ Upvalues[4]:
			[1]: Promise_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: PurchaseError_upvr (copied, readonly)
			[4]: isGenericChallengeResponse_upvr (copied, readonly)
		]]
		if arg1_4.purchased or arg1_4.reason == "AlreadyOwned" then
			return Promise_upvr.resolve(arg1_4)
		end
		if arg1_4.reason == Constants_upvr.PurchaseFailureReason.EconomyDisabled then
			return Promise_upvr.reject(PurchaseError_upvr.PurchaseDisabled)
		end
		if arg1_4.reason == Constants_upvr.PurchaseFailureReason.TwoStepVerificationRequired then
			return Promise_upvr.reject(PurchaseError_upvr.TwoFactorNeeded)
		end
		if arg1_4.transactionStatus == 24 then
			return Promise_upvr.reject(PurchaseError_upvr.TwoFactorNeeded)
		end
		if isGenericChallengeResponse_upvr(arg1_4) then
			return Promise_upvr.reject(arg1_4)
		end
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end, function(arg1_5) -- Line 73
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PurchaseError_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end)
end