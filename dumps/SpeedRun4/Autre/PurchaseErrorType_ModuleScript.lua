-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:16
-- Luau version 6, Types version 3
-- Time taken: 0.000594 seconds

local Parent = script.Parent.Parent
local tbl = {
	None = "None";
	Unknown = "Unknown";
	AlreadyOwn = "AlreadyOwn";
	FailedGrant = "FailedGrant";
	FailedGrantUnknown = "FailedGrantUnknown";
	Limited = "Limited";
	NotEnoughRobux = "NotEnoughRobux";
	NotForSale = "NotForSale";
	NotForSaleExperience = "NotForSaleExperience";
	PremiumOnly = "PremiumOnly";
	ThirdPartyDisabled = "ThirdPartyDisabled";
	Under13 = "Under13";
	PremiumPlatformUnavailable = "PremiumPlatformUnavailable";
	AlreadyPremium = "AlreadyPremium";
	PurchaseLimit = "PurchaseLimit";
	ParentalLimit = "ParentalLimit";
	AlreadySubscribed = "AlreadySubscribed";
	SubscriptionNotForSale = "SubscriptionNotForSale";
	SubscriptionExceededUserSpendLimit = "SubscriptionExceededUserSpendLimit";
	SubscriptionUnsupportedLocale = "SubscriptionUnsupportedLocale";
	RestrictedUser = "RestrictedUser";
	SubscriptionPurchasePlatformNotSupported = "SubscriptionPurchasePlatformNotSupported";
	SubscriptionInvalidSaleLocation = "SubscriptionInvalidSaleLocation";
	VpcRequired = "VpcRequired";
	FailedRobuxPurchase = "FailedRobuxPurchase";
	ExceedParentalSpendLimit = "ExceedParentalSpendLimit";
	EconomicRestriction = "EconomicRestriction";
}
local var3 = require(Parent.Parent.enumerate)(script.Name, tbl)
require(Parent.Utility.addRawValueMethodToEnum)(var3, tbl)
return var3