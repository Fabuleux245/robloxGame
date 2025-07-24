-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:26
-- Luau version 6, Types version 3
-- Time taken: 0.001287 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local CancelUserSubscriptionAsyncPromptStateEnum_upvr = require(CancelSubscriptionApp.Enums.CancelUserSubscriptionAsyncPromptStateEnum)
local function _() -- Line 22, Named "createInitialState"
	--[[ Upvalues[1]:
		[1]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (readonly)
	]]
	return {
		promptState = CancelUserSubscriptionAsyncPromptStateEnum_upvr.None;
	}
end
return require(CancelSubscriptionApp.Parent.Rodux).createReducer({
	promptState = CancelUserSubscriptionAsyncPromptStateEnum_upvr.None;
}, {
	[require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionEnded).name] = function(arg1, arg2) -- Line 29
		--[[ Upvalues[1]:
			[1]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (readonly)
		]]
		return {
			promptState = CancelUserSubscriptionAsyncPromptStateEnum_upvr.None;
		}
	end;
	[require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionSucceeded).name] = function(arg1, arg2) -- Line 35
		--[[ Upvalues[1]:
			[1]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (readonly)
		]]
		local clone_3 = table.clone(arg1)
		clone_3.subscriptionId = arg2.subscriptionId
		clone_3.promptState = CancelUserSubscriptionAsyncPromptStateEnum_upvr.Success
		return clone_3
	end;
	[require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionFailed).name] = function(arg1, arg2) -- Line 44
		--[[ Upvalues[1]:
			[1]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (readonly)
		]]
		local clone = table.clone(arg1)
		clone.errorState = arg2.errorState
		clone.subscriptionId = arg2.subscriptionId
		clone.promptState = CancelUserSubscriptionAsyncPromptStateEnum_upvr.Error
		return clone
	end;
	[require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionRequested).name] = function(arg1, arg2) -- Line 54
		--[[ Upvalues[1]:
			[1]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (readonly)
		]]
		local clone_2 = table.clone(arg1)
		clone_2.subscriptionId = arg2.subscriptionId
		clone_2.promptState = CancelUserSubscriptionAsyncPromptStateEnum_upvr.Pending
		return clone_2
	end;
	[require(CancelSubscriptionApp.Store.Actions.CancelSubscriptionStarted).name] = function(arg1, arg2) -- Line 63
		--[[ Upvalues[1]:
			[1]: CancelUserSubscriptionAsyncPromptStateEnum_upvr (readonly)
		]]
		local clone_4 = table.clone(arg1)
		clone_4.promptState = CancelUserSubscriptionAsyncPromptStateEnum_upvr.Request
		clone_4.subscriptionId = arg2.subscriptionId
		clone_4.expirationDate = arg2.expirationDate
		return clone_4
	end;
})