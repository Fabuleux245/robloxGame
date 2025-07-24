-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:09
-- Luau version 6, Types version 3
-- Time taken: 0.001713 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Analytics_upvr = require(AppChat.Parent.Analytics).Analytics
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local Players_upvr = game:GetService("Players")
local RoactChatAnalytics_upvr = require(AppChat.LegacyAnalytics.RoactChatAnalytics)
local EnumMessageTypes_upvr = require(AppChat.Components.ChatConversation.EnumMessageTypes)
local filterForLinksWithPolicy_upvr = require(AppChat.Components.ChatConversation.Utils.filterForLinksWithPolicy)
return function(arg1, arg2, arg3) -- Line 13
	--[[ Upvalues[6]:
		[1]: Analytics_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: RoactChatAnalytics_upvr (readonly)
		[5]: EnumMessageTypes_upvr (readonly)
		[6]: filterForLinksWithPolicy_upvr (readonly)
	]]
	local var13
	if arg3 then
		var13 = arg3
	else
		var13 = RoactChatAnalytics_upvr.new(Analytics_upvr.new(RbxAnalyticsService_upvr), tostring(Players_upvr.LocalPlayer.UserId))
	end
	if arg1.messageType == EnumMessageTypes_upvr.PlainText then
		for _, v in pairs(filterForLinksWithPolicy_upvr(arg1)) do
			if v.messageType == EnumMessageTypes_upvr.Link then
				var13:loadGameLinkCardInChat(arg2, v.placeId)
			end
		end
	elseif arg1.messageType == EnumMessageTypes_upvr.Link then
		var13:loadGameLinkCardInChat(arg2, arg1.gameLink.universeId)
	end
end