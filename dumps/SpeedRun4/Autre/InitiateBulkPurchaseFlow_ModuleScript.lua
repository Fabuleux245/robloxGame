-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:53
-- Luau version 6, Types version 3
-- Time taken: 0.000902 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local BulkPurchaseRequested_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseRequested)
local getAccount_upvr = require(BulkPurchaseApp.NetworkRequests.getAccount)
local Promise_upvr = require(BulkPurchaseApp.Parent.Promise)
local BulkPurchaseStarted_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseStarted)
local BulkPurchaseFailed_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseFailed)
local ErrorCodeEnum_upvr = require(BulkPurchaseApp.Enums.ErrorCodeEnum)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 16, Named "InitiateBulkPurchaseFlow"
	--[[ Upvalues[6]:
		[1]: BulkPurchaseRequested_upvr (readonly)
		[2]: getAccount_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: BulkPurchaseStarted_upvr (readonly)
		[5]: BulkPurchaseFailed_upvr (readonly)
		[6]: ErrorCodeEnum_upvr (readonly)
	]]
	return function(arg1_2) -- Line 24
		--[[ Upvalues[12]:
			[1]: BulkPurchaseRequested_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: arg5 (readonly)
			[6]: arg6 (readonly)
			[7]: getAccount_upvr (copied, readonly)
			[8]: arg1 (readonly)
			[9]: Promise_upvr (copied, readonly)
			[10]: BulkPurchaseStarted_upvr (copied, readonly)
			[11]: BulkPurchaseFailed_upvr (copied, readonly)
			[12]: ErrorCodeEnum_upvr (copied, readonly)
		]]
		arg1_2:dispatch(BulkPurchaseRequested_upvr(arg2, arg3, arg4, arg5, arg6))
		local getAccount_upvr_result1, getAccount_upvr_result2 = getAccount_upvr(arg1)
		return Promise_upvr.all({getAccount_upvr_result1}):andThen(function(arg1_3) -- Line 30
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: BulkPurchaseStarted_upvr (copied, readonly)
				[3]: arg4 (copied, readonly)
			]]
			arg1_2:dispatch(BulkPurchaseStarted_upvr(arg4))
		end):catch(function(arg1_4) -- Line 38
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: BulkPurchaseFailed_upvr (copied, readonly)
				[3]: ErrorCodeEnum_upvr (copied, readonly)
			]]
			arg1_2:dispatch(BulkPurchaseFailed_upvr(ErrorCodeEnum_upvr.Generic))
		end)
	end
end