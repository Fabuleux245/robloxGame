-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:37
-- Luau version 6, Types version 3
-- Time taken: 0.001577 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getItemDetails")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local AssetInfo_upvr = require(Parent.Models.AssetInfo)
local SetAssets_upvr = require(Parent.Actions.SetAssets)
local BundleInfo_upvr = require(Parent.Models.BundleInfo)
local SetBundles_upvr = require(Parent.Actions.SetBundles)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2) -- Line 23, Named "GetItemDetails"
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
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 24
		--[[ Upvalues[11]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: PerformFetch_upvr (copied, readonly)
			[6]: AssetInfo_upvr (copied, readonly)
			[7]: SetAssets_upvr (copied, readonly)
			[8]: BundleInfo_upvr (copied, readonly)
			[9]: SetBundles_upvr (copied, readonly)
			[10]: SendCounter_upvr (copied, readonly)
			[11]: Constants_upvr (copied, readonly)
		]]
		local var15_upvr = arg2_2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1, arg2), function() -- Line 29
			--[[ Upvalues[10]:
				[1]: var15_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: AssetInfo_upvr (copied, readonly)
				[5]: arg1_2 (readonly)
				[6]: SetAssets_upvr (copied, readonly)
				[7]: BundleInfo_upvr (copied, readonly)
				[8]: SetBundles_upvr (copied, readonly)
				[9]: SendCounter_upvr (copied, readonly)
				[10]: Constants_upvr (copied, readonly)
			]]
			return var15_upvr.getItemDetails(arg1, arg2):andThen(function(arg1_3) -- Line 30
				--[[ Upvalues[8]:
					[1]: arg2 (copied, readonly)
					[2]: AssetInfo_upvr (copied, readonly)
					[3]: arg1_2 (copied, readonly)
					[4]: SetAssets_upvr (copied, readonly)
					[5]: BundleInfo_upvr (copied, readonly)
					[6]: SetBundles_upvr (copied, readonly)
					[7]: SendCounter_upvr (copied, readonly)
					[8]: Constants_upvr (copied, readonly)
				]]
				if arg2 == Enum.AvatarItemType.Asset then
					arg1_2:dispatch(SetAssets_upvr({AssetInfo_upvr.fromGetItemDetails(arg1_3)}))
				elseif arg2 == Enum.AvatarItemType.Bundle then
					arg1_2:dispatch(SetBundles_upvr({BundleInfo_upvr.fromGetItemDetails(arg1_3)}))
				else
					arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetItemDetailsRespondedWithUnknownItemType))
				end
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetItemDetails..Constants_upvr.CounterSuffix.RequestSucceeded))
			end, function(arg1_4) -- Line 44
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetItemDetails..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_5) -- Line 49
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetItemDetails..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end