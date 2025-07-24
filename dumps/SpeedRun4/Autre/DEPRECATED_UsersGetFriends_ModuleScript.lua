-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:59
-- Luau version 6, Types version 3
-- Time taken: 0.000346 seconds

local Url_upvr = require(script.Parent.Parent.Url)
return function(arg1, arg2, arg3) -- Line 5
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	local module = {}
	module.userSort = arg3
	return arg1(string.format("%s/users/%s/friends?%s", Url_upvr.FRIEND_URL, arg2, Url_upvr:makeQueryString(module)), "GET")
end