-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:22:44
-- Luau version 6, Types version 3
-- Time taken: 0.000281 seconds

local game_DefineFastFlag_result1 = game:DefineFastFlag("LuaAppEnableRelativeGuiHomeWithIxp2", false)
if game_DefineFastFlag_result1 then
	game_DefineFastFlag_result1 = game:GetEngineFeature("RelativeGui")
end
return game_DefineFastFlag_result1