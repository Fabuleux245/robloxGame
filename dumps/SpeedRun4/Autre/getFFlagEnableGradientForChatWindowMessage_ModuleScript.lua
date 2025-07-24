-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:49
-- Luau version 6, Types version 3
-- Time taken: 0.000551 seconds

game:DefineFastFlag("EnableGradientForChatWindowMessage", false)
return function() -- Line 3
	local game_GetEngineFeature_result1 = game:GetEngineFeature("EnableChatWindowMessageProperties")
	if game_GetEngineFeature_result1 then
		game_GetEngineFeature_result1 = game:GetFastFlag("EnableGradientForChatWindowMessage")
	end
	return game_GetEngineFeature_result1
end