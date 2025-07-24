-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:27
-- Luau version 6, Types version 3
-- Time taken: 0.001508 seconds

local Parent = script:FindFirstAncestor("BulkPurchaseApp").Parent
local tbl_upvr_2 = {
	itemStatusNotForSale = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusNotForSale";
	itemStatusPriceMismatch = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusPriceMismatch";
	itemStatusSoldOut = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusSoldOut";
	itemStatusInsufficientRobux = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusInsufficientRobux";
	itemStatusQuotaExceeded = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusQuotaExceeded";
	itemStatusNotAvailableForPurchaser = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusNotAvailableForPurchaser";
	itemStatusAlreadyOwned = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusAlreadyOwned";
	itemStatusPurchaserIsSeller = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusPurchaserIsSeller";
	itemStatusQuantityLimitExceeded = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusQuantityLimitExceeded";
	itemStatusInsufficientMembership = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusInsufficientMembership";
	itemStatusSuccess = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusSuccess";
	itemStatusGeneric = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusGeneric";
	itemStatusPlaceInvalid = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemStatusPlaceInvalid";
}
local tbl_upvr = {
	[Enum.MarketplaceItemPurchaseStatus.NotForSale] = "itemStatusNotForSale";
	[Enum.MarketplaceItemPurchaseStatus.PriceMismatch] = "itemStatusPriceMismatch";
	[Enum.MarketplaceItemPurchaseStatus.SoldOut] = "itemStatusSoldOut";
	[Enum.MarketplaceItemPurchaseStatus.InsufficientRobux] = "itemStatusInsufficientRobux";
	[Enum.MarketplaceItemPurchaseStatus.QuotaExceeded] = "itemStatusQuotaExceeded";
	[Enum.MarketplaceItemPurchaseStatus.NotAvailableForPurchaser] = "itemStatusNotAvailableForPurchaser";
	[Enum.MarketplaceItemPurchaseStatus.AlreadyOwned] = "itemStatusAlreadyOwned";
	[Enum.MarketplaceItemPurchaseStatus.PurchaserIsSeller] = "itemStatusPurchaserIsSeller";
	[Enum.MarketplaceItemPurchaseStatus.QuantityLimitExceeded] = "itemStatusQuantityLimitExceeded";
	[Enum.MarketplaceItemPurchaseStatus.InsufficientMembership] = "itemStatusInsufficientMembership";
	[Enum.MarketplaceItemPurchaseStatus.Success] = "itemStatusSuccess";
	[Enum.MarketplaceItemPurchaseStatus.SystemError] = "itemStatusGeneric";
	[Enum.MarketplaceItemPurchaseStatus.PlaceInvalid] = "itemStatusPlaceInvalid";
}
local function mapTokens_upvr(arg1) -- Line 41, Named "mapTokens"
	return {
		successColor = arg1.Semantic.Color.Common.Success;
		failureColor = arg1.Semantic.Color.Common.Alert;
		fontStyle = arg1.Semantic.Typography.CaptionBody;
	}
end
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local StyledTextLabel_upvr = require(Parent.UIBlox).App.Text.StyledTextLabel
return function(arg1) -- Line 53, Named "ItemStatus"
	--[[ Upvalues[7]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: mapTokens_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: tbl_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: StyledTextLabel_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr(mapTokens_upvr)
	local var10 = tbl_upvr_2
	if arg1.status == Enum.MarketplaceItemPurchaseStatus.Success then
		var10 = useDesignTokens_upvr_result1.successColor
	else
		var10 = useDesignTokens_upvr_result1.failureColor
	end
	return React_upvr.createElement(StyledTextLabel_upvr, {
		fontStyle = useDesignTokens_upvr_result1.fontStyle;
		colorStyle = var10;
		text = useLocalization_upvr(var10)[tbl_upvr[arg1.status]];
		textWrapped = true;
		size = UDim2.fromScale(1, 1);
		textXAlignment = Enum.TextXAlignment.Right;
		textYAlignment = Enum.TextYAlignment.Top;
		lineHeight = useDesignTokens_upvr_result1.fontStyle.LineHeight;
	})
end