-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:29
-- Luau version 6, Types version 3
-- Time taken: 0.000377 seconds

game:DefineFastFlag("EnableCreatorStorePurchasingCutover", false)
return function() -- Line 3
	local game_GetFastFlag_result1 = game:GetFastFlag("EnableCreatorStorePurchasingCutover")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = game:GetEngineFeature("EnableCreatorStorePurchasing")
	end
	return game_GetFastFlag_result1
end