-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:34
-- Luau version 6, Types version 3
-- Time taken: 0.000311 seconds

local PurchasableStateEnum = require(script.Parent.PurchasableStateEnum)
return {
	[PurchasableStateEnum.Unknown] = Enum.MarketplaceItemPurchaseStatus.SystemError;
	[PurchasableStateEnum.AlreadyOwned] = Enum.MarketplaceItemPurchaseStatus.AlreadyOwned;
	[PurchasableStateEnum.QuantityLimitExceeded] = Enum.MarketplaceItemPurchaseStatus.QuantityLimitExceeded;
	[PurchasableStateEnum.NotForSale] = Enum.MarketplaceItemPurchaseStatus.NotForSale;
	[PurchasableStateEnum.SoldOut] = Enum.MarketplaceItemPurchaseStatus.NotForSale;
}