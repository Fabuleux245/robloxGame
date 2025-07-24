-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:41
-- Luau version 6, Types version 3
-- Time taken: 0.000454 seconds

local gql_upvr = require(script:FindFirstAncestor("ApolloFriends").Parent.ApolloClient).gql
return function(arg1, arg2) -- Line 13, Named "createFriendInCache"
	--[[ Upvalues[1]:
		[1]: gql_upvr (readonly)
	]]
	return arg1.cache:writeFragment({
		data = {
			__typename = "Friend";
			id = arg2.userId;
			targetUserId = arg2.targetUserId;
			hasVerifiedBadge = arg2.hasVerifiedBadge or false;
			displayName = "";
		};
		fragment = gql_upvr("\t\t\tfragment NewFriend on Friend {\n\t\t\t\tid\n\t\t\t\ttargetUserId\n\t\t\t\thasVerifiedBadge\n\t\t\t\tdisplayName\n\t\t\t}\n\t\t");
	})
end