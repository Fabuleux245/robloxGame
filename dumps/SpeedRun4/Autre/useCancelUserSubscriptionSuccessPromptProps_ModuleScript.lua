-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:21
-- Luau version 6, Types version 3
-- Time taken: 0.000718 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local Parent = CancelSubscriptionApp.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectSubscriptionId_upvr = require(CancelSubscriptionApp.Store.Selectors.selectSubscriptionId)
local React_upvr = require(Parent.React)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local CancelSubscriptionEnded_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionEnded)
return function() -- Line 19, Named "useCancelUserSubscriptionSuccessPromptProps"
	--[[ Upvalues[6]:
		[1]: useDispatch_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: selectSubscriptionId_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: MarketplaceService_upvr (readonly)
		[6]: CancelSubscriptionEnded_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var11_upvr = useSelector_upvr(selectSubscriptionId_upvr) or ""
	return {
		onDismissed = React_upvr.useCallback(function() -- Line 23
			--[[ Upvalues[4]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: var11_upvr (readonly)
				[3]: useDispatch_upvr_result1_upvr (readonly)
				[4]: CancelSubscriptionEnded_upvr (copied, readonly)
			]]
			MarketplaceService_upvr:SignalUserSubscriptionStatusChanged(var11_upvr)
			useDispatch_upvr_result1_upvr(CancelSubscriptionEnded_upvr())
		end, {useDispatch_upvr_result1_upvr});
	}
end