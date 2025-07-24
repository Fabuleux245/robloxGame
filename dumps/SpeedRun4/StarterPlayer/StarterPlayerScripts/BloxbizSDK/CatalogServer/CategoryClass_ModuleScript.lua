-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:47
-- Luau version 6, Types version 3
-- Time taken: 0.003870 seconds

local function BuildAssetData_upvr(arg1) -- Line 76, Named "BuildAssetData"
	if not arg1.assetType then return end
	local var1 = 0
	if table.find(arg1.itemRestrictions, "LimitedUnique") or table.find(arg1.itemRestrictions, "Collectible") then
		var1 = 1
	elseif table.find(arg1.itemRestrictions, "Limited") then
		var1 = 2
	end
	local module = {
		Name = arg1.name;
	}
	local lowestPrice_2 = arg1.lowestPrice
	if not lowestPrice_2 then
		lowestPrice_2 = arg1.price
	end
	module.Price = lowestPrice_2
	module.AssetId = arg1.id
	local assetType = arg1.assetType
	module.AssetType = assetType
	if arg1.priceStatus == "Offsale" then
		assetType = false
	else
		assetType = true
	end
	module.IsForSale = assetType
	module.IsLimited = var1
	module.Available = arg1.unitsAvailableForConsumption
	module.Purchased = arg1.purchaseCount
	return module
end
local function _(arg1) -- Line 102, Named "BuildBundleData"
	if not arg1.bundleType then return end
	local module_2 = {
		Name = arg1.name;
	}
	local lowestPrice_3 = arg1.lowestPrice
	if not lowestPrice_3 then
		lowestPrice_3 = arg1.price
	end
	module_2.Price = lowestPrice_3
	module_2.BundleId = arg1.id
	module_2.BundleType = arg1.bundleType
	return module_2
end
local merge_upvr = require(script.Parent.Parent.Utils).merge
local HttpService_upvr = game:GetService("HttpService")
local function DownloadPage_upvr(arg1, arg2) -- Line 116, Named "DownloadPage"
	--[[ Upvalues[3]:
		[1]: merge_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: BuildAssetData_upvr (readonly)
	]]
	local AdRequestStats = require(script.Parent.Parent.AdRequestStats)
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(HttpService_upvr:PostAsync(arg2, HttpService_upvr:JSONEncode(merge_upvr(merge_upvr(AdRequestStats:getGameStats(), AdRequestStats:getPlayerStats(arg1)), AdRequestStats:getClientPlayerStats(arg1))), Enum.HttpContentType.ApplicationJson))
	for _, v in any_JSONDecode_result1.data do
		local var15
		if v.itemType == "Asset" then
			var15 = BuildAssetData_upvr(v)
		elseif not v.bundleType then
			var15 = nil
		else
			var15 = {}
			var15.Name = v.name
			local lowestPrice = v.lowestPrice
			if not lowestPrice then
				lowestPrice = v.price
			end
			var15.Price = lowestPrice
			var15.BundleId = v.id
			var15.BundleType = v.bundleType
		end
		if var15 then
			table.insert({}, var15)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}, any_JSONDecode_result1.nextPageCursor
end
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
function module_3_upvr.new(arg1) -- Line 155
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_3_upvr)
	setmetatable_result1.Name = arg1.name
	setmetatable_result1.CategoryId = arg1.query.Category
	setmetatable_result1.SubcategoryId = arg1.query.Subcategory
	setmetatable_result1.Pages = {}
	setmetatable_result1.SortedPages = {}
	return setmetatable_result1
end
function module_3_upvr.RequestPage(arg1, arg2, arg3, arg4, arg5) -- Line 168
	--[[ Upvalues[1]:
		[1]: DownloadPage_upvr (readonly)
	]]
	local var19
	local var20
	local var21 = arg3[arg4 - 1]
	if var21 then
		if not var21.NextPageCursor then return end
		local DownloadPage_upvr_result1, DownloadPage_upvr_result2_2 = DownloadPage_upvr(arg2, require(script.Parent.Parent.BatchHTTP).getNewUrl("catalog/proxy").."&Limit=30&Category=%s&Subcategory=%s&SortType=%s":format(arg1.CategoryId, arg1.SubcategoryId or "", arg5 or "").."&Cursor="..var21.NextPageCursor)
		var19 = DownloadPage_upvr_result1
		var20 = DownloadPage_upvr_result2_2
	else
		if 1 < arg4 then return end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local DownloadPage_upvr_result1_2, DownloadPage_upvr_result2 = DownloadPage_upvr(arg2, require(script.Parent.Parent.BatchHTTP).getNewUrl("catalog/proxy").."&Limit=30&Category=%s&Subcategory=%s&SortType=%s":format(arg1.CategoryId, arg1.SubcategoryId or "", arg5 or ""))
		var19 = DownloadPage_upvr_result1_2
		var20 = DownloadPage_upvr_result2
	end
	return {
		Items = var19;
		NextPageCursor = var20;
	}
end
function module_3_upvr.GetSortedPage(arg1, arg2, arg3, arg4) -- Line 200
	local var27 = arg1.SortedPages[arg4]
	if not var27 then
		arg1.SortedPages[arg4] = {}
		var27 = arg1.SortedPages[arg4]
	end
	local var28 = var27[arg3]
	if not var28 then
		var28 = arg1:RequestPage(arg2, var27, arg3, arg4)
		var27[arg3] = var28
	end
	return var28
end
function module_3_upvr.GetNormalPage(arg1, arg2, arg3) -- Line 216
	local var29 = arg1.Pages[arg3]
	if not var29 then
		var29 = arg1:RequestPage(arg2, arg1.Pages, arg3)
		arg1.Pages[arg3] = var29
	end
	return var29
end
function module_3_upvr.GetItems(arg1, arg2, arg3, arg4) -- Line 226
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var30
	if arg4 then
		var30 = arg1:GetSortedPage(arg2, arg3, arg4)
	else
		var30 = arg1:GetNormalPage(arg2, arg3)
	end
	if not var30 or not var30.Items then
	end
	return nil
end
return module_3_upvr