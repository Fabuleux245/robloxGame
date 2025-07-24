-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:26
-- Luau version 6, Types version 3
-- Time taken: 0.000381 seconds

local AppChat = script:FindFirstAncestor("AppChat")
return require(AppChat.Parent.Rodux).createReducer("NotSet", {
	[require(AppChat.Actions.EnteredChatFromEntryPoint).name] = function(arg1, arg2) -- Line 11
		return arg2.entryPoint
	end;
})