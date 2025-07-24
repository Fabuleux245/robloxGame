-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:14
-- Luau version 6, Types version 3
-- Time taken: 0.000278 seconds

return "\ttype MutualFriend implements User {\n\t\tid: ID!\n\t\tusername: String!\n\t\tdisplayName: String!\n\t}\n\n\ttype ProfileInsights {\n\t\ttargetUserId: ID!\n\t\tmutualFriends: [MutualFriend!]\n\t\tisOfflineFrequents: Boolean!\n\t\tfriendshipAgeUnixSeconds: Int\n\t\tfriendRequestOriginSource: Int\n\t\taccountCreationDateUnixSeconds: Int\n\t\tlocalizedCountryName: String\n\t\tuserAgeVerifiedBracket: String\n\t}\n\n\ttype ProfileInsightsPages {\n\t\tid: ID!\n\t\tprofileInsights: [ProfileInsights!]\n\t}\n\n\ttype Query {\n\t\tprofilesInsights(userIds: [String]!, count: Int, pageId: String): ProfileInsightsPages\n\t\tprofilesInsightsByUserIds(userIds: [String]!, count: Int, rankingStrategy: String): [ProfileInsights]\n\t}\n"