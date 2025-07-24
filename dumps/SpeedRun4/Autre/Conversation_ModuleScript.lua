-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:41
-- Luau version 6, Types version 3
-- Time taken: 0.006377 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local GenerateStringId_upvr = require(Parent.AppCommonLib).GenerateStringId
local OrderedMap_upvr = require(Parent.AppCommonLib).OrderedMap
local Constants_upvr = require(AppChat.Constants)
local DateTime_upvr = require(Parent.Time).DateTime
local function getMessageId_upvr(arg1) -- Line 16, Named "getMessageId"
	return arg1.id
end
local function messageSortPredicate_upvr(arg1, arg2) -- Line 20, Named "messageSortPredicate"
	local var7
	if arg1.sent:GetUnixTimestamp() >= arg2.sent:GetUnixTimestamp() then
		var7 = false
	else
		var7 = true
	end
	return var7
end
local function sendingMessageSortPredicate_upvr(arg1, arg2) -- Line 27, Named "sendingMessageSortPredicate"
	local var8
	if arg1.order >= arg2.order then
		var8 = false
	else
		var8 = true
	end
	return var8
end
local module_upvr = {
	Type = {
		MULTI_USER_CONVERSATION = "MultiUserConversation";
		ONE_TO_ONE_CONVERSATION = "OneToOneConversation";
	};
	OsaAcknowledgementStatus = require(Parent.AppChatNetworking).Constants.OsaAcknowledgementStatusResponse;
}
function module_upvr.IdForFakeOneOnOne(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local ONE_TO_ONE_CONVERSATION = module_upvr.Type.ONE_TO_ONE_CONVERSATION
	table.sort(arg1)
	for _, v in ipairs(arg1) do
		ONE_TO_ONE_CONVERSATION = ONE_TO_ONE_CONVERSATION..'-'..tostring(v)
	end
	return ONE_TO_ONE_CONVERSATION
end
function module_upvr.new() -- Line 52
	return {}
end
local Players_upvr = game:GetService("Players")
function module_upvr.fromUser(arg1) -- Line 58
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: OrderedMap_upvr (readonly)
		[3]: getMessageId_upvr (readonly)
		[4]: messageSortPredicate_upvr (readonly)
		[5]: sendingMessageSortPredicate_upvr (readonly)
		[6]: GenerateStringId_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: Constants_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.messages = OrderedMap_upvr.new(getMessageId_upvr, messageSortPredicate_upvr)
	any_new_result1_2.sendingMessages = OrderedMap_upvr.new(getMessageId_upvr, sendingMessageSortPredicate_upvr)
	any_new_result1_2.clientId = GenerateStringId_upvr()
	any_new_result1_2.initiator = nil
	any_new_result1_2.hasUnreadMessages = false
	any_new_result1_2.conversationType = module_upvr.Type.ONE_TO_ONE_CONVERSATION
	any_new_result1_2.participants = {tostring(Players_upvr.LocalPlayer.UserId), arg1.id}
	any_new_result1_2.usersTyping = {}
	any_new_result1_2.isUserLeaving = false
	any_new_result1_2.fetchingOlderMessages = false
	any_new_result1_2.fetchedOldestMessage = false
	any_new_result1_2.serverState = Constants_upvr.ServerState.NONE
	any_new_result1_2.id = module_upvr.IdForFakeOneOnOne(any_new_result1_2.participants)
	any_new_result1_2.lastUpdated = nil
	any_new_result1_2.isDefaultTitle = true
	local displayName = arg1.displayName
	if not displayName then
		displayName = arg1.name
	end
	any_new_result1_2.title = displayName
	return any_new_result1_2
end
local FFlagAppChatEnableOneToOneOSAContextCards_upvr = require(Parent.SharedFlags).FFlagAppChatEnableOneToOneOSAContextCards
function module_upvr.empty(arg1) -- Line 84
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: OrderedMap_upvr (readonly)
		[3]: getMessageId_upvr (readonly)
		[4]: messageSortPredicate_upvr (readonly)
		[5]: sendingMessageSortPredicate_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: DateTime_upvr (readonly)
		[8]: FFlagAppChatEnableOneToOneOSAContextCards_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_new_result1_3 = module_upvr.new()
	any_new_result1_3.id = "-1"
	any_new_result1_3.messages = OrderedMap_upvr.new(getMessageId_upvr, messageSortPredicate_upvr)
	any_new_result1_3.sendingMessages = OrderedMap_upvr.new(getMessageId_upvr, sendingMessageSortPredicate_upvr)
	any_new_result1_3.title = ""
	any_new_result1_3.initiator = '0'
	any_new_result1_3.hasUnreadMessages = false
	any_new_result1_3.conversationType = module_upvr.Type.MULTI_USER_CONVERSATION
	any_new_result1_3.participants = {}
	any_new_result1_3.usersTyping = {}
	any_new_result1_3.isUserLeaving = false
	any_new_result1_3.fetchingOlderMessages = false
	any_new_result1_3.serverState = Constants_upvr.ServerState.NONE
	any_new_result1_3.pinnedGame = {}
	any_new_result1_3.lastUpdated = DateTime_upvr.now()
	local var33 = true
	any_new_result1_3.isDefaultTitle = var33
	if FFlagAppChatEnableOneToOneOSAContextCards_upvr then
		var33 = module_upvr.OsaAcknowledgementStatus.NotApplicable
	else
		var33 = nil
	end
	any_new_result1_3.osaAcknowledgementStatus = var33
	if arg1 ~= nil then
		for i_2, v_2 in pairs(arg1) do
			any_new_result1_3[i_2] = v_2
		end
	end
	return any_new_result1_3
end
function module_upvr.fromWeb(arg1, arg2) -- Line 119
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: OrderedMap_upvr (readonly)
		[3]: getMessageId_upvr (readonly)
		[4]: messageSortPredicate_upvr (readonly)
		[5]: sendingMessageSortPredicate_upvr (readonly)
		[6]: GenerateStringId_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: DateTime_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_new_result1 = module_upvr.new()
	any_new_result1.messages = OrderedMap_upvr.new(getMessageId_upvr, messageSortPredicate_upvr)
	any_new_result1.sendingMessages = OrderedMap_upvr.new(getMessageId_upvr, sendingMessageSortPredicate_upvr)
	any_new_result1.id = tostring(arg1.id)
	local var46 = arg2
	if not var46 then
		var46 = GenerateStringId_upvr()
	end
	any_new_result1.clientId = var46
	any_new_result1.title = arg1.title
	any_new_result1.initiator = tostring(arg1.initiator.targetId)
	any_new_result1.hasUnreadMessages = arg1.hasUnreadMessages
	any_new_result1.conversationType = arg1.conversationType
	any_new_result1.participants = {}
	any_new_result1.usersTyping = {}
	any_new_result1.isUserLeaving = false
	any_new_result1.fetchingOlderMessages = false
	any_new_result1.serverState = Constants_upvr.ServerState.CREATED
	any_new_result1.pinnedGame = {}
	if arg1.conversationUniverse ~= nil then
		any_new_result1.pinnedGame.universeId = tostring(arg1.conversationUniverse.universeId)
		any_new_result1.pinnedGame.rootPlaceId = tostring(arg1.conversationUniverse.rootPlaceId)
	end
	any_new_result1.lastUpdated = DateTime_upvr.fromIsoDate(arg1.lastUpdated)
	any_new_result1.titleForViewer = arg1.conversationTitle.titleForViewer
	any_new_result1.isDefaultTitle = arg1.conversationTitle.isDefaultTitle
	for _, v_3 in ipairs(arg1.participants) do
		table.insert(any_new_result1.participants, tostring(v_3.targetId))
	end
	return any_new_result1
end
return module_upvr