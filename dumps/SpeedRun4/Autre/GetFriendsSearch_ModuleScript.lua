-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:37
-- Luau version 6, Types version 3
-- Time taken: 0.000409 seconds

local Url_upvr = require(script:FindFirstAncestor("FriendsMenu").Parent.Http).Url
return function(arg1, arg2, arg3, arg4, arg5) -- Line 6
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	local module = {}
	module.query = arg3
	module.cursor = arg5
	module.limit = arg4
	return arg1(string.format("%s/users/%s/friends/search?%s", Url_upvr.FRIEND_URL, arg2, Url_upvr:makeQueryString(module)), "GET")
end