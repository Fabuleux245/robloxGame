-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:48
-- Luau version 6, Types version 3
-- Time taken: 0.002712 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local ToastNotification = require(Parent.ToastNotification)
local UIBlox = require(Parent.UIBlox)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useIsFriendRenameActive_upvr = require(AppChat.Hooks.useIsFriendRenameActive)
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local React_upvr = require(Parent.React)
local default_upvr = ToastNotification.ToastNotificationSnoozeManager.default
local ToastNotificationTypeModule_upvr = ToastNotification.ToastNotificationTypeModule
local NotificationSnoozedSignal_upvr = ToastNotification.Signals.NotificationSnoozedSignal
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local ShowNotificationSnoozeMenuSignal_upvr = ToastNotification.Signals.ShowNotificationSnoozeMenuSignal
local ChatLandingTelemetryEvents_upvr = require(script:FindFirstAncestor("ChatLanding").ChatLandingTelemetryEvents)
return function(arg1) -- Line 34, Named "SnoozeToastNotificationsButton"
	--[[ Upvalues[14]:
		[1]: useLocalization_upvr (readonly)
		[2]: useIsFriendRenameActive_upvr (readonly)
		[3]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[4]: SquadExperimentation_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: default_upvr (readonly)
		[7]: ToastNotificationTypeModule_upvr (readonly)
		[8]: NotificationSnoozedSignal_upvr (readonly)
		[9]: useTelemetry_upvr (readonly)
		[10]: ChatLandingTelemetryLayer_upvr (readonly)
		[11]: IconButton_upvr (readonly)
		[12]: Images_upvr (readonly)
		[13]: ShowNotificationSnoozeMenuSignal_upvr (readonly)
		[14]: ChatLandingTelemetryEvents_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	local var20
	if useIsFriendRenameActive_upvr() then
		var20 = "Feature.Chat.Heading.ChatWithConnections"
	else
		var20 = "Feature.Chat.Action.StartChatWithFriends"
	end
	tbl.chat = var20
	var20 = "Feature.Squads.Label.Party"
	tbl.party = var20
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		var20 = "Feature.Chat.Label.SnoozePartyNotifications"
	else
		var20 = "Feature.Chat.Label.SnoozeChatNotifications"
	end
	tbl.snoozeTitle = var20
	var20 = "Feature.Notifications.Heading.RemoveSnoozeFeedback"
	tbl.unmuteFeedback = var20
	var20 = React_upvr
	var20 = default_upvr:isSnoozedNotificationType(ToastNotificationTypeModule_upvr.NotificationTypeEnum.ChatNewMessage)
	local any_useState_result1_upvr, any_useState_result2_upvr = var20.useState(var20)
	React_upvr.useEffect(function() -- Line 53
		--[[ Upvalues[3]:
			[1]: NotificationSnoozedSignal_upvr (copied, readonly)
			[2]: ToastNotificationTypeModule_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		local any_connect_result1_upvr = NotificationSnoozedSignal_upvr:connect(function(arg1_2) -- Line 54
			--[[ Upvalues[2]:
				[1]: ToastNotificationTypeModule_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			local ChatNewMessage = ToastNotificationTypeModule_upvr.NotificationTypeEnum.ChatNewMessage
			if arg1_2.notificationType == ChatNewMessage then
				if arg1_2.actionType ~= ToastNotificationTypeModule_upvr.SnoozeActionEnum.Mute then
					ChatNewMessage = false
				else
					ChatNewMessage = true
				end
				any_useState_result2_upvr(ChatNewMessage)
			end
		end)
		return function() -- Line 65
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, {})
	local module = {
		size = arg1.size;
	}
	if any_useState_result1_upvr then
	else
	end
	module.icon = Images_upvr["icons/common/snoozeNotificationsOff"]
	module.layoutOrder = arg1.layoutOrder
	local var5_result1_upvr = useLocalization_upvr(tbl)
	local useTelemetry_upvr_result1_upvr = useTelemetry_upvr(ChatLandingTelemetryLayer_upvr.Context)
	function module.onActivated() -- Line 78
		--[[ Upvalues[9]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: GetFFlagAppChatRebrandStringUpdates_upvr (copied, readonly)
			[4]: SquadExperimentation_upvr (copied, readonly)
			[5]: default_upvr (copied, readonly)
			[6]: ToastNotificationTypeModule_upvr (copied, readonly)
			[7]: ShowNotificationSnoozeMenuSignal_upvr (copied, readonly)
			[8]: useTelemetry_upvr_result1_upvr (readonly)
			[9]: ChatLandingTelemetryEvents_upvr (copied, readonly)
		]]
		if any_useState_result1_upvr then
			local var31
			if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
				var31 = var5_result1_upvr.party
			else
				var31 = var5_result1_upvr.chat
			end
			var31 = {}
			var31.notificationType = ToastNotificationTypeModule_upvr.NotificationTypeEnum.ChatNewMessage
			var31.modalMessage = var5_result1_upvr.unmuteFeedback:gsub("{title}", var31)
			var31.context = "ChatLandingSnoozeToastNotificationsButton"
			default_upvr:unmuteNotification(var31)
		else
			local tbl_2 = {}
			var31 = "ChatLandingSnoozeToastNotificationsButton"
			tbl_2.context = var31
			var31 = ToastNotificationTypeModule_upvr.NotificationTypeEnum.ChatNewMessage
			tbl_2.notificationType = var31
			var31 = var5_result1_upvr.snoozeTitle
			tbl_2.title = var31
			ShowNotificationSnoozeMenuSignal_upvr:fire(tbl_2)
		end
		useTelemetry_upvr_result1_upvr.emit(ChatLandingTelemetryEvents_upvr.ChatLandingSnoozeBtnClicked, {
			isChatNotificationsMuted = any_useState_result1_upvr;
		})
	end
	return React_upvr.createElement(IconButton_upvr, module)
end