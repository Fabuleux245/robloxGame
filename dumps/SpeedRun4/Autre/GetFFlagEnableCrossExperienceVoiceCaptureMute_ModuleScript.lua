-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:03
-- Luau version 6, Types version 3
-- Time taken: 0.000667 seconds

game:DefineFastFlag("EnableCrossExperienceCaptureMute", false)
local GetFFlagEnableCrossExpVoice_upvr = require(script.Parent.GetFFlagEnableCrossExpVoice)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("EnableCrossExperienceCaptureMute")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = GetFFlagEnableCrossExpVoice_upvr()
		if game_GetFastFlag_result1 then
			game_GetFastFlag_result1 = game:GetEngineFeature("CrossExperienceVoiceMuteAll")
		end
	end
	return game_GetFastFlag_result1
end