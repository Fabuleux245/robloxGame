-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:16
-- Luau version 6, Types version 3
-- Time taken: 0.000640 seconds

return require(game:GetService("CorePackages").Packages.Rodux).createReducer({
	itemType = nil;
	itemId = nil;
}, {
	[require(script.Parent.Parent.Actions.SetItemBeingPurchased).name] = function(arg1, arg2) -- Line 12
		return {
			itemType = arg2.itemType;
			itemId = arg2.itemId;
		}
	end;
})