-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:02
-- Luau version 6, Types version 3
-- Time taken: 0.001982 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local EnumMessageTypes_upvr = require(AppChat.Components.ChatConversation.EnumMessageTypes)
local Cryo_upvr = require(Parent.Cryo)
local getFFlagAppChatEnableShareLinkGameCards_upvr = require(AppChat.Flags.getFFlagAppChatEnableShareLinkGameCards)
local formatMessages_upvr = require(script.Parent.formatMessages)
local separateRobloxUrlsFromText_upvr = require(script.Parent.RobloxUrlUtils.separateRobloxUrlsFromText)
local separateLinksFromMessagesRegex_upvr = require(script.Parent.separateLinksFromMessagesRegex)
return function(arg1, arg2) -- Line 18
	--[[ Upvalues[7]:
		[1]: ArgCheck_upvr (readonly)
		[2]: EnumMessageTypes_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: getFFlagAppChatEnableShareLinkGameCards_upvr (readonly)
		[5]: formatMessages_upvr (readonly)
		[6]: separateRobloxUrlsFromText_upvr (readonly)
		[7]: separateLinksFromMessagesRegex_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "table", "filterForLinks.text")
	ArgCheck_upvr.isType(arg2, "table", "filterForLinks.whitelistedDomains")
	if arg1.messageType == EnumMessageTypes_upvr.System then
		local module_2 = {}
		module_2[1] = arg1
		return module_2
	end
	if arg1.messageType == EnumMessageTypes_upvr.Link and (not arg1.gameLink or not arg1.gameLink.universeId) then
		return {Cryo_upvr.Dictionary.join(arg1, {
			messageType = Cryo_upvr.None;
		})}
	end
	if not arg1.content or arg1.moderated or not arg1.content:lower():match("%/games[^%d]*(%d+)/?") and (not getFFlagAppChatEnableShareLinkGameCards_upvr() or not arg1.content:match("%/share%?.*code=([%w%-]+)")) then
		local module = {}
		module[1] = arg1
		return module
	end
	if getFFlagAppChatEnableShareLinkGameCards_upvr() then
		return formatMessages_upvr(separateRobloxUrlsFromText_upvr(arg1.content), arg1)
	end
	return formatMessages_upvr(separateLinksFromMessagesRegex_upvr(arg1.content), arg1)
end