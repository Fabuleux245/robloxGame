-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:26
-- Luau version 6, Types version 3
-- Time taken: 0.000374 seconds

local Url_upvr = require(script:FindFirstAncestor("GameDetailRodux").Parent.Http).Url
return function(arg1, arg2) -- Line 28
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	local module = {}
	module.placeIds = arg2
	return arg1(string.format("%s/v1/games/multiget-place-details?%s", Url_upvr.GAME_URL, Url_upvr:makeQueryString(module)), "GET")
end