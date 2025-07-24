-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:20
-- Luau version 6, Types version 3
-- Time taken: 0.000496 seconds

local Url_upvr = require(script.Parent.Parent.Parent.Parent.Network.Url)
return function(arg1, arg2) -- Line 20
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return arg1(string.format("%sv1/games/%d/icon", Url_upvr.GAME_URL, arg2), "GET")
end