-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:13
-- Luau version 6, Types version 3
-- Time taken: 0.000346 seconds

return "    enum PresenceType {\n        InGame,\n        Online,\n        InStudio,\n        Offline,\n    }\n\n    interface Presence {\n        userPresenceType: PresenceType,\n        lastLocation: String,\n        lastOnline: String\n        gameId: String,\n        placeId: String,\n        rootPlaceId: String,\n        universeId: String,\n    }\n\n    type UserPresence implements Presence {\n        id: ID!\n        userPresenceType: PresenceType,\n        lastLocation: String,\n        lastOnline: String\n        gameId: String,\n        placeId: String,\n        rootPlaceId: String,\n        universeId: String,\n    }\n"