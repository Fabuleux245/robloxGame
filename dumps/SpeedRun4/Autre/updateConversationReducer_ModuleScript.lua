-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:30
-- Luau version 6, Types version 3
-- Time taken: 0.003397 seconds

local function _(arg1, arg2, arg3) -- Line 12, Named "set"
	if arg1[arg2] == arg3 then
		return arg1
	end
	local clone_4 = table.clone(arg1)
	clone_4[arg2] = arg3
	return clone_4
end
local function updateConversationMessages_upvr(arg1, arg2, arg3) -- Line 24, Named "updateConversationMessages"
	local tbl = {}
	for i, v in arg1[arg3]:CreateIterator() do
		if not arg2[arg3]:Get(i) then
			table.insert(tbl, v)
		end
	end
	if 0 < #tbl then
		i = tbl
		arg2[arg3] = arg2[arg3]:Insert(table.unpack(i))
	end
end
local function _(arg1, arg2, arg3) -- Line 42, Named "updateConversationField"
	if arg2[arg3] == nil then
		arg2[arg3] = arg1[arg3]
	end
end
local Conversation_upvr = require(script:FindFirstAncestor("AppChat").Models.Conversation)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatFixUpdateReducerMessageState", false)
return function(arg1, arg2) -- Line 52, Named "updateConversationToState"
	--[[ Upvalues[3]:
		[1]: Conversation_upvr (readonly)
		[2]: updateConversationMessages_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20
	if arg2.conversationType == Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION then
		local any_IdForFakeOneOnOne_result1 = Conversation_upvr.IdForFakeOneOnOne(arg2.participants)
		if var20[any_IdForFakeOneOnOne_result1] ~= nil and var20[any_IdForFakeOneOnOne_result1] ~= arg2 then
			local var22 = var20
			if var22[any_IdForFakeOneOnOne_result1] == nil then
				var20 = var22
			else
				local clone_5 = table.clone(var22)
				clone_5[any_IdForFakeOneOnOne_result1] = nil
				var20 = clone_5
			end
		end
	end
	local var24 = var20
	local id_2 = arg2.id
	if var24[id_2] == arg2 then
		local _ = var24
	else
		local clone = table.clone(var24)
		clone[id_2] = arg2
	end
	local var28 = var20[arg2.id]
	local var29 = clone[arg2.id]
	if var29 and var28 then
		updateConversationMessages_upvr(var28, var29, "messages")
		updateConversationMessages_upvr(var28, var29, "sendingMessages")
		if game_DefineFastFlag_result1_upvr then
			if var29.previousCursor == nil then
				var29.previousCursor = var28.previousCursor
			end
			if var29.nextCursor == nil then
				var29.nextCursor = var28.nextCursor
			end
			if var29.fetchedOldestMessage == nil then
				var29.fetchedOldestMessage = var28.fetchedOldestMessage
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return clone
end