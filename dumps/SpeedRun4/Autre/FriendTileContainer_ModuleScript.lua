-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:07
-- Luau version 6, Types version 3
-- Time taken: 0.000881 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local UserProfiles_upvr = require(Parent.UserProfiles)
local FFlagFriendsLandingIsVerifiedFromUserProfile_upvr = require(FriendsLanding.Flags.FFlagFriendsLandingIsVerifiedFromUserProfile)
local React_upvr = require(Parent.React)
local FriendTile_upvr = require(script.Parent.FriendTile)
local Dash_upvr = require(Parent.Dash)
return function(arg1) -- Line 13, Named "FriendTileContainer"
	--[[ Upvalues[5]:
		[1]: UserProfiles_upvr (readonly)
		[2]: FFlagFriendsLandingIsVerifiedFromUserProfile_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: FriendTile_upvr (readonly)
		[5]: Dash_upvr (readonly)
	]]
	local tbl = {}
	local tbl_2 = {arg1.user.id}
	tbl.userIds = tbl_2
	local var10
	if FFlagFriendsLandingIsVerifiedFromUserProfile_upvr then
		tbl_2 = UserProfiles_upvr.Queries.userProfilesFriendsLandingQueryByUserIds
	else
		tbl_2 = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds
	end
	tbl.query = tbl_2
	local any_useUserProfilesFetch_result1 = UserProfiles_upvr.Hooks.useUserProfilesFetch(tbl)
	local module = {}
	if any_useUserProfilesFetch_result1.data then
		var10 = any_useUserProfilesFetch_result1.data.userProfiles[1]
	else
		var10 = nil
	end
	module.userProfile = var10
	return React_upvr.createElement(FriendTile_upvr, Dash_upvr.join(arg1, module))
end