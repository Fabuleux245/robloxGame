-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:49
-- Luau version 6, Types version 3
-- Time taken: 0.000772 seconds

game:DefineFastFlag("EnableOptionalPlaceIdForUserIdGameJoins", false)
game:DefineFastFlag("EnableOptionalPlaceIdForUserIdGameJoinsTesting", false)
return function() -- Line 5
	if game:GetFastFlag("EnableOptionalPlaceIdForUserIdGameJoinsTesting") then
		return true
	end
	local game_GetFastFlag_result1 = game:GetFastFlag("EnableOptionalPlaceIdForUserIdGameJoins")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = game:GetEngineFeature("JoinByUserTakesOptionalPlaceId")
	end
	return game_GetFastFlag_result1
end