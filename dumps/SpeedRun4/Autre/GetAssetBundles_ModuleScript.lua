-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:30
-- Luau version 6, Types version 3
-- Time taken: 0.001497 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getAssetBundles")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local BundleInfo_upvr = require(Parent.Models.BundleInfo)
local GetProductInfo_upvr = require(Parent.Thunks.GetProductInfo)
local SetBundles_upvr = require(Parent.Actions.SetBundles)
local SetAssetToBundlesMapping_upvr = require(Parent.Actions.SetAssetToBundlesMapping)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1) -- Line 23, Named "GetAssetBundles"
	--[[ Upvalues[11]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: PerformFetch_upvr (readonly)
		[6]: BundleInfo_upvr (readonly)
		[7]: GetProductInfo_upvr (readonly)
		[8]: SetBundles_upvr (readonly)
		[9]: SetAssetToBundlesMapping_upvr (readonly)
		[10]: SendCounter_upvr (readonly)
		[11]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 24
		--[[ Upvalues[10]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: PerformFetch_upvr (copied, readonly)
			[5]: BundleInfo_upvr (copied, readonly)
			[6]: GetProductInfo_upvr (copied, readonly)
			[7]: SetBundles_upvr (copied, readonly)
			[8]: SetAssetToBundlesMapping_upvr (copied, readonly)
			[9]: SendCounter_upvr (copied, readonly)
			[10]: Constants_upvr (copied, readonly)
		]]
		local var15_upvr = arg2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1), function(arg1_3) -- Line 29
			--[[ Upvalues[9]:
				[1]: var15_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: BundleInfo_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: GetProductInfo_upvr (copied, readonly)
				[6]: SetBundles_upvr (copied, readonly)
				[7]: SetAssetToBundlesMapping_upvr (copied, readonly)
				[8]: SendCounter_upvr (copied, readonly)
				[9]: Constants_upvr (copied, readonly)
			]]
			return var15_upvr.getAssetBundles(arg1):andThen(function(arg1_4) -- Line 30
				--[[ Upvalues[8]:
					[1]: BundleInfo_upvr (copied, readonly)
					[2]: arg1_2 (copied, readonly)
					[3]: GetProductInfo_upvr (copied, readonly)
					[4]: SetBundles_upvr (copied, readonly)
					[5]: SetAssetToBundlesMapping_upvr (copied, readonly)
					[6]: arg1 (copied, readonly)
					[7]: SendCounter_upvr (copied, readonly)
					[8]: Constants_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				local pairs_result1, _, _ = pairs(arg1_4.data)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [10] 7. Error Block 2 start (CF ANALYSIS FAILED)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.7]
				local any_fromGetAssetBundles_result1 = BundleInfo_upvr.fromGetAssetBundles(nil)
				table.insert({}, any_fromGetAssetBundles_result1)
				table.insert({}, tostring(any_fromGetAssetBundles_result1.bundleId))
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local _, _, _ = pairs(nil.items)
				-- KONSTANTERROR: [10] 7. Error Block 2 end (CF ANALYSIS FAILED)
			end, function(arg1_5) -- Line 69
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetAssetBundles..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_6) -- Line 74
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetAssetBundles..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end