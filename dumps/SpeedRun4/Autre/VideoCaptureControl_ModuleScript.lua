-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:31
-- Luau version 6, Types version 3
-- Time taken: 0.004149 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local Foundation_upvr = require(Parent.Foundation)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useCallback_upvr = React_upvr.useCallback
local FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr = require(Parent_2.Flags.FFlagCapturesVideoCaptureEntrypointLogsEnabled)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local StopVideoCapture_upvr = require(Parent_2.Thunks.StopVideoCapture)
local ReactOtter_upvr = require(Parent.ReactOtter)
local useEffect_upvr = React_upvr.useEffect
local game_DefineFastInt_result1_upvr = game:DefineFastInt("MaxVideoCaptureDurationSeconds", 30)
local EntrypointType_upvr = require(Parent_2.Enums.EntrypointType)
local StartVideoCapture_upvr = require(Parent_2.Thunks.StartVideoCapture)
local View_upvr = Foundation_upvr.View
local Tooltip_upvr = Foundation_upvr.Tooltip
local PopoverAlign_upvr = Foundation_upvr.Enums.PopoverAlign
local Icon_upvr = Foundation_upvr.Icon
local CaptureTriggerType_upvr = require(Parent_2.Enums.CaptureTriggerType)
local RadialProgressBar_upvr = require(Parent_2.Components.CoreUI.RadialProgressBar)
return function(arg1) -- Line 48
	--[[ Upvalues[23]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: useCallback_upvr (readonly)
		[8]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (readonly)
		[9]: EventNames_upvr (readonly)
		[10]: StopVideoCapture_upvr (readonly)
		[11]: ReactOtter_upvr (readonly)
		[12]: useEffect_upvr (readonly)
		[13]: game_DefineFastInt_result1_upvr (readonly)
		[14]: EntrypointType_upvr (readonly)
		[15]: StartVideoCapture_upvr (readonly)
		[16]: React_upvr (readonly)
		[17]: View_upvr (readonly)
		[18]: Tooltip_upvr (readonly)
		[19]: PopoverAlign_upvr (readonly)
		[20]: Icon_upvr (readonly)
		[21]: CaptureTriggerType_upvr (readonly)
		[22]: Foundation_upvr (readonly)
		[23]: RadialProgressBar_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	local var7_result1_upvr = useAnalytics_upvr()
	local var8_result1_upvr = useDispatch_upvr()
	local tbl_8 = {
		captureVideo = "Feature.Captures.Title.CaptureVideoTooltip";
		videoCaptureInProgressTitle = "Feature.Captures.Title.VideoCaptureInProgressTooltip";
	}
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 57
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsVideoCaptureActive.status
	end)
	local function var33(arg1_3) -- Line 61
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].IsVideoCaptureActive.triggerType
	end
	local _, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(0, useCallback_upvr(function() -- Line 65
		--[[ Upvalues[6]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: var8_result1_upvr (readonly)
			[6]: StopVideoCapture_upvr (copied, readonly)
		]]
		if not useSelector_upvr_result1_upvr then
		else
			if FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr then
				var7_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointVideoDeactivatedAutomatically)
			end
			var8_result1_upvr(StopVideoCapture_upvr())
		end
	end, {useSelector_upvr_result1_upvr}))
	useEffect_upvr(function() -- Line 79
		--[[ Upvalues[4]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: any_useAnimatedBinding_result2_upvr (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: game_DefineFastInt_result1_upvr (copied, readonly)
		]]
		if useSelector_upvr_result1_upvr then
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.ease(1, {
				duration = game_DefineFastInt_result1_upvr;
				easingStyle = Enum.EasingStyle.Linear;
			}))
		else
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.instant(0))
		end
	end, {any_useAnimatedBinding_result2_upvr, useSelector_upvr_result1_upvr})
	local function _() -- Line 106
		--[[ Upvalues[7]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: EntrypointType_upvr (copied, readonly)
			[6]: var8_result1_upvr (readonly)
			[7]: StopVideoCapture_upvr (copied, readonly)
		]]
		if not useSelector_upvr_result1_upvr then
		else
			if FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr then
				var7_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointVideoDeactivated)
			end
			var7_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointActivated, {
				entrypointType = EntrypointType_upvr.VideoCaptureStop;
			})
			var8_result1_upvr(StopVideoCapture_upvr())
		end
	end
	local tbl_9 = {useSelector_upvr_result1_upvr}
	local tbl = {}
	local var48
	if not useSelector_upvr_result1_upvr then
		var48 = React_upvr.createElement
		local tbl_3 = {}
		local tbl_4 = {
			align = PopoverAlign_upvr.Center;
			side = arg1.popoverSide;
		}
		local captureVideo = useLocalization_upvr(tbl_8).captureVideo
		tbl_4.title = captureVideo
		if arg1.isDisplayingLargeIcons then
			captureVideo = React_upvr.createElement
			captureVideo = captureVideo(View_upvr, {
				tag = "size-1200-1200";
			}, {
				Icon = React_upvr.createElement(Icon_upvr, {
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					name = "icons/controls/screenRecord_alt";
					style = useTokens_upvr().Color.Content.Emphasis;
				});
			})
		else
			captureVideo = React_upvr.createElement
			local tbl_5 = {
				name = "icons/controls/screenRecord_alt";
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.style = useTokens_upvr().Color.Content.Emphasis
			captureVideo = captureVideo(Icon_upvr, tbl_5)
		end
		tbl_3.StartIconWithTooltip = React_upvr.createElement(Tooltip_upvr, tbl_4, captureVideo)
		var48 = var48(View_upvr, {
			LayoutOrder = arg1.layoutOrder;
			onActivated = useCallback_upvr(function() -- Line 90
				--[[ Upvalues[7]:
					[1]: useSelector_upvr_result1_upvr (readonly)
					[2]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (copied, readonly)
					[3]: var7_result1_upvr (readonly)
					[4]: EventNames_upvr (copied, readonly)
					[5]: EntrypointType_upvr (copied, readonly)
					[6]: var8_result1_upvr (readonly)
					[7]: StartVideoCapture_upvr (copied, readonly)
				]]
				if useSelector_upvr_result1_upvr then
				else
					if FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr then
						var7_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointVideoActivated)
					end
					var7_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointActivated, {
						entrypointType = EntrypointType_upvr.VideoCaptureStart;
					})
					var8_result1_upvr(StartVideoCapture_upvr())
				end
			end, {useSelector_upvr_result1_upvr});
			tag = {
				["size-1200-1200"] = arg1.isDisplayingLargeIcons;
				["anchor-center-center auto-xy clip position-center-center radius-circle"] = true;
			};
		}, tbl_3)
	else
		var48 = nil
	end
	tbl.VideoCaptureStartCTA = var48
	if useSelector_upvr_result1_upvr and useSelector_upvr(var33) == CaptureTriggerType_upvr.LegacyCapture then
		var48 = React_upvr.createElement
		local tbl_7 = {}
		local tbl_2 = {
			align = PopoverAlign_upvr.Center;
			side = arg1.popoverSide;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.title = useLocalization_upvr(tbl_8).videoCaptureInProgressTitle
		local tbl_6 = {
			name = "icons/controls/screenRecord_alt";
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_6.style = useTokens_upvr().Color.Content.Muted
		tbl_7.StartIconWithTooltip = React_upvr.createElement(Tooltip_upvr, tbl_2, React_upvr.createElement(Icon_upvr, tbl_6))
		var48 = var48(View_upvr, {
			LayoutOrder = arg1.layoutOrder;
			tag = "anchor-center-center auto-xy clip position-center-center radius-circle";
		}, tbl_7)
	else
		var48 = nil
	end
	tbl.VideoCaptureDisabledStartCTA = var48
	-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [276] 203. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [276] 203. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [385] 278. Error Block 27 start (CF ANALYSIS FAILED)
	var48 = nil
	-- KONSTANTERROR: [385] 278. Error Block 27 end (CF ANALYSIS FAILED)
end