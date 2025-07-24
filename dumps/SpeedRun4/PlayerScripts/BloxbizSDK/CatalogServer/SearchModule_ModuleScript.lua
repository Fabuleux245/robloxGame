-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:09
-- Luau version 6, Types version 3
-- Time taken: 0.004603 seconds

local module_2 = {}
local tbl_2_upvr = {}
local function buildAssetData_upvr(arg1) -- Line 32, Named "buildAssetData"
	if not arg1.assetType then return end
	local var3 = 0
	if table.find(arg1.itemRestrictions, "LimitedUnique") or table.find(arg1.itemRestrictions, "Collectible") then
		var3 = 1
	elseif table.find(arg1.itemRestrictions, "Limited") then
		var3 = 2
	end
	local module = {
		Name = arg1.name;
	}
	local lowestPrice = arg1.lowestPrice
	if not lowestPrice then
		lowestPrice = arg1.price
	end
	module.Price = lowestPrice
	module.AssetId = arg1.id
	local assetType = arg1.assetType
	module.AssetType = assetType
	if arg1.priceStatus == "Offsale" then
		assetType = false
	else
		assetType = true
	end
	module.IsForSale = assetType
	module.IsLimited = var3
	module.Available = arg1.unitsAvailableForConsumption
	module.Purchased = arg1.purchaseCount
	return module
end
local function buildBundleData_upvr(arg1) -- Line 57, Named "buildBundleData"
	if not arg1.bundleType then return end
	local module_3 = {
		Name = arg1.name;
	}
	local lowestPrice_2 = arg1.lowestPrice
	if not lowestPrice_2 then
		lowestPrice_2 = arg1.price
	end
	module_3.Price = lowestPrice_2
	module_3.BundleId = arg1.id
	module_3.BundleType = arg1.bundleType
	return module_3
end
local merge_upvr = require(script.Parent.Parent.Utils).merge
local HttpService_upvr = game:GetService("HttpService")
local function DownloadPage_upvr(arg1, arg2) -- Line 70, Named "DownloadPage"
	--[[ Upvalues[4]:
		[1]: merge_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: buildAssetData_upvr (readonly)
		[4]: buildBundleData_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
	local AdRequestStats = require(script.Parent.Parent.AdRequestStats)
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(HttpService_upvr:PostAsync(arg2, HttpService_upvr:JSONEncode(merge_upvr(merge_upvr(AdRequestStats:getGameStats(), AdRequestStats:getPlayerStats(arg1)), AdRequestStats:getClientPlayerStats(arg1))), Enum.HttpContentType.ApplicationJson))
	if not any_JSONDecode_result1.data then return end
	local pairs_result1_4, pairs_result2_3, pairs_result3_2 = pairs(any_JSONDecode_result1.data)
	-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [86] 65. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [86] 65. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 46. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [86.16]
	if nil == "Asset" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTWARNING: GOTO [86] #65
		end
	else
	end
	-- KONSTANTERROR: [62] 46. Error Block 15 end (CF ANALYSIS FAILED)
end
local function RequestPage_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 104, Named "RequestPage"
	--[[ Upvalues[1]:
		[1]: DownloadPage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local formatted = require(script.Parent.Parent.BatchHTTP).getNewUrl("catalog/proxy").."&Limit=30&Keyword=%s&SortType=%s":format(arg2, arg3)
	if arg5 then
		if arg5.Categories then
			for _, v in pairs(arg5.Categories) do
				formatted = formatted.."&Category="..v
			end
		end
		if arg5.Subcategories then
			for _, v_2 in pairs(arg5.Subcategories) do
				formatted = formatted.."&Subcategory="..v_2
			end
		end
	end
	if arg6 then
		local pairs_result1_2, pairs_result2, pairs_result3 = pairs(arg6)
		for i_3, v_3 in pairs_result1_2, pairs_result2, pairs_result3 do
			formatted = formatted..'&'..i_3..'='..tostring(v_3)
		end
	end
	pairs_result1_2 = nil
	local var50 = pairs_result1_2
	if arg4 then
		local DownloadPage_result1, _ = DownloadPage_upvr(arg1, formatted.."&Cursor="..arg4)
		var50 = DownloadPage_result1
	else
		local DownloadPage_result1_2, DownloadPage_result2 = DownloadPage_upvr(arg1, formatted)
		var50 = DownloadPage_result1_2
	end
	if not var50 then
		return "No more pages"
	end
	return {
		Items = var50;
		NextPageCursor = DownloadPage_result2;
	}
end
local function GetNormalPage_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 157, Named "GetNormalPage"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: RequestPage_upvr (readonly)
	]]
	local var56 = tbl_2_upvr[arg1]
	local var57
	if var56 and var56.Keyword == arg2 and 1 < arg3 then
		if not var56.Pages[arg3] then
			var57 = var56.Pages[arg3 - 1] or false
			-- KONSTANTWARNING: GOTO [32] #25
		end
	else
		local tbl = {}
		tbl.Keyword = arg2
		tbl.Pages = {}
		tbl_2_upvr[arg1] = tbl
		var56 = tbl_2_upvr[arg1]
	end
	if var57 == false then
		return "No more pages"
	end
	local RequestPage_result1 = RequestPage_upvr(arg1, arg2, arg4, var57, arg5, arg6)
	if not RequestPage_result1 then
		return "No more pages"
	end
	var56.Pages[arg3] = RequestPage_result1.NextPageCursor
	return RequestPage_result1.Items
end
function module_2.GetItems(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 194
	--[[ Upvalues[1]:
		[1]: GetNormalPage_upvr (readonly)
	]]
	if not arg4 then
	end
	return GetNormalPage_upvr(arg1, arg2, arg3, 0, arg5, arg6)
end
function module_2.ResetPlayerCache(arg1) -- Line 210
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	tbl_2_upvr[arg1] = nil
end
return module_2