-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:46
-- Luau version 6, Types version 3
-- Time taken: 0.001054 seconds

return {
	ChannelListEnum = {
		App = "toast-in-app-notifications";
		Experience = "toast-in-experience-notifications";
		Dual = "toast-in-app-and-experience-notifications";
		Desktop = "toast-in-app-and-experience-desktop-notifications";
	};
	ActionTypeEnum = {
		Report = "reportNotification";
		Deeplink = "deeplink";
		NotificationApi = "notificationAPI";
		Dismiss = "dismiss";
		Reload = "reload";
		None = "none";
		VoltronBroadcast = "voltronBroadcast";
		UpdateState = "updateState";
		WebView = "webview";
	};
	SENDERButtonStyleEnum = {
		Primary = "Primary";
		Secondary = "Secondary";
		Alert = "Alert";
		Growth = "Growth";
	};
	SENDERThumbnailTypeEnum = {
		User = "userThumbnail";
		Game = "gameThumbnail";
		Group = "groupThumbnail";
		Asset = "assetThumbnail";
		Bundle = "bundleThumbnail";
		Icon = "icon";
	};
	ToastNotificationActionsEnum = {
		ModalCancel = "modalCancel";
		ModalConfirm = "modalConfirm";
		Dismissed = "dismissed";
		Display = "displayed";
		Hover = "hoverOver";
		Ignored = "ignored";
		Update = "update";
		DeeplinkFailed = "deeplinkFailed";
	};
	RenderLocationEnum = {
		UniversalApp = "universalApp";
		CoreScript = "coreScript";
	};
	DeviceOrientationEnum = {
		Portrait = "Portrait";
		Landscape = "Landscape";
		Unknown = "Unknown";
	};
	VisualItemTypeEnum = {
		Button = "button";
		TextBody = "textBody";
		Thumbnail = "thumbnail";
		MetaAction = "metaAction";
	};
	MetaActionIcons = {
		snooze = require(script.Parent.Parent.UIBlox).App.ImageSet.Images["icons/common/snoozeNotificationsOff"];
	};
	NotificationTypeEnum = {
		CallReceived = "CallReceived";
		ChatNewMessage = "ChatNewMessage";
		SquadInvitation = "SquadInvitation";
		SquadExperienceInvitation = "SquadExperienceInvitation";
		ClientNotification = "ClientNotification";
		FriendRequestReceived = "FriendRequestReceived";
		SecurityAlert = "SecurityAlert";
	};
	SnoozeActionEnum = {
		Mute = "Mute";
		Unmute = "Unmute";
	};
}