-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:33
-- Luau version 6, Types version 3
-- Time taken: 0.003248 seconds

local Parent = script.Parent.Parent
local Network = Parent.Network
local InviteStatus_upvr = require(Parent.Resources.Constants).InviteStatus
local ReceivedUserInviteStatus_upvr = require(Parent.Actions.ReceivedUserInviteStatus)
local RunService_upvr = game:GetService("RunService")
local GetPlaceInfos_upvr = require(Network.Requests.GetPlaceInfos)
local var8_upvr = require(Network.httpRequest)(game:GetService("HttpRbxApiService"))
local Players_upvr = game:GetService("Players")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatMigrateIGMInvite", false)
local constructGameLinkUrl_upvr = require(Parent.Utility.constructGameLinkUrl)
local AppChatNetworking_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppChatNetworking)
local DEPRECATED_ChatStartOneToOneConversation_upvr = require(Network.Requests.DEPRECATED_ChatStartOneToOneConversation)
local DEPRECATED_ChatSendMessage_upvr = require(Network.Requests.DEPRECATED_ChatSendMessage)
local DEPRECATED_ChatSendGameLinkMessage_upvr = require(Network.Requests.DEPRECATED_ChatSendGameLinkMessage)
return function(arg1, arg2) -- Line 31
	--[[ Upvalues[12]:
		[1]: InviteStatus_upvr (readonly)
		[2]: ReceivedUserInviteStatus_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: GetPlaceInfos_upvr (readonly)
		[5]: var8_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: constructGameLinkUrl_upvr (readonly)
		[9]: AppChatNetworking_upvr (readonly)
		[10]: DEPRECATED_ChatStartOneToOneConversation_upvr (readonly)
		[11]: DEPRECATED_ChatSendMessage_upvr (readonly)
		[12]: DEPRECATED_ChatSendGameLinkMessage_upvr (readonly)
	]]
	return function(arg1_2) -- Line 32
		--[[ Upvalues[14]:
			[1]: arg1 (readonly)
			[2]: InviteStatus_upvr (copied, readonly)
			[3]: ReceivedUserInviteStatus_upvr (copied, readonly)
			[4]: RunService_upvr (copied, readonly)
			[5]: GetPlaceInfos_upvr (copied, readonly)
			[6]: var8_upvr (copied, readonly)
			[7]: arg2 (readonly)
			[8]: Players_upvr (copied, readonly)
			[9]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[10]: constructGameLinkUrl_upvr (copied, readonly)
			[11]: AppChatNetworking_upvr (copied, readonly)
			[12]: DEPRECATED_ChatStartOneToOneConversation_upvr (copied, readonly)
			[13]: DEPRECATED_ChatSendMessage_upvr (copied, readonly)
			[14]: DEPRECATED_ChatSendGameLinkMessage_upvr (copied, readonly)
		]]
		if arg1_2:getState().invites[tostring(arg1)] == InviteStatus_upvr.Pending then return end
		arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg1, InviteStatus_upvr.Pending))
		if RunService_upvr:IsStudio() then
			spawn(function() -- Line 42
				--[[ Upvalues[4]:
					[1]: arg1_2 (readonly)
					[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: InviteStatus_upvr (copied, readonly)
				]]
				arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg1, InviteStatus_upvr.Failed))
			end)
			return
		end
		local module_3 = {}
		module_3[1] = arg2
		return GetPlaceInfos_upvr(var8_upvr, module_3):andThen(function(arg1_3) -- Line 48
			local _1_2 = arg1_3.responseBody[1]
			assert(_1_2, "Error fetching placeInfos")
			_1_2.placeId = tostring(_1_2.placeId)
			_1_2.universeId = tostring(_1_2.universeId)
			return _1_2
		end):andThen(function(arg1_4) -- Line 58
			--[[ Upvalues[9]:
				[1]: Players_upvr (copied, readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: constructGameLinkUrl_upvr (copied, readonly)
				[4]: AppChatNetworking_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: DEPRECATED_ChatStartOneToOneConversation_upvr (copied, readonly)
				[7]: var8_upvr (copied, readonly)
				[8]: DEPRECATED_ChatSendMessage_upvr (copied, readonly)
				[9]: DEPRECATED_ChatSendGameLinkMessage_upvr (copied, readonly)
			]]
			local formatted_upvw = string.format("Come join me in %s", arg1_4.name)
			if game_DefineFastFlag_result1_upvr then
				assert(arg1_4.universeRootPlaceId, "Failed to get universe root place id")
				formatted_upvw = formatted_upvw..'\n'..constructGameLinkUrl_upvr(arg1_4.universeRootPlaceId)
				local module_2 = {}
				module_2[1] = arg1
				return AppChatNetworking_upvr.http.CreateConversation(nil, "one_to_one", module_2):andThen(function(arg1_5) -- Line 65
					--[[ Upvalues[3]:
						[1]: AppChatNetworking_upvr (copied, readonly)
						[2]: formatted_upvw (read and write)
						[3]: arg1_4 (readonly)
					]]
					local _1_3_upvr = arg1_5.responseBody.conversations[1]
					assert(_1_3_upvr, "Failed to create conversation")
					return AppChatNetworking_upvr.http.SendChatTextMessage(nil, _1_3_upvr.id, formatted_upvw):andThen(function(arg1_6) -- Line 68
						--[[ Upvalues[2]:
							[1]: _1_3_upvr (readonly)
							[2]: arg1_4 (copied, readonly)
						]]
						local _1 = arg1_6.responseBody.messages[1]
						local var28 = "Failed to send message"
						assert(_1, var28)
						local module = {}
						if _1.status == "success" then
							var28 = "Success"
						else
							var28 = "Failed"
						end
						module.resultType = var28
						module.conversationId = _1_3_upvr.id
						module.placeId = arg1_4.universeRootPlaceId
						return module
					end)
				end):catch(function(arg1_7) -- Line 81
					warn("Failed to send invite: "..tostring(arg1_7))
				end)
			end
			return DEPRECATED_ChatStartOneToOneConversation_upvr(var8_upvr, arg1, Players_upvr.LocalPlayer.UserId):andThen(function(arg1_8) -- Line 85
				--[[ Upvalues[5]:
					[1]: DEPRECATED_ChatSendMessage_upvr (copied, readonly)
					[2]: var8_upvr (copied, readonly)
					[3]: formatted_upvw (read and write)
					[4]: DEPRECATED_ChatSendGameLinkMessage_upvr (copied, readonly)
					[5]: arg1_4 (readonly)
				]]
				local conversation_upvr = arg1_8.responseBody.conversation
				return DEPRECATED_ChatSendMessage_upvr(var8_upvr, conversation_upvr.id, formatted_upvw):andThen(function() -- Line 87
					--[[ Upvalues[4]:
						[1]: DEPRECATED_ChatSendGameLinkMessage_upvr (copied, readonly)
						[2]: var8_upvr (copied, readonly)
						[3]: conversation_upvr (readonly)
						[4]: arg1_4 (copied, readonly)
					]]
					return DEPRECATED_ChatSendGameLinkMessage_upvr(var8_upvr, conversation_upvr.id, arg1_4.universeId):andThen(function(arg1_9) -- Line 88
						--[[ Upvalues[2]:
							[1]: conversation_upvr (copied, readonly)
							[2]: arg1_4 (copied, readonly)
						]]
						return {
							resultType = arg1_9.responseBody.resultType;
							conversationId = conversation_upvr.id;
							placeId = arg1_4.universeRootPlaceId;
						}
					end)
				end)
			end)
		end):andThen(function(arg1_10) -- Line 102
			--[[ Upvalues[5]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: InviteStatus_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: ReceivedUserInviteStatus_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			local var37
			if game_DefineFastFlag_result1_upvr then
				local any_await_result1, any_await_result2 = var37:await()
				assert(any_await_result1, "Failed to unroll promise after friend invitation: "..tostring(any_await_result2))
				var37 = any_await_result2
			end
			any_await_result2 = InviteStatus_upvr[var37.resultType]
			local var40 = any_await_result2
			if not var40 then
				var40 = InviteStatus_upvr.Failed
			end
			arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg1, var40))
			return var37
		end, function(arg1_11) -- Line 117
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: ReceivedUserInviteStatus_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: InviteStatus_upvr (copied, readonly)
			]]
			arg1_2:dispatch(ReceivedUserInviteStatus_upvr(arg1, InviteStatus_upvr.Failed))
		end)
	end
end