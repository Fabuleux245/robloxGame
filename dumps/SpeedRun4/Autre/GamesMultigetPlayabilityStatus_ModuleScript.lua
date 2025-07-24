-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:32
-- Luau version 6, Types version 3
-- Time taken: 0.000571 seconds

local Url_upvr = require(script:FindFirstAncestor("PlayabilityRodux").Parent.Http).Url
return function(arg1, arg2) -- Line 22
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	local var3
	if type(arg2) ~= "table" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "GamesMultigetPlayabilityStatus request expects universeId to be a table")
	var3 = arg2
	var3 = string.format("%s/v1/games/multiget-playability-status?universeIds=%s", Url_upvr.GAME_URL, table.concat(var3, ','))
	return arg1(var3, "GET")
end