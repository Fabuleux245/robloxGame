-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:20
-- Luau version 6, Types version 3
-- Time taken: 0.000923 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: FRIENDS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetFriendRequests";
	}, function(arg1_2, arg2) -- Line 9
		--[[ Upvalues[1]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
		]]
		return arg1_2(FRIENDS_URL_upvr, {
			currentUserId = arg2.currentUserId;
		}):path("v1"):path("my"):path("friends"):path("requests"):queryArgs({
			fetchMutualFriends = arg2.fetchMutualFriends;
			sortOrder = arg2.sortOrder;
			limit = arg2.limit;
			cursor = arg2.cursor;
		})
	end)
end