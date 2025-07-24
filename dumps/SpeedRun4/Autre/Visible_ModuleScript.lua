-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:21
-- Luau version 6, Types version 3
-- Time taken: 0.000712 seconds

local Parent = script.Parent.Parent
return require(game:GetService("CorePackages").Packages.Rodux).createReducer(true, {
	[require(Parent.Actions.ShowMenu).name] = function(arg1, arg2) -- Line 8
		return true
	end;
	[require(Parent.Actions.HideMenu).name] = function(arg1, arg2) -- Line 11
		return false
	end;
})