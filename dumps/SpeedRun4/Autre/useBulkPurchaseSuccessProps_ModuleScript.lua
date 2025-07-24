-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:41
-- Luau version 6, Types version 3
-- Time taken: 0.000912 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectPurchaseResults_upvr = require(BulkPurchaseApp.Store.Selectors.selectPurchaseResults)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local BulkPurchaseEnded_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseEnded)
return function() -- Line 12, Named "useBulkPurchaseSuccessProps"
	--[[ Upvalues[5]:
		[1]: useDispatch_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: selectPurchaseResults_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: BulkPurchaseEnded_upvr (readonly)
	]]
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectPurchaseResults_upvr)
	local var13
	for _, v in useSelector_upvr_result1_upvr.Items do
		if v.status == Enum.MarketplaceItemPurchaseStatus.Success then
			var13 += 1
		end
	end
	local var3_result1_upvr = useDispatch_upvr()
	return {
		onDismiss = function() -- Line 23
			--[[ Upvalues[4]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: useSelector_upvr_result1_upvr (readonly)
				[3]: var3_result1_upvr (readonly)
				[4]: BulkPurchaseEnded_upvr (copied, readonly)
			]]
			MarketplaceService_upvr:signalPromptBulkPurchaseFinished(1, useSelector_upvr_result1_upvr)
			var3_result1_upvr(BulkPurchaseEnded_upvr())
		end;
		itemCount = var13;
	}
end