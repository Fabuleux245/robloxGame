-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:42
-- Luau version 6, Types version 3
-- Time taken: 0.001244 seconds

local Url_upvr = require(script:FindFirstAncestor("GameProductInfoRodux").Parent.Http).Url
return function(arg1, arg2) -- Line 26
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var3
	if type(arg2) ~= "table" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "GamesGetProductInfo request expects universeIds to be a table")
	if 0 >= #arg2 then
		var3 = false
		-- KONSTANTWARNING: GOTO [21] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 22 start (CF ANALYSIS FAILED)
	var3 = true
	assert(var3, "GamesGetProductInfo request expects universeIds count to be greater than 0")
	if #arg2 > 100 then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "GamesGetProductInfo request expects universeIds count to not exceed "..100)
	var3 = arg2
	var3 = string.format("%sv1/games/games-product-info?universeIds=%s", Url_upvr.GAME_URL, table.concat(var3, ','))
	do
		return arg1(var3, "GET")
	end
	-- KONSTANTERROR: [20] 16. Error Block 22 end (CF ANALYSIS FAILED)
end