-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:44
-- Luau version 6, Types version 3
-- Time taken: 0.002430 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local function getMessageId_upvr(arg1) -- Line 11, Named "getMessageId"
	return arg1.id
end
local function messageSortPredicate_upvr(arg1, arg2) -- Line 15, Named "messageSortPredicate"
	local var3
	if arg1.sent:GetUnixTimestamp() >= arg2.sent:GetUnixTimestamp() then
		var3 = false
	else
		var3 = true
	end
	return var3
end
local function sendingMessageSortPredicate_upvr(arg1, arg2) -- Line 22, Named "sendingMessageSortPredicate"
	local var4
	if arg1.order >= arg2.order then
		var4 = false
	else
		var4 = true
	end
	return var4
end
local module = {}
module.__index = module
local Conversation_upvr = require(script.Parent.Conversation)
local OrderedMap_upvr = require(Parent.AppCommonLib).OrderedMap
local GenerateStringId_upvr = require(Parent.AppCommonLib).GenerateStringId
local Constants_upvr = require(AppChat.Constants)
local DateTime_upvr = require(Parent.Time).DateTime
function module.mock(arg1) -- Line 29
	--[[ Upvalues[8]:
		[1]: Conversation_upvr (readonly)
		[2]: OrderedMap_upvr (readonly)
		[3]: getMessageId_upvr (readonly)
		[4]: messageSortPredicate_upvr (readonly)
		[5]: sendingMessageSortPredicate_upvr (readonly)
		[6]: GenerateStringId_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: DateTime_upvr (readonly)
	]]
	local any_new_result1 = Conversation_upvr.new()
	any_new_result1.messages = OrderedMap_upvr.new(getMessageId_upvr, messageSortPredicate_upvr)
	any_new_result1.sendingMessages = OrderedMap_upvr.new(getMessageId_upvr, sendingMessageSortPredicate_upvr)
	any_new_result1.id = GenerateStringId_upvr()
	any_new_result1.clientId = GenerateStringId_upvr()
	any_new_result1.title = ""
	any_new_result1.initiator = GenerateStringId_upvr()
	any_new_result1.hasUnreadMessages = false
	any_new_result1.conversationType = Conversation_upvr.Type.MULTI_USER_CONVERSATION
	any_new_result1.participants = {}
	any_new_result1.usersTyping = {}
	any_new_result1.isUserLeaving = false
	any_new_result1.fetchingOlderMessages = false
	any_new_result1.fetchedOldestMessage = false
	any_new_result1.serverState = Constants_upvr.ServerState.NONE
	any_new_result1.pinnedGame = {}
	any_new_result1.pinnedGame.universeId = GenerateStringId_upvr()
	any_new_result1.pinnedGame.rootPlaceId = GenerateStringId_upvr()
	any_new_result1.lastUpdated = DateTime_upvr.now()
	any_new_result1.titleForViewer = "title"
	any_new_result1.isDefaultTitle = true
	if arg1 ~= nil then
		for i, v in pairs(arg1) do
			any_new_result1[i] = v
		end
	end
	setmetatable(any_new_result1, {
		__index = Conversation_upvr;
	})
	return any_new_result1
end
return module