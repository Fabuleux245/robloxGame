-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:26:51
-- Luau version 6, Types version 3
-- Time taken: 0.000582 seconds

game:DefineFastFlag("UseNewHapticServiceInUA3", false)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("UsingNewHapticService")
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	local var3 = game_GetEngineFeature_result1_upvr
	if var3 then
		var3 = game:GetFastFlag("UseNewHapticServiceInUA3")
	end
	return var3
end