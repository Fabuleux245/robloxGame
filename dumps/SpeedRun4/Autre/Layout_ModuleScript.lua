-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:36
-- Luau version 6, Types version 3
-- Time taken: 0.000588 seconds

local Parent = script.Parent.Parent
return require(game:GetService("CorePackages").Packages.Rodux).createReducer(require(Parent.Constants).Layout.Large, {
	[require(Parent.Actions.SetLayout).name] = function(arg1, arg2) -- Line 14
		return arg2.layout
	end;
})