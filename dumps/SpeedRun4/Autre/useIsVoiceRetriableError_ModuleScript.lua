-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:25
-- Luau version 6, Types version 3
-- Time taken: 0.000630 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local useVoiceStatus_upvr = require(CrossExperienceVoice.Hooks.useVoiceStatus)
local Utils_upvr = require(CrossExperienceVoice.dependencies).CrossExperience.Utils
return function() -- Line 10
	--[[ Upvalues[2]:
		[1]: useVoiceStatus_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local var3_result1 = useVoiceStatus_upvr()
	if var3_result1 == nil then
		return false
	end
	return Utils_upvr.VoiceStatus.isVoiceRetriableError(var3_result1)
end