-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:26
-- Luau version 6, Types version 3
-- Time taken: 0.002544 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local FFlagCapturesPostEnabledForAll_upvr = require(Parent_2.SharedFlags).FFlagCapturesPostEnabledForAll
local getOnPlatformSharingEnabledAsync_upvr = require(Parent.Flags.getOnPlatformSharingEnabledAsync)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local TriggerSourceType_upvr = require(Parent.Enums.TriggerSourceType)
local FFlagEnableUpdatedCaptureControls_upvr = require(Parent.Flags.FFlagEnableUpdatedCaptureControls)
local SocialStopwatch_upvr = require(Parent_2.SocialStopwatch)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local RetrieveCaptures_upvr = require(Parent.Thunks.RetrieveCaptures)
local waitForFlashOverlay_upvr = require(Parent.Utils.waitForFlashOverlay)
local CapturesPolicy_upvr = require(Parent.App.CapturesPolicy)
local getIsCapturePostable_upvr = require(Parent.Utils.getIsCapturePostable)
local ToastTriggered_upvr = require(Parent.Actions.ToastTriggered)
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
local FFlagCapturesHideVideoShareCTA_upvr = require(Parent.Flags.FFlagCapturesHideVideoShareCTA)
local FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr = require(Parent.Flags.FFlagCapturesVideoCaptureEntrypointLogsEnabled)
return function(arg1, arg2, arg3) -- Line 28, Named "makeCaptureSavedHandler"
	--[[ Upvalues[15]:
		[1]: FFlagCapturesPostEnabledForAll_upvr (readonly)
		[2]: getOnPlatformSharingEnabledAsync_upvr (readonly)
		[3]: CaptureType_upvr (readonly)
		[4]: TriggerSourceType_upvr (readonly)
		[5]: FFlagEnableUpdatedCaptureControls_upvr (readonly)
		[6]: SocialStopwatch_upvr (readonly)
		[7]: EventNames_upvr (readonly)
		[8]: RetrieveCaptures_upvr (readonly)
		[9]: waitForFlashOverlay_upvr (readonly)
		[10]: CapturesPolicy_upvr (readonly)
		[11]: getIsCapturePostable_upvr (readonly)
		[12]: ToastTriggered_upvr (readonly)
		[13]: CapturesToastType_upvr (readonly)
		[14]: FFlagCapturesHideVideoShareCTA_upvr (readonly)
		[15]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (readonly)
	]]
	local var18_upvw = FFlagCapturesPostEnabledForAll_upvr
	task.spawn(function() -- Line 30
		--[[ Upvalues[3]:
			[1]: var18_upvw (read and write)
			[2]: getOnPlatformSharingEnabledAsync_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		var18_upvw = getOnPlatformSharingEnabledAsync_upvr(arg2)
	end)
	return function(arg1_2, arg2_2) -- Line 34, Named "captureSavedHandler"
		--[[ Upvalues[16]:
			[1]: CaptureType_upvr (copied, readonly)
			[2]: TriggerSourceType_upvr (copied, readonly)
			[3]: FFlagEnableUpdatedCaptureControls_upvr (copied, readonly)
			[4]: SocialStopwatch_upvr (copied, readonly)
			[5]: arg3 (readonly)
			[6]: EventNames_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: RetrieveCaptures_upvr (copied, readonly)
			[9]: waitForFlashOverlay_upvr (copied, readonly)
			[10]: CapturesPolicy_upvr (copied, readonly)
			[11]: var18_upvw (read and write)
			[12]: getIsCapturePostable_upvr (copied, readonly)
			[13]: ToastTriggered_upvr (copied, readonly)
			[14]: CapturesToastType_upvr (copied, readonly)
			[15]: FFlagCapturesHideVideoShareCTA_upvr (copied, readonly)
			[16]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var20
		if arg1_2.type ~= CaptureType_upvr.Video then
			var20 = false
		else
			var20 = true
		end
		local var21
		if arg2_2 == TriggerSourceType_upvr.UserSave and (not FFlagEnableUpdatedCaptureControls_upvr or not var20) then
			local any_stop_result1 = SocialStopwatch_upvr.Stopwatch.stop(SocialStopwatch_upvr.Events.CaptureTaken)
			local tbl = {}
			if any_stop_result1 then
				var21 = any_stop_result1.timeElapsed
			else
				var21 = nil
			end
			tbl.statValue = var21
			arg3(EventNames_upvr.CapturesEntrypointLatency, tbl)
		end
		arg1:dispatch(RetrieveCaptures_upvr())
		waitForFlashOverlay_upvr(arg1)
		if arg2_2 == TriggerSourceType_upvr.PromptedShare then
		else
			if CapturesPolicy_upvr.PolicyImplementation.read() then
			else
			end
			if var18_upvw and getIsCapturePostable_upvr(arg1_2) then
				var21 = ToastTriggered_upvr
				local tbl_3 = {}
				tbl_3.captureInfo = arg1_2
				var21 = var21(CapturesToastType_upvr.CaptureTakenWithPostCTA, tbl_3)
				arg1:dispatch(var21)
				-- KONSTANTWARNING: GOTO [118] #92
			end
			if not FFlagCapturesHideVideoShareCTA_upvr or not var20 or false then
				var21 = ToastTriggered_upvr
				local tbl_2 = {}
				tbl_2.captureInfo = arg1_2
				var21 = var21(CapturesToastType_upvr.CaptureTaken, tbl_2)
				arg1:dispatch(var21)
			else
				var21 = ToastTriggered_upvr(CapturesToastType_upvr.ViewCapture)
				arg1:dispatch(var21)
			end
			if FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr and var20 then
				var21 = EventNames_upvr
				arg3(var21.CapturesVideoShareToastViewed)
			end
			var21 = EventNames_upvr
			arg3(var21.CapturesShareToastViewed)
		end
	end
end