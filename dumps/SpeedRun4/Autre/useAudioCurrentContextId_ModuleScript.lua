-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:17
-- Luau version 6, Types version 3
-- Time taken: 0.001473 seconds

local CrossExperienceVoice = script:FindFirstAncestor("CrossExperienceVoice")
local default_upvr = require(CrossExperienceVoice.CrossExperienceVoiceManager).default
local React_upvr = require(CrossExperienceVoice.dependencies).React
local any_getAudioFocusService_result1_upvr = default_upvr:getAudioFocusService()
return function() -- Line 8
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: any_getAudioFocusService_result1_upvr (readonly)
		[3]: default_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(-1)
	if any_getAudioFocusService_result1_upvr then
		React_upvr.useEffect(function() -- Line 12
			--[[ Upvalues[3]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: default_upvr (copied, readonly)
				[3]: any_getAudioFocusService_result1_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(default_upvr:getCurrentAudioContext())
			any_getAudioFocusService_result1_upvr.OnContextRegistered:Connect(function() -- Line 15
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: default_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(default_upvr:getCurrentAudioContext())
			end)
			any_getAudioFocusService_result1_upvr.OnContextUnregistered:Connect(function() -- Line 19
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: default_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(default_upvr:getCurrentAudioContext())
			end)
			any_getAudioFocusService_result1_upvr.OnDeafenVoiceAudio:Connect(function(arg1) -- Line 23
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: default_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(default_upvr:getCurrentAudioContext())
			end)
			any_getAudioFocusService_result1_upvr.OnUndeafenVoiceAudio:Connect(function(arg1) -- Line 27
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: default_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(default_upvr:getCurrentAudioContext())
			end)
		end, {})
	end
	return any_useState_result1
end