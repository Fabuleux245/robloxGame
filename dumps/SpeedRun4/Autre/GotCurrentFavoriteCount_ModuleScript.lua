-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:22
-- Luau version 6, Types version 3
-- Time taken: 0.001213 seconds

local Parent = script.Parent.Parent
local createInspectAndBuyKeyMapper = require(Parent.createInspectAndBuyKeyMapper)
local IsDetailsItemPartOfBundleAndOffsale_upvr = require(Parent.Selectors.IsDetailsItemPartOfBundleAndOffsale)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local var2_result1_upvr_2 = createInspectAndBuyKeyMapper("getBundleFavoriteCount")
local RetrievalStatus_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).Enum.RetrievalStatus
local var2_result1_upvr = createInspectAndBuyKeyMapper("getAssetFavoriteCount")
return function(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: IsDetailsItemPartOfBundleAndOffsale_upvr (readonly)
		[2]: UtilityFunctions_upvr (readonly)
		[3]: var2_result1_upvr_2 (readonly)
		[4]: RetrievalStatus_upvr (readonly)
		[5]: var2_result1_upvr (readonly)
	]]
	local assetId = arg1.detailsInformation.assetId
	local var10
	if not assetId then
		return false
	end
	local var4_result1 = IsDetailsItemPartOfBundleAndOffsale_upvr(arg1)
	if var4_result1 == nil then
		return false
	end
	if not arg1.assets[assetId] then
		return false
	end
	if var4_result1 then
		var10 = UtilityFunctions_upvr
		var10 = arg1.assets[assetId]
		var10 = var2_result1_upvr_2(arg1.storeId, var10.getBundleId(var10))
		local var13 = true
		if arg1.FetchingStatus[var10] ~= RetrievalStatus_upvr.Fetching then
			if arg1.FetchingStatus[var10] ~= RetrievalStatus_upvr.Done then
				var13 = false
			else
				var13 = true
			end
		end
		return var13
	end
	var10 = arg1.storeId
	local var2_result1_upvr_result1 = var2_result1_upvr(var10, assetId)
	var10 = true
	if arg1.FetchingStatus[var2_result1_upvr_result1] ~= RetrievalStatus_upvr.Fetching then
		if arg1.FetchingStatus[var2_result1_upvr_result1] ~= RetrievalStatus_upvr.Done then
			var10 = false
		else
			var10 = true
		end
	end
	return var10
end