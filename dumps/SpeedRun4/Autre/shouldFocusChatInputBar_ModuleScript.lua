-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:20
-- Luau version 6, Types version 3
-- Time taken: 0.000698 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local module = {}
local any_new_result1_upvr = require(Parent.ExpChatShared).Logger:new("ExpChat/Reducers/"..script.Name)
module[require(ExpChat.Actions.AvatarContextMenuWhisperSelected).name] = function(arg1, arg2) -- Line 14
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	any_new_result1_upvr:trace("AvatarContextMenuWhisperSelected dispatched")
	return arg1 * -1
end
return require(Parent.Rodux).createReducer(1, module)