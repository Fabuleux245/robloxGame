-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:43
-- Luau version 6, Types version 3
-- Time taken: 0.004108 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local function conversationSortPredicate_upvr(arg1, arg2) -- Line 7, Named "conversationSortPredicate"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4
	if var4 then
		var4 = arg2.unixTime
		if var4 then
			if arg2.unixTime >= arg1.unixTime then
				var4 = false
			else
				var4 = true
			end
			return var4
		end
	end
	if not arg1.unixTime then
		if not arg2.unixTime then
			if string.lower(arg1.title) >= string.lower(arg2.title) then
			else
			end
			return true
		end
	end
	local unixTime_2 = arg1.unixTime
	if not unixTime_2 then
	end
	if arg2.unixTime ~= arg1.unixTime then
	else
	end
	return true
end
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local var8_upvw
local var9_upvw
local populateConversationWithState_upvr = require(AppChat.Conversations.populateConversationWithState)
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: getDeepValue_upvr (readonly)
		[2]: var8_upvw (read and write)
		[3]: var9_upvw (read and write)
		[4]: populateConversationWithState_upvr (readonly)
		[5]: conversationSortPredicate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7_result1 = getDeepValue_upvr(arg1, "ChatAppReducer.Conversations")
	if not var7_result1 then
		return {}
	end
	local var20 = arg1
	if var7_result1 ~= var8_upvw then
		var20 = false
	else
		var20 = true
	end
	if var20 then
		return var9_upvw
	end
	if getDeepValue_upvr(var20, "ChatAppReducer.ConversationsAsync.latestMessagesIsFetching") and var9_upvw then
		return var9_upvw
	end
	for _, v in pairs(var7_result1) do
		table.insert({}, populateConversationWithState_upvr(arg1, v))
		local var25
	end
	table.sort(var25, conversationSortPredicate_upvr)
	var8_upvw = var7_result1
	var9_upvw = var25
	return var25
end