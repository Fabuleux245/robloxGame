-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:04
-- Luau version 6, Types version 3
-- Time taken: 0.000547 seconds

local gql = require(script:FindFirstAncestor("ApolloLocalState").Parent.ApolloClient).gql
if game:GetEngineFeature("PlatformFriendsService") and game:GetEngineFeature("PlatformFriendsProfile") then
	return gql(require(script.Parent.schema.UserProfilesAllNamesByUserIdsNew))
end
return gql(require(script.Parent.schema.UserProfilesAllNamesByUserIds))