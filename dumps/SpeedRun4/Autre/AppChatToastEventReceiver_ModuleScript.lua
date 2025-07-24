-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:00
-- Luau version 6, Types version 3
-- Time taken: 0.003727 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local ToastNotification = require(Parent.ToastNotification)
local tbl_2_upvr = {
	hideAllChatToasts = false;
	isAppChatVisible = false;
	isInExperience = false;
	navigateToChat = function() -- Line 44, Named "navigateToChat"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr = require(Parent.SharedFlags).GetFFlagAppChatInExpToastSnoozeMenuDismissFix
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local useIsChatEnabled_upvr = require(AppChat.Hooks.useIsChatEnabled)
local React_upvr = require(Parent.React)
local LifecycleEvents_upvr = ToastNotification.LifecycleEvents
local NotificationTypeEnum_upvr = ToastNotification.ToastNotificationTypeModule.NotificationTypeEnum
local HttpService_upvr = game:GetService("HttpService")
local default_upvr = require(Parent.ToastNotificationsProtocol).ToastNotificationProtocol.default
local ShowNotificationSnoozeMenuSignal_upvr = ToastNotification.Signals.ShowNotificationSnoozeMenuSignal
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local HideChatToastExperimentation_upvr = require(AppChat.App.HideChatToastExperimentation)
local NotificationSnoozedSignal_upvr = ToastNotification.Signals.NotificationSnoozedSignal
local SnoozeActionEnum_upvr = ToastNotification.ToastNotificationTypeModule.SnoozeActionEnum
local default_upvr_2 = ToastNotification.ToastNotificationSnoozeManager.default
local DismissNotificationSnoozeMenuSignal_upvr = ToastNotification.Signals.DismissNotificationSnoozeMenuSignal
return function(arg1) -- Line 47
	--[[ Upvalues[20]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[5]: SquadExperimentation_upvr (readonly)
		[6]: GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr (readonly)
		[7]: UniversalAppPolicy_upvr (readonly)
		[8]: useIsChatEnabled_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: LifecycleEvents_upvr (readonly)
		[11]: NotificationTypeEnum_upvr (readonly)
		[12]: HttpService_upvr (readonly)
		[13]: default_upvr (readonly)
		[14]: ShowNotificationSnoozeMenuSignal_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
		[16]: HideChatToastExperimentation_upvr (readonly)
		[17]: NotificationSnoozedSignal_upvr (readonly)
		[18]: SnoozeActionEnum_upvr (readonly)
		[19]: default_upvr_2 (readonly)
		[20]: DismissNotificationSnoozeMenuSignal_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local tbl = {
		snoozeDescription = "Feature.Chat.Description.SnoozeDescription";
	}
	local var27_upvw
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		var27_upvw = "Feature.Chat.Label.SnoozePartyNotifications"
	else
		var27_upvw = "Feature.Chat.Label.SnoozeChatNotifications"
	end
	tbl.snoozeTitle = var27_upvw
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(tbl)
	if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
		var27_upvw = any_join_result1_upvr.isAppChatVisible
	else
		var27_upvw = any_join_result1_upvr.hideAllChatToasts
	end
	local any_getCanSeeChatTab_result1_upvr = UniversalAppPolicy_upvr.getAppFeaturePolicies().getCanSeeChatTab()
	local var30 = var27_upvw
	if not var30 then
		var30 = not useIsChatEnabled_upvr()
	end
	var27_upvw = var30
	React_upvr.useEffect(function() -- Line 68
		--[[ Upvalues[7]:
			[1]: LifecycleEvents_upvr (copied, readonly)
			[2]: NotificationTypeEnum_upvr (copied, readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: default_upvr (copied, readonly)
			[5]: any_join_result1_upvr (readonly)
			[6]: ShowNotificationSnoozeMenuSignal_upvr (copied, readonly)
			[7]: useLocalization_upvr_result1_upvr (readonly)
		]]
		local any_RegisterCallback_result1_upvr = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.UserAction, NotificationTypeEnum_upvr.ChatNewMessage, function(arg1_2) -- Line 72
			--[[ Upvalues[6]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: default_upvr (copied, readonly)
				[3]: any_join_result1_upvr (copied, readonly)
				[4]: ShowNotificationSnoozeMenuSignal_upvr (copied, readonly)
				[5]: useLocalization_upvr_result1_upvr (copied, readonly)
				[6]: NotificationTypeEnum_upvr (copied, readonly)
			]]
			if arg1_2 and arg1_2.userActionType == "click" and arg1_2.notificationData and arg1_2.visualItem and arg1_2.visualItem.eventName == "ChatMessageBody" and arg1_2.visualItem.actionEventParams then
				default_upvr:dismissNotification(arg1_2.notificationData.id)
				any_join_result1_upvr.navigateToChat(HttpService_upvr:JSONDecode(arg1_2.visualItem.actionEventParams).conversationId)
			end
			if arg1_2 and arg1_2.userActionType == "click" and arg1_2.notificationData and arg1_2.visualItem and arg1_2.visualItem.eventName == "ChatMessageSnoozeSingleMetaAction" then
				ShowNotificationSnoozeMenuSignal_upvr:fire({
					context = "Toast";
					description = useLocalization_upvr_result1_upvr.snoozeDescription;
					notificationType = NotificationTypeEnum_upvr.ChatNewMessage;
					title = useLocalization_upvr_result1_upvr.snoozeTitle;
				})
			end
		end)
		return function() -- Line 104
			--[[ Upvalues[1]:
				[1]: any_RegisterCallback_result1_upvr (readonly)
			]]
			any_RegisterCallback_result1_upvr()
		end
	end, dependencyArray_upvr(any_join_result1_upvr.navigateToChat, useLocalization_upvr_result1_upvr))
	local var37_upvw = 0
	React_upvr.useEffect(function() -- Line 109
		--[[ Upvalues[10]:
			[1]: default_upvr (copied, readonly)
			[2]: NotificationTypeEnum_upvr (copied, readonly)
			[3]: HideChatToastExperimentation_upvr (copied, readonly)
			[4]: any_join_result1_upvr (readonly)
			[5]: var27_upvw (read and write)
			[6]: any_getCanSeeChatTab_result1_upvr (readonly)
			[7]: var37_upvw (read and write)
			[8]: NotificationSnoozedSignal_upvr (copied, readonly)
			[9]: SnoozeActionEnum_upvr (copied, readonly)
			[10]: default_upvr_2 (copied, readonly)
		]]
		local any_listenToDisplayNotification_result1_upvr = default_upvr:listenToDisplayNotification(function(arg1_3) -- Line 111
			--[[ Upvalues[7]:
				[1]: NotificationTypeEnum_upvr (copied, readonly)
				[2]: HideChatToastExperimentation_upvr (copied, readonly)
				[3]: any_join_result1_upvr (copied, readonly)
				[4]: var27_upvw (copied, read and write)
				[5]: any_getCanSeeChatTab_result1_upvr (copied, readonly)
				[6]: default_upvr (copied, readonly)
				[7]: var37_upvw (copied, read and write)
			]]
			if arg1_3.notificationType == NotificationTypeEnum_upvr.ChatNewMessage then
				if HideChatToastExperimentation_upvr.isEnabled() and any_join_result1_upvr.isInExperience then
					HideChatToastExperimentation_upvr.default:logExposure()
					if HideChatToastExperimentation_upvr.default:getShouldHideChatToast() then
						var27_upvw = true
					end
				end
				if var27_upvw or not any_getCanSeeChatTab_result1_upvr then
					default_upvr:dismissNotification(arg1_3.notificationId)
					return
				end
				var37_upvw += 1
			end
		end)
		local any_connect_result1_upvr = NotificationSnoozedSignal_upvr:connect(function(arg1_4) -- Line 128
			--[[ Upvalues[3]:
				[1]: NotificationTypeEnum_upvr (copied, readonly)
				[2]: SnoozeActionEnum_upvr (copied, readonly)
				[3]: default_upvr_2 (copied, readonly)
			]]
			if arg1_4.notificationType == NotificationTypeEnum_upvr.ChatNewMessage then
				if arg1_4.actionType == SnoozeActionEnum_upvr.Mute then
					default_upvr_2:snoozeNotification({
						context = arg1_4.context;
						durationMinutes = arg1_4.durationMinutes;
						notificationType = NotificationTypeEnum_upvr.SquadInvitation;
					})
					return
				end
				if arg1_4.actionType == SnoozeActionEnum_upvr.Unmute then
					default_upvr_2:unmuteNotification({
						context = arg1_4.context;
						notificationType = NotificationTypeEnum_upvr.SquadInvitation;
					})
				end
			end
		end)
		return function() -- Line 151
			--[[ Upvalues[2]:
				[1]: any_listenToDisplayNotification_result1_upvr (readonly)
				[2]: any_connect_result1_upvr (readonly)
			]]
			any_listenToDisplayNotification_result1_upvr:Disconnect()
			any_connect_result1_upvr:disconnect()
		end
	end, {var27_upvw, any_getCanSeeChatTab_result1_upvr})
	if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
		React_upvr.useEffect(function() -- Line 158
			--[[ Upvalues[2]:
				[1]: any_join_result1_upvr (readonly)
				[2]: DismissNotificationSnoozeMenuSignal_upvr (copied, readonly)
			]]
			if not any_join_result1_upvr.isAppChatVisible and DismissNotificationSnoozeMenuSignal_upvr then
				DismissNotificationSnoozeMenuSignal_upvr:fire()
			end
		end, {any_join_result1_upvr.isAppChatVisible})
	end
end