-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:17
-- Luau version 6, Types version 3
-- Time taken: 0.000902 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local Parent = CancelSubscriptionApp.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectErrorState_upvr = require(CancelSubscriptionApp.Store.Selectors.selectErrorState)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local selectSubscriptionId_upvr = require(CancelSubscriptionApp.Store.Selectors.selectSubscriptionId)
local React_upvr = require(Parent.React)
local ErrorStateEnum_upvr = require(CancelSubscriptionApp.Enums.ErrorStateEnum)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local CancelSubscriptionEnded_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionEnded)
return function() -- Line 15, Named "useCancelUserSubscriptionErrorPromptProps"
	--[[ Upvalues[8]:
		[1]: useSelector_upvr (readonly)
		[2]: selectErrorState_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: selectSubscriptionId_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ErrorStateEnum_upvr (readonly)
		[7]: MarketplaceService_upvr (readonly)
		[8]: CancelSubscriptionEnded_upvr (readonly)
	]]
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectErrorState_upvr)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var14_upvr = useSelector_upvr(selectSubscriptionId_upvr) or ""
	return {
		onDismiss = React_upvr.useCallback(function() -- Line 20
			--[[ Upvalues[6]:
				[1]: useSelector_upvr_result1_upvr (readonly)
				[2]: ErrorStateEnum_upvr (copied, readonly)
				[3]: MarketplaceService_upvr (copied, readonly)
				[4]: var14_upvr (readonly)
				[5]: useDispatch_upvr_result1_upvr (readonly)
				[6]: CancelSubscriptionEnded_upvr (copied, readonly)
			]]
			if useSelector_upvr_result1_upvr == ErrorStateEnum_upvr.Expiring then
				MarketplaceService_upvr:SignalUserSubscriptionStatusChanged(var14_upvr)
			end
			useDispatch_upvr_result1_upvr(CancelSubscriptionEnded_upvr())
		end, {useSelector_upvr_result1_upvr, useDispatch_upvr_result1_upvr});
		errorState = useSelector_upvr_result1_upvr;
	}
end