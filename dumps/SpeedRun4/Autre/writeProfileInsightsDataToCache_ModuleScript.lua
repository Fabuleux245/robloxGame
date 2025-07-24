-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:37
-- Luau version 6, Types version 3
-- Time taken: 0.001373 seconds

local Parent = script:FindFirstAncestor("ApolloProfileInsights").Parent
local queries_upvr = require(Parent.ApolloLocalState).queries
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2, arg3) -- Line 27
	--[[ Upvalues[2]:
		[1]: queries_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	if arg3 and arg3.query then
	else
	end
	for i, v in arg2 do
		local mutualFriends = v.mutualFriends
		if not mutualFriends then
			mutualFriends = {}
		end
		local tbl_4 = {}
		for i_2, v_2 in mutualFriends do
			local tbl_5 = {
				__typename = "MutualFriend";
			}
			local id = v_2.id
			if not id then
				id = tostring(i_2)
			end
			tbl_5.id = id
			tbl_5.username = v_2.username or ""
			tbl_5.displayName = v_2.displayName or ""
			table.insert(tbl_4, Cryo_upvr.Dictionary.join(tbl_5, v_2))
		end
		local tbl_6 = {
			variables = {
				userIds = i;
			};
			query = queries_upvr.profilesInsightsByUserIds;
		}
		local tbl = {}
		local tbl_3 = {}
		local tbl_2 = {
			__typename = "ProfileInsights";
		}
		local targetUserId = v.targetUserId
		if not targetUserId then
			targetUserId = tostring(i)
		end
		tbl_2.targetUserId = targetUserId
		tbl_2.isOfflineFrequents = v.isOfflineFrequents or false
		tbl_2.mutualFriends = tbl_4
		tbl_2.friendshipAgeUnixSeconds = v.friendshipAgeUnixSeconds or 0
		tbl_2.friendRequestOriginSource = v.friendRequestOriginSource or 0
		tbl_2.accountCreationDateUnixSeconds = v.accountCreationDateUnixSeconds or 0
		tbl_2.localizedCountryName = v.localizedCountryName or ""
		tbl_2.userAgeVerifiedBracket = v.userAgeVerifiedBracket or ""
		tbl_3[1] = tbl_2
		tbl.profilesInsightsByUserIds = tbl_3
		tbl_6.data = tbl
		arg1:writeQuery(tbl_6)
	end
end