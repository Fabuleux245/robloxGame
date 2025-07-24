-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:27
-- Luau version 6, Types version 3
-- Time taken: 0.000741 seconds

local Parent = script.Parent.Parent
local paymentPlatformToUpsellPlatform_upvr = require(Parent.Utils.paymentPlatformToUpsellPlatform)
local RobuxUpsell_upvr = require(Parent.Models.RobuxUpsell)
local Promise_upvr = require(Parent.Promise)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 12, Named "GetRobuxUpsellProduct"
	--[[ Upvalues[4]:
		[1]: paymentPlatformToUpsellPlatform_upvr (readonly)
		[2]: RobuxUpsell_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: PurchaseError_upvr (readonly)
	]]
	return arg1.getRobuxUpsellProduct(arg2, arg3, paymentPlatformToUpsellPlatform_upvr(arg4), arg5, arg6, arg7):andThen(function(arg1_2) -- Line 18
		--[[ Upvalues[3]:
			[1]: RobuxUpsell_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: PurchaseError_upvr (copied, readonly)
		]]
		local any_fromJson_result1 = RobuxUpsell_upvr.fromJson(arg1_2)
		if any_fromJson_result1 then
			return Promise_upvr.resolve(any_fromJson_result1)
		end
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end):catch(function(arg1_3) -- Line 26
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PurchaseError_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailure)
	end)
end