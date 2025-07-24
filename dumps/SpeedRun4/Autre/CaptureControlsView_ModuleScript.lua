-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:27
-- Luau version 6, Types version 3
-- Time taken: 0.003453 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local RoactUtils = require(Parent_2.RoactUtils)
local Foundation_upvr = require(Parent_2.Foundation)
local PopoverSide = Foundation_upvr.Enums.PopoverSide
local SnapDirection = require(Parent.Enums.SnapDirection)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("CapturesCanCaptureVideoIntegrated_v2", false)
if game_DefineFastFlag_result1_upvr_2 then
	game_DefineFastFlag_result1_upvr_2 = game:GetEngineFeature("VideoCapturesCanCaptureVideoIntegrated")
end
local tbl_upvr = {
	[SnapDirection.Bottom] = PopoverSide.Top;
	[SnapDirection.Left] = PopoverSide.Right;
	[SnapDirection.Right] = PopoverSide.Left;
	[SnapDirection.Top] = PopoverSide.Bottom;
}
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useTopbarInset_upvr = require(Parent.Hooks.useTopbarInset)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent.Constants)
local usePlayShutterSound_upvr = require(Parent.Hooks.usePlayShutterSound)
local game_DefineFastString_result1_upvr_4 = game:DefineFastString("CaptureButtonExperimentVariantControl", "capture_button_variant_control")
local useCaptureControlsController_upvr = require(Parent.Hooks.useCaptureControlsController)
local FFlagCapturesVideoCTAEnabledForAll_upvr = require(Parent.Flags.FFlagCapturesVideoCTAEnabledForAll)
local game_DefineFastString_result1_upvr_3 = game:DefineFastString("CapturesVideoCTAEnabledVariant", "capture_button_variant_a")
local FFlagCapturesVideoCTAExperimentEnabled_upvr = require(Parent.Flags.FFlagCapturesVideoCTAExperimentEnabled)
local useUserExperiment_upvr = require(Parent_2.RoactAppExperiment).useUserExperiment
local FStringSocialCaptureIXPLayer_upvr = require(Parent_2.SharedFlags).FStringSocialCaptureIXPLayer
local useEffect_upvr = React_upvr.useEffect
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("CaptureButtonExperimentVariantA", "capture_button_variant_a")
local game_DefineFastString_result1_upvr_5 = game:DefineFastString("CaptureButtonExperimentVariantB", "capture_button_variant_b")
local game_DefineFastString_result1_upvr = game:DefineFastString("CaptureButtonExperimentVariantC", "capture_button_variant_c")
local fireVideoCaptureExposureEvent_upvr = require(Parent.Analytics.fireVideoCaptureExposureEvent)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local useCallback_upvr = React_upvr.useCallback
local SocialStopwatch_upvr = require(Parent_2.SocialStopwatch)
local EntrypointType_upvr = require(Parent.Enums.EntrypointType)
local TakeCapture_upvr = require(Parent.Thunks.TakeCapture)
local View_upvr = Foundation_upvr.View
local VideoCaptureControl_upvr = require(Parent.Components.CoreUI.VideoCaptureControl)
local Tooltip_upvr = Foundation_upvr.Tooltip
local PopoverAlign_upvr = Foundation_upvr.Enums.PopoverAlign
local Icon_upvr = Foundation_upvr.Icon
local VoiceChatIndicator_upvr = require(Parent.Components.CoreUI.VoiceChatIndicator)
local Image_upvr = Foundation_upvr.Image
local CaptureService_upvr = game:GetService("CaptureService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugOverrideCaptureControlsVideoGuacPolicy", false)
return require(Parent.App.CapturesPolicy).connect(function(arg1) -- Line 306
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[2]: CaptureService_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local module = {}
	local var61
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 12 start (CF ANALYSIS FAILED)
	if game_DefineFastFlag_result1_upvr_2 then
		var61 = CaptureService_upvr:CanCaptureVideo()
	else
		var61 = true
	end
	if not var61 then
		-- KONSTANTERROR: [14] 13. Error Block 6 start (CF ANALYSIS FAILED)
		var61 = game_DefineFastFlag_result1_upvr
		-- KONSTANTERROR: [14] 13. Error Block 6 end (CF ANALYSIS FAILED)
	end
	module.hasVideoCaptureCapability = var61
	do
		return module
	end
	-- KONSTANTERROR: [5] 5. Error Block 12 end (CF ANALYSIS FAILED)
end)(function(arg1) -- Line 83
	--[[ Upvalues[35]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useTopbarInset_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: usePlayShutterSound_upvr (readonly)
		[10]: game_DefineFastString_result1_upvr_4 (readonly)
		[11]: useCaptureControlsController_upvr (readonly)
		[12]: FFlagCapturesVideoCTAEnabledForAll_upvr (readonly)
		[13]: game_DefineFastString_result1_upvr_3 (readonly)
		[14]: FFlagCapturesVideoCTAExperimentEnabled_upvr (readonly)
		[15]: useUserExperiment_upvr (readonly)
		[16]: FStringSocialCaptureIXPLayer_upvr (readonly)
		[17]: useEffect_upvr (readonly)
		[18]: game_DefineFastString_result1_upvr_2 (readonly)
		[19]: game_DefineFastString_result1_upvr_5 (readonly)
		[20]: game_DefineFastString_result1_upvr (readonly)
		[21]: fireVideoCaptureExposureEvent_upvr (readonly)
		[22]: EventNames_upvr (readonly)
		[23]: useCallback_upvr (readonly)
		[24]: SocialStopwatch_upvr (readonly)
		[25]: EntrypointType_upvr (readonly)
		[26]: TakeCapture_upvr (readonly)
		[27]: View_upvr (readonly)
		[28]: Foundation_upvr (readonly)
		[29]: VideoCaptureControl_upvr (readonly)
		[30]: tbl_upvr (readonly)
		[31]: Tooltip_upvr (readonly)
		[32]: PopoverAlign_upvr (readonly)
		[33]: Icon_upvr (readonly)
		[34]: VoiceChatIndicator_upvr (readonly)
		[35]: Image_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = {
		captureScreenshot = "Feature.Captures.Title.CaptureScreenshotTooltip";
	}
	local var14_result1_upvr = useTokens_upvr()
	local useTopbarInset_upvr_result1_upvr = useTopbarInset_upvr()
	local function _(arg1_3) -- Line 98
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].IsVideoCaptureActive.status
	end
	local _, _ = React_upvr.useState(false)
	local _, any_useState_result2 = React_upvr.useState(true)
	local any_useState_result1, _ = React_upvr.useState(true)
	local _ = useCaptureControlsController_upvr(useSelector_upvr(function(arg1_2) -- Line 94
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsActive
	end), React_upvr.useMemo(function() -- Line 104
		--[[ Upvalues[2]:
			[1]: useTopbarInset_upvr_result1_upvr (readonly)
			[2]: var14_result1_upvr (readonly)
		]]
		return Vector2.new(useTopbarInset_upvr_result1_upvr.Min.X - var14_result1_upvr.Padding.Small, useTopbarInset_upvr_result1_upvr.Height - var14_result1_upvr.Padding.XSmall - var14_result1_upvr.Padding.XXSmall)
	end, {useTopbarInset_upvr_result1_upvr, var14_result1_upvr}), any_useState_result1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 65. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 65. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 69. Error Block 39 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 69. Error Block 39 end (CF ANALYSIS FAILED)
end)