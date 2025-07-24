-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:21:58
-- Luau version 6, Types version 3
-- Time taken: 0.000878 seconds

local FFlagMigrateFriendsLandingHttpRequestToRequestInternal = require(script.Parent.FFlagMigrateFriendsLandingHttpRequestToRequestInternal)
if FFlagMigrateFriendsLandingHttpRequestToRequestInternal then
	FFlagMigrateFriendsLandingHttpRequestToRequestInternal = require(script.Parent.FFlagAddNewFriendRequestsNetworking)
	if FFlagMigrateFriendsLandingHttpRequestToRequestInternal then
		FFlagMigrateFriendsLandingHttpRequestToRequestInternal = game:DefineFastFlag("EnableNewFriendRequestsBadge5", false)
	end
end
return FFlagMigrateFriendsLandingHttpRequestToRequestInternal