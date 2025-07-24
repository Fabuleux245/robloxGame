-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:59
-- Luau version 6, Types version 3
-- Time taken: 0.001732 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local FFlagAppChatEnableMessagePreviewContentDisplay_upvr = require(AppChat.Flags.FFlagAppChatEnableMessagePreviewContentDisplay)
local EnumMessageTypes_upvr = require(AppChat.Components.ChatConversation.EnumMessageTypes)
local Url_upvr = require(Parent.Http).Url
local GetFFlagEnableSocialCards_upvr = require(Parent.SharedFlags).GetFFlagEnableSocialCards
local function getMessageContent_upvr(arg1) -- Line 14, Named "getMessageContent"
	--[[ Upvalues[4]:
		[1]: FFlagAppChatEnableMessagePreviewContentDisplay_upvr (readonly)
		[2]: EnumMessageTypes_upvr (readonly)
		[3]: Url_upvr (readonly)
		[4]: GetFFlagEnableSocialCards_upvr (readonly)
	]]
	if FFlagAppChatEnableMessagePreviewContentDisplay_upvr and arg1.previewContent then
		return arg1.previewContent
	end
	if arg1.messageType == EnumMessageTypes_upvr.Link then
		return Url_upvr.WWW_URL.."games/"..arg1.gameLink.universeId
	end
	if GetFFlagEnableSocialCards_upvr() and arg1.messageType == EnumMessageTypes_upvr.System and arg1.cards then
		local _1 = arg1.cards[1]
		if _1 then
			_1 = arg1.cards[1].alt_text
		end
		return _1
	end
	return tostring(arg1.content)
end
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
return function(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: getMessageContent_upvr (readonly)
	]]
	local var9_result1 = getDeepValue_upvr(arg1, "messages.values")
	local previewMessageId = arg1.previewMessageId
	if previewMessageId and var9_result1 and var9_result1[previewMessageId] then
		return getMessageContent_upvr(var9_result1[previewMessageId])
	end
	return nil
end