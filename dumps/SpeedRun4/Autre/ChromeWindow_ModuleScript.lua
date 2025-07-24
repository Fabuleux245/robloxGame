-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:55
-- Luau version 6, Types version 3
-- Time taken: 0.012274 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local ReactUtils = require(Songbird.Parent.ReactUtils)
local tbl_2_upvr = {
	Loading = "Loading";
	Unverified = "Unverified";
	MeetsCriteria = "MeetsCriteria";
}
local tbl_6_upvr = {
	isLoading = false;
	maxSize = Vector2.new(300, math.huge);
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local createNextOrder_upvr = ReactUtils.createNextOrder
local useMemo_upvr = React_upvr.useMemo
local useLocalization_upvr = require(Songbird.Parent.Localization).Hooks.useLocalization
local useCallback_upvr = React_upvr.useCallback
local useState_upvr = React_upvr.useState
local sendChromeWindowAnalytics_upvr = require(Songbird.Analytics.sendChromeWindowAnalytics)
local AnalyticActions_upvr = require(Songbird.Analytics.AnalyticActions)
local getFFlagSongbirdPopoverSubmenu_upvr = require(Songbird.Flags.getFFlagSongbirdPopoverSubmenu)
local useRef_upvr = React_upvr.useRef
local useEventConnection_upvr = ReactUtils.useEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
local isInputInsideObject_upvr = require(Songbird.Internal.isInputInsideObject)
local Foundation_upvr = require(Songbird.Parent.Foundation)
local LikeButton_upvr = require(Songbird.Components.LikeButton)
local constants_upvr = require(Songbird.constants)
local ChromeWindowFrame_upvr = require(Songbird.Components.ChromeWindowFrame)
local TrackingAudioIcon_upvr = require(Songbird.Components.TrackingAudioIcon)
local MusicIcon_upvr = require(Songbird.Components.MusicIcon)
local MarqueeScroller_upvr = require(Songbird.Components.MarqueeScroller)
return function(arg1) -- Line 61, Named "ChromeWindow"
	--[[ Upvalues[23]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: createNextOrder_upvr (readonly)
		[4]: useMemo_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: useCallback_upvr (readonly)
		[8]: useState_upvr (readonly)
		[9]: sendChromeWindowAnalytics_upvr (readonly)
		[10]: AnalyticActions_upvr (readonly)
		[11]: getFFlagSongbirdPopoverSubmenu_upvr (readonly)
		[12]: useRef_upvr (readonly)
		[13]: useEventConnection_upvr (readonly)
		[14]: UserInputService_upvr (readonly)
		[15]: isInputInsideObject_upvr (readonly)
		[16]: Foundation_upvr (readonly)
		[17]: React_upvr (readonly)
		[18]: LikeButton_upvr (readonly)
		[19]: constants_upvr (readonly)
		[20]: ChromeWindowFrame_upvr (readonly)
		[21]: TrackingAudioIcon_upvr (readonly)
		[22]: MusicIcon_upvr (readonly)
		[23]: MarqueeScroller_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_6_upvr, arg1)
	local var7_result1 = createNextOrder_upvr()
	local function var28() -- Line 65
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: tbl_2_upvr (copied, readonly)
		]]
		if any_join_result1_upvr.isLoading then
			return tbl_2_upvr.Loading
		end
		if any_join_result1_upvr.song then
			if any_join_result1_upvr.song.meetsCriteria then
				return tbl_2_upvr.MeetsCriteria
			end
			return tbl_2_upvr.Unverified
		end
		return tbl_2_upvr.Loading
	end
	local useMemo_upvr_result1 = useMemo_upvr(var28, {any_join_result1_upvr.isLoading, any_join_result1_upvr.song})
	local var31
	if useMemo_upvr_result1 == tbl_2_upvr.MeetsCriteria then
		var28 = false
	else
		var28 = true
	end
	local var9_result1 = useLocalization_upvr({
		windowTitle = "CoreScripts.TopBar.Music";
		musicLoading = "CoreScripts.TopBar.MusicLoading";
		musicUnverified = "CoreScripts.TopBar.MusicNotVerified";
		report = "CoreScripts.TopBar.Label.Report";
	})
	local useState_upvr_result1_upvr, useState_upvr_result2_upvr = useState_upvr(false)
	local useCallback_upvr_result1_upvr = useCallback_upvr(function() -- Line 104
		--[[ Upvalues[3]:
			[1]: useState_upvr_result2_upvr (readonly)
			[2]: sendChromeWindowAnalytics_upvr (copied, readonly)
			[3]: AnalyticActions_upvr (copied, readonly)
		]]
		useState_upvr_result2_upvr(function(arg1_2) -- Line 105
			return not arg1_2
		end)
		sendChromeWindowAnalytics_upvr({
			action = AnalyticActions_upvr.SeeMore;
		})
	end, {})
	if not getFFlagSongbirdPopoverSubmenu_upvr() then
		local var15_result1_upvw = useRef_upvr(nil)
		useEventConnection_upvr(UserInputService_upvr.InputBegan, function(arg1_3) -- Line 114
			--[[ Upvalues[4]:
				[1]: useState_upvr_result1_upvr (readonly)
				[2]: isInputInsideObject_upvr (copied, readonly)
				[3]: var15_result1_upvw (read and write)
				[4]: useState_upvr_result2_upvr (readonly)
			]]
			if useState_upvr_result1_upvr and not isInputInsideObject_upvr(arg1_3.Position, var15_result1_upvw.current) then
				useState_upvr_result2_upvr(false)
			end
		end, {useState_upvr_result1_upvr})
	end
	local function var47(arg1_4) -- Line 123
		--[[ Upvalues[3]:
			[1]: Foundation_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: useCallback_upvr_result1_upvr (readonly)
		]]
		if arg1_4 == Foundation_upvr.Enums.ControlState.Pressed then
			if any_join_result1_upvr.onReport then
				any_join_result1_upvr.onReport()
			end
			useCallback_upvr_result1_upvr()
		end
	end
	local var49
	if not var28 then
		var47 = {}
		local tbl_11 = {}
		var31 = any_join_result1_upvr.song
		if var31 then
			var31 = any_join_result1_upvr.song
			var49 = var31.isLiked
		else
			var49 = false
		end
		tbl_11.isFavorited = var49
		tbl_11.onFavorite = useCallback_upvr(function() -- Line 90
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if any_join_result1_upvr.onToggleLike then
				any_join_result1_upvr.onToggleLike()
			end
		end, {any_join_result1_upvr.onToggleLike})
		var47.LikeButton = React_upvr.createElement(LikeButton_upvr, tbl_11)
	else
		var47 = {}
	end
	local tbl_5 = {}
	local var52
	local tbl_8 = {}
	var31 = "auto-y col gap-small"
	tbl_8.tag = var31
	var31 = UDim2.fromOffset(constants_upvr.SUBMENU_WIDTH, 0)
	tbl_8.Size = var31
	var31 = {}
	var31.MaxSize = Vector2.new(constants_upvr.SUBMENU_WIDTH, math.huge)
	tbl_8.sizeConstraint = var31
	var31 = {}
	var31.ReportButton = React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-y row gap-small align-y-center radius-medium";
		onStateChanged = useCallback_upvr(var47, {any_join_result1_upvr.onReport});
	}, {
		Icon = React_upvr.createElement(Foundation_upvr.Icon, {
			name = "icons/actions/feedback";
			LayoutOrder = var7_result1();
		});
		Label = React_upvr.createElement(Foundation_upvr.Text, {
			tag = "auto-xy text-title-medium content-emphasis";
			Text = var9_result1.report;
			LayoutOrder = var7_result1();
		});
	})
	tbl_5.Menu = React_upvr.createElement(Foundation_upvr.View, tbl_8, var31)
	local module = {}
	var31 = var9_result1.windowTitle
	module.title = var31
	var31 = any_join_result1_upvr.maxSize
	module.maxSize = var31
	module.actions = var47
	if useMemo_upvr_result1 == "MeetsCriteria" or useMemo_upvr_result1 == "Unverified" then
		var31 = tbl_5
	else
		var31 = nil
	end
	module.submenu = var31
	module.isSubMenuOpen = useState_upvr_result1_upvr
	module.onToggleSubMenu = useCallback_upvr_result1_upvr
	var31 = any_join_result1_upvr.onClose
	module.onClose = var31
	if getFFlagSongbirdPopoverSubmenu_upvr() then
		var31 = nil
	else
		var31 = var15_result1_upvw
	end
	module.overflowButtonRef = var31
	var31 = {}
	local tbl_4 = {}
	if useMemo_upvr_result1 ~= tbl_2_upvr.MeetsCriteria then
		local tbl_16 = {
			tag = "auto-x size-0-full gap-medium row align-y-center";
		}
		local tbl = {}
		local tbl_3 = {}
		if useMemo_upvr_result1 ~= tbl_2_upvr.Unverified then
			var52 = false
		else
			var52 = true
		end
		tbl_3.isMoving = var52
		tbl.Icon = React_upvr.createElement(TrackingAudioIcon_upvr, tbl_3)
		local tbl_15 = {}
		var52 = "auto-xy text-body-medium content-emphasis shrink text-wrap text-align-x-left text-align-y-center"
		tbl_15.tag = var52
		if useMemo_upvr_result1 == tbl_2_upvr.Unverified then
			var52 = var9_result1.musicUnverified
		else
			var52 = var9_result1.musicLoading
		end
		tbl_15.Text = var52
		var52 = var7_result1()
		tbl_15.LayoutOrder = var52
		tbl.Alert = React_upvr.createElement(Foundation_upvr.Text, tbl_15)
	else
	end
	tbl_4.InvalidAudio = nil
	local var65
	if useMemo_upvr_result1 == tbl_2_upvr.MeetsCriteria then
		local tbl_7 = {}
		local tbl_14 = {}
		var52 = var7_result1()
		tbl_14.layoutOrder = var52
		tbl_7.Icon = React_upvr.createElement(MusicIcon_upvr, tbl_14)
		local tbl_12 = {}
		var52 = "auto-xy col gap-xsmall shrink clip"
		tbl_12.tag = var52
		var52 = var7_result1()
		tbl_12.LayoutOrder = var52
		var52 = {}
		local tbl_9 = {}
		if var28 then
			var65 = 0
		else
			var65 = nil
		end
		tbl_9.speed = var65
		var65 = var7_result1()
		tbl_9.LayoutOrder = var65
		var65 = {}
		local tbl_13 = {
			tag = "auto-xy shrink text-title-medium content-emphasis";
		}
		if any_join_result1_upvr.song then
		else
		end
		tbl_13.Text = ""
		var65.Label = React_upvr.createElement(Foundation_upvr.Text, tbl_13)
		var52.Title = React_upvr.createElement(MarqueeScroller_upvr, tbl_9, var65)
		local tbl_10 = {}
		var65 = "auto-xy shrink text-body-small content-default"
		tbl_10.tag = var65
		tbl_10.Text = useMemo_upvr(function() -- Line 96
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			if any_join_result1_upvr.song then
				return table.concat(any_join_result1_upvr.song.artists, ", ")
			end
			return nil
		end, {any_join_result1_upvr.song})
		var65 = Enum.TextTruncate.AtEnd
		tbl_10.TextTruncate = var65
		var65 = var7_result1()
		tbl_10.LayoutOrder = var65
		var52.Artists = React_upvr.createElement(Foundation_upvr.Text, tbl_10)
		tbl_7.SongInfo = React_upvr.createElement(Foundation_upvr.View, tbl_12, var52)
	end
	tbl_4.NowPlaying = React_upvr.createElement(Foundation_upvr.View, {
		tag = "auto-xy row gap-medium flex-between align-y-center";
	}, tbl_7)
	var31.Body = React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.new(1, 0, 0, constants_upvr.WINDOW_HEIGHT);
		tag = "col auto-x align-y-center";
	}, tbl_4)
	return React_upvr.createElement(ChromeWindowFrame_upvr, module, var31)
end