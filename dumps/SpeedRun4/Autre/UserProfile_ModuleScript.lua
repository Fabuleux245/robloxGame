-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:15
-- Luau version 6, Types version 3
-- Time taken: 0.000198 seconds

return "\ttype Names {\n\t\talias: String\n\t\tcombinedName: String\n\t\tcontactName: String\n\t\tdisplayName: String\n\t\tinExperienceCombinedName: String\n\t\tusername: String\n\t\tplatformName: String\n\t}\n\n\ttype UserProfile implements User {\n\t\tid: ID!\n\t\tdisplayName: String!\n\t\tnames: Names\n\t\tplatformProfileId: String\n\t\tisVerified: Boolean\n\t\tisDeleted: Boolean\n\t}\n\n\ttype Query {\n\t\tuserProfiles(userIds: [String]!): [UserProfile]!\n\t}\n"