-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:04
-- Luau version 6, Types version 3
-- Time taken: 0.000547 seconds

local Parent = script.Parent.Parent
return require(Parent.Parent.Rodux).createReducer(require(Parent.Enums.ServerType).StandardServer, {
	[require(Parent.Actions.ServerTypeDetected).name] = function(arg1, arg2) -- Line 15
		return arg2.serverType
	end;
})