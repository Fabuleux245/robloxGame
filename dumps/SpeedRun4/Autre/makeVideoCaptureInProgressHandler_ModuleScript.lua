-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:28
-- Luau version 6, Types version 3
-- Time taken: 0.002311 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr = require(Parent.SharedFlags).GetFFlagEnableCrossExperienceVoiceCaptureMute
local default_upvr = require(Parent.VoiceChat).GlobalVoiceManager.default
local default_upvr_2 = require(Parent.VoiceChatCore).CoreVoiceManager.default
local GetFFlagEnableVoiceChatMuteForVideoCaptures_upvr = require(Parent.SharedFlags).GetFFlagEnableVoiceChatMuteForVideoCaptures
local function maybeMuteVoiceChat_upvr(arg1) -- Line 24, Named "maybeMuteVoiceChat"
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: default_upvr_2 (readonly)
		[4]: GetFFlagEnableVoiceChatMuteForVideoCaptures_upvr (readonly)
	]]
	if GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr() then
		if arg1 then
			default_upvr:MuteAll("Capture")
		else
			default_upvr:UnmuteAll("Capture")
		end
	end
	if default_upvr_2:UserVoiceEnabled() and default_upvr_2:IsInitialized() then
		if not GetFFlagEnableCrossExperienceVoiceCaptureMute_upvr() then
			default_upvr_2:MuteAll(arg1, "Capture")
		end
		if GetFFlagEnableVoiceChatMuteForVideoCaptures_upvr then
			if arg1 then
				default_upvr_2:RequestHidePublicVoiceUI()
				return
			end
			default_upvr_2:RequestShowPublicVoiceUI()
		end
	end
end
local Constants_upvr = require(Parent_2.Constants)
local VideoCaptureStarted_upvr = require(Parent_2.Actions.VideoCaptureStarted)
local CaptureTriggerType_upvr = require(Parent_2.Enums.CaptureTriggerType)
local FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr = require(Parent_2.Flags.FFlagCapturesVideoCaptureEntrypointLogsEnabled)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local VideoCaptureStopped_upvr = require(Parent_2.Actions.VideoCaptureStopped)
return function(arg1, arg2, arg3) -- Line 46, Named "makeVideoCaptureInProgressHandler"
	--[[ Upvalues[7]:
		[1]: Constants_upvr (readonly)
		[2]: VideoCaptureStarted_upvr (readonly)
		[3]: CaptureTriggerType_upvr (readonly)
		[4]: maybeMuteVoiceChat_upvr (readonly)
		[5]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (readonly)
		[6]: EventNames_upvr (readonly)
		[7]: VideoCaptureStopped_upvr (readonly)
	]]
	return function(arg1_2, arg2_2) -- Line 51, Named "videoCaptureInProgressHandler"
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: VideoCaptureStarted_upvr (copied, readonly)
			[4]: CaptureTriggerType_upvr (copied, readonly)
			[5]: maybeMuteVoiceChat_upvr (copied, readonly)
			[6]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (copied, readonly)
			[7]: arg3 (readonly)
			[8]: EventNames_upvr (copied, readonly)
			[9]: VideoCaptureStopped_upvr (copied, readonly)
		]]
		if arg1_2 and not arg1:getState()[Constants_upvr.RoduxKey].IsVideoCaptureActive.status then
			arg1:dispatch(VideoCaptureStarted_upvr(arg2_2))
			if arg2_2 == CaptureTriggerType_upvr.UserCapture or arg2_2 == CaptureTriggerType_upvr.DeveloperCapture then
				maybeMuteVoiceChat_upvr(true)
			end
			if FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr and arg2_2 == CaptureTriggerType_upvr.DeveloperCapture then
				arg3(EventNames_upvr.CapturesVideoCaptureDevApiStarted)
			end
			local tbl_3 = {}
			tbl_3.triggerType = arg2_2
			arg3(EventNames_upvr.CapturesVideoCaptureStarted, tbl_3)
		elseif not arg1_2 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if arg1:getState()[Constants_upvr.RoduxKey].IsVideoCaptureActive.status then
				arg1:dispatch(VideoCaptureStopped_upvr(arg2_2))
				if arg2_2 == CaptureTriggerType_upvr.UserCapture or arg2_2 == CaptureTriggerType_upvr.DeveloperCapture then
					maybeMuteVoiceChat_upvr(false)
				end
				if FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr and arg2_2 == CaptureTriggerType_upvr.DeveloperCapture then
					arg3(EventNames_upvr.CapturesVideoCaptureDevApiEnded)
				end
				local tbl_2 = {}
				tbl_2.triggerType = arg2_2
				arg3(EventNames_upvr.CapturesVideoCaptureStopped, tbl_2)
			end
		end
	end
end