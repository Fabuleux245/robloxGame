-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:49
-- Luau version 6, Types version 3
-- Time taken: 0.001219 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local BulkPurchasePromptStateEnum_upvr = require(BulkPurchaseApp.Enums.BulkPurchasePromptStateEnum)
local function _() -- Line 22, Named "createInitialState"
	--[[ Upvalues[1]:
		[1]: BulkPurchasePromptStateEnum_upvr (readonly)
	]]
	return {
		promptState = BulkPurchasePromptStateEnum_upvr.None;
	}
end
return require(BulkPurchaseApp.Parent.Rodux).createReducer({
	promptState = BulkPurchasePromptStateEnum_upvr.None;
}, {
	[require(BulkPurchaseApp.Store.Actions.BulkPurchaseEnded).name] = function(arg1, arg2) -- Line 29
		--[[ Upvalues[1]:
			[1]: BulkPurchasePromptStateEnum_upvr (readonly)
		]]
		return {
			promptState = BulkPurchasePromptStateEnum_upvr.None;
		}
	end;
	[require(BulkPurchaseApp.Store.Actions.BulkPurchaseSucceeded).name] = function(arg1, arg2) -- Line 32
		local clone_3 = table.clone(arg1)
		clone_3.itemStatuses = arg2.itemStatuses
		clone_3.promptState = arg2.promptState
		return clone_3
	end;
	[require(BulkPurchaseApp.Store.Actions.BulkPurchaseFailed).name] = function(arg1, arg2) -- Line 38
		--[[ Upvalues[1]:
			[1]: BulkPurchasePromptStateEnum_upvr (readonly)
		]]
		local clone = table.clone(arg1)
		clone.errorCode = arg2.errorCode
		clone.promptState = BulkPurchasePromptStateEnum_upvr.Error
		return clone
	end;
	[require(BulkPurchaseApp.Store.Actions.BulkPurchaseRequested).name] = function(arg1, arg2) -- Line 44
		local clone_2 = table.clone(arg1)
		clone_2.itemData = arg2.itemData
		clone_2.options = arg2.options
		clone_2.orderRequest = arg2.orderRequest
		clone_2.balance = arg2.balance
		clone_2.totalCost = arg2.totalCost
		return clone_2
	end;
	[require(BulkPurchaseApp.Store.Actions.BulkPurchaseStarted).name] = function(arg1, arg2) -- Line 53
		--[[ Upvalues[1]:
			[1]: BulkPurchasePromptStateEnum_upvr (readonly)
		]]
		local clone_4 = table.clone(arg1)
		clone_4.promptState = BulkPurchasePromptStateEnum_upvr.Request
		clone_4.balance = arg2.balance
		return clone_4
	end;
})