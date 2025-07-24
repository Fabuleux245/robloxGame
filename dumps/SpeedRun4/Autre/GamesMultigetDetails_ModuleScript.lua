-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:23
-- Luau version 6, Types version 3
-- Time taken: 0.001093 seconds

local Url_upvr = require(script:FindFirstAncestor("GameDetailRodux").Parent.Http).Url
return function(arg1, arg2) -- Line 18
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	local var3
	if type(arg2) ~= "table" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "GamesMultigetDetails request expects universeIds to be a table")
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var3 = 100
		return var3 < #arg2
	end
	if #arg2 == 0 or INLINED() then
		var3 = "GamesMultigetDetails request expects universeIds count between 1-100"
		error(var3)
	end
	var3 = arg2
	var3 = string.format("%sv1/games?universeIds=%s", Url_upvr.GAME_URL, table.concat(var3, ','))
	return arg1(var3, "GET")
end