-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:12
-- Luau version 6, Types version 3
-- Time taken: 0.000388 seconds

game:DefineFastInt("FullscreenTitleBarTriggerDelayMillis", 0)
return function() -- Line 5
	local game_GetFastInt_result1 = game:GetFastInt("FullscreenTitleBarTriggerDelayMillis")
	if game_GetFastInt_result1 < 0 then
		game_GetFastInt_result1 = 0
	end
	return game_GetFastInt_result1
end