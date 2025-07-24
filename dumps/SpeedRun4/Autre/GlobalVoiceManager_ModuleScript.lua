-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:28
-- Luau version 6, Types version 3
-- Time taken: 0.002378 seconds

local Parent = script:FindFirstAncestor("VoiceChat").Parent
local SharedFlags = require(Parent.SharedFlags)
local default_upvr_2 = require(Parent.VoiceChatCore).CoreVoiceManager.default
local default_upvr = require(Parent.CrossExperienceVoice).CrossExperienceVoiceManager.default
local AUDIO_FOCUS_MANAGEMENT_upvr = require(Parent.CrossExperience).Constants.AUDIO_FOCUS_MANAGEMENT
local any_GetFFlagEnableCrossExpVoice_result1_upvr = SharedFlags.GetFFlagEnableCrossExpVoice()
local any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr = SharedFlags.GetFFlagEnableCrossExperienceVoiceCaptureMute()
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 38
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.isPublicVoiceFocused(arg1) -- Line 44
	--[[ Upvalues[3]:
		[1]: any_GetFFlagEnableCrossExpVoice_result1_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: AUDIO_FOCUS_MANAGEMENT_upvr (readonly)
	]]
	local var10 = not any_GetFFlagEnableCrossExpVoice_result1_upvr
	if not var10 then
		if default_upvr:getCurrentAudioContext() ~= AUDIO_FOCUS_MANAGEMENT_upvr.UGC.CONTEXT_ID then
			var10 = false
		else
			var10 = true
		end
	end
	return var10
end
function module_2_upvr.isPrivateVoiceFocused(arg1) -- Line 49
	--[[ Upvalues[3]:
		[1]: any_GetFFlagEnableCrossExpVoice_result1_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: AUDIO_FOCUS_MANAGEMENT_upvr (readonly)
	]]
	local var11 = any_GetFFlagEnableCrossExpVoice_result1_upvr
	if var11 then
		if default_upvr:getCurrentAudioContext() ~= AUDIO_FOCUS_MANAGEMENT_upvr.CEV.CONTEXT_ID then
			var11 = false
		else
			var11 = true
		end
	end
	return var11
end
function module_2_upvr.MuteAll(arg1, arg2) -- Line 54
	--[[ Upvalues[3]:
		[1]: any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: default_upvr_2 (readonly)
	]]
	if arg1:isPrivateVoiceFocused() and any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr then
		default_upvr:muteAll(arg2)
	end
	if arg1:isPublicVoiceFocused() and default_upvr_2:UserVoiceEnabled() and default_upvr_2:IsInitialized() then
		default_upvr_2:MuteAll(true, arg2)
	end
end
function module_2_upvr.UnmuteAll(arg1, arg2) -- Line 64
	--[[ Upvalues[3]:
		[1]: any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: default_upvr_2 (readonly)
	]]
	if arg1:isPrivateVoiceFocused() and any_GetFFlagEnableCrossExperienceVoiceCaptureMute_result1_upvr then
		default_upvr:unmuteAll(arg2)
	end
	if arg1:isPublicVoiceFocused() and default_upvr_2:UserVoiceEnabled() and default_upvr_2:IsInitialized() then
		default_upvr_2:MuteAll(false, arg2)
	end
end
module_2_upvr.default = module_2_upvr.new()
return module_2_upvr