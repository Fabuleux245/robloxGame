-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:17
-- Luau version 6, Types version 3
-- Time taken: 0.000984 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
return require(Parent.Rodux).createReducer(false, {
	[require(Parent.ExpChatShared).Actions.ClientAppLoaded.name] = function(arg1, arg2) -- Line 10
		return arg2.isGamepadConnected
	end;
	[require(ExpChat.Actions.LastInputTypeChanged).name] = function(arg1, arg2) -- Line 13
		if arg2.lastInputTypeUsed == Enum.UserInputType.Gamepad1 then
			return true
		end
		if arg2.lastInputTypeUsed == Enum.UserInputType.Keyboard then
			return false
		end
		return arg1
	end;
})