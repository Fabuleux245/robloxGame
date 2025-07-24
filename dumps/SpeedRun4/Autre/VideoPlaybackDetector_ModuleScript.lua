-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:57
-- Luau version 6, Types version 3
-- Time taken: 0.007002 seconds

local VideoUtils = script:FindFirstAncestor("VideoUtils")
local Parent = VideoUtils.Parent
local Responsive_upvr = require(Parent.Responsive)
local VideoPlaybackCoordinator_upvr = require(VideoUtils.VideoPlaybackCoordinator)
local React_upvr = require(Parent.React)
local FFlagLuaAppEdpMediaGalleryVideoPreview_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpMediaGalleryVideoPreview
local useLastInput_upvr = Responsive_upvr.useLastInput
local useNavigationFocus_upvr = require(Parent.Navigation).useNavigationFocus
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local VideoEndReason_upvr = require(VideoUtils.Analytics.Enums).VideoEndReason
local FFlagLuaAppEdpMediaGalleryFullScreen_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpMediaGalleryFullScreen
return function(arg1) -- Line 57, Named "VideoPlaybackDetector"
	--[[ Upvalues[9]:
		[1]: VideoPlaybackCoordinator_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: FFlagLuaAppEdpMediaGalleryVideoPreview_upvr (readonly)
		[4]: useLastInput_upvr (readonly)
		[5]: useNavigationFocus_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: VideoEndReason_upvr (readonly)
		[8]: Responsive_upvr (readonly)
		[9]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local videoPlaybackCoordinator_upvr = arg1.videoPlaybackCoordinator
	if not videoPlaybackCoordinator_upvr then
		videoPlaybackCoordinator_upvr = VideoPlaybackCoordinator_upvr.default
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	if FFlagLuaAppEdpMediaGalleryVideoPreview_upvr then
		local _
	else
	end
	local useNavigationFocus_upvr_result1_upvr = useNavigationFocus_upvr()
	local var9_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 66
		return arg1_2.ScreenSize
	end)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 70
		return arg1_3.TopBar.topBarHeight
	end)
	local var9_result1_upvr_2 = useSelector_upvr(function(arg1_4) -- Line 74
		return arg1_4.GlobalGuiInset
	end)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: var9_result1_upvr (readonly)
			[3]: var9_result1_upvr_2 (readonly)
		]]
		return {
			min = Vector2.new(0, useSelector_upvr_result1_upvr);
			max = Vector2.new(var9_result1_upvr.X, var9_result1_upvr.Y - var9_result1_upvr_2.bottom);
		}
	end, {useSelector_upvr_result1_upvr, var9_result1_upvr, var9_result1_upvr_2})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5) -- Line 86
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: videoPlaybackCoordinator_upvr (readonly)
		]]
		if arg1.onPlaybackCandidate then
			arg1.onPlaybackCandidate()
		end
		if arg1.isVideoEligible then
			videoPlaybackCoordinator_upvr:requestPlayback(arg1.videoKey, arg1_5, arg1.videoDwellTimeInSec, arg1.itemIndex, arg1.videoAnalytics)
		elseif arg1.onVideoIneligible then
			arg1.onVideoIneligible(videoPlaybackCoordinator_upvr.currentPlaybackSessionId)
		end
	end, {arg1.videoKey, arg1.itemIndex, arg1.videoAnalytics, arg1.isVideoEligible, arg1.onVideoIneligible, arg1.onPlaybackCandidate, arg1.videoDwellTimeInSec, videoPlaybackCoordinator_upvr})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_6) -- Line 116
		--[[ Upvalues[2]:
			[1]: videoPlaybackCoordinator_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		videoPlaybackCoordinator_upvr:cancelPlayback(arg1.videoKey, arg1_6, arg1.itemIndex, arg1.videoAnalytics)
	end, {arg1.videoKey, arg1.itemIndex, arg1.videoAnalytics, videoPlaybackCoordinator_upvr})
	React_upvr.useEffect(function() -- Line 128
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: videoPlaybackCoordinator_upvr (readonly)
		]]
		local function _(arg1_7) -- Line 129, Named "checkAndUpdateState"
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: any_useState_result1_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
			]]
			local var34
			if arg1_7 ~= arg1.videoKey then
				var34 = false
			else
				var34 = true
			end
			if var34 ~= any_useState_result1_upvr then
				arg1.onPlaybackChange(var34)
				any_useState_result2_upvr(var34)
			end
		end
		local var38 = videoPlaybackCoordinator_upvr
		if var38.playingVideoKey ~= arg1.videoKey then
			var38 = false
		else
			var38 = true
		end
		if var38 ~= any_useState_result1_upvr then
			arg1.onPlaybackChange(var38)
			any_useState_result2_upvr(var38)
		end
		var38 = videoPlaybackCoordinator_upvr
		local any_connect_result1_upvw = var38.changed:connect(function(arg1_8) -- Line 140
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: any_useState_result1_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
			]]
			local var37
			if arg1_8 ~= arg1.videoKey then
				var37 = false
			else
				var37 = true
			end
			if var37 ~= any_useState_result1_upvr then
				arg1.onPlaybackChange(var37)
				any_useState_result2_upvr(var37)
			end
		end)
		function var38() -- Line 144
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvw (read and write)
			]]
			if any_connect_result1_upvw ~= nil then
				any_connect_result1_upvw:disconnect()
				any_connect_result1_upvw = nil
			end
		end
		return var38
	end, {arg1.videoKey, arg1.onPlaybackChange, videoPlaybackCoordinator_upvr, any_useState_result1_upvr})
	local tbl_3 = {}
	local isHoverSupported = arg1.isHoverSupported
	tbl_3[1] = isHoverSupported
	tbl_3[2] = arg1.isHovered
	tbl_3[3] = any_useCallback_result1_upvr
	tbl_3[4] = any_useCallback_result1_upvr_2
	React_upvr.useEffect(function() -- Line 154
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
			[3]: any_useCallback_result1_upvr_2 (readonly)
			[4]: VideoEndReason_upvr (copied, readonly)
		]]
		if not arg1.isHoverSupported then
		else
			if arg1.isHovered then
				any_useCallback_result1_upvr(false)
				return
			end
			any_useCallback_result1_upvr_2(VideoEndReason_upvr.Unhovered)
		end
	end, tbl_3)
	local var7_result1_upvr = useLastInput_upvr()
	local tbl = {}
	if FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
		isHoverSupported = arg1.isItemOccluded
	else
		isHoverSupported = nil
	end
	if FFlagLuaAppEdpMediaGalleryVideoPreview_upvr then
		-- KONSTANTWARNING: GOTO [154] #119
	end
	if FFlagLuaAppEdpMediaGalleryVideoPreview_upvr then
	else
	end
	tbl[1] = isHoverSupported
	tbl[2] = nil
	tbl[3] = arg1.itemFrameRef
	tbl[4] = arg1.videoVisiblePercent
	tbl[5] = var7_result1_upvr
	tbl[6] = useNavigationFocus_upvr_result1_upvr
	tbl[7] = any_useMemo_result1_upvr
	tbl[8] = videoPlaybackCoordinator_upvr
	tbl[9] = any_useCallback_result1_upvr
	tbl[10] = any_useCallback_result1_upvr_2
	React_upvr.useEffect(function() -- Line 175
		--[[ Upvalues[11]:
			[1]: FFlagLuaAppEdpMediaGalleryVideoPreview_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: Responsive_upvr (copied, readonly)
			[5]: videoPlaybackCoordinator_upvr (readonly)
			[6]: useNavigationFocus_upvr_result1_upvr (readonly)
			[7]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (copied, readonly)
			[8]: any_useMemo_result1_upvr (readonly)
			[9]: any_useCallback_result1_upvr (readonly)
			[10]: any_useCallback_result1_upvr_2 (readonly)
			[11]: VideoEndReason_upvr (copied, readonly)
		]]
		if FFlagLuaAppEdpMediaGalleryVideoPreview_upvr then
			if not arg1.autoplay then
				do
					return nil
				end
				-- KONSTANTWARNING: GOTO [19] #16
			end
		elseif var7_result1_upvr ~= Responsive_upvr.Input.Touch then
			return nil
		end
		local tbl_2_upvw = {}
		local var47
		if arg1.itemFrameRef.current ~= nil then
			local current = arg1.itemFrameRef.current
			local var49_upvw
			local function _() -- Line 193, Named "requestPlaybackIfEligible"
				--[[ Upvalues[9]:
					[1]: var49_upvw (read and write)
					[2]: videoPlaybackCoordinator_upvr (copied, readonly)
					[3]: useNavigationFocus_upvr_result1_upvr (copied, readonly)
					[4]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (copied, readonly)
					[5]: arg1 (copied, readonly)
					[6]: any_useMemo_result1_upvr (copied, readonly)
					[7]: any_useCallback_result1_upvr (copied, readonly)
					[8]: any_useCallback_result1_upvr_2 (copied, readonly)
					[9]: VideoEndReason_upvr (copied, readonly)
				]]
				var49_upvw = tick()
				local var50
				if FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
					var50 = arg1.isItemOccluded
				else
					var50 = nil
				end
				if videoPlaybackCoordinator_upvr:isPlaybackCandidate(useNavigationFocus_upvr_result1_upvr, var50, arg1.itemFrameRef, any_useMemo_result1_upvr, arg1.videoVisiblePercent) then
					any_useCallback_result1_upvr(true)
				else
					var50 = VideoEndReason_upvr
					any_useCallback_result1_upvr_2(var50.ExitViewport)
				end
			end
			local var51_upvw
			local function onItemFrameLayoutChange() -- Line 211
				--[[ Upvalues[10]:
					[1]: var51_upvw (read and write)
					[2]: var49_upvw (read and write)
					[3]: videoPlaybackCoordinator_upvr (copied, readonly)
					[4]: useNavigationFocus_upvr_result1_upvr (copied, readonly)
					[5]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (copied, readonly)
					[6]: arg1 (copied, readonly)
					[7]: any_useMemo_result1_upvr (copied, readonly)
					[8]: any_useCallback_result1_upvr (copied, readonly)
					[9]: any_useCallback_result1_upvr_2 (copied, readonly)
					[10]: VideoEndReason_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var52
				if var52 ~= nil then
				else
					var52 = 0
					if var49_upvw ~= nil then
						var51_upvw = var49_upvw + 0.5
						var52 = var51_upvw - tick()
					end
					if 0 < var52 then
						task.delay(var52, function() -- Line 224
							--[[ Upvalues[10]:
								[1]: var51_upvw (copied, read and write)
								[2]: var49_upvw (copied, read and write)
								[3]: videoPlaybackCoordinator_upvr (copied, readonly)
								[4]: useNavigationFocus_upvr_result1_upvr (copied, readonly)
								[5]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (copied, readonly)
								[6]: arg1 (copied, readonly)
								[7]: any_useMemo_result1_upvr (copied, readonly)
								[8]: any_useCallback_result1_upvr (copied, readonly)
								[9]: any_useCallback_result1_upvr_2 (copied, readonly)
								[10]: VideoEndReason_upvr (copied, readonly)
							]]
							var51_upvw = nil
							var49_upvw = tick()
							local var54
							if FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
								var54 = arg1.isItemOccluded
							else
								var54 = nil
							end
							if videoPlaybackCoordinator_upvr:isPlaybackCandidate(useNavigationFocus_upvr_result1_upvr, var54, arg1.itemFrameRef, any_useMemo_result1_upvr, arg1.videoVisiblePercent) then
								any_useCallback_result1_upvr(true)
							else
								var54 = VideoEndReason_upvr
								any_useCallback_result1_upvr_2(var54.ExitViewport)
							end
						end)
						return
					end
					var51_upvw = nil
					var49_upvw = tick()
					if FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
					else
					end
					if videoPlaybackCoordinator_upvr:isPlaybackCandidate(useNavigationFocus_upvr_result1_upvr, nil, arg1.itemFrameRef, any_useMemo_result1_upvr, arg1.videoVisiblePercent) then
						any_useCallback_result1_upvr(true)
						return
					end
					any_useCallback_result1_upvr_2(VideoEndReason_upvr.ExitViewport)
				end
			end
			var49_upvw = tick()
			if FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
				var47 = arg1.isItemOccluded
			else
				var47 = nil
			end
			if videoPlaybackCoordinator_upvr:isPlaybackCandidate(useNavigationFocus_upvr_result1_upvr, var47, arg1.itemFrameRef, any_useMemo_result1_upvr, arg1.videoVisiblePercent) then
				any_useCallback_result1_upvr(true)
			else
				var47 = VideoEndReason_upvr
				any_useCallback_result1_upvr_2(var47.ExitViewport)
			end
			local tbl_4 = {}
			var47 = "AbsolutePosition"
			var47 = onItemFrameLayoutChange
			tbl_4[1] = current:GetPropertyChangedSignal(var47):Connect(var47)
			tbl_4[2] = current:GetPropertyChangedSignal("AbsoluteSize"):Connect(onItemFrameLayoutChange)
			tbl_2_upvw = tbl_4
		end
		return function() -- Line 242
			--[[ Upvalues[1]:
				[1]: tbl_2_upvw (read and write)
			]]
			for _, v in tbl_2_upvw do
				v:Disconnect()
			end
		end
	end, tbl)
	React_upvr.useEffect(function() -- Line 263
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr_2 (readonly)
			[2]: VideoEndReason_upvr (copied, readonly)
		]]
		return function() -- Line 264
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_2 (copied, readonly)
				[2]: VideoEndReason_upvr (copied, readonly)
			]]
			any_useCallback_result1_upvr_2(VideoEndReason_upvr.Unmounted)
		end
	end, {any_useCallback_result1_upvr_2})
end