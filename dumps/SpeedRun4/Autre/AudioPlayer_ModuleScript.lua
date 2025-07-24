-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:54
-- Luau version 6, Types version 3
-- Time taken: 0.005279 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local ReactUtils = require(Songbird.Parent.ReactUtils)
local createNextOrder_upvr = ReactUtils.createNextOrder
local useCallback_upvr = React_upvr.useCallback
local sendAudioPlayerAnalytics_upvr = require(Songbird.Analytics.sendAudioPlayerAnalytics)
local AnalyticActions_upvr = require(Songbird.Analytics.AnalyticActions)
local useAudioPlayback_upvr = require(Songbird.Hooks.useAudioPlayback)
local useRef_upvr = React_upvr.useRef
local usePrevious_upvr = ReactUtils.usePrevious
local useEffect_upvr = React_upvr.useEffect
local Foundation_upvr = require(Songbird.Parent.Foundation)
local vector2_upvr = Vector2.new(320, 320)
local ProgressCountdown_upvr = require(Songbird.Components.ProgressCountdown)
local GetFFlagSongDetailsUseFoundationSlider_upvr = require(Songbird.Parent.SharedFlags).GetFFlagSongDetailsUseFoundationSlider
local Slider_upvr = require(Songbird.Components.Slider)
local RoundIconButton_upvr = require(Songbird.Components.RoundIconButton)
local GetFIntAudioPlayerPlaybackButtonOffset_upvr = require(Songbird.Parent.SharedFlags).GetFIntAudioPlayerPlaybackButtonOffset
return function(arg1) -- Line 44, Named "AudioPlayer"
	--[[ Upvalues[16]:
		[1]: createNextOrder_upvr (readonly)
		[2]: useCallback_upvr (readonly)
		[3]: sendAudioPlayerAnalytics_upvr (readonly)
		[4]: AnalyticActions_upvr (readonly)
		[5]: useAudioPlayback_upvr (readonly)
		[6]: useRef_upvr (readonly)
		[7]: usePrevious_upvr (readonly)
		[8]: useEffect_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: Foundation_upvr (readonly)
		[11]: vector2_upvr (readonly)
		[12]: ProgressCountdown_upvr (readonly)
		[13]: GetFFlagSongDetailsUseFoundationSlider_upvr (readonly)
		[14]: Slider_upvr (readonly)
		[15]: RoundIconButton_upvr (readonly)
		[16]: GetFIntAudioPlayerPlaybackButtonOffset_upvr (readonly)
	]]
	local createNextOrder_upvr_result1 = createNextOrder_upvr()
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_2) -- Line 47
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: sendAudioPlayerAnalytics_upvr (copied, readonly)
		]]
		local var21
		if arg1.audio.thumbnailAssetId then
			var21 = arg1.audio.thumbnailAssetId:gsub("rbxassetid://", "")
		else
			var21 = nil
		end
		local tbl_5 = {}
		tbl_5.action = arg1_2
		tbl_5.songId = arg1.audio.assetId:gsub("rbxassetid://", "")
		tbl_5.thumbnailId = var21 or "-1"
		tbl_5.source = arg1.analyticsSource
		sendAudioPlayerAnalytics_upvr(tbl_5)
	end, {arg1.audio.assetId, arg1.audio.thumbnail, arg1.analyticsSource})
	local var8_result1_upvr = useAudioPlayback_upvr(arg1.audio.assetId, {
		playbackRegion = arg1.playbackRegion;
		onElapsed = useCallback_upvr(function() -- Line 64
			--[[ Upvalues[2]:
				[1]: useCallback_upvr_result1_upvr (readonly)
				[2]: AnalyticActions_upvr (copied, readonly)
			]]
			useCallback_upvr_result1_upvr(AnalyticActions_upvr.AudioElapsed)
		end, {useCallback_upvr_result1_upvr});
	})
	local useRef_upvr_result1_upvr = useRef_upvr(false)
	local function var30() -- Line 75
		--[[ Upvalues[2]:
			[1]: useRef_upvr_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
		]]
		useRef_upvr_result1_upvr.current = var8_result1_upvr.isPlaying
		var8_result1_upvr.pause()
	end
	local tbl_4 = {var8_result1_upvr.pause, var8_result1_upvr.isPlaying}
	local function var32(arg1_3) -- Line 80
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		var8_result1_upvr.seek(var8_result1_upvr.duration * arg1_3)
	end
	local tbl_9 = {var8_result1_upvr.seek, var8_result1_upvr.duration}
	local function var34() -- Line 84
		--[[ Upvalues[2]:
			[1]: useRef_upvr_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
		]]
		if useRef_upvr_result1_upvr.current then
			var8_result1_upvr.play()
		end
	end
	local tbl_2 = {var8_result1_upvr.play}
	local usePrevious_upvr_result1_upvr = usePrevious_upvr(arg1.isNavigationFocus)
	useEffect_upvr(function() -- Line 101
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: usePrevious_upvr_result1_upvr (readonly)
			[3]: var8_result1_upvr (readonly)
		]]
		if not arg1.isNavigationFocus and usePrevious_upvr_result1_upvr then
			var8_result1_upvr.pause()
		end
	end, {arg1.isNavigationFocus, usePrevious_upvr_result1_upvr, var8_result1_upvr.pause})
	local module = {}
	local tbl_8 = {
		AlbumArt = React_upvr.createElement(Foundation_upvr.Image, {
			tag = "size-full shrink bg-surface-100 radius-medium";
			sizeConstraint = {
				MaxSize = vector2_upvr;
			};
			aspectRatio = 1;
			Image = arg1.audio.thumbnail;
			LayoutOrder = createNextOrder_upvr_result1();
		});
	}
	local tbl_6 = {
		Title = React_upvr.createElement(Foundation_upvr.Text, {
			tag = "auto-xy text-heading-small content-emphasis text-truncate-end";
			Text = arg1.audio.title;
			LayoutOrder = createNextOrder_upvr_result1();
		});
	}
	local any_createElement_result1 = React_upvr.createElement(Foundation_upvr.Text, {
		tag = "auto-xy text-body-large content-default text-truncate-end";
		Text = arg1.audio.artist;
		LayoutOrder = createNextOrder_upvr_result1();
	})
	tbl_6.Artist = any_createElement_result1
	tbl_8.Info = React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-y grow col align-x-center gap-medium";
		LayoutOrder = createNextOrder_upvr_result1();
	}, tbl_6)
	module.AudioDetails = React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-y col align-x-center gap-xlarge";
	}, tbl_8)
	local tbl_7 = {
		TimeElapsed = React_upvr.createElement(ProgressCountdown_upvr, {
			timeLength = var8_result1_upvr.duration;
			timePosition = var8_result1_upvr.elapsed;
			counterType = "Elapsed";
			LayoutOrder = createNextOrder_upvr_result1();
		});
	}
	local var56
	if GetFFlagSongDetailsUseFoundationSlider_upvr() then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(Foundation_upvr.Slider, {
			value = var8_result1_upvr.elapsed:map(function(arg1_4) -- Line 158
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr (readonly)
				]]
				if 0 < var8_result1_upvr.duration then
					return arg1_4 / var8_result1_upvr.duration
				end
				return 0
			end);
			onValueChanged = useCallback_upvr(var32, tbl_9);
			onDragStarted = useCallback_upvr(var30, tbl_4);
			onDragEnded = useCallback_upvr(var34, tbl_2);
			size = Foundation_upvr.Enums.InputSize.Medium;
			knobVisibility = Foundation_upvr.Enums.ScrollBarVisibility.Auto;
			variant = Foundation_upvr.Enums.SliderVariant.Standard;
		})
	else
		any_createElement_result1 = React_upvr.createElement
		local tbl_3 = {
			value = var8_result1_upvr.elapsed:map(function(arg1_5) -- Line 169
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr (readonly)
				]]
				if 0 < var8_result1_upvr.duration then
					return arg1_5 / var8_result1_upvr.duration
				end
				return 0
			end);
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.onValueChanged = useCallback_upvr(var32, tbl_9)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.onDragStarted = useCallback_upvr(var30, tbl_4)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.onDragEnded = useCallback_upvr(var34, tbl_2)
		any_createElement_result1 = any_createElement_result1(Slider_upvr, tbl_3)
	end
	var56.Slider = any_createElement_result1
	tbl_7.ProgressBar = React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-y shrink padding-top-xxsmall";
		LayoutOrder = createNextOrder_upvr_result1();
	}, var56)
	local tbl_11 = {}
	var56 = var8_result1_upvr.duration
	tbl_11.timeLength = var56
	var56 = var8_result1_upvr.elapsed
	tbl_11.timePosition = var56
	var56 = createNextOrder_upvr_result1()
	tbl_11.LayoutOrder = var56
	tbl_7.TimeRemaining = React_upvr.createElement(ProgressCountdown_upvr, tbl_11)
	module.PlaybackProgress = React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-y shrink row fill self-stretch flex-between gap-large";
		LayoutOrder = createNextOrder_upvr_result1();
	}, tbl_7)
	local tbl = {}
	local tbl_10 = {}
	if var8_result1_upvr.isPlaying then
		var56 = "icons/controls/media-pause-medium"
	else
		var56 = "icons/controls/media-play-medium"
	end
	tbl_10.icon = var56
	tbl_10.onActivated = useCallback_upvr(function() -- Line 90
		--[[ Upvalues[3]:
			[1]: var8_result1_upvr (readonly)
			[2]: useCallback_upvr_result1_upvr (readonly)
			[3]: AnalyticActions_upvr (copied, readonly)
		]]
		if var8_result1_upvr.isPlaying then
			useCallback_upvr_result1_upvr(AnalyticActions_upvr.AudioPause)
			var8_result1_upvr.pause()
		else
			useCallback_upvr_result1_upvr(AnalyticActions_upvr.AudioPlay)
			var8_result1_upvr.play()
		end
	end, {var8_result1_upvr.toggle, var8_result1_upvr.isPlaying, useCallback_upvr_result1_upvr})
	tbl_10.LayoutOrder = createNextOrder_upvr_result1()
	if not var8_result1_upvr.isPlaying then
	else
	end
	tbl_10.iconOffset = nil
	tbl.PlaybackToggleButton = React_upvr.createElement(RoundIconButton_upvr, tbl_10)
	module.PlaybackControls = React_upvr.createElement(Foundation_upvr.View, {
		tag = "auto-xy row gap-medium align-y-center";
		LayoutOrder = createNextOrder_upvr_result1();
	}, tbl)
	return React_upvr.createElement(Foundation_upvr.View, {
		tag = "auto-xy col align-x-center gap-large";
	}, module)
end