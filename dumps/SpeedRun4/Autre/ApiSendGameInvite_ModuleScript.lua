-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:45
-- Luau version 6, Types version 3
-- Time taken: 0.001114 seconds

local CorePackages = game:GetService("CorePackages")
local Requests = require(CorePackages.Workspace.Packages.Http).Requests
local Players_upvr = game:GetService("Players")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local DEPRECATED_ChatStartOneToOneConversation_upvr = Requests.DEPRECATED_ChatStartOneToOneConversation
local DEPRECATED_ChatSendMessage_upvr = Requests.DEPRECATED_ChatSendMessage
local DEPRECATED_ChatSendGameLinkMessage_upvr = Requests.DEPRECATED_ChatSendGameLinkMessage
return function(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[5]:
		[1]: Players_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: DEPRECATED_ChatStartOneToOneConversation_upvr (readonly)
		[4]: DEPRECATED_ChatSendMessage_upvr (readonly)
		[5]: DEPRECATED_ChatSendGameLinkMessage_upvr (readonly)
	]]
	local UserId_upvr = Players_upvr.LocalPlayer.UserId
	local any_FormatByKey_result1_upvw = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Message.InviteToGameTitle", {
		PLACENAME = arg3.name;
	})
	return function(arg1_2) -- Line 26
		--[[ Upvalues[8]:
			[1]: DEPRECATED_ChatStartOneToOneConversation_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: UserId_upvr (readonly)
			[5]: DEPRECATED_ChatSendMessage_upvr (copied, readonly)
			[6]: any_FormatByKey_result1_upvw (read and write)
			[7]: arg3 (readonly)
			[8]: DEPRECATED_ChatSendGameLinkMessage_upvr (copied, readonly)
		]]
		return DEPRECATED_ChatStartOneToOneConversation_upvr(arg1, arg2, UserId_upvr):andThen(function(arg1_3) -- Line 27
			--[[ Upvalues[6]:
				[1]: DEPRECATED_ChatSendMessage_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: any_FormatByKey_result1_upvw (copied, read and write)
				[4]: arg2 (copied, readonly)
				[5]: arg3 (copied, readonly)
				[6]: DEPRECATED_ChatSendGameLinkMessage_upvr (copied, readonly)
			]]
			local conversation_upvr = arg1_3.responseBody.conversation
			return DEPRECATED_ChatSendMessage_upvr(arg1, conversation_upvr.id, any_FormatByKey_result1_upvw, nil, true, arg2):andThen(function() -- Line 30
				--[[ Upvalues[5]:
					[1]: conversation_upvr (readonly)
					[2]: arg3 (copied, readonly)
					[3]: DEPRECATED_ChatSendGameLinkMessage_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: arg2 (copied, readonly)
				]]
				return DEPRECATED_ChatSendGameLinkMessage_upvr(arg1, conversation_upvr.id, arg3.universeId, nil, true, arg2, arg3.universeRootPlaceId):andThen(function(arg1_4) -- Line 31, Named "handleResult"
					--[[ Upvalues[2]:
						[1]: conversation_upvr (copied, readonly)
						[2]: arg3 (copied, readonly)
					]]
					return {
						resultType = arg1_4.responseBody.resultType;
						conversationId = conversation_upvr.id;
						placeId = arg3.universeRootPlaceId;
					}
				end)
			end)
		end)
	end
end