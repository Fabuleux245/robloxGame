-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:23
-- Luau version 6, Types version 3
-- Time taken: 0.000696 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local useVoiceStatus_upvr = require(CrossExperienceVoice.Hooks.useVoiceStatus)
local Constants_upvr = require(CrossExperienceVoice.dependencies).CrossExperience.Constants
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: useVoiceStatus_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local var5
	if useVoiceStatus_upvr() ~= Constants_upvr.VOICE_STATUS.VOICE_CONNECTED then
		var5 = false
	else
		var5 = true
	end
	return var5
end