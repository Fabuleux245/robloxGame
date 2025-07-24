-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:03
-- Luau version 6, Types version 3
-- Time taken: 0.000770 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local Cryo_upvr = require(Parent.Cryo)
local getFFlagAppChatEnableShareLinkGameCards_upvr = require(AppChat.Flags.getFFlagAppChatEnableShareLinkGameCards)
local EnumMessageTypes_upvr = require(AppChat.Components.ChatConversation.EnumMessageTypes)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[4]:
		[1]: ArgCheck_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: getFFlagAppChatEnableShareLinkGameCards_upvr (readonly)
		[4]: EnumMessageTypes_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "table", "formatMessages.messages")
	ArgCheck_upvr.isType(arg2, "table", "formatMessages.messageData")
	return Cryo_upvr.List.map(arg1, function(arg1_2) -- Line 13
		--[[ Upvalues[4]:
			[1]: getFFlagAppChatEnableShareLinkGameCards_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: EnumMessageTypes_upvr (copied, readonly)
		]]
		if arg1_2.placeId or getFFlagAppChatEnableShareLinkGameCards_upvr() and arg1_2.shareLink then
			return Cryo_upvr.Dictionary.join(arg2, arg1_2, {
				messageType = EnumMessageTypes_upvr.Link;
				content = Cryo_upvr.None;
			})
		end
		return Cryo_upvr.Dictionary.join(arg2, arg1_2)
	end)
end