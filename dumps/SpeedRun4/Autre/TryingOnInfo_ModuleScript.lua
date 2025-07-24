-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:20
-- Luau version 6, Types version 3
-- Time taken: 0.000440 seconds

return require(game:GetService("CorePackages").Packages.Rodux).createReducer({
	tryingOn = false;
	assetId = nil;
	assetTypeId = nil;
}, {
	[require(script.Parent.Parent.Actions.SetTryingOnInfo).name] = function(arg1, arg2) -- Line 13
		return {
			tryingOn = arg2.tryingOn;
			assetId = arg2.assetId;
			assetTypeId = arg2.assetTypeId;
		}
	end;
})