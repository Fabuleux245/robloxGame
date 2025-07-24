-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.000411 seconds

local Url_upvr = require(script:FindFirstAncestor("GameIconRodux").Parent.Http).Url
return function(arg1, arg2, arg3) -- Line 19
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	local module = {
		universeIds = table.concat(arg2, ',');
		format = "png";
	}
	module.size = arg3
	return arg1(string.format("%sv1/games/icons?%s", Url_upvr.THUMBNAILS_URL, Url_upvr:makeQueryString(module)), "GET")
end