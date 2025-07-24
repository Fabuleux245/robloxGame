-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:41
-- Luau version 6, Types version 3
-- Time taken: 0.001459 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local LifecycleEvents_upvr = require(Parent_2.utils.LifecycleEvents)
local NotificationTypeEnum_upvr = require(Parent_2.type).NotificationTypeEnum
local GetFFlagGenerateLinkWithChannel_upvr = require(Parent.SharedFlags).GetFFlagGenerateLinkWithChannel
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local WebViewServiceWrapper_upvr = require(Parent_2.utils.WebViewServiceWrapper)
local default_upvr = require(Parent.ToastNotificationsProtocol).ToastNotificationProtocol.default
return function() -- Line 19, Named "SecurityEventReceiver"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: LifecycleEvents_upvr (readonly)
		[3]: NotificationTypeEnum_upvr (readonly)
		[4]: GetFFlagGenerateLinkWithChannel_upvr (readonly)
		[5]: UrlBuilder_upvr (readonly)
		[6]: Localization_upvr (readonly)
		[7]: LocalizationService_upvr (readonly)
		[8]: WebViewServiceWrapper_upvr (readonly)
		[9]: default_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 20
		--[[ Upvalues[8]:
			[1]: LifecycleEvents_upvr (copied, readonly)
			[2]: NotificationTypeEnum_upvr (copied, readonly)
			[3]: GetFFlagGenerateLinkWithChannel_upvr (copied, readonly)
			[4]: UrlBuilder_upvr (copied, readonly)
			[5]: Localization_upvr (copied, readonly)
			[6]: LocalizationService_upvr (copied, readonly)
			[7]: WebViewServiceWrapper_upvr (copied, readonly)
			[8]: default_upvr (copied, readonly)
		]]
		local any_RegisterCallback_result1_upvr = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.UserAction, NotificationTypeEnum_upvr.SecurityAlert, function(arg1) -- Line 24
			--[[ Upvalues[6]:
				[1]: GetFFlagGenerateLinkWithChannel_upvr (copied, readonly)
				[2]: UrlBuilder_upvr (copied, readonly)
				[3]: Localization_upvr (copied, readonly)
				[4]: LocalizationService_upvr (copied, readonly)
				[5]: WebViewServiceWrapper_upvr (copied, readonly)
				[6]: default_upvr (copied, readonly)
			]]
			if not arg1 or not arg1.notificationData or not arg1.notificationData.notificationType or not arg1.notificationData.clientEventsPayload or not arg1.notificationData.clientEventsPayload.payload or not arg1.notificationData.clientEventsPayload.username then
			else
				if GetFFlagGenerateLinkWithChannel_upvr() then
					local tbl_2 = {
						payload = arg1.notificationData.clientEventsPayload.payload;
						username = arg1.notificationData.clientEventsPayload.username;
						channel = "toast";
					}
				else
					local tbl = {}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl.payload = arg1.notificationData.clientEventsPayload.payload
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl.username = arg1.notificationData.clientEventsPayload.username
				end
				WebViewServiceWrapper_upvr.new({
					title = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId):Format("Feature.SecurityFeedback.Header.NewLogin");
					url = UrlBuilder_upvr.static.securityAlert(tbl);
				}):open()
				default_upvr:dismissNotification(arg1.notificationData.id)
			end
		end)
		return function() -- Line 65
			--[[ Upvalues[1]:
				[1]: any_RegisterCallback_result1_upvr (readonly)
			]]
			any_RegisterCallback_result1_upvr()
		end
	end, {})
end