-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:19
-- Luau version 6, Types version 3
-- Time taken: 0.001954 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local Parent = CancelSubscriptionApp.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectExpirationDate_upvr = require(CancelSubscriptionApp.Store.Selectors.selectExpirationDate)
local selectSubscriptionId_upvr = require(CancelSubscriptionApp.Store.Selectors.selectSubscriptionId)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local CancelSubscriptionEnded_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionEnded)
local CancelSubscriptionRequested_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionRequested)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local CancelSubscriptionSucceeded_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionSucceeded)
local CancelSubscriptionFailed_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionFailed)
local ErrorStateEnum_upvr = require(CancelSubscriptionApp.Enums.ErrorStateEnum)
return function() -- Line 23, Named "useCancelUserSubscriptionRequestPromptProps"
	--[[ Upvalues[11]:
		[1]: useSelector_upvr (readonly)
		[2]: selectExpirationDate_upvr (readonly)
		[3]: selectSubscriptionId_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: CancelSubscriptionEnded_upvr (readonly)
		[7]: CancelSubscriptionRequested_upvr (readonly)
		[8]: MarketplaceService_upvr (readonly)
		[9]: CancelSubscriptionSucceeded_upvr (readonly)
		[10]: CancelSubscriptionFailed_upvr (readonly)
		[11]: ErrorStateEnum_upvr (readonly)
	]]
	local var14_upvr = useSelector_upvr(selectSubscriptionId_upvr) or ""
	local var6_result1_upvr = useDispatch_upvr()
	return {
		onCancel = React_upvr.useCallback(function() -- Line 28
			--[[ Upvalues[2]:
				[1]: var6_result1_upvr (readonly)
				[2]: CancelSubscriptionEnded_upvr (copied, readonly)
			]]
			var6_result1_upvr(CancelSubscriptionEnded_upvr())
		end, {var6_result1_upvr});
		onConfirm = React_upvr.useCallback(function() -- Line 32
			--[[ Upvalues[7]:
				[1]: var6_result1_upvr (readonly)
				[2]: CancelSubscriptionRequested_upvr (copied, readonly)
				[3]: MarketplaceService_upvr (copied, readonly)
				[4]: var14_upvr (readonly)
				[5]: CancelSubscriptionSucceeded_upvr (copied, readonly)
				[6]: CancelSubscriptionFailed_upvr (copied, readonly)
				[7]: ErrorStateEnum_upvr (copied, readonly)
			]]
			var6_result1_upvr(CancelSubscriptionRequested_upvr())
			local pcall_result1, pcall_result2 = pcall(function() -- Line 34
				--[[ Upvalues[2]:
					[1]: MarketplaceService_upvr (copied, readonly)
					[2]: var14_upvr (copied, readonly)
				]]
				return MarketplaceService_upvr:PerformCancelSubscription(var14_upvr)
			end)
			if pcall_result1 then
				var6_result1_upvr(CancelSubscriptionSucceeded_upvr(var14_upvr))
			else
				var6_result1_upvr(CancelSubscriptionFailed_upvr(ErrorStateEnum_upvr.ErrorCancelling, var14_upvr))
			end
		end, {var6_result1_upvr});
		expirationDate = useSelector_upvr(selectExpirationDate_upvr) or "";
		subscriptionId = var14_upvr;
	}
end