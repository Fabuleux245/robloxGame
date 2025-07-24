-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:26:57
-- Luau version 6, Types version 3
-- Time taken: 0.000555 seconds

game:DefineFastFlag("VRPanelWidthIXPEnabledV5", false)
return function() -- Line 3
	local game_GetEngineFeature_result1 = game:GetEngineFeature("IxpLayerPlatformExcellenceQualityImprovementVREnabled")
	if game_GetEngineFeature_result1 then
		game_GetEngineFeature_result1 = game:GetFastFlag("VRPanelWidthIXPEnabledV5")
	end
	return game_GetEngineFeature_result1
end