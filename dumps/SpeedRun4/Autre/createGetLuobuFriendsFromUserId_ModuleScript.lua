-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:25
-- Luau version 6, Types version 3
-- Time taken: 0.000577 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: FRIENDS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetLuobuFriendsFromUserId";
	}, function(arg1_2, arg2, arg3) -- Line 9
		--[[ Upvalues[1]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
		]]
		return arg1_2(FRIENDS_URL_upvr):path("v1"):path("users"):id(arg2):path("luobu-friends"):queryArgs({
			userOpenId = arg3.userOpenId;
			userAccessToken = arg3.userAccessToken;
			type = arg3.type;
			appType = arg3.appType;
		})
	end)
end