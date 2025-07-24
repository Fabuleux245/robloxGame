-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:31
-- Luau version 6, Types version 3
-- Time taken: 0.002747 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local AssetInfo_upvr = require(Parent.Models.AssetInfo)
local function getAssetIds_upvr(arg1) -- Line 15, Named "getAssetIds"
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: AssetInfo_upvr (readonly)
	]]
	local module = {}
	for i, v in pairs(Constants_upvr.AssetTypeIdStringToHumanoidDescriptionProp) do
		if Constants_upvr.AssetTypeIdToAccessoryTypeEnum[i] == nil then
			for _, v_2 in pairs(string.split(arg1[v] or "")) do
				if tonumber(v_2) and v_2 ~= '0' then
					table.insert(module, AssetInfo_upvr.fromHumanoidDescription(v_2))
				end
			end
		end
	end
	for _, v_3 in pairs(arg1:GetAccessories(true)) do
		module[#module + 1] = AssetInfo_upvr.fromHumanoidDescription(v_3.AssetId)
	end
	for _, v_4 in pairs(arg1:GetEmotes()) do
		for _, v_5 in pairs(v_4) do
			module[#module + 1] = AssetInfo_upvr.fromHumanoidDescription(v_5)
		end
	end
	return module
end
local Thunk_upvr = require(Parent.Thunk)
local module_upvr = {}
local GetProductInfo_upvr = require(Parent.Thunks.GetProductInfo)
local GetAssetBundles_upvr = require(Parent.Thunks.GetAssetBundles)
local GetVersionInfo_upvr = require(Parent.Thunks.GetVersionInfo)
local SetAssets_upvr = require(Parent.Actions.SetAssets)
local SetEquippedAssets_upvr = require(Parent.Actions.SetEquippedAssets)
return function(arg1, arg2) -- Line 49, Named "GetAssetsFromHumanoidDescription"
	--[[ Upvalues[8]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: getAssetIds_upvr (readonly)
		[4]: GetProductInfo_upvr (readonly)
		[5]: GetAssetBundles_upvr (readonly)
		[6]: GetVersionInfo_upvr (readonly)
		[7]: SetAssets_upvr (readonly)
		[8]: SetEquippedAssets_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 50
		--[[ Upvalues[8]:
			[1]: getAssetIds_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: GetProductInfo_upvr (copied, readonly)
			[5]: GetAssetBundles_upvr (copied, readonly)
			[6]: GetVersionInfo_upvr (copied, readonly)
			[7]: SetAssets_upvr (copied, readonly)
			[8]: SetEquippedAssets_upvr (copied, readonly)
		]]
		local getAssetIds_result1 = getAssetIds_upvr(arg1)
		if not arg2 then
			for _, v_6_upvr in ipairs(getAssetIds_result1) do
				coroutine.wrap(function() -- Line 55
					--[[ Upvalues[5]:
						[1]: arg1_2 (readonly)
						[2]: GetProductInfo_upvr (copied, readonly)
						[3]: v_6_upvr (readonly)
						[4]: GetAssetBundles_upvr (copied, readonly)
						[5]: GetVersionInfo_upvr (copied, readonly)
					]]
					arg1_2:dispatch(GetProductInfo_upvr(v_6_upvr.assetId))
					if v_6_upvr.parentBundleId == nil then
						arg1_2:dispatch(GetAssetBundles_upvr(v_6_upvr.assetId))
					end
					arg1_2:dispatch(GetVersionInfo_upvr(v_6_upvr.assetId))
				end)()
			end
			arg1_2:dispatch(SetAssets_upvr(getAssetIds_result1))
		else
			arg1_2:dispatch(SetEquippedAssets_upvr(getAssetIds_result1))
		end
	end)
end