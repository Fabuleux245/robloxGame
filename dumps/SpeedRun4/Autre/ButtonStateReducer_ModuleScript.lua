-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:35
-- Luau version 6, Types version 3
-- Time taken: 0.000400 seconds

local Parent = script.Parent.Parent
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer(require(Parent.Enums.ButtonState).Enabled, {
	[require(Parent.Actions.SetButtonState).name] = function(arg1, arg2) -- Line 11
		return arg2.state
	end;
})