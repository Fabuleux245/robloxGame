-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:43
-- Luau version 6, Types version 3
-- Time taken: 0.000661 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
local Url_upvr = require(Parent.Http).Url
return function(arg1, arg2) -- Line 33
	--[[ Upvalues[2]:
		[1]: UrlBuilder_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	return arg1(UrlBuilder_upvr.new({
		base = Url_upvr.USERS_URL;
		path = `users/{arg2}`;
	})(), "GET")
end