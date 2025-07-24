-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:42
-- Luau version 6, Types version 3
-- Time taken: 0.000477 seconds

local Url_upvr = require(script:FindFirstAncestor("AuthCommon").Parent.Http).Url
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return arg1(string.format("%sv2/games/%s/media", Url_upvr.GAME_URL, arg2), "GET")
end