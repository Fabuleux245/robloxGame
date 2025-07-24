-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:22
-- Luau version 6, Types version 3
-- Time taken: 0.002616 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local RoactUtils = require(Parent.RoactUtils)
local VideoUtils = require(Parent.VideoUtils)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local FetchGamePlayabilityAndProductInfo_upvr = require(Parent.GameDetailRodux).FetchGamePlayabilityAndProductInfo
local useIsVideoEligible_upvr = require(GameTile.Video.useIsVideoEligible)
local React_upvr = require(Parent.React)
local RetrievalStatus_upvr = require(Parent.Http).Enum.RetrievalStatus
local VideoEndReason_upvr = VideoUtils.AnalyticsEnums.VideoEndReason
local VideoPlaybackDetector_upvr = VideoUtils.VideoPlaybackDetector
local FFlagLuaAppEdpMediaGalleryVideoPreview_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpMediaGalleryVideoPreview
return function(arg1) -- Line 39, Named "GameVideoPlaybackDetector"
	--[[ Upvalues[11]:
		[1]: useDispatch_upvr (readonly)
		[2]: useRoactService_upvr (readonly)
		[3]: RoactNetworking_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: FetchGamePlayabilityAndProductInfo_upvr (readonly)
		[6]: useIsVideoEligible_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: RetrievalStatus_upvr (readonly)
		[9]: VideoEndReason_upvr (readonly)
		[10]: VideoPlaybackDetector_upvr (readonly)
		[11]: FFlagLuaAppEdpMediaGalleryVideoPreview_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local var8_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 43
		--[[ Upvalues[2]:
			[1]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return FetchGamePlayabilityAndProductInfo_upvr.GetFetchingStatus(arg1_2, arg1.universeId)
	end)
	local module = {
		videoKey = arg1.videoKey;
		itemIndex = arg1.itemIndex;
		itemFrameRef = arg1.tileRef;
		isHoverSupported = arg1.isHoverSupported;
	}
	local isHovered = arg1.isHovered
	module.isHovered = isHovered
	if FFlagLuaAppEdpMediaGalleryVideoPreview_upvr then
		isHovered = arg1.autoplay
	else
		isHovered = nil
	end
	module.autoplay = isHovered
	module.videoPlaybackCoordinator = arg1.videoPlaybackCoordinator
	module.onPlaybackChange = arg1.onPlaybackChange
	module.videoAnalytics = arg1.videoAnalytics
	module.videoDwellTimeInSec = arg1.videoDwellTimeInSec
	module.videoVisiblePercent = arg1.videoVisiblePercent
	module.isVideoEligible = useIsVideoEligible_upvr(arg1.universeId)
	module.onVideoIneligible = React_upvr.useCallback(function(arg1_3) -- Line 49
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: RetrievalStatus_upvr (copied, readonly)
			[4]: VideoEndReason_upvr (copied, readonly)
		]]
		if arg1.videoAnalytics and var8_result1_upvr == RetrievalStatus_upvr.Done then
			arg1.videoAnalytics.reportVideoEnd(arg1.itemIndex, VideoEndReason_upvr.PlayabilityCheckFailed, arg1_3, -1)
		end
	end, {arg1.videoAnalytics, var8_result1_upvr})
	module.onPlaybackCandidate = React_upvr.useCallback(function() -- Line 55
		--[[ Upvalues[6]:
			[1]: var8_result1_upvr (readonly)
			[2]: RetrievalStatus_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
			[5]: useRoactService_upvr_result1_upvr (readonly)
			[6]: arg1 (readonly)
		]]
		if var8_result1_upvr == RetrievalStatus_upvr.NotStarted or var8_result1_upvr == RetrievalStatus_upvr.Failed then
			useDispatch_upvr_result1_upvr(FetchGamePlayabilityAndProductInfo_upvr.Fetch(useRoactService_upvr_result1_upvr, arg1.universeId))
		end
	end, {arg1.universeId, var8_result1_upvr, useDispatch_upvr_result1_upvr, useRoactService_upvr_result1_upvr})
	return React_upvr.createElement(VideoPlaybackDetector_upvr, module)
end