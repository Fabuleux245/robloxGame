-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:16
-- Luau version 6, Types version 3
-- Time taken: 0.001062 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
return function(arg1) -- Line 25
	--[[ Upvalues[2]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
	]]
	if FFlagFriendsRenameSocgraph_upvr and arg1.mutualFriendsCount == 0 then
		return ""
	end
	if FFlagFriendsRenameSocgraph_upvr and arg1.friendsRename or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		if arg1.mutualFriendsCount == 1 then
			return arg1.localized.singularMutualConnection
		end
		return arg1.localized.mutualConnections
	end
	if 1 < arg1.mutualFriendsCount then
		return tostring(arg1.mutualFriendsCount)..' '..string.lower(arg1.localized.mutualFriends)
	end
	return tostring(arg1.mutualFriendsCount)..' '..arg1.localized.singularMutualFriend
end