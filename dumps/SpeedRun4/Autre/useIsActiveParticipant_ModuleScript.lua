-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:19
-- Luau version 6, Types version 3
-- Time taken: 0.000980 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local dependencies = require(CrossExperienceVoice.dependencies)
local GetFFlagEnableCrossExpVoice_upvr = dependencies.SharedFlags.GetFFlagEnableCrossExpVoice
local useIsVoiceFocused_upvr = require(CrossExperienceVoice.Hooks.useIsVoiceFocused)
local useSelector_upvr = dependencies.RoactUtils.Hooks.RoactRodux.useSelector
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AudioFocusManagement")
return function(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[2]: useIsVoiceFocused_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	if not GetFFlagEnableCrossExpVoice_upvr() then
		return false
	end
	if game_GetEngineFeature_result1_upvr and not useIsVoiceFocused_upvr() then
		return false
	end
	return useSelector_upvr(function(arg1_2) -- Line 16
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2 and arg1_2.Squad and arg1_2.Squad.CrossExperienceVoice then
			if table.find(arg1_2.Squad.CrossExperienceVoice.Participants.activeUserIds, arg1) ~= nil then
				local var9 = arg1_2.Squad.CrossExperienceVoice.Participants.participants[arg1]
				local var10 = var9
				if var10 then
					var10 = not var9.isMuted
				end
				return var10
			end
			return false
		end
		return false
	end)
end