-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:25
-- Luau version 6, Types version 3
-- Time taken: 0.000882 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local dependencies = require(CrossExperienceVoice.dependencies)
local GetFFlagEnableCrossExpVoice_upvr = dependencies.SharedFlags.GetFFlagEnableCrossExpVoice
local useIsVoiceFocused_upvr = require(CrossExperienceVoice.Hooks.useIsVoiceFocused)
local useSelector_upvr = dependencies.RoactUtils.Hooks.RoactRodux.useSelector
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AudioFocusManagement")
return function() -- Line 13
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[2]: useIsVoiceFocused_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	if not GetFFlagEnableCrossExpVoice_upvr() then
		return nil
	end
	if game_GetEngineFeature_result1_upvr and not useIsVoiceFocused_upvr() then
		return nil
	end
	return useSelector_upvr(function(arg1) -- Line 19
		if arg1 and arg1.Squad and arg1.Squad.CrossExperienceVoice then
			local activeUserIds = arg1.Squad.CrossExperienceVoice.Participants.activeUserIds
			for i = #activeUserIds, 1, -1 do
				local var11 = arg1.Squad.CrossExperienceVoice.Participants.participants[activeUserIds[i]]
				if var11 and not var11.isMuted then
					return var11
				end
			end
			return nil
		end
		return nil
	end)
end