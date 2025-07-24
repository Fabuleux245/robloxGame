-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:29
-- Luau version 6, Types version 3
-- Time taken: 0.001840 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local Analytics_upvr = require(Parent.Services.Analytics)
local module_upvr = {Network_upvr, Analytics_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var7_upvr = require(Parent.createInspectAndBuyKeyMapper)("deleteFavoriteForBundle")
local PerformFetch_upvr = require(CorePackages.Workspace.Packages.Http).PerformFetch
local SetFavoriteBundle_upvr = require(Parent.Actions.SetFavoriteBundle)
local BundleInfo_upvr = require(Parent.Models.BundleInfo)
local SetBundles_upvr = require(Parent.Actions.SetBundles)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
local Promise_upvr = require(CorePackages.Packages.Promise)
return function(arg1) -- Line 26, Named "DeleteFavoriteForBundle"
	--[[ Upvalues[12]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: var7_upvr (readonly)
		[6]: PerformFetch_upvr (readonly)
		[7]: SetFavoriteBundle_upvr (readonly)
		[8]: BundleInfo_upvr (readonly)
		[9]: SetBundles_upvr (readonly)
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
			[6]: SetFavoriteBundle_upvr (copied, readonly)
			[7]: BundleInfo_upvr (copied, readonly)
			[8]: SetBundles_upvr (copied, readonly)
			[9]: SendCounter_upvr (copied, readonly)
			[10]: Constants_upvr (copied, readonly)
			[11]: Promise_upvr (copied, readonly)
		]]
		local var16_upvr = arg2[Analytics_upvr]
		local var18_upvr = arg2[Network_upvr]
		return PerformFetch_upvr.Single(var7_upvr(arg1_2:getState().storeId, arg1), function() -- Line 33
			--[[ Upvalues[10]:
				[1]: var18_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SetFavoriteBundle_upvr (copied, readonly)
				[5]: BundleInfo_upvr (copied, readonly)
				[6]: SetBundles_upvr (copied, readonly)
				[7]: var16_upvr (readonly)
				[8]: SendCounter_upvr (copied, readonly)
				[9]: Constants_upvr (copied, readonly)
				[10]: Promise_upvr (copied, readonly)
			]]
			return var18_upvr.deleteFavoriteForBundle(arg1):andThen(function() -- Line 34
				--[[ Upvalues[9]:
					[1]: arg1_2 (copied, readonly)
					[2]: SetFavoriteBundle_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: BundleInfo_upvr (copied, readonly)
					[5]: SetBundles_upvr (copied, readonly)
					[6]: var16_upvr (copied, readonly)
					[7]: SendCounter_upvr (copied, readonly)
					[8]: Constants_upvr (copied, readonly)
					[9]: Promise_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SetFavoriteBundle_upvr(arg1, false))
				local numFavorites = arg1_2:getState().bundles[arg1].numFavorites
				arg1_2:dispatch(SetBundles_upvr({BundleInfo_upvr.fromGetBundleFavoriteCount(arg1, numFavorites - 1)}))
				var16_upvr.reportFavoriteItem("Bundle", arg1, false, true, "", numFavorites - 1)
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.DeleteFavoriteForBundle..Constants_upvr.CounterSuffix.RequestSucceeded))
				return Promise_upvr.resolve()
			end, function(arg1_3) -- Line 46
				--[[ Upvalues[4]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
					[4]: Promise_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.DeleteFavoriteForBundle..Constants_upvr.CounterSuffix.RequestRejected))
				return Promise_upvr.reject(tostring(arg1_3.StatusMessage))
			end)
		end)(arg1_2):catch(function(arg1_4) -- Line 52
			--[[ Upvalues[5]:
				[1]: arg1_2 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: var16_upvr (readonly)
				[4]: SendCounter_upvr (copied, readonly)
				[5]: Constants_upvr (copied, readonly)
			]]
			var16_upvr.reportFavoriteItem("Bundle", arg1, false, false, arg1_4, arg1_2:getState().bundles[arg1].numFavorites)
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.DeleteFavoriteForBundle..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end