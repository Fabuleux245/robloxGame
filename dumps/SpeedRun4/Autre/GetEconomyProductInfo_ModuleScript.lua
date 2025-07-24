-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:34
-- Luau version 6, Types version 3
-- Time taken: 0.002131 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getEconomyProductInfo")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local AssetInfo_upvr = require(Parent.Models.AssetInfo)
local SetAssets_upvr = require(Parent.Actions.SetAssets)
local BundleInfo_upvr = require(Parent.Models.BundleInfo)
local SetBundles_upvr = require(Parent.Actions.SetBundles)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2, arg3) -- Line 26, Named "GetEconomyProductInfo"
	--[[ Upvalues[11]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: PerformFetch_upvr (readonly)
		[6]: AssetInfo_upvr (readonly)
		[7]: SetAssets_upvr (readonly)
		[8]: BundleInfo_upvr (readonly)
		[9]: SetBundles_upvr (readonly)
		[10]: SendCounter_upvr (readonly)
		[11]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 27
		--[[ Upvalues[12]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: PerformFetch_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: AssetInfo_upvr (copied, readonly)
			[7]: SetAssets_upvr (copied, readonly)
			[8]: BundleInfo_upvr (copied, readonly)
			[9]: arg3 (readonly)
			[10]: SetBundles_upvr (copied, readonly)
			[11]: SendCounter_upvr (copied, readonly)
			[12]: Constants_upvr (copied, readonly)
		]]
		local var15_upvr = arg2_2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1), function() -- Line 32
			--[[ Upvalues[11]:
				[1]: var15_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: AssetInfo_upvr (copied, readonly)
				[5]: arg1_2 (readonly)
				[6]: SetAssets_upvr (copied, readonly)
				[7]: BundleInfo_upvr (copied, readonly)
				[8]: arg3 (copied, readonly)
				[9]: SetBundles_upvr (copied, readonly)
				[10]: SendCounter_upvr (copied, readonly)
				[11]: Constants_upvr (copied, readonly)
			]]
			return var15_upvr.getEconomyProductInfo(arg1):andThen(function(arg1_3) -- Line 33
				--[[ Upvalues[9]:
					[1]: arg2 (copied, readonly)
					[2]: AssetInfo_upvr (copied, readonly)
					[3]: arg1_2 (copied, readonly)
					[4]: SetAssets_upvr (copied, readonly)
					[5]: BundleInfo_upvr (copied, readonly)
					[6]: arg3 (copied, readonly)
					[7]: SetBundles_upvr (copied, readonly)
					[8]: SendCounter_upvr (copied, readonly)
					[9]: Constants_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var17
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var17 = true
					return arg1_3.reason ~= "AlreadyOwned"
				end
				if arg1_3.purchasable or INLINED() then
					var17 = false
				end
				if not arg1_3.purchasable and arg1_3.reason == "InsufficientFunds" then
				end
				if not arg2 then
					arg1_2:dispatch(SetAssets_upvr({AssetInfo_upvr.fromGetEconomyProductInfo(arg1_3, var17, arg1_3.price or 0, true, arg1_3.premiumPricing)}))
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					arg1_2:dispatch(SetBundles_upvr({BundleInfo_upvr.fromGetEconomyProductInfo(var17, arg3, arg1_3.price or 0, true)}))
				end
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetEconomyProductInfo..Constants_upvr.CounterSuffix.RequestSucceeded))
			end, function(arg1_4) -- Line 54
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetEconomyProductInfo..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_5) -- Line 59
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetEconomyProductInfo..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end