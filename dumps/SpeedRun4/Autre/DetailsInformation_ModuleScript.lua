-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:11
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

return require(game:GetService("CorePackages").Packages.Rodux).createReducer({
	viewingDetails = false;
	assetId = nil;
}, {
	[require(script.Parent.Parent.Actions.SetDetailsInformation).name] = function(arg1, arg2) -- Line 12
		return {
			viewingDetails = arg2.viewingDetails;
			assetId = arg2.assetId;
		}
	end;
})