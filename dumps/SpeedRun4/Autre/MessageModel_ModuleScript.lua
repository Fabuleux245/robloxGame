-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:43
-- Luau version 6, Types version 3
-- Time taken: 0.011212 seconds

local Players_upvr = game:GetService("Players")
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local DateTime_upvr = require(Parent.Time).DateTime
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local tbl_upvr = {}
local function new(arg1) -- Line 19
	return {
		universeId = tostring(arg1);
	}
end
tbl_upvr.new = new
local module_upvr = {
	SenderTypes = {
		User = "user";
		System = "system";
		UnknownType = "unknown_type";
	};
	MessageTypes = {
		PlainText = "PlainText";
		Link = "Link";
		System = "System";
	};
	LinkTypes = {
		Game = "Game";
	};
	ModerationTypes = {
		TrustedComms = "trusted_comms";
		Moderated = "moderated";
		Invalid = "invalid";
		UnknownType = "unknown_type";
	};
}
function module_upvr.new(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.__index = module_upvr
	local var13 = arg1
	if not var13 then
		var13 = {}
	end
	setmetatable(var13, module_upvr)
	return var13
end
function module_upvr.fromWeb(arg1, arg2, arg3) -- Line 57
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: DateTime_upvr (readonly)
	]]
	if not module_upvr.DoRequiredFieldsPresent(arg1) then
		return nil
	end
	local any_new_result1 = module_upvr.new()
	any_new_result1.id = arg1.id
	any_new_result1.senderTargetId = tostring(arg1.senderTargetId)
	any_new_result1.senderType = arg1.senderType
	any_new_result1.read = arg1.read
	any_new_result1.sent = DateTime_upvr.fromIsoDate(arg1.sent)
	any_new_result1.conversationId = tostring(arg2)
	any_new_result1.previousMessageId = arg3
	any_new_result1.filteredForReceivers = false
	any_new_result1:parseContentWeb(arg1)
	return any_new_result1
end
function module_upvr.fromSentWeb(arg1, arg2) -- Line 77
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: DateTime_upvr (readonly)
	]]
	if not module_upvr.DoRequiredFieldsPresentForSent(arg1) then
		return nil
	end
	local any_new_result1_4 = module_upvr.new()
	any_new_result1_4.id = arg1.messageId
	any_new_result1_4.senderTargetId = tostring(Players_upvr.LocalPlayer.UserId)
	any_new_result1_4.senderType = "User"
	any_new_result1_4.read = true
	any_new_result1_4.sent = DateTime_upvr.fromIsoDate(arg1.sent)
	any_new_result1_4.conversationId = tostring(arg2)
	any_new_result1_4.previousMessageId = ""
	any_new_result1_4.filteredForReceivers = arg1.filteredForReceivers
	any_new_result1_4:parseContentSentWeb(arg1)
	return any_new_result1_4
end
local GenerateStringId_upvr = require(Parent.AppCommonLib).GenerateStringId
function module_upvr.newSendingId() -- Line 98
	--[[ Upvalues[1]:
		[1]: GenerateStringId_upvr (readonly)
	]]
	return "sending-message-"..GenerateStringId_upvr()
end
function module_upvr.newSending(arg1) -- Line 102
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	assert(arg1, "props argument is missing")
	assert(arg1.id, "props.id argument is missing")
	assert(arg1.messageType, "props.messageType argument is missing")
	assert(arg1.order, "props.order argument is missing")
	assert(arg1.conversationId, "props.conversationId argument is missing")
	assert(arg1.sent, "props.sent argument is missing")
	local any_new_result1_3 = module_upvr.new(arg1)
	any_new_result1_3.senderTargetId = tostring(Players_upvr.LocalPlayer.UserId)
	any_new_result1_3.senderType = module_upvr.SenderTypes.User
	any_new_result1_3.moderated = false
	any_new_result1_3.failed = false
	any_new_result1_3.stableKey = any_new_result1_3.id
	return any_new_result1_3
end
function module_upvr.DoRequiredFieldsPresent(arg1) -- Line 122
	local var21 = arg1
	if var21 then
		var21 = arg1.id
		if var21 then
			var21 = arg1.messageType
			if var21 then
				var21 = arg1.senderTargetId
				if var21 then
					var21 = arg1.sent
				end
			end
		end
	end
	return var21
end
function module_upvr.DoRequiredFieldsPresentForSent(arg1) -- Line 125
	local var22 = arg1
	if var22 then
		var22 = arg1.messageId
		if var22 then
			var22 = arg1.messageType
			if var22 then
				var22 = arg1.sent
			end
		end
	end
	return var22
end
function module_upvr.parseContentWeb(arg1, arg2) -- Line 129
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	arg1:parseContent(arg2)
	if arg2.messageType == module_upvr.MessageTypes.Link and arg2.link and arg2.link.type == module_upvr.LinkTypes.Game and arg2.link.game then
		arg1.gameLink = tbl_upvr.new(arg2.link.game.universeId)
	end
end
function module_upvr.parseContentSentWeb(arg1, arg2) -- Line 138
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	arg1:parseContent(arg2)
	if arg2.messageType == module_upvr.MessageTypes.Link and arg2.chatMessageLinkType == module_upvr.LinkTypes.Game then
		arg1.gameLink = tbl_upvr.new(arg2.universeId)
	end
end
function module_upvr.parseContent(arg1, arg2) -- Line 147
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.messageType = arg2.messageType
	if arg2.messageType == module_upvr.MessageTypes.PlainText then
		arg1.content = arg2.content
	else
		arg1.content = nil
	end
end
local FFlagAppChatEnableMessagePreviewContentDisplay_upvr = AppChat.Flags.FFlagAppChatEnableMessagePreviewContentDisplay
local GetFFlagEnableSocialCards_upvr = require(Parent.SharedFlags).GetFFlagEnableSocialCards
function module_upvr.fromChannelsApi(arg1, arg2, arg3, arg4) -- Line 160
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: DateTime_upvr (readonly)
		[3]: FFlagAppChatEnableMessagePreviewContentDisplay_upvr (readonly)
		[4]: GetFFlagEnableSocialCards_upvr (readonly)
	]]
	local var25
	if not module_upvr.DoRequiredFieldsPresentFromChannelsApi(arg1) then
		return nil
	end
	var25 = module_upvr
	local any_new_result1_5 = var25.new()
	var25 = arg1.id
	any_new_result1_5.id = var25
	var25 = true
	any_new_result1_5.read = var25
	var25 = DateTime_upvr.fromIsoDate(arg1.created_at)
	any_new_result1_5.sent = var25
	var25 = tostring(arg2)
	any_new_result1_5.conversationId = var25
	any_new_result1_5.previousMessageId = arg3
	var25 = false
	any_new_result1_5.filteredForReceivers = var25
	var25 = arg1.content
	any_new_result1_5.content = var25
	if FFlagAppChatEnableMessagePreviewContentDisplay_upvr then
		var25 = arg1.preview_content
	else
		var25 = nil
	end
	any_new_result1_5.previewContent = var25
	if arg1.type == module_upvr.SenderTypes.User then
		any_new_result1_5:serializeForUserMessage(arg1)
	elseif arg1.type == module_upvr.SenderTypes.System then
		any_new_result1_5:serializeForSystemMessage(arg1)
	end
	if GetFFlagEnableSocialCards_upvr() then
	else
	end
	any_new_result1_5.cards = nil
	if GetFFlagEnableSocialCards_upvr() then
		any_new_result1_5.senderTargetId = tostring(arg1.sender_user_id)
	end
	any_new_result1_5.stableKey = any_new_result1_5.id
	any_new_result1_5.isBadgeable = arg1.is_badgeable
	any_new_result1_5.isPreviewable = arg1.is_previewable
	return any_new_result1_5
end
function module_upvr.serializeForUserMessage(arg1, arg2) -- Line 193
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
	]]
	arg1.senderTargetId = tostring(arg2.sender_user_id)
	arg1.senderType = module_upvr.SenderTypes.User
	arg1.moderationType = arg2.moderation_type
	if getFFlagAppChatEnableRepliesUI_upvr() then
		arg1.repliesTo = module_upvr.fromChannelsApi(arg2.replies_to, nil, nil, true)
	end
	arg1.messageType = module_upvr.MessageTypes.PlainText
end
function module_upvr.serializeForSystemMessage(arg1, arg2) -- Line 203
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.senderType = module_upvr.SenderTypes.System
	arg1.messageType = module_upvr.MessageTypes.System
end
function module_upvr.DoRequiredFieldsPresentFromChannelsApi(arg1) -- Line 209
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg1 then
		return false
	end
	if arg1.type == module_upvr.SenderTypes.User then
		local id = arg1.id
		if id then
			id = arg1.sender_user_id
			if id then
				id = arg1.created_at
			end
		end
		return id
	end
	if arg1.type == module_upvr.SenderTypes.System then
		local id_2 = arg1.id
		if id_2 then
			id_2 = arg1.created_at
		end
		return id_2
	end
	return false
end
function module_upvr.parseContentFromChannelsApi(arg1, arg2) -- Line 223
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.messageType = module_upvr.MessageTypes.PlainText
	arg1.content = arg2.content
end
function module_upvr.fromSentChannelsApi(arg1, arg2, arg3) -- Line 229
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: DateTime_upvr (readonly)
		[3]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
	]]
	if not module_upvr.DoRequiredFieldsPresentForSentFromChannelsApi(arg1) then
		return nil
	end
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.id = arg1.messages[1].id
	any_new_result1_2.senderTargetId = tostring(arg1.messages[1].sender_user_id)
	any_new_result1_2.senderType = module_upvr.SenderTypes.User
	any_new_result1_2.read = true
	any_new_result1_2.sent = DateTime_upvr.fromIsoDate(arg1.messages[1].created_at)
	any_new_result1_2.conversationId = tostring(arg2)
	any_new_result1_2.previousMessageId = ""
	any_new_result1_2.moderationType = arg1.messages[1].moderation_type
	local var32 = arg3
	if not var32 then
		var32 = any_new_result1_2.id
	end
	any_new_result1_2.stableKey = var32
	any_new_result1_2.isBadgeable = arg1.messages[1].is_badgeable
	any_new_result1_2.isPreviewable = arg1.messages[1].is_previewable
	any_new_result1_2.filteredForReceivers = false
	any_new_result1_2.messageType = module_upvr.MessageTypes.PlainText
	any_new_result1_2.content = arg1.messages[1].content
	if getFFlagAppChatEnableRepliesUI_upvr() then
		any_new_result1_2.repliesTo = module_upvr.fromChannelsApi(arg1.messages[1].replies_to, nil, nil, true)
	end
	return any_new_result1_2
end
function module_upvr.DoRequiredFieldsPresentForSentFromChannelsApi(arg1) -- Line 260
	local var34 = arg1
	if var34 then
		var34 = arg1.messages
		if var34 then
			var34 = false
			if 0 < #arg1.messages then
				var34 = arg1.messages[1].id
				if var34 then
					var34 = arg1.messages[1].created_at
				end
			end
		end
	end
	return var34
end
return module_upvr