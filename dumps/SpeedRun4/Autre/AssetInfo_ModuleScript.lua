-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:06
-- Luau version 6, Types version 3
-- Time taken: 0.004825 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local GetFFlagIBEnableCollectiblesSystemSupport_upvr = require(Parent.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local module_upvr = {
	new = function() -- Line 45, Named "new"
		return {}
	end;
}
local MockId_upvr = require(Parent.MockId)
function module_upvr.mock() -- Line 51
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: MockId_upvr (readonly)
		[3]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.name = ""
	any_new_result1_2.assetId = MockId_upvr()
	any_new_result1_2.assetTypeId = ""
	any_new_result1_2.creatorId = ""
	any_new_result1_2.creatorName = ""
	any_new_result1_2.creatorHasVerifiedBadge = false
	any_new_result1_2.owned = false
	any_new_result1_2.isForSale = false
	any_new_result1_2.description = ""
	any_new_result1_2.price = ""
	any_new_result1_2.productId = ""
	local var7 = false
	any_new_result1_2.isLimited = var7
	if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
		var7 = false
	else
		var7 = nil
	end
	any_new_result1_2.isLimitedUnique = var7
	if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
		var7 = false
	else
		var7 = nil
	end
	any_new_result1_2.collectibleIsLimited = var7
	var7 = {}
	any_new_result1_2.bundlesAssetIsIn = var7
	var7 = nil
	any_new_result1_2.parentBundleId = var7
	var7 = 0
	any_new_result1_2.numFavorites = var7
	var7 = 0
	any_new_result1_2.minimumMembershipLevel = var7
	var7 = ""
	any_new_result1_2.collectibleItemId = var7
	var7 = ""
	any_new_result1_2.collectibleProductId = var7
	var7 = 0
	any_new_result1_2.collectibleLowestResalePrice = var7
	var7 = ""
	any_new_result1_2.collectibleLowestAvailableResaleProductId = var7
	var7 = ""
	any_new_result1_2.collectibleLowestAvailableResaleItemInstanceId = var7
	var7 = 0
	any_new_result1_2.collectibleQuantityLimitPerUser = var7
	var7 = 0
	any_new_result1_2.remaining = var7
	var7 = nil
	any_new_result1_2.creatingUniverseId = var7
	return any_new_result1_2
end
function module_upvr.fromGetProductInfo(arg1) -- Line 90
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.name = arg1.Name
	any_new_result1.description = arg1.Description
	any_new_result1.price = arg1.PriceInRobux
	any_new_result1.productType = arg1.ProductType
	any_new_result1.remaining = arg1.Remaining
	any_new_result1.creatorId = tostring(arg1.Creator.Id)
	any_new_result1.creatorName = arg1.Creator.Name
	any_new_result1.assetId = tostring(arg1.AssetId)
	any_new_result1.assetTypeId = tostring(arg1.AssetTypeId)
	any_new_result1.productId = tostring(arg1.ProductId)
	any_new_result1.isForSale = arg1.IsForSale
	any_new_result1.canBeSoldInThisGame = arg1.CanBeSoldInThisGame
	any_new_result1.saleLocation = arg1.SaleLocation
	any_new_result1.remaining = arg1.Remaining or 0
	if any_new_result1.productType == Constants_upvr.ProductType.CollectibleItem then
		any_new_result1.collectibleItemId = arg1.CollectibleItemId or ""
		any_new_result1.collectibleProductId = arg1.CollectibleProductId or ""
		if arg1.CollectiblesItemDetails then
			any_new_result1.collectibleLowestResalePrice = arg1.CollectiblesItemDetails.CollectibleLowestResalePrice or 0
			any_new_result1.collectibleLowestAvailableResaleProductId = arg1.CollectiblesItemDetails.CollectibleLowestAvailableResaleProductId or ""
			any_new_result1.collectibleLowestAvailableResaleItemInstanceId = arg1.CollectiblesItemDetails.CollectibleLowestAvailableResaleItemInstanceId or ""
			any_new_result1.collectibleQuantityLimitPerUser = arg1.CollectiblesItemDetails.CollectibleQuantityLimitPerUser or 0
			any_new_result1.collectibleIsLimited = arg1.CollectiblesItemDetails.IsLimited
		end
	end
	any_new_result1.creatorHasVerifiedBadge = arg1.Creator.HasVerifiedBadge
	if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
		any_new_result1.isLimited = arg1.IsLimited
		any_new_result1.isLimitedUnique = arg1.IsLimitedUnique
		return any_new_result1
	end
	local IsLimited = arg1.IsLimited
	if not IsLimited then
		IsLimited = arg1.IsLimitedUnique
	end
	any_new_result1.isLimited = IsLimited
	return any_new_result1
end
function module_upvr.fromHumanoidDescription(arg1) -- Line 135
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_5 = module_upvr.new()
	any_new_result1_5.assetId = tostring(arg1)
	return any_new_result1_5
end
function module_upvr.fromGetAssetBundles(arg1, arg2) -- Line 143
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_6 = module_upvr.new()
	any_new_result1_6.assetId = tostring(arg1)
	any_new_result1_6.bundlesAssetIsIn = arg2
	return any_new_result1_6
end
function module_upvr.fromBundleInfo(arg1, arg2) -- Line 150
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local any_new_result1_3 = module_upvr.new()
	any_new_result1_3.assetId = tostring(arg1)
	any_new_result1_3.parentBundleId = arg2.bundleId
	any_new_result1_3.bundlesAssetIsIn = {arg2.bundleId}
	any_new_result1_3.collectibleItemId = arg2.collectibleItemId
	any_new_result1_3.collectibleProductId = arg2.collectibleProductId
	any_new_result1_3.collectibleLowestResalePrice = arg2.collectibleLowestResalePrice
	any_new_result1_3.collectibleLowestAvailableResaleProductId = arg2.collectibleLowestAvailableResaleProductId
	any_new_result1_3.collectibleLowestAvailableResaleItemInstanceId = arg2.collectibleLowestAvailableResaleItemInstanceId
	any_new_result1_3.collectibleQuantityLimitPerUser = arg2.collectibleQuantityLimitPerUser
	any_new_result1_3.collectibleIsLimited = arg2.collectibleIsLimited
	any_new_result1_3.isForSale = arg2.isForSale
	any_new_result1_3.remaining = arg2.remaining
	any_new_result1_3.owned = arg2.owned
	if not any_new_result1_3.collectibleIsLimited then
		local isForSale = any_new_result1_3.isForSale
		if isForSale then
			isForSale = not any_new_result1_3.owned
		end
		any_new_result1_3.isForSale = isForSale
	end
	any_new_result1_3.description = arg2.description or ""
	any_new_result1_3.productType = Constants_upvr.ProductType.CollectibleItem
	if arg2.price then
		any_new_result1_3.price = arg2.price
	end
	return any_new_result1_3
end
function module_upvr.fromGetAssetFavoriteCount(arg1, arg2) -- Line 192
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_4 = module_upvr.new()
	any_new_result1_4.assetId = tostring(arg1)
	any_new_result1_4.numFavorites = arg2
	return any_new_result1_4
end
function module_upvr.fromGetEconomyProductInfo(arg1, arg2, arg3, arg4, arg5) -- Line 201
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_11 = module_upvr.new()
	any_new_result1_11.assetId = tostring(arg1.assetId)
	any_new_result1_11.owned = arg2
	if arg3 then
		any_new_result1_11.price = arg3
	end
	any_new_result1_11.isForSale = arg4
	any_new_result1_11.premiumPricing = arg5
	return any_new_result1_11
end
function module_upvr.fromGetItemDetails(arg1) -- Line 215
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_7 = module_upvr.new()
	any_new_result1_7.assetId = tostring(arg1.Id)
	any_new_result1_7.owned = arg1.Owned
	any_new_result1_7.isForSale = arg1.IsPurchasable
	any_new_result1_7.price = arg1.Price or 0
	any_new_result1_7.hasResellers = arg1.HasResellers
	any_new_result1_7.collectibleItemId = arg1.CollectibleItemId
	return any_new_result1_7
end
function module_upvr.fromPurchaseSuccess(arg1) -- Line 228
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_9 = module_upvr.new()
	any_new_result1_9.assetId = tostring(arg1)
	any_new_result1_9.owned = true
	return any_new_result1_9
end
function module_upvr.fromGetVersionInfo(arg1, arg2) -- Line 241
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_10 = module_upvr.new()
	local tostring_result1 = tostring(arg1)
	any_new_result1_10.assetId = tostring_result1
	if arg2.creatingUniverseId then
		tostring_result1 = tostring(arg2.creatingUniverseId)
	else
		tostring_result1 = nil
	end
	any_new_result1_10.creatingUniverseId = tostring_result1
	return any_new_result1_10
end
local Dash_upvr = require(game:GetService("CorePackages").Packages.Dash)
local FFlagEnableRestrictedAssetSaleLocationInspectAndBuy_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Flags.FFlagEnableRestrictedAssetSaleLocationInspectAndBuy)
function module_upvr.getSaleDetailsForCollectibles(arg1) -- Line 252
	--[[ Upvalues[3]:
		[1]: Dash_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: FFlagEnableRestrictedAssetSaleLocationInspectAndBuy_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_joinDeep_result1 = Dash_upvr.joinDeep({}, arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [108] 74. Error Block 45 start (CF ANALYSIS FAILED)
	local isForSale_2 = any_joinDeep_result1.isForSale
	if isForSale_2 then
		isForSale_2 = not any_joinDeep_result1.owned
	end
	any_joinDeep_result1.isForSale = isForSale_2
	do
		return any_joinDeep_result1
	end
	-- KONSTANTERROR: [108] 74. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [117] 80. Error Block 35 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [117] 80. Error Block 35 end (CF ANALYSIS FAILED)
end
return module_upvr