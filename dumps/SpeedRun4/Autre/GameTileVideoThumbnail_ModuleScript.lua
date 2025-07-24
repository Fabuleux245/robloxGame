-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:11
-- Luau version 6, Types version 3
-- Time taken: 0.001976 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local Foundation = require(Parent.Foundation)
local SharedFlags_upvr = require(Parent.SharedFlags)
if require(Parent.SharedFlags).FFlagAddVideoDetectorWrapper_DEV then
	SharedFlags_upvr = require(Parent.VideoUtils).VideoPlaybackCoordinator
else
	SharedFlags_upvr = require(GameTile.Video.VideoPlaybackCoordinator)
end
local FFlagLuaAppUnifiedVideoPlayer_upvr = require(Parent.SharedFlags).FFlagLuaAppUnifiedVideoPlayer
local React_upvr = require(Parent.React)
local VideoPlayer_upvr = require(Parent.VideoUtils).VideoPlayer
local FFlagLuaAppUnifiedVideoPlayerMuteButton_upvr = SharedFlags_upvr.FFlagLuaAppUnifiedVideoPlayerMuteButton
local ArgCheck_upvr = require(Parent.ArgCheck)
local LoadableImage_upvr = require(Parent.UIBlox).App.Loading.LoadableImage
local Skeleton_upvr = Foundation.Skeleton
local Radius_upvr = Foundation.Enums.Radius
return function(arg1) -- Line 39, Named "GameTileVideoThumbnail"
	--[[ Upvalues[9]:
		[1]: FFlagLuaAppUnifiedVideoPlayer_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: SharedFlags_upvr (readonly)
		[4]: VideoPlayer_upvr (readonly)
		[5]: FFlagLuaAppUnifiedVideoPlayerMuteButton_upvr (readonly)
		[6]: ArgCheck_upvr (readonly)
		[7]: LoadableImage_upvr (readonly)
		[8]: Skeleton_upvr (readonly)
		[9]: Radius_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var13
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 62 start (CF ANALYSIS FAILED)
	local tbl = {}
	var13 = arg1.videoAnalytics
	tbl[1] = arg1.itemIndex
	tbl[2] = var13
	local module = {}
	var13 = arg1.video
	module.video = var13
	var13 = arg1.image
	module.thumbnail = var13
	var13 = arg1.playing
	module.shouldStartPlayback = var13
	if FFlagLuaAppUnifiedVideoPlayerMuteButton_upvr then
		var13 = true
	else
		var13 = nil
	end
	module.muted = var13
	module.looped = arg1.looped
	module.Size = arg1.Size
	if arg1.isTileContained then
	else
	end
	module.ScaleType = nil
	module.ZIndex = arg1.ZIndex
	module.cornerRadius = arg1.cornerRadius
	module.onVideoLoaded = React_upvr.useCallback(function(arg1_2, arg2) -- Line 41
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SharedFlags_upvr (copied, readonly)
		]]
		if arg1.videoAnalytics then
			arg1.videoAnalytics.reportVideoLoad(arg1.itemIndex, SharedFlags_upvr.default.currentPlaybackSessionId, arg1_2, arg2)
		end
	end, {arg1.itemIndex, arg1.videoAnalytics})
	module.onVideoLooped = React_upvr.useCallback(function() -- Line 52
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SharedFlags_upvr (copied, readonly)
		]]
		if arg1.videoAnalytics then
			arg1.videoAnalytics.reportVideoLoop(arg1.itemIndex, SharedFlags_upvr.default.currentPlaybackSessionId)
		end
	end, tbl)
	do
		return React_upvr.createElement(VideoPlayer_upvr, module)
	end
	-- KONSTANTERROR: [2] 3. Error Block 62 end (CF ANALYSIS FAILED)
end