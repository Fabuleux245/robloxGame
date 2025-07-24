-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:00
-- Luau version 6, Types version 3
-- Time taken: 0.001650 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	messageId = "";
	conversationId = "";
	inputBoxRef = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local MessageContextMenu_upvr = require(script.Parent.MessageContextMenu)
function MessageContextMenuContainer(arg1) -- Line 32
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useGetConversationFromId_upvr (readonly)
		[4]: useLocalUserId_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: MessageContextMenu_upvr (readonly)
	]]
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local var6_result1 = useGetConversationFromId_upvr(any_union_result1.conversationId)
	local var11
	if var6_result1 and var6_result1.messages then
		var11 = var6_result1.messages:Get(any_union_result1.messageId)
	end
	local var12
	if var11 then
		if var11.senderTargetId ~= useLocalUserId_upvr() then
			var12 = false
		else
			var12 = true
		end
		return React_upvr.createElement(MessageContextMenu_upvr, Cryo_upvr.Dictionary.union(any_union_result1, {
			message = var11;
			userOwnsMessage = var12;
		}))
	end
	return nil
end
return React_upvr.memo(MessageContextMenuContainer)