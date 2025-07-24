-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:36
-- Luau version 6, Types version 3
-- Time taken: 0.000774 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectPurchaseResults_upvr = require(BulkPurchaseApp.Store.Selectors.selectPurchaseResults)
local selectErrorCode_upvr = require(BulkPurchaseApp.Store.Selectors.selectErrorCode)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local BulkPurchaseEnded_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseEnded)
return function() -- Line 15, Named "useBulkPurchaseErrorProps"
	--[[ Upvalues[7]:
		[1]: useSelector_upvr (readonly)
		[2]: selectPurchaseResults_upvr (readonly)
		[3]: selectErrorCode_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: MarketplaceService_upvr (readonly)
		[7]: BulkPurchaseEnded_upvr (readonly)
	]]
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectPurchaseResults_upvr)
	local var6_result1_upvr = useDispatch_upvr()
	return {
		onDismiss = React_upvr.useCallback(function() -- Line 20
			--[[ Upvalues[4]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: useSelector_upvr_result1_upvr (readonly)
				[3]: var6_result1_upvr (readonly)
				[4]: BulkPurchaseEnded_upvr (copied, readonly)
			]]
			MarketplaceService_upvr:signalPromptBulkPurchaseFinished(3, useSelector_upvr_result1_upvr)
			var6_result1_upvr(BulkPurchaseEnded_upvr())
		end, {useSelector_upvr_result1_upvr, var6_result1_upvr});
		errorCode = useSelector_upvr(selectErrorCode_upvr);
	}
end