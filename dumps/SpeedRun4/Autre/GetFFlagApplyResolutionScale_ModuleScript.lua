-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:24:28
-- Luau version 6, Types version 3
-- Time taken: 0.000360 seconds

game:DefineFastFlag("ApplyResolutionScale", false)
return function() -- Line 3
	local game_GetFastFlag_result1 = game:GetFastFlag("ApplyResolutionScale")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = game:GetEngineFeature("CanvasGroupCustomResolutionScale")
	end
	return game_GetFastFlag_result1
end