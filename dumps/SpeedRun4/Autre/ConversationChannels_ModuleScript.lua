-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:42
-- Luau version 6, Types version 3
-- Time taken: 0.008615 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local OrderedMap_upvr = require(Parent.AppCommonLib).OrderedMap
local Constants_upvr = require(AppChat.Constants)
local Conversation_upvr = require(script.Parent.Conversation)
local DateTime_upvr = require(Parent.Time).DateTime
local FFlagAppChatEnableOneToOneOSAContextCards_upvr = require(Parent.SharedFlags).FFlagAppChatEnableOneToOneOSAContextCards
local function getMessageId_upvr(arg1) -- Line 16, Named "getMessageId"
	return arg1.id
end
local function messageSortPredicate_upvr(arg1, arg2) -- Line 20, Named "messageSortPredicate"
	local any_GetUnixTimestamp_result1_2 = arg1.sent:GetUnixTimestamp()
	local any_GetUnixTimestamp_result1 = arg2.sent:GetUnixTimestamp()
	local var10
	if any_GetUnixTimestamp_result1_2 == any_GetUnixTimestamp_result1 then
		if arg2.id >= arg1.id then
			var10 = false
		else
			var10 = true
		end
		return var10
	end
	if any_GetUnixTimestamp_result1_2 >= any_GetUnixTimestamp_result1 then
		var10 = false
	else
		var10 = true
	end
	return var10
end
local function sendingMessageSortPredicate_upvr(arg1, arg2) -- Line 30, Named "sendingMessageSortPredicate"
	local var11
	if arg1.order >= arg2.order then
		var11 = false
	else
		var11 = true
	end
	return var11
end
local function _(arg1, arg2) -- Line 36, Named "convertToLegacyConversationType"
	--[[ Upvalues[1]:
		[1]: Conversation_upvr (readonly)
	]]
	if arg2 == "friends" then
		return Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION
	end
	if arg1 == "group" then
		return Conversation_upvr.Type.MULTI_USER_CONVERSATION
	end
	if arg1 == "one_to_one" then
		return Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION
	end
	return Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION
end
local Players_upvr = game:GetService("Players")
local function getFriendId_upvr(arg1) -- Line 49, Named "getFriendId"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if LocalPlayer then
		for _, v in arg1.participant_user_ids do
			if tostring(v) ~= tostring(LocalPlayer.UserId) then
				return "friends:"..tostring(v)
			end
		end
	end
	return "friends:unknown-id"
end
local module_2_upvr = {
	ModerationType = {
		TrustedComms = "trusted_comms";
		Moderated = "moderated";
		Invalid = "invalid";
		UnknownType = "unknown_type";
	};
	UserPendingStatus = {
		Invalid = "invalid";
		Pending = "pending";
		NotPending = "not_pending";
	};
	OsaAcknowledgementStatus = require(Parent.AppChatNetworking).Constants.OsaAcknowledgementStatusResponse;
	getEmptyMessages = function() -- Line 82, Named "getEmptyMessages"
		--[[ Upvalues[3]:
			[1]: OrderedMap_upvr (readonly)
			[2]: getMessageId_upvr (readonly)
			[3]: messageSortPredicate_upvr (readonly)
		]]
		return OrderedMap_upvr.new(getMessageId_upvr, messageSortPredicate_upvr)
	end;
	getEmptySendingMessages = function() -- Line 85, Named "getEmptySendingMessages"
		--[[ Upvalues[3]:
			[1]: OrderedMap_upvr (readonly)
			[2]: getMessageId_upvr (readonly)
			[3]: sendingMessageSortPredicate_upvr (readonly)
		]]
		return OrderedMap_upvr.new(getMessageId_upvr, sendingMessageSortPredicate_upvr)
	end;
}
function module_2_upvr.mockBase() -- Line 89
	--[[ Upvalues[5]:
		[1]: module_2_upvr (readonly)
		[2]: Conversation_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: DateTime_upvr (readonly)
		[5]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
	]]
	local module_5 = {
		source = "channels";
		type = "one_to_one";
		createdAt = nil;
		messages = module_2_upvr.getEmptyMessages();
		sendingMessages = module_2_upvr.getEmptySendingMessages();
		id = "1-2-3";
		clientId = "1-2-3";
		initiator = '1';
		hasUnreadMessages = false;
		conversationType = Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION;
		hasGroupUp = false;
		usersTyping = {};
		isUserLeaving = false;
		fetchingOlderMessages = false;
		serverState = Constants_upvr.ServerState.CREATED;
		pinnedGame = {};
		moderationType = module_2_upvr.ModerationType.TrustedComms;
		userPendingStatus = module_2_upvr.UserPendingStatus.NotPending;
		participantPendingStatus = module_2_upvr.UserPendingStatus.NotPending;
		previewMessageId = nil;
		lastUpdated = DateTime_upvr.now();
		title = "test";
		titleForViewer = "test";
		isDefaultTitle = false;
	}
	local tbl_2 = {'1'}
	module_5.participants = tbl_2
	if FFlagAppChatEnableOneToOneOSAContextCards_upvr then
		tbl_2 = module_2_upvr.OsaAcknowledgementStatus.NotApplicable
	else
		tbl_2 = nil
	end
	module_5.osaAcknowledgementStatus = tbl_2
	module_5.previousCursor = nil
	module_5.nextCursor = nil
	module_5.fetchedOldestMessage = nil
	return module_5
end
local Cryo_upvr = require(Parent.Cryo)
function module_2_upvr.mock(arg1) -- Line 136
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var22 = arg1
	if not var22 then
		var22 = {}
	end
	return Cryo_upvr.Dictionary.join(module_2_upvr.mockBase(), var22)
end
function module_2_upvr.response(arg1) -- Line 140
	--[[ Upvalues[1]:
		[1]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 105 start (CF ANALYSIS FAILED)
	local tbl = {}
	local var24
	if arg1.source then
		var24 = arg1.source
	else
		var24 = "channels"
	end
	tbl.source = var24
	if arg1.type then
		var24 = arg1.type
		-- KONSTANTWARNING: GOTO [17] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 105 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 120 start (CF ANALYSIS FAILED)
	var24 = "one_to_one"
	tbl.type = var24
	if arg1.created_at then
		var24 = arg1.created_at
		-- KONSTANTWARNING: GOTO [26] #19
	end
	-- KONSTANTERROR: [16] 12. Error Block 120 end (CF ANALYSIS FAILED)
end
function module_2_upvr.fromChannelsApi(arg1) -- Line 186
	--[[ Upvalues[6]:
		[1]: module_2_upvr (readonly)
		[2]: getFriendId_upvr (readonly)
		[3]: Conversation_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: DateTime_upvr (readonly)
		[6]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_3 = {
		source = arg1.source;
		type = arg1.type;
		createdAt = arg1.created_at;
		messages = module_2_upvr.getEmptyMessages();
	}
	local any_getEmptySendingMessages_result1_2 = module_2_upvr.getEmptySendingMessages()
	module_3.sendingMessages = any_getEmptySendingMessages_result1_2
	if arg1.source == "friends" then
		any_getEmptySendingMessages_result1_2 = getFriendId_upvr(arg1)
	else
		any_getEmptySendingMessages_result1_2 = tostring(arg1.id)
	end
	module_3.id = any_getEmptySendingMessages_result1_2
	any_getEmptySendingMessages_result1_2 = ""
	module_3.clientId = any_getEmptySendingMessages_result1_2
	any_getEmptySendingMessages_result1_2 = tostring(arg1.created_by)
	module_3.initiator = any_getEmptySendingMessages_result1_2
	if 0 >= arg1.unread_message_count then
		any_getEmptySendingMessages_result1_2 = false
	else
		any_getEmptySendingMessages_result1_2 = true
	end
	module_3.hasUnreadMessages = any_getEmptySendingMessages_result1_2
	local type = arg1.type
	if arg1.source == "friends" then
	elseif type == "group" then
	elseif type == "one_to_one" then
	else
	end
	module_3.conversationType = Conversation_upvr.Type.ONE_TO_ONE_CONVERSATION
	module_3.usersTyping = {}
	module_3.isUserLeaving = false
	module_3.fetchingOlderMessages = false
	if arg1.source == "friends" then
	else
	end
	module_3.serverState = Constants_upvr.ServerState.CREATED
	module_3.pinnedGame = {}
	module_3.moderationType = arg1.moderation_type
	module_3.userPendingStatus = arg1.user_pending_status
	module_3.participantPendingStatus = arg1.participant_pending_status
	if arg1.preview_message then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg1.preview_message.is_previewable then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_3.previewMessageId = arg1.preview_message.id
		end
	end
	if arg1.has_group_up then
	else
	end
	module_3.hasGroupUp = false
	module_3.lastUpdated = DateTime_upvr.fromIsoDate(arg1.updated_at)
	module_3.title = arg1.name
	module_3.titleForViewer = ""
	if arg1.name ~= nil then
	else
	end
	module_3.isDefaultTitle = true
	module_3.participants = {}
	if arg1.participant_user_ids then
		for _, v_2 in arg1.participant_user_ids do
			table.insert(module_3.participants, tostring(v_2))
		end
	end
	if FFlagAppChatEnableOneToOneOSAContextCards_upvr then
		if arg1.osa_acknowledgement_status then
			module_3.osaAcknowledgementStatus = arg1.osa_acknowledgement_status
		end
	end
	return module_3
end
function module_2_upvr.getFriendConversationId(arg1) -- Line 239
	--[[ Upvalues[1]:
		[1]: getFriendId_upvr (readonly)
	]]
	local module_4 = {}
	module_4.participant_user_ids = arg1
	return getFriendId_upvr(module_4)
end
return module_2_upvr