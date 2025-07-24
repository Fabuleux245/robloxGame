-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:21
-- Luau version 6, Types version 3
-- Time taken: 0.001453 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local any_new_result1_2_upvr = require(AppChat.Logger):new(script.Name)
local SendChatMessagePolicy_upvr = require(script.Parent.SendChatMessagePolicy)
local setmetatable_result1 = setmetatable({}, SendChatMessagePolicy_upvr)
setmetatable_result1.__index = setmetatable_result1
function setmetatable_result1.new(arg1, arg2, arg3, arg4, arg5) -- Line 13
	--[[ Upvalues[2]:
		[1]: any_new_result1_2_upvr (readonly)
		[2]: SendChatMessagePolicy_upvr (readonly)
	]]
	local var5
	if arg4 then
		var5 = arg4.id
	else
		var5 = nil
	end
	any_new_result1_2_upvr:info("New policy constructed for conversationId: {} messageText: {}, replyingToId: {}", arg2, arg3, var5)
	local any_new_result1 = SendChatMessagePolicy_upvr:new(arg2, arg4)
	setmetatable(any_new_result1, arg1)
	any_new_result1.messageText = arg3
	any_new_result1.decorators = arg5
	return any_new_result1
end
local AppChatNetworking_upvr = require(AppChat.Parent.AppChatNetworking)
function setmetatable_result1.sendMessage(arg1, arg2) -- Line 31
	--[[ Upvalues[2]:
		[1]: any_new_result1_2_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var8
	if arg1.replyingToMessage then
		var8 = arg1.replyingToMessage.id
	else
		var8 = nil
	end
	any_new_result1_2_upvr:info("sendMessage - conversationId: {} messageText: {}, replyingToId: {}", arg1.conversationId, arg1.messageText, var8)
	var8 = arg1.replyingToMessage
	if var8 then
		var8 = arg1.replyingToMessage
	else
	end
	return AppChatNetworking_upvr.http.SendChatTextMessage(nil, arg1.conversationId, arg1.messageText, nil)
end
local MessageModel_upvr = require(AppChat.Models.MessageModel)
function setmetatable_result1.sendingMessagePayload(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: MessageModel_upvr (readonly)
	]]
	return {
		messageType = MessageModel_upvr.MessageTypes.PlainText;
		content = arg1.messageText;
	}
end
return setmetatable_result1