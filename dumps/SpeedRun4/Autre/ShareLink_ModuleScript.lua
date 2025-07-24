-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:14
-- Luau version 6, Types version 3
-- Time taken: 0.000308 seconds

return "\t enum ShareLinkType {\n\t\tExperienceInvite,\n\t\tFriendInvite,\n\t\tHome,\n\t\tProfile,\n\t\tNotificationExperienceInvite,\n\t\tScreenshotInvite,\n\t\tPrivateServer,\n\t\tServer,\n\t\tExperienceDetails,\n\t }\n\n\tinterface ShareLink {\n\t\tlinkId: ID!\n\t\tshortUrl: String!\n\t\tlinkType: ShareLinkType!\n\t}\n\n\ttype ExperienceDetailsLink implements ShareLink {\n\t\tuniverseId: String!\n\t\tlinkId: ID!\n\t\tshortUrl: String!\n\t\tlinkType: ShareLinkType!\n\t}\n\n\ttype Query {\n\t\texperienceDetailsLinkByUniverseId(universeId: String!): ExperienceDetailsLink!\n\t}\n"