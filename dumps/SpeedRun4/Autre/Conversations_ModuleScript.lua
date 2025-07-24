-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:24
-- Luau version 6, Types version 3
-- Time taken: 0.026075 seconds

local Players_upvr = game:GetService("Players")
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local AppChatNetworking = require(Parent.AppChatNetworking)
local LuauPolyfill_upvr = require(Parent.LuauPolyfill)
local Conversations = require(AppChat.Conversations)
local NetworkingChat = require(AppChat.Http.NetworkingChat)
local Conversation_upvr = require(AppChat.Models.Conversation)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
local OrderedMap_upvr = require(Parent.AppCommonLib).OrderedMap
local Functional_upvr = require(Parent.AppCommonLib).Functional
local MessageModel_upvr = require(AppChat.Models.MessageModel)
local updateConversationReducer_upvr = require(script.Parent.updateConversationReducer)
local function markConversationAndMessagesAsRead_upvr(arg1, arg2) -- Line 52, Named "markConversationAndMessagesAsRead"
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var15 = arg1[arg2]
	if not var15 then
		warn("Conversation "..arg2.." not found in ReadConversation reducer")
		return arg1
	end
	assert(var15, "FFlagLuauTinyControlFlowAnalysis")
	local any_Set_result1_3 = Immutable_upvr.Set(Immutable_upvr.Set(var15, "messages", var15.messages:Map(function(arg1_2) -- Line 61
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (copied, readonly)
		]]
		if arg1_2.read then
			return arg1_2
		end
		return Immutable_upvr.Set(arg1_2, "read", true)
	end)), "hasUnreadMessages", false)
	return Immutable_upvr.Set(arg1, any_Set_result1_3.id, any_Set_result1_3)
end
local function addMessagesToConversation_upvr(arg1, arg2, arg3) -- Line 77, Named "addMessagesToConversation"
	--[[ Upvalues[2]:
		[1]: Immutable_upvr (readonly)
		[2]: OrderedMap_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var37 = arg1[arg2]
	local var38
	if var37 then
		local var39
		local previewMessageId_2 = var37.previewMessageId
		var38 = 0
		if previewMessageId_2 then
			if var37.messages then
				local any_Get_result1_3 = var37.messages:Get(previewMessageId_2)
				if any_Get_result1_3 then
					var38 = any_Get_result1_3.sent:GetUnixTimestamp()
				end
			end
		end
		for i = 1, #arg3.messages do
			local var42 = arg3.messages[i]
			local any_Get_result1_5 = var37.messages:Get(var42.id)
			if any_Get_result1_5 then
				if var39 then
					var39.previousMessageId = any_Get_result1_5.id
				end
				if var42.previousMessageId == nil and any_Get_result1_5.previousMessageId ~= nil then
					var42.previousMessageId = any_Get_result1_5.previousMessageId
				end
				local read_2 = var42.read
				if not read_2 then
					read_2 = any_Get_result1_5.read
				end
				var42.read = read_2
			elseif var42.isPreviewable and var38 < var42.sent:GetUnixTimestamp() then
				local id = var42.id
				var38 = var42.sent:GetUnixTimestamp()
			end
		end
		local any_JoinDictionaries_result1 = Immutable_upvr.JoinDictionaries(var37, {
			previewMessageId = id;
		})
		local any_Insert_result1 = OrderedMap_upvr.Insert(any_JoinDictionaries_result1.messages, unpack(arg3.messages))
		if arg3.exclusiveStartMessageId then
			if 0 < #arg3.messages and any_Insert_result1:Get(arg3.exclusiveStartMessageId) then
				any_Insert_result1 = any_Insert_result1:Insert(Immutable_upvr.Set(any_Insert_result1:Get(arg3.exclusiveStartMessageId), "previousMessageId", arg3.messages[1].id))
			end
		end
		local var49 = id
		if var49 then
			var49 = any_Insert_result1
			if var49 then
				var49 = any_Insert_result1:Get(id)
			end
		end
		local var51
		if var49 then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var51 = any_JoinDictionaries_result1.lastUpdated:GetUnixTimestamp()
				return var51
			end
			if not any_JoinDictionaries_result1.lastUpdated or not INLINED() then
				var51 = 0
			end
			if var51 >= var49.sent:GetUnixTimestamp() or not var49.sent then
			end
		end
		if not arg3.shouldMarkConversationUnread then
		end
		local any_Set_result1 = Immutable_upvr.Set(Immutable_upvr.JoinDictionaries(any_JoinDictionaries_result1, {
			messages = any_Insert_result1;
			lastUpdated = any_JoinDictionaries_result1.lastUpdated;
			hasUnreadMessages = any_JoinDictionaries_result1.hasUnreadMessages;
			nextCursor = arg3.nextCursor;
			previousCursor = arg3.previousCursor;
		}), "usersTyping", {})
		return Immutable_upvr.Set(arg1, any_Set_result1.id, any_Set_result1)
	end
	return arg1
end
local function _(arg1, arg2) -- Line 163, Named "messagesFromResponse"
	--[[ Upvalues[2]:
		[1]: Functional_upvr (readonly)
		[2]: MessageModel_upvr (readonly)
	]]
	if not arg2 then
		return {}
	end
	local var55_upvw
	return Functional_upvr.MapReverse(arg2, function(arg1_3) -- Line 170
		--[[ Upvalues[3]:
			[1]: MessageModel_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var55_upvw (read and write)
		]]
		local any_fromWeb_result1 = MessageModel_upvr.fromWeb(arg1_3, arg1, var55_upvw)
		var55_upvw = any_fromWeb_result1.id
		return any_fromWeb_result1
	end)
end
local function messagesFromResponseOfChannelsApi_upvr(arg1, arg2) -- Line 178, Named "messagesFromResponseOfChannelsApi"
	--[[ Upvalues[1]:
		[1]: MessageModel_upvr (readonly)
	]]
	if not arg2 then
		return {}
	end
	for i_2 = #arg2, 1, -1 do
		local any_fromChannelsApi_result1 = MessageModel_upvr.fromChannelsApi(arg2[i_2], arg1, nil)
		if any_fromChannelsApi_result1 then
			table.insert({}, any_fromChannelsApi_result1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function getMessagesFromConversationResponse_upvr(arg1) -- Line 200, Named "getMessagesFromConversationResponse"
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var59
	if not var59 then
		var59 = {}
	end
	if arg1.preview_message then
		var59 = Immutable_upvr.JoinLists({arg1.preview_message}, var59)
	end
	return var59
end
local function _(arg1) -- Line 211, Named "isMessageFromSelf"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
local function getShouldMarkConversationUnread_upvr(arg1, arg2) -- Line 217, Named "getShouldMarkConversationUnread"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if not arg1 or not arg1.messages or not arg2 then
		return false
	end
	local var63 = arg1.messages.values[arg1.messages.keys[#arg1.messages.keys]]
	if not var63 or not var63.sent or not var63.sent:GetUnixTimestamp() then
	end
	for i_3 = #arg2, 1, -1 do
		local var64 = arg2[i_3]
		if var64 then
			if var64.sent:GetUnixTimestamp() <= 0 then
				return false
			end
			if var64.senderTargetId ~= tostring(Players_upvr.LocalPlayer.UserId) and var64.isBadgeable then
				return true
			end
		end
	end
	return false
end
local module = {
	[require(AppChat.Conversations.Actions.ReceivedConversation).name] = function(arg1, arg2) -- Line 254
		--[[ Upvalues[1]:
			[1]: updateConversationReducer_upvr (readonly)
		]]
		return updateConversationReducer_upvr(arg1, arg2.conversation)
	end;
	[NetworkingChat.StartGroupConversation.Succeeded.name] = function(arg1, arg2) -- Line 257
		--[[ Upvalues[2]:
			[1]: Conversation_upvr (readonly)
			[2]: updateConversationReducer_upvr (readonly)
		]]
		return updateConversationReducer_upvr(arg1, Conversation_upvr.fromWeb(arg2.responseBody.conversation))
	end;
	[NetworkingChat.StartOneToOneConversation.Succeeded.name] = function(arg1, arg2) -- Line 262
		--[[ Upvalues[2]:
			[1]: Conversation_upvr (readonly)
			[2]: updateConversationReducer_upvr (readonly)
		]]
		return updateConversationReducer_upvr(arg1, Conversation_upvr.fromWeb(arg2.responseBody.conversation))
	end;
	[AppChatNetworking.rodux.CreateConversation.Succeeded.name] = function(arg1, arg2) -- Line 267
		--[[ Upvalues[2]:
			[1]: ConversationChannels_upvr (readonly)
			[2]: updateConversationReducer_upvr (readonly)
		]]
		local responseBody_9 = arg2.responseBody
		local var73
		if responseBody_9 then
			if responseBody_9.conversations and responseBody_9.conversations[1] and responseBody_9.conversations[1].status == "success" then
				var73 = updateConversationReducer_upvr(var73, ConversationChannels_upvr.fromChannelsApi(responseBody_9.conversations[1]))
			end
		end
		return var73
	end;
}
local addConversation_upvr = require(AppChat.Utils.addConversation)
module[AppChatNetworking.rodux.DuplicateConversation.Succeeded.name] = function(arg1, arg2) -- Line 281
	--[[ Upvalues[2]:
		[1]: ConversationChannels_upvr (readonly)
		[2]: addConversation_upvr (readonly)
	]]
	local responseBody_5 = arg2.responseBody
	local var77
	if responseBody_5 then
		if responseBody_5.conversations and responseBody_5.conversations[1] then
			var77 = addConversation_upvr(var77, ConversationChannels_upvr.fromChannelsApi(responseBody_5.conversations[1]))
		end
	end
	return var77
end
module[Conversations.Actions.ReceivedMessages.name] = function(arg1, arg2) -- Line 290
	--[[ Upvalues[1]:
		[1]: addMessagesToConversation_upvr (readonly)
	]]
	return addMessagesToConversation_upvr(arg1, arg2.conversationId, arg2)
end
module[Conversations.Actions.SendingMessage.name] = function(arg1, arg2) -- Line 293
	--[[ Upvalues[2]:
		[1]: OrderedMap_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var80 = arg1[arg2.conversationId]
	local var81
	if var80 then
		local any_Set_result1_4 = Immutable_upvr.Set(var80, "sendingMessages", OrderedMap_upvr.Insert(var80.sendingMessages, arg2.message))
		var81 = Immutable_upvr.Set(var81, any_Set_result1_4.id, any_Set_result1_4)
	end
	return var81
end
module[Conversations.Actions.SentMessage.name] = function(arg1, arg2) -- Line 304
	--[[ Upvalues[2]:
		[1]: OrderedMap_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var84 = arg1[arg2.conversationId]
	local var85
	if var84 then
		local any_Set_result1_13 = Immutable_upvr.Set(var84, "sendingMessages", OrderedMap_upvr.Delete(var84.sendingMessages, arg2.messageId))
		var85 = Immutable_upvr.Set(var85, any_Set_result1_13.id, any_Set_result1_13)
	end
	return var85
end
module[require(AppChat.Conversations.Actions.RenamedGroupConversation).name] = function(arg1, arg2) -- Line 315
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local conversationId_5 = arg2.conversationId
	local var89 = arg1[conversationId_5]
	local var90
	if var89 then
		var90 = Immutable_upvr.Set(var90, conversationId_5, Immutable_upvr.JoinDictionaries(var89, {
			lastUpdated = arg2.lastUpdated;
			title = arg2.title;
			isDefaultTitle = arg2.isDefaultTitle;
		}))
	end
	return var90
end
module[require(AppChat.Conversations.Actions.HasUnreadMessages).name] = function(arg1, arg2) -- Line 330
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local conversation = arg2.conversation
	if conversation then
		conversation = arg1[arg2.conversation.id]
	end
	if conversation then
	end
	return Immutable_upvr.Set(arg1, arg2.conversation.id, Immutable_upvr.Set(conversation, "hasUnreadMessages", true))
end
module[require(AppChat.Conversations.Actions.ChangedParticipants).name] = function(arg1, arg2) -- Line 339
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local conversationId_3 = arg2.conversationId
	local var96 = arg1[conversationId_3]
	local var97
	if var96 then
		var97 = Immutable_upvr.Set(var97, conversationId_3, Immutable_upvr.JoinDictionaries(var96, {
			participants = arg2.participants;
			lastUpdated = arg2.lastUpdated;
			title = arg2.title;
		}))
	end
	return var97
end
module[require(AppChat.Conversations.Actions.RemovedConversation).name] = function(arg1, arg2) -- Line 355
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	return Immutable_upvr.Set(arg1, arg2.conversationId, nil)
end
module[require(AppChat.Conversations.Actions.SetUserTyping).name] = function(arg1, arg2) -- Line 359
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var101 = arg1[arg2.conversationId]
	local var102
	if var101 then
		local any_Set_result1_8 = Immutable_upvr.Set(var101, "usersTyping", Immutable_upvr.Set(var101.usersTyping, arg2.userId, arg2.value))
		var102 = Immutable_upvr.Set(var102, any_Set_result1_8.id, any_Set_result1_8)
	end
	return var102
end
module[require(AppChat.Conversations.Actions.FetchingOlderMessages).name] = function(arg1, arg2) -- Line 370
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var105 = arg1[arg2.conversationId]
	local var106
	if var105 then
		local any_Set_result1_5 = Immutable_upvr.Set(var105, "fetchingOlderMessages", arg2.fetchingOlderMessages)
		var106 = Immutable_upvr.Set(var106, any_Set_result1_5.id, any_Set_result1_5)
	end
	return var106
end
module[require(AppChat.Conversations.Actions.FetchedOldestMessage).name] = function(arg1, arg2) -- Line 379
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var109 = arg1[arg2.conversationId]
	if var109 then
		local any_Set_result1_11 = Immutable_upvr.Set(var109, "fetchedOldestMessage", arg2.fetchedOldestMessage)
		return Immutable_upvr.Set(arg1, any_Set_result1_11.id, any_Set_result1_11)
	end
	return arg1
end
module[require(AppChat.Conversations.Actions.ReadConversation).name] = function(arg1, arg2) -- Line 388
	--[[ Upvalues[1]:
		[1]: markConversationAndMessagesAsRead_upvr (readonly)
	]]
	return markConversationAndMessagesAsRead_upvr(arg1, arg2.conversationId)
end
module[Conversations.Actions.MessageModerated.name] = function(arg1, arg2) -- Line 391
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var117 = arg1[arg2.conversationId]
	local var118
	if var117 then
		local any_Get_result1_6 = var117.sendingMessages:Get(arg2.messageId)
		if any_Get_result1_6 then
			local any_Set_result1_15 = Immutable_upvr.Set(var117, "sendingMessages", var117.sendingMessages:Insert(Immutable_upvr.Set(any_Get_result1_6, "moderated", true)))
			var118 = Immutable_upvr.Set(var118, any_Set_result1_15.id, any_Set_result1_15)
		end
	end
	return var118
end
module[Conversations.Actions.MessageFailedToSend.name] = function(arg1, arg2) -- Line 405
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var122 = arg1[arg2.conversationId]
	local var123
	if var122 then
		local any_Get_result1_2 = var122.sendingMessages:Get(arg2.messageId)
		if any_Get_result1_2 then
			local any_Set_result1_12 = Immutable_upvr.Set(var122, "sendingMessages", var122.sendingMessages:Insert(Immutable_upvr.Set(any_Get_result1_2, "failed", true)))
			var123 = Immutable_upvr.Set(var123, any_Set_result1_12.id, any_Set_result1_12)
		end
	end
	return var123
end
module[require(AppChat.Conversations.Actions.SetConversationLoadingStatus).name] = function(arg1, arg2) -- Line 419
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var127 = arg1[arg2.conversationId]
	if var127 then
		local any_Set_result1_10 = Immutable_upvr.Set(var127, "initialLoadingStatus", arg2.value)
		return Immutable_upvr.Set(arg1, any_Set_result1_10.id, any_Set_result1_10)
	end
	return arg1
end
module[require(AppChat.Conversations.Actions.SetUserLeavingConversation).name] = function(arg1, arg2) -- Line 428
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local var130 = arg1[arg2.id]
	local var131
	if var130 then
		local any_Set_result1_6 = Immutable_upvr.Set(var130, "isUserLeaving", arg2.isLeaving)
		var131 = Immutable_upvr.Set(var131, any_Set_result1_6.id, any_Set_result1_6)
	end
	return var131
end
module[require(AppChat.Conversations.Actions.SetPinnedGameForConversation).name] = function(arg1, arg2) -- Line 436
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	local conversationId_2 = arg2.conversationId
	local var135 = arg1[conversationId_2]
	local var136
	if var135 then
		var136 = Immutable_upvr.Set(var136, conversationId_2, Immutable_upvr.JoinDictionaries(var135, {
			pinnedGame = {
				rootPlaceId = arg2.rootPlaceId;
				universeId = arg2.universeId;
			};
		}))
	end
	return var136
end
module[NetworkingChat.GetUserConversations.Succeeded.name] = function(arg1, arg2) -- Line 454
	--[[ Upvalues[2]:
		[1]: Conversation_upvr (readonly)
		[2]: updateConversationReducer_upvr (readonly)
	]]
	local var147
	for _, v in ipairs(arg2.responseBody) do
		var147 = updateConversationReducer_upvr(var147, Conversation_upvr.fromWeb(v))
	end
	return var147
end
module[AppChatNetworking.rodux.GetUserConversations.Succeeded.name] = function(arg1, arg2) -- Line 463
	--[[ Upvalues[6]:
		[1]: ConversationChannels_upvr (readonly)
		[2]: updateConversationReducer_upvr (readonly)
		[3]: getMessagesFromConversationResponse_upvr (readonly)
		[4]: LuauPolyfill_upvr (readonly)
		[5]: MessageModel_upvr (readonly)
		[6]: addMessagesToConversation_upvr (readonly)
	]]
	local responseBody_3 = arg2.responseBody
	local var154
	if responseBody_3 then
		if responseBody_3.conversations then
			for _, v_2 in responseBody_3.conversations do
				local any_fromChannelsApi_result1_upvr = ConversationChannels_upvr.fromChannelsApi(v_2)
				var154 = updateConversationReducer_upvr(var154, any_fromChannelsApi_result1_upvr)
				local getMessagesFromConversationResponse_result1_3 = getMessagesFromConversationResponse_upvr(v_2)
				if getMessagesFromConversationResponse_result1_3 and 0 < #getMessagesFromConversationResponse_result1_3 then
					var154 = addMessagesToConversation_upvr(var154, any_fromChannelsApi_result1_upvr.id, {
						messages = LuauPolyfill_upvr.Array.map(getMessagesFromConversationResponse_result1_3, function(arg1_4) -- Line 473
							--[[ Upvalues[2]:
								[1]: MessageModel_upvr (copied, readonly)
								[2]: any_fromChannelsApi_result1_upvr (readonly)
							]]
							return MessageModel_upvr.fromChannelsApi(arg1_4, any_fromChannelsApi_result1_upvr.id)
						end);
					})
				end
			end
		end
	end
	return var154
end
module[NetworkingChat.GetConversations.Succeeded.name] = function(arg1, arg2) -- Line 488
	--[[ Upvalues[2]:
		[1]: Conversation_upvr (readonly)
		[2]: updateConversationReducer_upvr (readonly)
	]]
	local var167
	for _, v_3 in ipairs(arg2.responseBody) do
		var167 = updateConversationReducer_upvr(var167, Conversation_upvr.fromWeb(v_3))
	end
	return var167
end
module[AppChatNetworking.rodux.GetOlderMessages.Succeeded.name] = function(arg1, arg2) -- Line 497
	--[[ Upvalues[3]:
		[1]: messagesFromResponseOfChannelsApi_upvr (readonly)
		[2]: addMessagesToConversation_upvr (readonly)
		[3]: Immutable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local conversation_id_2 = arg2.queryArgs.conversation_id
	local responseBody_8 = arg2.responseBody
	local var179 = arg1[conversation_id_2]
	local var180
	if not var179 then
		return arg1
	end
	var180 = "FFlagLuauTinyControlFlowAnalysis"
	assert(var179, var180)
	var180 = var179.nextCursor
	if not responseBody_8 then
		return arg1
	end
	var180 = messagesFromResponseOfChannelsApi_upvr(conversation_id_2, responseBody_8.messages)
	if responseBody_8.next_cursor == "" then
		var180 = nil
	else
		var180 = responseBody_8.next_cursor
	end
	if var180 then
	end
	if (var179.previousCursor or nil) == nil then
		if responseBody_8.previous_cursor == "" then
		else
		end
	end
	arg1 = addMessagesToConversation_upvr(arg1, conversation_id_2, {
		messages = var180;
		nextCursor = var180;
		previousCursor = responseBody_8.previous_cursor;
	})
	local var182 = arg1
	if not var180 then
		local var183 = var182[conversation_id_2]
		if var183 then
			local any_Set_result1_14 = Immutable_upvr.Set(var183, "fetchedOldestMessage", true)
			var182 = Immutable_upvr.Set(var182, any_Set_result1_14.id, any_Set_result1_14)
		end
	end
	return var182
end
module[AppChatNetworking.rodux.GetNewerMessages.Succeeded.name] = function(arg1, arg2) -- Line 550
	--[[ Upvalues[3]:
		[1]: messagesFromResponseOfChannelsApi_upvr (readonly)
		[2]: getShouldMarkConversationUnread_upvr (readonly)
		[3]: addMessagesToConversation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local conversation_id_3 = arg2.queryArgs.conversation_id
	local responseBody_2 = arg2.responseBody
	local var188 = arg1[conversation_id_3]
	local var189
	if not var188 then
		return arg1
	end
	assert(var188, "FFlagLuauTinyControlFlowAnalysis")
	if not responseBody_2 then
		return arg1
	end
	var189 = conversation_id_3
	local messagesFromResponseOfChannelsApi_upvr_result1 = messagesFromResponseOfChannelsApi_upvr(var189, responseBody_2.messages)
	if (var188.nextCursor or nil) == nil then
		var189 = responseBody_2.next_cursor
		if var189 == "" then
		else
		end
	end
	if responseBody_2.previous_cursor == "" then
		var189 = nil
	else
		var189 = responseBody_2.previous_cursor
	end
	if var189 then
	end
	return addMessagesToConversation_upvr(arg1, conversation_id_3, {
		messages = messagesFromResponseOfChannelsApi_upvr_result1;
		nextCursor = responseBody_2.next_cursor;
		previousCursor = var189;
		shouldMarkConversationUnread = getShouldMarkConversationUnread_upvr(var188, messagesFromResponseOfChannelsApi_upvr_result1);
	})
end
module[NetworkingChat.GetMessages.Succeeded.name] = function(arg1, arg2) -- Line 592
	--[[ Upvalues[5]:
		[1]: Functional_upvr (readonly)
		[2]: MessageModel_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: addMessagesToConversation_upvr (readonly)
		[5]: Immutable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local conversationId_4_upvr = arg2.queryArgs.conversationId
	local responseBody_7 = arg2.responseBody
	local var195
	if not responseBody_7 then
		var195 = {}
	else
		local var197_upvw
		var195 = Functional_upvr.MapReverse(responseBody_7, function(arg1_5) -- Line 170
			--[[ Upvalues[3]:
				[1]: MessageModel_upvr (copied, readonly)
				[2]: conversationId_4_upvr (readonly)
				[3]: var197_upvw (read and write)
			]]
			local any_fromWeb_result1_3 = MessageModel_upvr.fromWeb(arg1_5, conversationId_4_upvr, var197_upvw)
			var197_upvw = any_fromWeb_result1_3.id
			return any_fromWeb_result1_3
		end)
	end
	local tbl_3 = {
		messages = var195;
	}
	local var200
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var200 = var195[#var195]
		return var200
	end
	if not var195 or not INLINED_2() then
		var200 = nil
	end
	if not var200 or var200.senderTargetId ~= tostring(Players_upvr.LocalPlayer.UserId) then
	end
	tbl_3.shouldMarkConversationUnread = not false
	var200 = conversationId_4_upvr
	local addMessagesToConversation_result1 = addMessagesToConversation_upvr(arg1, var200, tbl_3)
	local pageSize = arg2.queryArgs.pageSize
	if pageSize and #var195 < pageSize then
		local var203 = addMessagesToConversation_result1[conversationId_4_upvr]
		if not var203 then
			return addMessagesToConversation_result1
		end
		var200 = assert
		var200(var203, "FFlagLuauTinyControlFlowAnalysis")
		var200 = addMessagesToConversation_result1[conversationId_4_upvr]
		if var200 then
			local any_Set_result1_16 = Immutable_upvr.Set(var200, "fetchedOldestMessage", true)
		end
	end
	return Immutable_upvr.Set(addMessagesToConversation_result1, any_Set_result1_16.id, any_Set_result1_16)
end
module[NetworkingChat.GetLatestMessages.Succeeded.name] = function(arg1, arg2) -- Line 618
	--[[ Upvalues[3]:
		[1]: Functional_upvr (readonly)
		[2]: MessageModel_upvr (readonly)
		[3]: addMessagesToConversation_upvr (readonly)
	]]
	local var213
	for _, v_4 in ipairs(arg2.responseBody) do
		local conversationId = v_4.conversationId
		local tostring_result1_2_upvr = tostring(conversationId)
		local chatMessages = v_4.chatMessages
		if not chatMessages then
			conversationId = {}
		else
			local var218_upvw
			conversationId = Functional_upvr.MapReverse(chatMessages, function(arg1_6) -- Line 170
				--[[ Upvalues[3]:
					[1]: MessageModel_upvr (copied, readonly)
					[2]: tostring_result1_2_upvr (readonly)
					[3]: var218_upvw (read and write)
				]]
				local any_fromWeb_result1_2 = MessageModel_upvr.fromWeb(arg1_6, tostring_result1_2_upvr, var218_upvw)
				var218_upvw = any_fromWeb_result1_2.id
				return any_fromWeb_result1_2
			end)
		end
		var213 = addMessagesToConversation_upvr(var213, tostring_result1_2_upvr, {
			messages = conversationId;
		})
	end
	return var213
end
module[AppChatNetworking.rodux.GetConversationDetails.Succeeded.name] = function(arg1, arg2) -- Line 630
	--[[ Upvalues[6]:
		[1]: ConversationChannels_upvr (readonly)
		[2]: updateConversationReducer_upvr (readonly)
		[3]: getMessagesFromConversationResponse_upvr (readonly)
		[4]: LuauPolyfill_upvr (readonly)
		[5]: MessageModel_upvr (readonly)
		[6]: addMessagesToConversation_upvr (readonly)
	]]
	local _1 = arg2.responseBody.conversations[1]
	if not _1 then
		return arg1
	end
	local any_fromChannelsApi_result1_2_upvr = ConversationChannels_upvr.fromChannelsApi(_1)
	local getMessagesFromConversationResponse_result1 = getMessagesFromConversationResponse_upvr(_1)
	local var225
	if getMessagesFromConversationResponse_result1 and 0 < #getMessagesFromConversationResponse_result1 then
		var225 = addMessagesToConversation_upvr(var225, any_fromChannelsApi_result1_2_upvr.id, {
			messages = LuauPolyfill_upvr.Array.map(getMessagesFromConversationResponse_result1, function(arg1_7) -- Line 644
				--[[ Upvalues[2]:
					[1]: MessageModel_upvr (copied, readonly)
					[2]: any_fromChannelsApi_result1_2_upvr (readonly)
				]]
				return MessageModel_upvr.fromChannelsApi(arg1_7, any_fromChannelsApi_result1_2_upvr.id)
			end);
		})
	end
	return var225
end
module[AppChatNetworking.rodux.MultiGetConversationDetails.Succeeded.name] = function(arg1, arg2) -- Line 657
	--[[ Upvalues[6]:
		[1]: ConversationChannels_upvr (readonly)
		[2]: updateConversationReducer_upvr (readonly)
		[3]: getMessagesFromConversationResponse_upvr (readonly)
		[4]: LuauPolyfill_upvr (readonly)
		[5]: MessageModel_upvr (readonly)
		[6]: addMessagesToConversation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local responseBody_4 = arg2.responseBody
	local var234
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 13 start (CF ANALYSIS FAILED)
	if not responseBody_4.conversations then
		-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
		do
			return var234
		end
		-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
	end
	for _, v_5 in responseBody_4.conversations do
		local any_fromChannelsApi_result1_upvr_2 = ConversationChannels_upvr.fromChannelsApi(v_5)
		var234 = updateConversationReducer_upvr(var234, any_fromChannelsApi_result1_upvr_2)
		local getMessagesFromConversationResponse_result1_2 = getMessagesFromConversationResponse_upvr(v_5)
		if getMessagesFromConversationResponse_result1_2 and 0 < #getMessagesFromConversationResponse_result1_2 then
			var234 = addMessagesToConversation_upvr(var234, any_fromChannelsApi_result1_upvr_2.id, {
				messages = LuauPolyfill_upvr.Array.map(getMessagesFromConversationResponse_result1_2, function(arg1_8) -- Line 669
					--[[ Upvalues[2]:
						[1]: MessageModel_upvr (copied, readonly)
						[2]: any_fromChannelsApi_result1_upvr_2 (readonly)
					]]
					return MessageModel_upvr.fromChannelsApi(arg1_8, any_fromChannelsApi_result1_upvr_2.id)
				end);
			})
		end
	end
	do
		return var234
	end
	-- KONSTANTERROR: [3] 3. Error Block 13 end (CF ANALYSIS FAILED)
end
module[AppChatNetworking.rodux.MarkConversation.Succeeded.name] = function(arg1, arg2) -- Line 682
	--[[ Upvalues[1]:
		[1]: markConversationAndMessagesAsRead_upvr (readonly)
	]]
	return markConversationAndMessagesAsRead_upvr(arg1, arg2.postBody.conversation_ids[1])
end
module[NetworkingChat.MarkAsRead.Succeeded.name] = function(arg1, arg2) -- Line 686
	--[[ Upvalues[1]:
		[1]: markConversationAndMessagesAsRead_upvr (readonly)
	]]
	return markConversationAndMessagesAsRead_upvr(arg1, arg2.postBody.conversationId)
end
module[require(AppChat.Conversations.Actions.ReceivedChannelsMigrationConflict).name] = function(arg1, arg2) -- Line 692
	return {}
end
module[require(AppChat.Conversations.Actions.FriendConversationCreated).name] = function(arg1, arg2) -- Line 695
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	if arg1[arg2.oldFriendConversationId] then
		return Immutable_upvr.Set(arg1, arg2.oldFriendConversationId, nil)
	end
	return arg1
end
local function var243(arg1, arg2) -- Line 702
	--[[ Upvalues[2]:
		[1]: ConversationChannels_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var244
	if arg2.userId1 ~= "localUserId" then
		var244 = arg2.userId1
	elseif arg2.userId2 ~= "localUserId" then
		var244 = arg2.userId2
	else
		var244 = nil
	end
	if not var244 then
		return arg1
	end
	assert(var244, "FFlagLuauTinyControlFlowAnalysis")
	local any_getFriendConversationId_result1_2 = ConversationChannels_upvr.getFriendConversationId({var244})
	if arg1[any_getFriendConversationId_result1_2] then
		return Immutable_upvr.Set(arg1, any_getFriendConversationId_result1_2, nil)
	end
	return arg1
end
module[require(AppChat.Actions.FriendshipDestroyed).name] = var243
var243 = require(AppChat.Http.NetworkingBlocking).BlockUserById.Succeeded
local var255 = var243
if require(Parent.SharedFlags).getFFlagAppChatPCMFixBlocking() then
	local getOneToOneConversationIdFromFriendId_upvr = require(AppChat.Utils.getOneToOneConversationIdFromFriendId)
	function var255(arg1, arg2) -- Line 720
		--[[ Upvalues[3]:
			[1]: getOneToOneConversationIdFromFriendId_upvr (readonly)
			[2]: Immutable_upvr (readonly)
			[3]: ConversationChannels_upvr (readonly)
		]]
		local tostring_result1 = tostring(arg2.namedIds.users)
		if not tostring_result1 then
			return arg1
		end
		local getOneToOneConversationIdFromFriendId_upvr_result1 = getOneToOneConversationIdFromFriendId_upvr(arg1, tostring_result1)
		if getOneToOneConversationIdFromFriendId_upvr_result1 and arg1[getOneToOneConversationIdFromFriendId_upvr_result1] then
		end
		local any_getFriendConversationId_result1 = ConversationChannels_upvr.getFriendConversationId({tostring_result1})
		local var254
		if any_getFriendConversationId_result1 and arg1[any_getFriendConversationId_result1] then
			var254 = Immutable_upvr.Set(arg1, any_getFriendConversationId_result1, nil)
		end
		return var254
	end
else
	var255 = nil
end
module[var255.name] = var255
if require(AppChat.Flags.FFlagAppChatHandleDownAging) then
	local Cryo_upvr = require(Parent.Cryo)
	function var255(arg1, arg2) -- Line 744
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (readonly)
			[2]: ConversationChannels_upvr (readonly)
		]]
		local var261 = arg1
		for _, v_6 in arg2.conversationIds do
			var261 = Cryo_upvr.Dictionary.join(var261, {
				[v_6] = Cryo_upvr.Dictionary.join(var261[v_6], {
					messages = ConversationChannels_upvr.getEmptyMessages();
					sendingMessages = ConversationChannels_upvr.getEmptySendingMessages();
					previousCursor = Cryo_upvr.None;
					nextCursor = Cryo_upvr.None;
					fetchedOldestMessage = false;
				});
			})
		end
		return var261
	end
else
	var255 = nil
end
module[require(AppChat.Conversations.Actions.ReloadedMessagesForConversations).name] = var255
return require(Parent.Rodux).createReducer({}, module)