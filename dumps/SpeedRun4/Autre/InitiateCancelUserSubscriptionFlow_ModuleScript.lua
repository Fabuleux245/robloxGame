-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:29
-- Luau version 6, Types version 3
-- Time taken: 0.001250 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local CancelSubscriptionRequested_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionRequested)
local LocalizationService_upvr = game:GetService("LocalizationService")
local ErrorStateEnum_upvr = require(CancelSubscriptionApp.Enums.ErrorStateEnum)
local getUserSubscriptionDetails_upvr = require(CancelSubscriptionApp.NetworkRequests.getUserSubscriptionDetails)
local CancelSubscriptionStarted_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionStarted)
local CancelSubscriptionFailed_upvr = require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionFailed)
return function(arg1, arg2) -- Line 9, Named "InitiateCancelUserSubscriptionFlow"
	--[[ Upvalues[6]:
		[1]: CancelSubscriptionRequested_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: ErrorStateEnum_upvr (readonly)
		[4]: getUserSubscriptionDetails_upvr (readonly)
		[5]: CancelSubscriptionStarted_upvr (readonly)
		[6]: CancelSubscriptionFailed_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[8]:
			[1]: CancelSubscriptionRequested_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: LocalizationService_upvr (copied, readonly)
			[4]: ErrorStateEnum_upvr (copied, readonly)
			[5]: getUserSubscriptionDetails_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: CancelSubscriptionStarted_upvr (copied, readonly)
			[8]: CancelSubscriptionFailed_upvr (copied, readonly)
		]]
		arg1_2:dispatch(CancelSubscriptionRequested_upvr(arg2))
		local RobloxLocaleId_upvr = LocalizationService_upvr.RobloxLocaleId
		local ErrorCancelling_upvw = ErrorStateEnum_upvr.ErrorCancelling
		return getUserSubscriptionDetails_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 16
			--[[ Upvalues[7]:
				[1]: RobloxLocaleId_upvr (readonly)
				[2]: arg1_2 (readonly)
				[3]: CancelSubscriptionStarted_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: ErrorCancelling_upvw (read and write)
				[6]: ErrorStateEnum_upvr (copied, readonly)
				[7]: CancelSubscriptionFailed_upvr (copied, readonly)
			]]
			if arg1_3.SubscriptionState == Enum.SubscriptionState.SubscribedWillRenew or arg1_3.SubscriptionState == Enum.SubscriptionState.SubscribedRenewalPaymentPending then
				arg1_2:dispatch(CancelSubscriptionStarted_upvr(arg2, arg1_3.NextRenewTime:FormatLocalTime("LL", RobloxLocaleId_upvr)))
			else
				if arg1_3.SubscriptionState == Enum.SubscriptionState.NeverSubscribed or arg1_3.SubscriptionState == Enum.SubscriptionState.Expired then
					ErrorCancelling_upvw = ErrorStateEnum_upvr.Unsubscribed
				elseif arg1_3.SubscriptionState == Enum.SubscriptionState.SubscribedWillNotRenew then
					ErrorCancelling_upvw = ErrorStateEnum_upvr.Expiring
				end
				arg1_2:dispatch(CancelSubscriptionFailed_upvr(ErrorCancelling_upvw, arg2))
			end
		end):catch(function(arg1_4) -- Line 35
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: CancelSubscriptionFailed_upvr (copied, readonly)
				[3]: ErrorStateEnum_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
			]]
			arg1_2:dispatch(CancelSubscriptionFailed_upvr(ErrorStateEnum_upvr.ErrorCancelling, arg2))
		end)
	end
end