-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:42
-- Luau version 6, Types version 3
-- Time taken: 0.001306 seconds

local Parent = script.Parent.Parent
local Thunk_upvr = require(Parent.Thunk)
local Constants_upvr = require(Parent.Constants)
local AssetInfo_upvr = require(Parent.Models.AssetInfo)
local SetAssets_upvr = require(Parent.Actions.SetAssets)
local BundleInfo_upvr = require(Parent.Models.BundleInfo)
local SetBundles_upvr = require(Parent.Actions.SetBundles)
return function(arg1, arg2) -- Line 12, Named "UpdateOwnedStatus"
	--[[ Upvalues[6]:
		[1]: Thunk_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: AssetInfo_upvr (readonly)
		[4]: SetAssets_upvr (readonly)
		[5]: BundleInfo_upvr (readonly)
		[6]: SetBundles_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, {}, function(arg1_2, arg2_2) -- Line 13
		--[[ Upvalues[7]:
			[1]: arg2 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: AssetInfo_upvr (copied, readonly)
			[5]: SetAssets_upvr (copied, readonly)
			[6]: BundleInfo_upvr (copied, readonly)
			[7]: SetBundles_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 12. Error Block 3 start (CF ANALYSIS FAILED)
		arg1_2:dispatch(SetAssets_upvr({AssetInfo_upvr.fromPurchaseSuccess(arg1)}))
		do
			return
		end
		-- KONSTANTERROR: [16] 12. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 24. Error Block 8 start (CF ANALYSIS FAILED)
		if arg2 == Constants_upvr.ItemType.Bundle and arg1_2:getState().bundles[arg1] then
			arg1_2:dispatch(SetBundles_upvr({BundleInfo_upvr.fromPurchaseSuccess(arg1)}))
		end
		-- KONSTANTERROR: [32] 24. Error Block 8 end (CF ANALYSIS FAILED)
	end)
end