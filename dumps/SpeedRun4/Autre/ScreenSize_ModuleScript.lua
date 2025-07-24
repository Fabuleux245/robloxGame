-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:07
-- Luau version 6, Types version 3
-- Time taken: 0.000400 seconds

return require(game:GetService("CorePackages").Packages.Rodux).createReducer(Vector2.new(0, 0), {
	[require(script.Parent.Parent.Actions.ScreenSizeUpdated).name] = function(arg1, arg2) -- Line 11
		return arg2.screenSize
	end;
})