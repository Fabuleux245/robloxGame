-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:41
-- Luau version 6, Types version 3
-- Time taken: 0.007691 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local Cryo_upvr = require(AppChat.Parent.Cryo)
local messageSortPredicate_upvr = require(AppChat.Components.ChatConversation.Utils.messageSortPredicate)
local filterForLinksWithPolicy_upvr = require(AppChat.Components.ChatConversation.Utils.filterForLinksWithPolicy)
local populateMessageWithState_upvr = require(AppChat.Conversations.populateMessageWithState)
local FFlagAppChatHandleDownAging_upvr = require(AppChat.Flags.FFlagAppChatHandleDownAging)
return function(arg1, arg2) -- Line 83, Named "selectMessagesPure"
	--[[ Upvalues[6]:
		[1]: getDeepValue_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: messageSortPredicate_upvr (readonly)
		[4]: filterForLinksWithPolicy_upvr (readonly)
		[5]: populateMessageWithState_upvr (readonly)
		[6]: FFlagAppChatHandleDownAging_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local conversation = arg1.conversation
	local var26
	if not conversation then
		return {
			itemList = {};
			previousMessagesState = arg2.previousMessagesState;
			previousSendingMessagesState = arg2.previousSendingMessagesState;
			previousMessagesResult = arg2.previousMessagesResult;
		}
	end
	local messages = conversation.messages
	local sendingMessages = conversation.sendingMessages
	local conversationId = arg1.conversationId
	local var31 = arg2.previousMessagesResult[conversationId]
	if not messages then
		local module_3 = {}
		local var33 = var31
		if not var33 then
			var33 = {}
		end
		module_3.itemList = var33
		module_3.previousMessagesState = arg2.previousMessagesState
		module_3.previousSendingMessagesState = arg2.previousSendingMessagesState
		module_3.previousMessagesResult = arg2.previousMessagesResult
		return module_3
	end
	if messages == arg2.previousMessagesState[conversationId] and sendingMessages == arg2.previousSendingMessagesState[conversationId] then
		local module_2 = {}
		local var35 = var31
		if not var35 then
			var35 = {}
		end
		module_2.itemList = var35
		module_2.previousMessagesState = arg2.previousMessagesState
		module_2.previousSendingMessagesState = arg2.previousSendingMessagesState
		module_2.previousMessagesResult = arg2.previousMessagesResult
		return module_2
	end
	local var36 = messages
	if sendingMessages then
		var36 = getDeepValue_upvr(sendingMessages, "values")
	else
		var36 = {}
	end
	var26 = Cryo_upvr
	local any_sort_result1 = Cryo_upvr.List.sort(var26.Dictionary.values(Cryo_upvr.Dictionary.join(getDeepValue_upvr(var36, "values"), var36)), messageSortPredicate_upvr)
	local tbl = {}
	var26 = var31
	if not var26 then
		var26 = {}
	end
	local clone_4 = table.clone(var26)
	if 0 < #clone_4 and clone_4[#clone_4].sent then
		var26 = clone_4[#clone_4].sent:GetUnixTimestamp()
	else
		var26 = math.huge
	end
	local var40
	if 0 < #clone_4 and clone_4[#clone_4].id then
		var40 = clone_4[#clone_4].id
	else
		var40 = ""
	end
	for i, v in any_sort_result1 do
		for i_2, v_2 in filterForLinksWithPolicy_upvr(v) do
			local var42
			if not var42 then
				var42 = any_sort_result1[i + 1]
			end
			local var7_result1 = populateMessageWithState_upvr({
				Users = arg1.Users;
				LocalUserId = arg1.localUserId;
			}, v_2, v.id, conversation, tbl[#tbl], not not var36[v.id], var42)
			local var45
			if var7_result1.sent and var7_result1.sent:GetUnixTimestamp() < var26 then
				var45 = true
			elseif var7_result1.sent and var7_result1.sent:GetUnixTimestamp() == var26 then
				if var40 == "" then
					var45 = true
				elseif var7_result1.id then
					if var40 >= var7_result1.id then
						var45 = false
					else
						var45 = true
					end
				else
					var45 = false
				end
			else
				var45 = false
			end
			if not var45 then
			end
			local stableKey = var7_result1.stableKey
			if not stableKey then
				stableKey = var7_result1.messageId
			end
			var7_result1.stable_key = `{stableKey}_{i_2}`
			table.insert(tbl, var7_result1)
		end
	end
	if FFlagAppChatHandleDownAging_upvr then
	elseif 0 + 1 >= #clone_4 then
	else
	end
	if true then
		local module = {}
		local var48 = var31
		if not var48 then
			var48 = {}
		end
		module.itemList = var48
		module.previousMessagesState = arg2.previousMessagesState
		module.previousSendingMessagesState = arg2.previousSendingMessagesState
		module.previousMessagesResult = arg2.previousMessagesResult
		return module
	end
	local clone_3 = table.clone(arg2.previousMessagesState)
	local clone = table.clone(arg2.previousSendingMessagesState)
	local clone_2 = table.clone(arg2.previousMessagesResult)
	clone_3[conversationId] = messages
	clone[conversationId] = sendingMessages
	clone_2[conversationId] = Cryo_upvr.List.reverse(tbl)
	return {
		itemList = clone_2[conversationId];
		previousMessagesState = clone_3;
		previousSendingMessagesState = clone;
		previousMessagesResult = clone_2;
	}
end