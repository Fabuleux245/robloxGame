-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:33
-- Luau version 6, Types version 3
-- Time taken: 0.000403 seconds

game:DefineFastFlag("PrefetchOneCopyEnabledForTesting", false)
return function() -- Line 5
	local game_GetEngineFeature_result1 = game:GetEngineFeature("PrefetchOneCopy")
	if not game_GetEngineFeature_result1 then
		game_GetEngineFeature_result1 = game:GetFastFlag("PrefetchOneCopyEnabledForTesting")
	end
	return game_GetEngineFeature_result1
end