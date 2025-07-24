-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:38
-- Luau version 6, Types version 3
-- Time taken: 0.000431 seconds

return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer({}, {
	[require(script.Parent.Parent.Actions.PromptNativeUpsellSuggestions).name] = function(arg1, arg2) -- Line 10
		return {
			products = arg2.products;
			selection = arg2.selection;
			virtualItemBadgeType = arg2.virtualItemBadgeType;
		}
	end;
})