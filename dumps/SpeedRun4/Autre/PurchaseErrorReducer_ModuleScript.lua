-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:41
-- Luau version 6, Types version 3
-- Time taken: 0.000725 seconds

local Parent = script.Parent.Parent
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer({}, {
	[require(Parent.Actions.ErrorOccurred).name] = function(arg1, arg2) -- Line 12
		return arg2.purchaseError
	end;
	[require(Parent.Actions.CompleteRequest).name] = function(arg1, arg2) -- Line 15
		return {}
	end;
})