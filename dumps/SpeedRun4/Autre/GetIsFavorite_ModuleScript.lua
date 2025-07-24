-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:21
-- Luau version 6, Types version 3
-- Time taken: 0.000619 seconds

local Parent = script.Parent.Parent
local IsDetailsItemPartOfBundleAndOffsale_upvr = require(Parent.Selectors.IsDetailsItemPartOfBundleAndOffsale)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: IsDetailsItemPartOfBundleAndOffsale_upvr (readonly)
		[2]: UtilityFunctions_upvr (readonly)
	]]
	local assetId = arg1.detailsInformation.assetId
	if not assetId then
		return false
	end
	local IsDetailsItemPartOfBundleAndOffsale_upvr_result1 = IsDetailsItemPartOfBundleAndOffsale_upvr(arg1)
	if IsDetailsItemPartOfBundleAndOffsale_upvr_result1 == nil then
		return false
	end
	local var7 = arg1.assets[assetId]
	if not var7 then
		return false
	end
	if IsDetailsItemPartOfBundleAndOffsale_upvr_result1 then
		return arg1.favorites.bundles[UtilityFunctions_upvr.getBundleId(var7)]
	end
	return arg1.favorites.assets[assetId]
end