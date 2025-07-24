-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:00
-- Luau version 6, Types version 3
-- Time taken: 0.000830 seconds

local CommercePurchaseApp = script:FindFirstAncestor("CommercePurchaseApp")
local Parent = CommercePurchaseApp.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectErrorCode_upvr = require(CommercePurchaseApp.Store.Selectors.selectErrorCode)
local selectCommerceProductId_upvr = require(CommercePurchaseApp.Store.Selectors.selectCommerceProductId)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local CommerceService_upvr = game:GetService("CommerceService")
local CommercePurchaseEnded_upvr = require(CommercePurchaseApp.Store.Actions.CommercePurchaseEnded)
return function() -- Line 15, Named "useCommercePurchaseErrorProps"
	--[[ Upvalues[7]:
		[1]: useSelector_upvr (readonly)
		[2]: selectErrorCode_upvr (readonly)
		[3]: selectCommerceProductId_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: CommerceService_upvr (readonly)
		[7]: CommercePurchaseEnded_upvr (readonly)
	]]
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectCommerceProductId_upvr)
	local var6_result1_upvr = useDispatch_upvr()
	return {
		onDismiss = React_upvr.useCallback(function() -- Line 20
			--[[ Upvalues[4]:
				[1]: CommerceService_upvr (copied, readonly)
				[2]: useSelector_upvr_result1_upvr (readonly)
				[3]: var6_result1_upvr (readonly)
				[4]: CommercePurchaseEnded_upvr (copied, readonly)
			]]
			CommerceService_upvr:SignalPromptCommerceProductPurchaseFinished(useSelector_upvr_result1_upvr, false)
			var6_result1_upvr(CommercePurchaseEnded_upvr())
		end, {useSelector_upvr_result1_upvr, var6_result1_upvr});
		errorCode = useSelector_upvr(selectErrorCode_upvr);
	}
end