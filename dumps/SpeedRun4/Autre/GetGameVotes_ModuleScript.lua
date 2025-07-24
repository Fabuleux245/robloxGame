-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:47
-- Luau version 6, Types version 3
-- Time taken: 0.000532 seconds

local Url_upvr = require(script:FindFirstAncestor("GameVotesRodux").Parent.Http).Url
return function(arg1, arg2) -- Line 18
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	local var3
	if type(arg2) ~= "string" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "GetGameVotes request expects universeId to be a string")
	var3 = "%sv1/games/%s/votes"
	var3 = arg1(string.format(var3, Url_upvr.GAME_URL, arg2), "GET")
	return var3
end