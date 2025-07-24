-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:07
-- Luau version 6, Types version 3
-- Time taken: 0.005817 seconds

local function BuildAssetData_upvr(arg1) -- Line 76, Named "BuildAssetData"
	if not arg1.assetType then return end
	local var1 = 0
	if table.find(arg1.itemRestrictions, "LimitedUnique") or table.find(arg1.itemRestrictions, "Collectible") then
		var1 = 1
	elseif table.find(arg1.itemRestrictions, "Limited") then
		var1 = 2
	end
	local module_3 = {
		Name = arg1.name;
	}
	local lowestPrice = arg1.lowestPrice
	if not lowestPrice then
		lowestPrice = arg1.price
	end
	module_3.Price = lowestPrice
	module_3.AssetId = arg1.id
	local assetType = arg1.assetType
	module_3.AssetType = assetType
	if arg1.priceStatus == "Offsale" then
		assetType = false
	else
		assetType = true
	end
	module_3.IsForSale = assetType
	module_3.IsLimited = var1
	module_3.Available = arg1.unitsAvailableForConsumption
	module_3.Purchased = arg1.purchaseCount
	return module_3
end
local function _(arg1) -- Line 102, Named "BuildBundleData"
	if not arg1.bundleType then return end
	local module = {
		Name = arg1.name;
	}
	local lowestPrice_2 = arg1.lowestPrice
	if not lowestPrice_2 then
		lowestPrice_2 = arg1.price
	end
	module.Price = lowestPrice_2
	module.BundleId = arg1.id
	module.BundleType = arg1.bundleType
	return module
end
local merge_upvr = require(script.Parent.Parent.Utils).merge
local HttpService_upvr = game:GetService("HttpService")
local function DownloadPage_upvr(arg1, arg2) -- Line 116, Named "DownloadPage"
	--[[ Upvalues[3]:
		[1]: merge_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: BuildAssetData_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local AdRequestStats = require(script.Parent.Parent.AdRequestStats)
	local var11
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [67] 51. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [67.15]
	if not nil.bundleType then
		var11 = nil
	else
		var11 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var11.Name = nil.name
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local lowestPrice_3 = nil.lowestPrice
		if not lowestPrice_3 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			lowestPrice_3 = nil.price
		end
		var11.Price = lowestPrice_3
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var11.BundleId = nil.id
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var11.BundleType = nil.bundleType
	end
	if var11 then
		table.insert({}, var11)
	end
	-- KONSTANTERROR: [67] 51. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 43. Error Block 22 start (CF ANALYSIS FAILED)
	if table.insert({}, var11) == "Asset" then
		-- KONSTANTWARNING: GOTO [92] #66
	end
	-- KONSTANTERROR: [57] 43. Error Block 22 end (CF ANALYSIS FAILED)
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 155
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_2_upvr)
	setmetatable_result1.Name = arg1.name
	setmetatable_result1.CategoryId = arg1.query.Category
	setmetatable_result1.SubcategoryId = arg1.query.Subcategory
	setmetatable_result1.Pages = {}
	setmetatable_result1.SortedPages = {}
	return setmetatable_result1
end
function module_2_upvr.RequestPage(arg1, arg2, arg3, arg4, arg5) -- Line 168
	--[[ Upvalues[1]:
		[1]: DownloadPage_upvr (readonly)
	]]
	local var15
	local var16
	local var17 = arg3[arg4 - 1]
	if var17 then
		if not var17.NextPageCursor then return end
		local DownloadPage_upvr_result1, DownloadPage_upvr_result2 = DownloadPage_upvr(arg2, require(script.Parent.Parent.BatchHTTP).getNewUrl("catalog/proxy").."&Limit=30&Category=%s&Subcategory=%s&SortType=%s":format(arg1.CategoryId, arg1.SubcategoryId or "", arg5 or "").."&Cursor="..var17.NextPageCursor)
		var15 = DownloadPage_upvr_result1
		var16 = DownloadPage_upvr_result2
	else
		if 1 < arg4 then return end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local DownloadPage_upvr_result1_2, DownloadPage_upvr_result2_2 = DownloadPage_upvr(arg2, require(script.Parent.Parent.BatchHTTP).getNewUrl("catalog/proxy").."&Limit=30&Category=%s&Subcategory=%s&SortType=%s":format(arg1.CategoryId, arg1.SubcategoryId or "", arg5 or ""))
		var15 = DownloadPage_upvr_result1_2
		var16 = DownloadPage_upvr_result2_2
	end
	return {
		Items = var15;
		NextPageCursor = var16;
	}
end
function module_2_upvr.GetSortedPage(arg1, arg2, arg3, arg4) -- Line 200
	local var23 = arg1.SortedPages[arg4]
	if not var23 then
		arg1.SortedPages[arg4] = {}
		var23 = arg1.SortedPages[arg4]
	end
	local var24 = var23[arg3]
	if not var24 then
		var24 = arg1:RequestPage(arg2, var23, arg3, arg4)
		var23[arg3] = var24
	end
	return var24
end
function module_2_upvr.GetNormalPage(arg1, arg2, arg3) -- Line 216
	local var25 = arg1.Pages[arg3]
	if not var25 then
		var25 = arg1:RequestPage(arg2, arg1.Pages, arg3)
		arg1.Pages[arg3] = var25
	end
	return var25
end
function module_2_upvr.GetItems(arg1, arg2, arg3, arg4) -- Line 226
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var26
	if arg4 then
		var26 = arg1:GetSortedPage(arg2, arg3, arg4)
	else
		var26 = arg1:GetNormalPage(arg2, arg3)
	end
	if not var26 or not var26.Items then
	end
	return nil
end
return module_2_upvr