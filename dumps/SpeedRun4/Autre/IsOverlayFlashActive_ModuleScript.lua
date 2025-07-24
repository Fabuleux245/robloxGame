-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:02
-- Luau version 6, Types version 3
-- Time taken: 0.000458 seconds

local Parent = script.Parent.Parent
return require(Parent.Parent.Rodux).createReducer(false, {
	[require(Parent.Actions.OverlayFlashActivated).name] = function(arg1, arg2) -- Line 14
		return true
	end;
	[require(Parent.Actions.OverlayFlashDeactivated).name] = function(arg1, arg2) -- Line 18
		return false
	end;
})