-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:04
-- Luau version 6, Types version 3
-- Time taken: 0.000463 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("CevRespectEngineFeature", false)
return function() -- Line 3
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		local game_GetEngineFeature_result1 = game:GetEngineFeature("EnableCrossExpVoice")
		if game_GetEngineFeature_result1 then
			game_GetEngineFeature_result1 = game:GetEngineFeature("VoiceChatSupported")
		end
		return game_GetEngineFeature_result1
	end
	return game:GetEngineFeature("EnableCrossExpVoice")
end