-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:45
-- Luau version 6, Types version 3
-- Time taken: 0.000265 seconds

local game_DefineFastFlag_result1 = game:DefineFastFlag("CapturesVideoCTAEnabledForAll_v3", false)
if game_DefineFastFlag_result1 then
	game_DefineFastFlag_result1 = game:GetEngineFeature("EnableVideoCaptureApiLua")
end
return game_DefineFastFlag_result1