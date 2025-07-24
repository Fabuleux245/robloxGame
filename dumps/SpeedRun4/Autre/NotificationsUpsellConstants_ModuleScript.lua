-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:27
-- Luau version 6, Types version 3
-- Time taken: 0.000876 seconds

local tbl = {
	PushUpsellHome = "homePushUpsell";
	PushUpsellChat = "chatPushUpsell";
}
return {
	ModalKey = tbl;
	LocalStorageKeys = {
		PromptShownCount = "PushUpsellPromptShownCount";
		ChatPromptShownCount = "PushUpsellChatPromptShownCount";
		SysPromptShownTimestamp = "PushUpsellSysPromptShownTimestamp";
		EduPromptResponseTimestamp = "PushUpsellEduPromptResponseTimestamp";
		EduPromptResponse = "PushUpsellEduPromptResponse";
	};
	TranslationKeys = {
		[tbl.PushUpsellHome] = {
			CancelAction = "Feature.Notifications.Action.PushUpsellNotNow";
			ConfirmAction = "Feature.Notifications.Action.PushUpsellAllow";
			Heading = "Feature.Notifications.Heading.PushUpsellGeneric";
			Body = "Feature.Notifications.Label.PushUpsellGeneric";
			SomethingWentWrong = "Feature.Call.Error.Description.Generic";
		};
		[tbl.PushUpsellChat] = {
			CancelAction = "Feature.Notifications.Action.PushUpsellNotNow";
			ConfirmAction = "Feature.Notifications.Action.PushUpsellAllow";
			Heading = "Feature.Notifications.Heading.PushUpsellChat";
			Body = "Feature.Notifications.Label.PushUpsellChat";
			SomethingWentWrong = "Feature.Call.Error.Description.Generic";
		};
	};
}