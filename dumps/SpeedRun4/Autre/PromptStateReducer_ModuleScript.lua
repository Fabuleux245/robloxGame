-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:41
-- Luau version 6, Types version 3
-- Time taken: 0.000908 seconds

local Parent = script.Parent.Parent
local PromptState_upvr = require(Parent.Enums.PromptState)
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer(PromptState_upvr.None, {
	[require(Parent.Actions.SetPromptState).name] = function(arg1, arg2) -- Line 16
		return arg2.promptState
	end;
	[require(Parent.Actions.CompleteRequest).name] = function(arg1, arg2) -- Line 19
		--[[ Upvalues[1]:
			[1]: PromptState_upvr (readonly)
		]]
		return PromptState_upvr.None
	end;
	[require(Parent.Actions.ErrorOccurred).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: PromptState_upvr (readonly)
		]]
		return PromptState_upvr.Error
	end;
	[require(Parent.Actions.StartPurchase).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: PromptState_upvr (readonly)
		]]
		return PromptState_upvr.PurchaseInProgress
	end;
	[require(Parent.Actions.PromptNativeUpsell).name] = function(arg1, arg2) -- Line 28
		--[[ Upvalues[1]:
			[1]: PromptState_upvr (readonly)
		]]
		return PromptState_upvr.RobuxUpsell
	end;
	[require(Parent.Actions.PromptNativeUpsellSuggestions).name] = function(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: PromptState_upvr (readonly)
		]]
		return PromptState_upvr.RobuxUpsell
	end;
})