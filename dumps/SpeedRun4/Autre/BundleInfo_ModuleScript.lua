-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:07
-- Luau version 6, Types version 3
-- Time taken: 0.009119 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
local module_upvr = {
	new = function() -- Line 30, Named "new"
		return {}
	end;
}
local MockId_upvr = require(script.Parent.Parent.MockId)
function module_upvr.mock() -- Line 36
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: MockId_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.name = ""
	any_new_result1.bundleId = MockId_upvr()
	any_new_result1.description = ""
	any_new_result1.bundleType = ""
	any_new_result1.creatorId = ""
	any_new_result1.creatorName = ""
	any_new_result1.productId = ""
	any_new_result1.isForSale = false
	any_new_result1.price = ""
	any_new_result1.assetIds = {}
	any_new_result1.numFavorites = 0
	any_new_result1.costumeId = ""
	any_new_result1.owned = false
	any_new_result1.isForSale = false
	any_new_result1.collectibleItemId = ""
	any_new_result1.collectibleIsLimited = nil
	any_new_result1.collectibleProductId = ""
	any_new_result1.collectibleLowestResalePrice = 0
	any_new_result1.collectibleLowestAvailableResaleProductId = ""
	any_new_result1.collectibleLowestAvailableResaleItemInstanceId = ""
	any_new_result1.collectibleQuantityLimitPerUser = 0
	any_new_result1.remaining = 0
	any_new_result1.productType = ""
	return any_new_result1
end
function module_upvr.fromGetAssetBundles(arg1) -- Line 66
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local any_new_result1_6 = module_upvr.new()
	any_new_result1_6.name = arg1.name
	any_new_result1_6.bundleId = tostring(arg1.id)
	any_new_result1_6.description = arg1.description
	any_new_result1_6.bundleType = arg1.bundleType
	any_new_result1_6.creatorId = tostring(arg1.creator.id)
	any_new_result1_6.creatorName = arg1.creator.name
	any_new_result1_6.productId = tostring(arg1.product.id)
	local collectibleItemDetail = arg1.collectibleItemDetail
	if collectibleItemDetail then
		if arg1.collectibleItemDetail.saleStatus ~= Constants_upvr.SaleStatus.OnSale then
			collectibleItemDetail = false
		else
			collectibleItemDetail = true
		end
		any_new_result1_6.isForSale = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.collectibleItemId or ""
		any_new_result1_6.collectibleItemId = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.collectibleProductId or ""
		any_new_result1_6.collectibleProductId = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.lowestResalePrice or 0
		any_new_result1_6.collectibleLowestResalePrice = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.lowestAvailableResaleProductId or ""
		any_new_result1_6.collectibleLowestAvailableResaleProductId = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.lowestAvailableResaleItemInstanceId or ""
		any_new_result1_6.collectibleLowestAvailableResaleItemInstanceId = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.quantityLimitPerUser or 0
		any_new_result1_6.collectibleQuantityLimitPerUser = collectibleItemDetail
		collectibleItemDetail = Constants_upvr.ProductType.CollectibleItem
		any_new_result1_6.productType = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.price
		any_new_result1_6.price = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.unitsAvailable or 0
		any_new_result1_6.remaining = collectibleItemDetail
		if arg1.collectibleItemDetail.collectibleItemType ~= "Limited" then
			collectibleItemDetail = false
		else
			collectibleItemDetail = true
		end
		any_new_result1_6.collectibleIsLimited = collectibleItemDetail
		collectibleItemDetail = arg1.collectibleItemDetail.saleLocation
		any_new_result1_6.saleLocation = collectibleItemDetail
	end
	any_new_result1_6.assetIds = {}
	for _, v in pairs(arg1.items) do
		if v.type == "UserOutfit" then
			any_new_result1_6.costumeId = tostring(v.id)
		else
			table.insert(any_new_result1_6.assetIds, tostring(v.id))
		end
	end
	return any_new_result1_6
end
function module_upvr.fromGetItemDetails(arg1) -- Line 113
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_3 = module_upvr.new()
	any_new_result1_3.bundleId = tostring(arg1.Id)
	any_new_result1_3.owned = arg1.Owned
	any_new_result1_3.isForSale = arg1.IsPurchasable
	any_new_result1_3.price = arg1.Price or 0
	any_new_result1_3.hasResellers = arg1.HasResellers
	any_new_result1_3.collectibleItemId = arg1.CollectibleItemId
	return any_new_result1_3
end
function module_upvr.fromGetBundleFavoriteCount(arg1, arg2) -- Line 126
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_5 = module_upvr.new()
	any_new_result1_5.bundleId = tostring(arg1)
	any_new_result1_5.numFavorites = arg2
	return any_new_result1_5
end
function module_upvr.fromGetEconomyProductInfo(arg1, arg2, arg3, arg4) -- Line 133
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.bundleId = tostring(arg2)
	any_new_result1_2.owned = arg1
	any_new_result1_2.price = arg3
	any_new_result1_2.isForSale = arg4
	return any_new_result1_2
end
function module_upvr.fromPurchaseSuccess(arg1) -- Line 142
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_4 = module_upvr.new()
	any_new_result1_4.bundleId = tostring(arg1)
	any_new_result1_4.owned = true
	return any_new_result1_4
end
local Dash_upvr = require(game:GetService("CorePackages").Packages.Dash)
function module_upvr.getSaleDetailsForCollectibles(arg1) -- Line 149
	--[[ Upvalues[2]:
		[1]: Dash_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_joinDeep_result1_2 = Dash_upvr.joinDeep({}, arg1)
	local var26
	if arg1.productType == var26 then
		local saleLocation = any_joinDeep_result1_2.saleLocation
		var26 = saleLocation
		if var26 then
			if saleLocation.saleLocationTypeId == Constants_upvr.SaleLocationType.ShopOnly then
				var26 = false
			else
				var26 = true
			end
		end
		if saleLocation then
			if saleLocation.saleLocationTypeId == Constants_upvr.SaleLocationType.ShopAndExperiencesById then
			else
			end
		end
		if saleLocation then
			if saleLocation.saleLocationTypeId == Constants_upvr.SaleLocationType.ShopAndExperiencesById then
				if type(saleLocation.universeIds) == "table" then
					if table.find(saleLocation.universeIds, game.GameId) == nil then
					else
					end
				end
			end
		end
		if saleLocation then
			if saleLocation.saleLocationTypeId == Constants_upvr.SaleLocationType.ExperiencesDevApiOnly then
			else
			end
		end
		local var28
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var28 = var26
			return var28
		end
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var28 = true
			return var28
		end
		if var28 and INLINED_3() and (true or INLINED_4()) then
			var28 = true
		end
		any_joinDeep_result1_2.isForSale = var28
		var28 = arg1.collectibleIsLimited
		if not var28 then
			var28 = any_joinDeep_result1_2.isForSale
			local var29 = var28
			if var29 then
				var29 = not any_joinDeep_result1_2.owned
			end
			any_joinDeep_result1_2.isForSale = var29
		end
	end
	return any_joinDeep_result1_2
end
return module_upvr