-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:23
-- Luau version 6, Types version 3
-- Time taken: 0.002417 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local useVoiceStatus_upvr = require(CrossExperienceVoice.Hooks.useVoiceStatus)
local Constants_upvr = require(CrossExperienceVoice.dependencies).CrossExperience.Constants
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: useVoiceStatus_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local var3_result1 = useVoiceStatus_upvr()
	local var12 = true
	if var3_result1 ~= Constants_upvr.VOICE_STATUS.RCC_CONNECTING then
		var12 = true
		if var3_result1 ~= Constants_upvr.VOICE_STATUS.RCC_CONNECTED then
			var12 = true
			if var3_result1 ~= Constants_upvr.VOICE_STATUS.RCC_RECONNECTING then
				var12 = true
				if var3_result1 ~= Constants_upvr.VOICE_STATUS.VOICE_RECONNECTING then
					if var3_result1 ~= Constants_upvr.VOICE_STATUS.VOICE_CONNECTING then
						var12 = false
					else
						var12 = true
					end
				end
			end
		end
	end
	return var12
end