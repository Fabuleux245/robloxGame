-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:24
-- Luau version 6, Types version 3
-- Time taken: 0.000668 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local useAudioCurrentContextId_upvr = require(CrossExperienceVoice.Hooks.useAudioCurrentContextId)
local CONTEXT_ID_upvr = require(CrossExperienceVoice.dependencies).CrossExperience.Constants.AUDIO_FOCUS_MANAGEMENT.CEV.CONTEXT_ID
return function() -- Line 10
	--[[ Upvalues[2]:
		[1]: useAudioCurrentContextId_upvr (readonly)
		[2]: CONTEXT_ID_upvr (readonly)
	]]
	local var5
	if useAudioCurrentContextId_upvr() ~= CONTEXT_ID_upvr then
		var5 = false
	else
		var5 = true
	end
	return var5
end