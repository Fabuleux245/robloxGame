-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:44
-- Luau version 6, Types version 3
-- Time taken: 0.000811 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local MessageModel_upvr = require(script.Parent.MessageModel)
local module = {}
local GenerateStringId_upvr = require(Parent.AppCommonLib).GenerateStringId
local DateTime_upvr = require(Parent.Time).DateTime
function module.mock(arg1) -- Line 11
	--[[ Upvalues[3]:
		[1]: MessageModel_upvr (readonly)
		[2]: GenerateStringId_upvr (readonly)
		[3]: DateTime_upvr (readonly)
	]]
	local any_new_result1 = MessageModel_upvr.new()
	any_new_result1.id = GenerateStringId_upvr()
	any_new_result1.senderTargetId = GenerateStringId_upvr()
	any_new_result1.conversationId = GenerateStringId_upvr()
	any_new_result1.senderType = MessageModel_upvr.SenderTypes.User
	any_new_result1.content = "MESSAGE CONTENT"
	any_new_result1.messageType = MessageModel_upvr.MessageTypes.PlainText
	any_new_result1.read = false
	any_new_result1.sent = DateTime_upvr.now()
	any_new_result1.previousMessageId = nil
	any_new_result1.filteredForReceivers = false
	if arg1 ~= nil then
		for i, v in pairs(arg1) do
			any_new_result1[i] = v
		end
	end
	return any_new_result1
end
setmetatable(module, {
	__index = MessageModel_upvr;
})
return module