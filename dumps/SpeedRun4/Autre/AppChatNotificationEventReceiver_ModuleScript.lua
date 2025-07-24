-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:58
-- Luau version 6, Types version 3
-- Time taken: 0.003835 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
game:DefineFastFlag("AppChatUnreadRealtimeEventMkII", false)
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local useUnreadMessagesDispatch_upvr = require(AppChat.Contexts.UnreadMessages.useUnreadMessagesDispatch)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local useRealtimePlatformChat_upvr = require(script.Parent.useRealtimePlatformChat)
local RealtimeDelivery_upvr = require(Parent.RealtimeDelivery)
return React_upvr.memo(function() -- Line 17, Named "AppChatNotificationEventReceiver"
	--[[ Upvalues[10]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useUnreadMessagesDispatch_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: any_new_result1_upvr (readonly)
		[7]: AppChatNetworking_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: useRealtimePlatformChat_upvr (readonly)
		[10]: RealtimeDelivery_upvr (readonly)
	]]
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var5_result1_upvr = useUnreadMessagesDispatch_upvr()
	local var6_result1_upvr = useDispatch_upvr()
	local var7_result1_upvr = useSelector_upvr(function(arg1) -- Line 22
		return arg1.ChatAppReducer.unreadMessageCount
	end)
	React_upvr.useEffect(function() -- Line 26
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: useAnalytics_upvr_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
		]]
		any_new_result1_upvr:debug("Fetching conversation metadata to get unread count")
		var6_result1_upvr(AppChatNetworking_upvr.rodux.GetConversationMetadata.API()):andThen(function(arg1) -- Line 30
			--[[ Upvalues[3]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[3]: EventNames_upvr (copied, readonly)
			]]
			local global_unread_message_count = arg1.responseBody.global_unread_message_count
			any_new_result1_upvr:info("Initial unread message count: {}", global_unread_message_count)
			useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.preloadSocialTabDataEvent, {
				unreadConversationCount = global_unread_message_count;
			})
		end):catch(function(arg1) -- Line 38
			--[[ Upvalues[3]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[3]: EventNames_upvr (copied, readonly)
			]]
			any_new_result1_upvr:error("Failure in GetConversationMetadata. Error: {}", tostring(arg1))
			useAnalytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.preloadSocialTabDataFailedEvent, {})
		end)
	end, {var6_result1_upvr, useAnalytics_upvr_result1_upvr})
	React_upvr.useEffect(function() -- Line 44
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: var5_result1_upvr (readonly)
		]]
		any_new_result1_upvr:info("Dispatching unread messsage count as {}", var7_result1_upvr)
		var5_result1_upvr(var7_result1_upvr)
	end, {var5_result1_upvr, var7_result1_upvr})
	useRealtimePlatformChat_upvr(function(arg1) -- Line 49
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
		]]
		local var27
		if arg1.Type ~= "ChannelMetadataUpdated" then
			var27 = false
		else
			var27 = true
		end
		if game:GetFastFlag("AppChatUnreadRealtimeEventMkII") then
			local var28 = true
			if arg1.Type ~= "ChannelMetadataUpdated" then
				if arg1.Type ~= "ChannelMarkedRead" then
					var28 = false
				else
					var28 = true
				end
			end
			var27 = var28
		end
		if var27 then
			any_new_result1_upvr:info("Received event {}, fetching conversation metadata to get unread count", arg1.Type)
			var6_result1_upvr(AppChatNetworking_upvr.rodux.GetConversationMetadata.API()):catch(function(arg1_2) -- Line 57
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:error("Failure in GetConversationMetadata. Error: {}", tostring(arg1_2))
			end)
		end
	end, {var6_result1_upvr})
	RealtimeDelivery_upvr.useRealtimeConnectionStateChanged("CommunicationChannels", function(arg1, arg2) -- Line 63
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
		]]
		if arg1 == Enum.ConnectionState.Connected and arg2 then
			any_new_result1_upvr:info("Connection re-established, fetching conversation metadata to get unread count")
			var6_result1_upvr(AppChatNetworking_upvr.rodux.GetConversationMetadata.API()):catch(function(arg1_3) -- Line 66
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:error("Failure in GetConversationMetadata. Error: {}", tostring(arg1_3))
			end)
		end
	end, {var6_result1_upvr})
	return nil
end)