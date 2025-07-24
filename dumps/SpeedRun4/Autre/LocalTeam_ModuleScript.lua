-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:18
-- Luau version 6, Types version 3
-- Time taken: 0.000461 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
return require(ExpChatShared.Parent.Rodux).createReducer(nil, {
	[require(ExpChatShared.Actions.LocalTeamChanged).name] = function(arg1, arg2) -- Line 9
		return arg2.team
	end;
	[require(ExpChatShared.Actions.ClientAppLoaded).name] = function(arg1, arg2) -- Line 13
		return arg2.team
	end;
})