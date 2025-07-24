-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:42
-- Luau version 6, Types version 3
-- Time taken: 0.000371 seconds

local MessageBusService = game:GetService("MessageBusService")
return {
	PROTOCOL_NAME = "ToastNotifications";
	MESSAGE_INIT_TOAST_NOTIF = MessageBusService:GetMessageId("ToastNotifications", "initializeToastNotifications");
	MESSAGE_GET_TOAST_NOTIF = MessageBusService:GetMessageId("ToastNotifications", "getToastNotification");
	MESSAGE_UPDATE_TOAST_NOTIF = MessageBusService:GetMessageId("ToastNotifications", "updateToastNotificationState");
	MESSAGE_DISMISS_TOAST_NOTIF = MessageBusService:GetMessageId("ToastNotifications", "dismissToastNotification");
	MESSAGE_DISPLAY_TOAST_NOTIF = MessageBusService:GetMessageId("ToastNotifications", "displayToastNotification");
}