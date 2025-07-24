-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:08
-- Luau version 6, Types version 3
-- Time taken: 0.000480 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Actions = ExpChat.Actions
return require(ExpChat.Parent.Rodux).createReducer(false, {
	[require(Actions.ChatPrivacySettingsReceived).name] = function(arg1, arg2) -- Line 10
		return arg2.canUserChat
	end;
	[require(Actions.ChatPrivacySettingsFetchFailed).name] = function(arg1, arg2) -- Line 14
		return false
	end;
})