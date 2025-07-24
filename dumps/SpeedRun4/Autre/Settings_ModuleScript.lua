-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:41
-- Luau version 6, Types version 3
-- Time taken: 0.000419 seconds

return require(game:GetService("CorePackages").Packages.Rodux).createReducer({
	preferredTransparency = 1;
	reducedMotion = false;
}, {
	[require(script.Parent.Parent.Actions.SetSettings).name] = function(arg1, arg2) -- Line 12
		return {
			preferredTransparency = arg2.preferredTransparency;
			reducedMotion = arg2.reducedMotion;
		}
	end;
})