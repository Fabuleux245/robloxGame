-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:55
-- Luau version 6, Types version 3
-- Time taken: 0.000429 seconds

local Url_upvr = require(script:FindFirstAncestor("AssetFavorites").Parent.Http).Url
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 16
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	return arg1(string.format("%s/v1/favorites/users/%s/assets/%s/favorite", Url_upvr.CATALOG_URL, arg2, arg3), "POST", {
		postBody = HttpService_upvr:JSONEncode({});
	})
end