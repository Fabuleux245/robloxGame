-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:14
-- Luau version 6, Types version 3
-- Time taken: 0.000338 seconds

return require(game:GetService("CorePackages").Packages.Rodux).createReducer(false, {
	[require(script.Parent.Parent.Actions.SetGamepadEnabled).name] = function(arg1, arg2) -- Line 8
		return arg2.gamepadEnabled
	end;
})