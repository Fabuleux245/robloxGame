-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:44
-- Luau version 6, Types version 3
-- Time taken: 0.000372 seconds

game:DefineFastFlag("DebugVRModeInStudio", false)
return function() -- Line 4, Named "isVRModeInStudio"
	local game_GetFastFlag_result1 = game:GetFastFlag("DebugVRModeInStudio")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = UserSettings().GameSettings:InStudioMode()
	end
	return game_GetFastFlag_result1
end