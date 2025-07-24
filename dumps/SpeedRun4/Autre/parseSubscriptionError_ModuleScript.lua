-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:21
-- Luau version 6, Types version 3
-- Time taken: 0.000685 seconds

local PurchaseError_upvr = require(script.Parent.Parent.Enums.PurchaseError)
return function(arg1) -- Line 4, Named "parseSubscriptionError"
	--[[ Upvalues[1]:
		[1]: PurchaseError_upvr (readonly)
	]]
	if arg1 == "UserHasSpendLimitSet" then
		return PurchaseError_upvr.SubscriptionExceededUserSpendLimit
	end
	if arg1 == "UnsupportedLocale" then
		return PurchaseError_upvr.SubscriptionUnsupportedLocale
	end
	if arg1 == "RestrictedUser" then
		return PurchaseError_upvr.RestrictedUser
	end
	if arg1 == "PurchasePlatformNotSupported" then
		return PurchaseError_upvr.SubscriptionPurchasePlatformNotSupported
	end
	if arg1 == "InvalidSaleLocation" then
		return PurchaseError_upvr.SubscriptionInvalidSaleLocation
	end
	if arg1 == "UserAlreadySubscribed" then
		return PurchaseError_upvr.AlreadySubscribed
	end
	if arg1 == "ProductNotForSale" then
		return PurchaseError_upvr.SubscriptionNotForSale
	end
	if arg1 == "VpcRequired" then
		return PurchaseError_upvr.VpcRequired
	end
	if arg1 == "ExceedParentalSpendLimit" then
		return PurchaseError_upvr.ExceedParentalSpendLimit
	end
	return PurchaseError_upvr.UnknownFailure
end