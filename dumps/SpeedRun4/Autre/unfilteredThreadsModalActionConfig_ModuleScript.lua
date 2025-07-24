-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:53
-- Luau version 6, Types version 3
-- Time taken: 0.000431 seconds

game:DefineFastString("ChatLandingPvUpsellSeenAction", "record_has_seen")
game:DefineFastString("ChatLandingPvUpsellDismissAction", "record_has_seen")
game:DefineFastString("ChatLandingFtuxSeenAction", "record_has_seen")
game:DefineFastString("ChatLandingFtuxDismissAction", "record_dont_show_again")
game:DefineFastString("UnfilteredThreadsConversationBannerSeenAction", "record_has_seen")
return {
	ChatLandingPvUpsellSeenAction = game:GetFastString("ChatLandingPvUpsellSeenAction");
	ChatLandingPvUpsellDismissAction = game:GetFastString("ChatLandingPvUpsellDismissAction");
	ChatLandingFtuxSeenAction = game:GetFastString("ChatLandingFtuxSeenAction");
	ChatLandingFtuxDismissAction = game:GetFastString("ChatLandingFtuxDismissAction");
	UnfilteredThreadsConversationBannerSeenAction = game:GetFastString("UnfilteredThreadsConversationBannerSeenAction");
}