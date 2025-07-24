-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:04
-- Luau version 6, Types version 3
-- Time taken: 0.000999 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Conversation_upvr = require(AppChat.Models.Conversation)
local Immutable_upvr = require(AppChat.Parent.AppCommonLib).Immutable
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[2]:
		[1]: Conversation_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var7
	if arg2.conversationType == Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION then
		local any_IdForFakeOneOnOne_result1 = Conversation_upvr.IdForFakeOneOnOne(arg2.participants)
		if var7[any_IdForFakeOneOnOne_result1] ~= nil then
			var7 = Immutable_upvr.Set(var7, any_IdForFakeOneOnOne_result1, nil)
		end
	end
	if not var7[arg2.id] then
		return Immutable_upvr.Set(var7, arg2.id, arg2)
	end
	return var7
end