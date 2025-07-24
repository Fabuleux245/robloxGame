-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:28
-- Luau version 6, Types version 3
-- Time taken: 0.000922 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
return function(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: FRIENDS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "RequestFriendshipFromUserId";
	}, function(arg1_2, arg2) -- Line 23
		--[[ Upvalues[1]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
		]]
		return arg1_2(FRIENDS_URL_upvr, {
			currentUserId = arg2.currentUserId;
		}):path("v1"):path("users"):id(arg2.targetUserId):path("request-friendship"):body({
			friendshipOriginSourceType = arg2.friendshipOriginSourceType;
			senderNickname = arg2.senderNickname;
		})
	end)
end