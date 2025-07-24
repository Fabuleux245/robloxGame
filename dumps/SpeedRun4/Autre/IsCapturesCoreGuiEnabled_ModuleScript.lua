-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:00
-- Luau version 6, Types version 3
-- Time taken: 0.000681 seconds

local Parent = script.Parent.Parent
return require(Parent.Parent.Rodux).createReducer(true, {
	[require(Parent.Actions.CapturesCoreGuiDisabled).name] = function(arg1, arg2) -- Line 14
		return false
	end;
	[require(Parent.Actions.CapturesCoreGuiEnabled).name] = function(arg1, arg2) -- Line 18
		return true
	end;
})