-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:22
-- Luau version 6, Types version 3
-- Time taken: 0.000376 seconds

local AppChat = script:FindFirstAncestor("AppChat")
return require(AppChat.Parent.Rodux).createReducer(false, {
	[require(AppChat.Actions.SetAppLoaded).name] = function(arg1, arg2) -- Line 9
		return arg2.value
	end;
})