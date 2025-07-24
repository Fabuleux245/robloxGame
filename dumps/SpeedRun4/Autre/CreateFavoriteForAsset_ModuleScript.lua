-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:28
-- Luau version 6, Types version 3
-- Time taken: 0.001637 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local Analytics_upvr = require(Parent.Services.Analytics)
local module_upvr = {Network_upvr, Analytics_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var7_upvr = require(Parent.createInspectAndBuyKeyMapper)("createFavoriteForAsset")
local PerformFetch_upvr = require(CorePackages.Workspace.Packages.Http).PerformFetch
local SetFavoriteAsset_upvr = require(Parent.Actions.SetFavoriteAsset)
local AssetInfo_upvr = require(Parent.Models.AssetInfo)
local SetAssets_upvr = require(Parent.Actions.SetAssets)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
local Promise_upvr = require(CorePackages.Packages.Promise)
return function(arg1) -- Line 26, Named "CreateFavoriteForAsset"
	--[[ Upvalues[12]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: var7_upvr (readonly)
		[6]: PerformFetch_upvr (readonly)
		[7]: SetFavoriteAsset_upvr (readonly)
		[8]: AssetInfo_upvr (readonly)
		[9]: SetAssets_upvr (readonly)
		[10]: SendCounter_upvr (readonly)
		[11]: Constants_upvr (readonly)
		[12]: Promise_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 27
		--[[ Upvalues[11]:
			[1]: Network_upvr (copied, readonly)
			[2]: Analytics_upvr (copied, readonly)
			[3]: var7_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: PerformFetch_upvr (copied, readonly)
			[6]: SetFavoriteAsset_upvr (copied, readonly)
			[7]: AssetInfo_upvr (copied, readonly)
			[8]: SetAssets_upvr (copied, readonly)
			[9]: SendCounter_upvr (copied, readonly)
			[10]: Constants_upvr (copied, readonly)
			[11]: Promise_upvr (copied, readonly)
		]]
		local var16_upvr = arg2[Analytics_upvr]
		local var18_upvr = arg2[Network_upvr]
		return PerformFetch_upvr.Single(var7_upvr(arg1_2:getState().storeId, arg1), function(arg1_3) -- Line 33
			--[[ Upvalues[10]:
				[1]: var18_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SetFavoriteAsset_upvr (copied, readonly)
				[5]: AssetInfo_upvr (copied, readonly)
				[6]: SetAssets_upvr (copied, readonly)
				[7]: var16_upvr (readonly)
				[8]: SendCounter_upvr (copied, readonly)
				[9]: Constants_upvr (copied, readonly)
				[10]: Promise_upvr (copied, readonly)
			]]
			return var18_upvr.createFavoriteForAsset(arg1):andThen(function() -- Line 34
				--[[ Upvalues[9]:
					[1]: arg1_2 (copied, readonly)
					[2]: SetFavoriteAsset_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: AssetInfo_upvr (copied, readonly)
					[5]: SetAssets_upvr (copied, readonly)
					[6]: var16_upvr (copied, readonly)
					[7]: SendCounter_upvr (copied, readonly)
					[8]: Constants_upvr (copied, readonly)
					[9]: Promise_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SetFavoriteAsset_upvr(arg1, true))
				local numFavorites = arg1_2:getState().assets[arg1].numFavorites
				arg1_2:dispatch(SetAssets_upvr({AssetInfo_upvr.fromGetAssetFavoriteCount(arg1, numFavorites + 1)}))
				var16_upvr.reportFavoriteItem("Asset", arg1, true, true, "", numFavorites + 1)
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.CreateFavoriteForAsset..Constants_upvr.CounterSuffix.RequestSucceeded))
				return Promise_upvr.resolve()
			end, function(arg1_4) -- Line 46
				--[[ Upvalues[4]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
					[4]: Promise_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.CreateFavoriteForAsset..Constants_upvr.CounterSuffix.RequestRejected))
				return Promise_upvr.reject(tostring(arg1_4.StatusMessage))
			end)
		end)(arg1_2):catch(function(arg1_5) -- Line 52
			--[[ Upvalues[5]:
				[1]: arg1_2 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: var16_upvr (readonly)
				[4]: SendCounter_upvr (copied, readonly)
				[5]: Constants_upvr (copied, readonly)
			]]
			var16_upvr.reportFavoriteItem("Asset", arg1, true, false, arg1_5, arg1_2:getState().assets[arg1].numFavorites)
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.CreateFavoriteForAsset..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end