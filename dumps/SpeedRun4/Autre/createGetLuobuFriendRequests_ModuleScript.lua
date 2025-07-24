-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:24
-- Luau version 6, Types version 3
-- Time taken: 0.000983 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
return function(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: FRIENDS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetLuobuFriendRequests";
	}, function(arg1_2, arg2) -- Line 14
		--[[ Upvalues[1]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
		]]
		return arg1_2(FRIENDS_URL_upvr):path("v1"):path("my"):path("luobu-friends"):path("requests"):queryArgs({
			userOpenId = arg2.userOpenId;
			userAccessToken = arg2.userAccessToken;
			type = arg2.type;
			appType = arg2.appType;
			sortOrder = arg2.sortOrder;
			limit = arg2.limit;
			cursor = arg2.cursor;
		})
	end)
end