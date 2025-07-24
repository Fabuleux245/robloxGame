-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:21:48
-- Luau version 6, Types version 3
-- Time taken: 0.000814 seconds

local game_GetEngineFeature_result1 = game:GetEngineFeature("GamepadMenuVirtualCursorPromptKeys")
if game_GetEngineFeature_result1 then
	game_GetEngineFeature_result1 = game:DefineFastFlag("EnableGamepadMenuSelector", false)
	if game_GetEngineFeature_result1 then
		game_GetEngineFeature_result1 = require(script.Parent.FFlagAddMenuNavigationToggleDialog)
	end
end
return game_GetEngineFeature_result1