-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:02
-- Luau version 6, Types version 3
-- Time taken: 0.001898 seconds

local CommercePurchaseApp = script:FindFirstAncestor("CommercePurchaseApp")
local Parent = CommercePurchaseApp.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectPromptState_upvr = require(CommercePurchaseApp.Store.Selectors.selectPromptState)
local selectCommerceProductId_upvr = require(CommercePurchaseApp.Store.Selectors.selectCommerceProductId)
local selectCheckoutSessionId_upvr = require(CommercePurchaseApp.Store.Selectors.selectCheckoutSessionId)
local React_upvr = require(Parent.React)
local CommerceService_upvr = game:GetService("CommerceService")
local CommercePurchasePromptStateEnum_upvr = require(CommercePurchaseApp.Enums.CommercePurchasePromptStateEnum)
local CommercePurchaseEnded_upvr = require(CommercePurchaseApp.Store.Actions.CommercePurchaseEnded)
return function() -- Line 16, Named "usePurchaseBrowserClosedListenerEffect"
	--[[ Upvalues[9]:
		[1]: useDispatch_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: selectPromptState_upvr (readonly)
		[4]: selectCommerceProductId_upvr (readonly)
		[5]: selectCheckoutSessionId_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: CommerceService_upvr (readonly)
		[8]: CommercePurchasePromptStateEnum_upvr (readonly)
		[9]: CommercePurchaseEnded_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectPromptState_upvr)
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(selectCommerceProductId_upvr)
	local var4_result1_upvr = useSelector_upvr(selectCheckoutSessionId_upvr)
	React_upvr.useEffect(function() -- Line 21
		--[[ Upvalues[7]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: CommerceService_upvr (copied, readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: CommercePurchasePromptStateEnum_upvr (copied, readonly)
			[5]: useSelector_upvr_result1_upvr_2 (readonly)
			[6]: var4_result1_upvr (readonly)
			[7]: CommercePurchaseEnded_upvr (copied, readonly)
		]]
		local var17_upvw
		if useDispatch_upvr_result1_upvr then
			var17_upvw = CommerceService_upvr.PurchaseBrowserClosed:Connect(function() -- Line 24
				--[[ Upvalues[7]:
					[1]: useSelector_upvr_result1_upvr (copied, readonly)
					[2]: CommercePurchasePromptStateEnum_upvr (copied, readonly)
					[3]: CommerceService_upvr (copied, readonly)
					[4]: useSelector_upvr_result1_upvr_2 (copied, readonly)
					[5]: var4_result1_upvr (copied, readonly)
					[6]: useDispatch_upvr_result1_upvr (copied, readonly)
					[7]: CommercePurchaseEnded_upvr (copied, readonly)
				]]
				if useSelector_upvr_result1_upvr == CommercePurchasePromptStateEnum_upvr.Checkout then
					CommerceService_upvr:SignalPromptCommerceProductPurchaseFinished(useSelector_upvr_result1_upvr_2, true, var4_result1_upvr)
					useDispatch_upvr_result1_upvr(CommercePurchaseEnded_upvr())
				end
			end)
		end
		return function() -- Line 35
			--[[ Upvalues[1]:
				[1]: var17_upvw (read and write)
			]]
			if var17_upvw then
				var17_upvw:Disconnect()
				var17_upvw = nil
			end
		end
	end, {useDispatch_upvr_result1_upvr, useSelector_upvr_result1_upvr, useSelector_upvr_result1_upvr_2, var4_result1_upvr})
end