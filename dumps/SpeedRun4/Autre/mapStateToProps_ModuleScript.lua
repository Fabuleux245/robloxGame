-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:38
-- Luau version 6, Types version 3
-- Time taken: 0.001119 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local getFFlagExpChatEnableChannelTabsUI_upvr = require(ExpChat.Flags.getFFlagExpChatEnableChannelTabsUI)
local GetFFlagUnreduxChatTransparency_upvr = require(ExpChat.Parent.SharedFlags).GetFFlagUnreduxChatTransparency
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: getFFlagExpChatEnableChannelTabsUI_upvr (readonly)
		[2]: GetFFlagUnreduxChatTransparency_upvr (readonly)
	]]
	local module = {
		canLocalUserChat = arg1.CanLocalUserChat;
		isChatInputBarVisible = arg1.ChatVisibility.isChatInputBarEnabled.value;
	}
	local value = arg1.ChatVisibility.isChatWindowEnabled.value
	module.isChatWindowVisible = value
	if getFFlagExpChatEnableChannelTabsUI_upvr() then
		value = arg1.ChatVisibility.isChannelBarEnabled.value
	else
		value = false
	end
	module.isChannelBarVisible = value
	value = arg1.ChatVisibility.isChatInputBarEnabled._topBarVisibility
	if value then
		value = arg1.ChatVisibility.isChatWindowEnabled._topBarVisibility
	end
	module.chatTopBarVisibility = value
	value = arg1.Messages.windowMessagesInOrder
	module.messages = value
	if GetFFlagUnreduxChatTransparency_upvr() then
		value = nil
	else
		value = arg1.ChatVisibility.transparency.lastGeneralActivityTimestamp
	end
	module.lastGeneralActivityTimestamp = value
	if GetFFlagUnreduxChatTransparency_upvr() then
	else
	end
	module.lastMessageActivityTimestamp = arg1.ChatVisibility.transparency.lastMessageActivityTimestamp
	if GetFFlagUnreduxChatTransparency_upvr() then
	else
	end
	module.isTextBoxFocused = arg1.ChatVisibility.transparency.isTextBoxFocused
	module.chatLayoutAlignment = arg1.ChatLayout.Alignment
	module.chatWindowSettings = arg1.ChatLayout.ChatWindowSettings
	module.clientSettings = arg1.ClientSettings
	return module
end