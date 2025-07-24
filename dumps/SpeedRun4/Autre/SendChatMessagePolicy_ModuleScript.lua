-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:20
-- Luau version 6, Types version 3
-- Time taken: 0.003619 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local MessageModel_upvr = require(AppChat.Models.MessageModel)
local var4_upvw = 0
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local function _() -- Line 26, Named "getAscendingNumber"
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	var4_upvw += 1
	return var4_upvw
end
local setmetatable_result1 = setmetatable({}, require(script.Parent.SendMessagePolicy))
setmetatable_result1.__index = setmetatable_result1
function setmetatable_result1.new(arg1, arg2, arg3) -- Line 34
	--[[ Upvalues[1]:
		[1]: MessageModel_upvr (readonly)
	]]
	local module = {
		messageSendingId = MessageModel_upvr.newSendingId();
	}
	module.conversationId = arg2
	module.replyingToMessage = arg3
	return setmetatable(module, arg1)
end
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
local DateTime_upvr = require(Parent.Time).DateTime
local SendingMessage_upvr = require(AppChat.Conversations.Actions.SendingMessage)
function setmetatable_result1.onBeforeSendingMessage(arg1, arg2) -- Line 42
	--[[ Upvalues[6]:
		[1]: any_new_result1_upvr (readonly)
		[2]: MessageModel_upvr (readonly)
		[3]: Immutable_upvr (readonly)
		[4]: var4_upvw (read and write)
		[5]: DateTime_upvr (readonly)
		[6]: SendingMessage_upvr (readonly)
	]]
	local var11
	if arg1.replyingToMessage then
		var11 = arg1.replyingToMessage.id
	else
		var11 = nil
	end
	any_new_result1_upvr:trace("onBeforeSendingMessage conversationId: {} messageSendingId: {}, replyingToId: {}", arg1.conversationId, arg1.messageSendingId, var11)
	local tbl = {
		id = arg1.messageSendingId;
	}
	var11 = var4_upvw
	var4_upvw = var11 + 1
	tbl.order = var4_upvw
	tbl.conversationId = arg1.conversationId
	tbl.repliesTo = arg1.replyingToMessage
	tbl.sent = DateTime_upvr.now()
	local any_newSending_result1 = MessageModel_upvr.newSending(Immutable_upvr.JoinDictionaries(tbl, arg1:sendingMessagePayload()))
	arg1.sendingMessageStableKey = any_newSending_result1.stableKey
	assert(any_newSending_result1, "Failed to create sending message placeholder")
	var11 = any_newSending_result1
	arg2:dispatch(SendingMessage_upvr(arg1.conversationId, var11))
end
function setmetatable_result1.sendingMessagePayload(arg1) -- Line 63
	error("Override me")
end
local SentMessage_upvr = require(AppChat.Conversations.Actions.SentMessage)
local ReceivedChatResponse_upvr = require(AppChat.Conversations.Thunks.ReceivedChatResponse)
function setmetatable_result1.onSuccess(arg1, arg2, arg3) -- Line 67
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: SentMessage_upvr (readonly)
		[3]: ReceivedChatResponse_upvr (readonly)
	]]
	local var16
	if arg1.replyingToMessage then
		var16 = arg1.replyingToMessage.id
	else
		var16 = nil
	end
	any_new_result1_upvr:debug("Message sent successfully. conversationId: {} messageSendingId: {} replyingToId: {}", arg1.conversationId, arg1.messageSendingId, var16)
	arg2:dispatch(SentMessage_upvr(arg1.conversationId, arg1.messageSendingId))
	var16 = arg1.sendingMessageStableKey
	arg2:dispatch(ReceivedChatResponse_upvr(arg1.conversationId, arg3.responseBody, var16))
	return arg3
end
local StatusCodes_upvr = require(Parent.Http).StatusCodes
local ReceivedChannelsMigrationConflict_upvr = require(AppChat.Conversations.Actions.ReceivedChannelsMigrationConflict)
local NavigateIntoChat_upvr = require(AppChat.Actions.NavigateIntoChat)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local MessageFailedToSend_upvr = require(AppChat.Conversations.Actions.MessageFailedToSend)
local ResponseStatus_upvr = require(Parent.AppChatNetworking).Constants.ResponseStatus
local MessageModerated_upvr = require(AppChat.Conversations.Actions.MessageModerated)
function setmetatable_result1.onFailure(arg1, arg2, arg3) -- Line 80
	--[[ Upvalues[8]:
		[1]: any_new_result1_upvr (readonly)
		[2]: StatusCodes_upvr (readonly)
		[3]: ReceivedChannelsMigrationConflict_upvr (readonly)
		[4]: NavigateIntoChat_upvr (readonly)
		[5]: EnumScreens_upvr (readonly)
		[6]: MessageFailedToSend_upvr (readonly)
		[7]: ResponseStatus_upvr (readonly)
		[8]: MessageModerated_upvr (readonly)
	]]
	any_new_result1_upvr:error("Failed to send message. conversationId: {}, messageSendingId: {}, responseCode: {}", arg1.conversationId, arg1.messageSendingId, arg3.responseCode)
	local var24
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var24 = true
		return arg3.responseCode == StatusCodes_upvr.OK
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var24 = true
		return arg3.StatusCode == StatusCodes_upvr.OK
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var24 = not arg3.responseBody
		return var24
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var24 = not arg3.responseBody.messages
		return var24
	end
	if not var24 and (arg3.responseCode == nil or INLINED()) or arg3.StatusCode == nil or INLINED_2() or not INLINED_3() and not INLINED_4() then
		if #arg3.responseBody.messages ~= 0 then
			var24 = false
		else
			var24 = true
		end
	end
	if var24 then
		if arg3.StatusCode == StatusCodes_upvr.CONFLICT then
			any_new_result1_upvr:error("Message sent conflicting system (409). Reloading messages...")
			arg2:dispatch(ReceivedChannelsMigrationConflict_upvr())
			arg2:dispatch(NavigateIntoChat_upvr({
				screen = EnumScreens_upvr.ChatLanding;
				params = {
					key = tostring(os.clock());
				};
			}))
			return arg3
		end
		arg2:dispatch(MessageFailedToSend_upvr(arg1.conversationId, arg1.messageSendingId))
		any_new_result1_upvr:error("Message could not be sent, no response body or no messages in response body")
		return arg3
	end
	if arg3.responseBody.messages[1].status and arg3.responseBody.messages[1].status == ResponseStatus_upvr.MODERATED then
		arg2:dispatch(MessageModerated_upvr(arg1.conversationId, arg1.messageSendingId))
		any_new_result1_upvr:error("Message was moderated.")
		return arg3
	end
	arg2:dispatch(MessageFailedToSend_upvr(arg1.conversationId, arg1.messageSendingId))
	any_new_result1_upvr:error("Message could not be sent, no response body or no messages in response body")
	return arg3
end
return setmetatable_result1