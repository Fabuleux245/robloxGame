-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:21
-- Luau version 6, Types version 3
-- Time taken: 0.001096 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local Parent = CancelSubscriptionApp.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useNetwork_upvr = require(Parent.EconomyCommonCoreScriptHooks).useNetwork
local React_upvr = require(Parent.React)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local CancelUserSubscriptionAsyncPromptStateEnum_upvr = require(CancelSubscriptionApp.Enums.CancelUserSubscriptionAsyncPromptStateEnum)
local InitiateCancelUserSubscriptionFlow_upvr = require(CancelSubscriptionApp.Store.Thunks.InitiateCancelUserSubscriptionFlow)
return function(arg1) -- Line 11, Named "useCancelSubscriptionRequestedListenerEffect"
	--[[ Upvalues[6]:
		[1]: useDispatch_upvr (readonly)
		[2]: useNetwork_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (readonly)
		[6]: InitiateCancelUserSubscriptionFlow_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useNetwork_upvr_result1_upvr = useNetwork_upvr()
	local tbl = {useDispatch_upvr_result1_upvr, useNetwork_upvr_result1_upvr}
	tbl[3] = arg1
	React_upvr.useEffect(function() -- Line 14
		--[[ Upvalues[6]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: useNetwork_upvr_result1_upvr (readonly)
			[3]: MarketplaceService_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (copied, readonly)
			[6]: InitiateCancelUserSubscriptionFlow_upvr (copied, readonly)
		]]
		local var12_upvw
		if useDispatch_upvr_result1_upvr and useNetwork_upvr_result1_upvr then
			var12_upvw = MarketplaceService_upvr.PromptCancelSubscriptionRequested:Connect(function(arg1_2) -- Line 18
				--[[ Upvalues[5]:
					[1]: arg1 (copied, readonly)
					[2]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (copied, readonly)
					[3]: useDispatch_upvr_result1_upvr (copied, readonly)
					[4]: InitiateCancelUserSubscriptionFlow_upvr (copied, readonly)
					[5]: useNetwork_upvr_result1_upvr (copied, readonly)
				]]
				if arg1 == CancelUserSubscriptionAsyncPromptStateEnum_upvr.None then
					useDispatch_upvr_result1_upvr(InitiateCancelUserSubscriptionFlow_upvr(useNetwork_upvr_result1_upvr, arg1_2))
				end
			end)
		end
		return function() -- Line 25
			--[[ Upvalues[1]:
				[1]: var12_upvw (read and write)
			]]
			if var12_upvw then
				var12_upvw:Disconnect()
				var12_upvw = nil
			end
		end
	end, tbl)
end