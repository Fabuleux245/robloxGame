-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:24
-- Luau version 6, Types version 3
-- Time taken: 0.000532 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
return require(ExpChat.Parent.Rodux).createReducer({}, {
	[require(ExpChat.Actions.LikelySpeakingUsersUpdated).name] = function(arg1, arg2) -- Line 14
		return arg2.likelySpeakingUsers
	end;
})