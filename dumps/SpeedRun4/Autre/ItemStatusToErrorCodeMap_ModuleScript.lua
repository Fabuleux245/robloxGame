-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:32
-- Luau version 6, Types version 3
-- Time taken: 0.000498 seconds

local ErrorCodeEnum = require(script.Parent.ErrorCodeEnum)
return {
	[Enum.MarketplaceItemPurchaseStatus.NotForSale] = ErrorCodeEnum.NotForSale;
	[Enum.MarketplaceItemPurchaseStatus.PriceMismatch] = ErrorCodeEnum.PriceMismatch;
	[Enum.MarketplaceItemPurchaseStatus.SoldOut] = ErrorCodeEnum.SoldOut;
	[Enum.MarketplaceItemPurchaseStatus.InsufficientRobux] = ErrorCodeEnum.InsufficientRobux;
	[Enum.MarketplaceItemPurchaseStatus.QuotaExceeded] = ErrorCodeEnum.QuotaExceeded;
	[Enum.MarketplaceItemPurchaseStatus.NotAvailableForPurchaser] = ErrorCodeEnum.NotAvailableForPurchaser;
	[Enum.MarketplaceItemPurchaseStatus.AlreadyOwned] = ErrorCodeEnum.AlreadyOwned;
	[Enum.MarketplaceItemPurchaseStatus.PurchaserIsSeller] = ErrorCodeEnum.PurchaserIsSeller;
	[Enum.MarketplaceItemPurchaseStatus.QuantityLimitExceeded] = ErrorCodeEnum.QuantityLimitExceeded;
	[Enum.MarketplaceItemPurchaseStatus.InsufficientMembership] = ErrorCodeEnum.InsufficientMembership;
	[Enum.MarketplaceItemPurchaseStatus.Success] = ErrorCodeEnum.Generic;
	[Enum.MarketplaceItemPurchaseStatus.SystemError] = ErrorCodeEnum.Generic;
	[Enum.MarketplaceItemPurchaseStatus.PlaceInvalid] = ErrorCodeEnum.PlaceInvalid;
}