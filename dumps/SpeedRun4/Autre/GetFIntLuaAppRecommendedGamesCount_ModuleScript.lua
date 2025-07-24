-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:24
-- Luau version 6, Types version 3
-- Time taken: 0.000513 seconds

game:DefineFastInt("LuaAppRecommendedGamesCount", 6)
return function() -- Line 3
	local game_GetFastInt_result1 = game:GetFastInt("LuaAppRecommendedGamesCount")
	if 20 < game_GetFastInt_result1 then
		warn("Maximum Recommended Games Fetch Count has exceeded 20: ", game_GetFastInt_result1)
	end
	return game_GetFastInt_result1
end