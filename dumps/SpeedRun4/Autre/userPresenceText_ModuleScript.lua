-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:26
-- Luau version 6, Types version 3
-- Time taken: 0.000435 seconds

local PresenceType = require(script:FindFirstAncestor("FriendsLanding").dependencies).RoduxPresence.Enums.PresenceType
return {
	[PresenceType.Offline] = "Common.Presence.Label.Offline";
	[PresenceType.Online] = "Common.Presence.Label.Online";
	[PresenceType.InGame] = "Common.Presence.Label.Online";
	[PresenceType.InStudio] = "Common.Presence.Label.Online";
}