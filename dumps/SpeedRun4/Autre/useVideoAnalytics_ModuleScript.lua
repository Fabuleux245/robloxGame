-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:21
-- Luau version 6, Types version 3
-- Time taken: 0.004396 seconds

local GameTile = script:FindFirstAncestor("GameTile")
local Parent = GameTile.Parent
local getGameTileLayoutData_upvr = require(GameTile.getGameTileLayoutData)
local DiscoveryAnalytics = require(GameTile.Parent.DiscoveryAnalytics)
local function _(arg1, arg2) -- Line 24, Named "getGameSortId"
	if arg1 ~= nil then
		if arg2 then
			return arg1.topicId
		end
		return arg1.gameSetTypeId
	end
	return nil
end
local function _(arg1, arg2) -- Line 36, Named "getVideoAssetId"
	--[[ Upvalues[1]:
		[1]: getGameTileLayoutData_upvr (readonly)
	]]
	local getGameTileLayoutData_upvr_result1_6 = getGameTileLayoutData_upvr(arg1, arg2)
	local var8 = getGameTileLayoutData_upvr_result1_6
	if var8 then
		var8 = getGameTileLayoutData_upvr_result1_6.primaryMediaAsset
		if var8 then
			var8 = getGameTileLayoutData_upvr_result1_6.primaryMediaAsset.wideVideoAssetId
		end
	end
	return var8
end
local React_upvr = require(Parent.React)
local mutedError_upvr = require(Parent.Loggers).mutedError
local discoveryVideoPlayEvent_upvr = DiscoveryAnalytics.Events.discoveryVideoPlayEvent
local discoveryVideoLoadEvent_upvr = DiscoveryAnalytics.Events.discoveryVideoLoadEvent
local discoveryVideoLoopEvent_upvr = DiscoveryAnalytics.Events.discoveryVideoLoopEvent
local discoveryVideoEndEvent_upvr = DiscoveryAnalytics.Events.discoveryVideoEndEvent
return function(arg1, arg2, arg3, arg4, arg5) -- Line 45, Named "useVideoAnalytics"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: mutedError_upvr (readonly)
		[3]: getGameTileLayoutData_upvr (readonly)
		[4]: discoveryVideoPlayEvent_upvr (readonly)
		[5]: discoveryVideoLoadEvent_upvr (readonly)
		[6]: discoveryVideoLoopEvent_upvr (readonly)
		[7]: discoveryVideoEndEvent_upvr (readonly)
	]]
	if arg1 ~= nil then
		if arg2 then
			local _ = arg1.topicId
		else
		end
	else
	end
	local var17_upvr
	local tbl_5 = {}
	tbl_5[1] = arg3
	tbl_5[2] = arg5
	tbl_5[3] = var17_upvr
	tbl_5[4] = arg4
	local tbl_3 = {}
	tbl_3[1] = arg3
	tbl_3[2] = arg5
	tbl_3[3] = var17_upvr
	tbl_3[4] = arg4
	local tbl_8 = {}
	tbl_8[1] = arg3
	tbl_8[2] = arg5
	tbl_8[3] = var17_upvr
	tbl_8[4] = arg4
	local tbl_6 = {}
	tbl_6[1] = arg3
	tbl_6[2] = arg5
	tbl_6[3] = var17_upvr
	tbl_6[4] = arg4
	return {
		reportVideoPlay = React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 54
			--[[ Upvalues[7]:
				[1]: arg5 (readonly)
				[2]: mutedError_upvr (copied, readonly)
				[3]: var17_upvr (readonly)
				[4]: getGameTileLayoutData_upvr (copied, readonly)
				[5]: discoveryVideoPlayEvent_upvr (copied, readonly)
				[6]: arg3 (readonly)
				[7]: arg4 (readonly)
			]]
			if arg1_2 ~= nil and arg5 ~= nil then
				local var23 = arg5[arg1_2]
				if not var23 then
					mutedError_upvr("reportVideoPlay requires a valid entry")
				end
				local getGameTileLayoutData_upvr_result1_4 = getGameTileLayoutData_upvr(var23, var17_upvr)
				local var25 = getGameTileLayoutData_upvr_result1_4
				if var25 then
					var25 = getGameTileLayoutData_upvr_result1_4.primaryMediaAsset
					if var25 then
						var25 = getGameTileLayoutData_upvr_result1_4.primaryMediaAsset.wideVideoAssetId
					end
				end
				if not var25 then
					mutedError_upvr("reportVideoPlay requires a valid videoAssetId")
				end
				local tbl_2 = {
					videoAssetId = var25;
					videoPlaybackSessionId = arg2_2 or "INVALID_SESSION_ID";
					universeId = var23.universeId;
					rootPlaceId = var23.placeId;
					gameSetTypeId = var17_upvr;
				}
				tbl_2.sortPos = arg4
				discoveryVideoPlayEvent_upvr(arg3, tbl_2)
			end
		end, tbl_5);
		reportVideoLoad = React_upvr.useCallback(function(arg1_3, arg2_3, arg3_2, arg4_2) -- Line 78
			--[[ Upvalues[7]:
				[1]: arg5 (readonly)
				[2]: mutedError_upvr (copied, readonly)
				[3]: var17_upvr (readonly)
				[4]: getGameTileLayoutData_upvr (copied, readonly)
				[5]: discoveryVideoLoadEvent_upvr (copied, readonly)
				[6]: arg3 (readonly)
				[7]: arg4 (readonly)
			]]
			if arg1_3 ~= nil and arg5 ~= nil then
				local var29 = arg5[arg1_3]
				if not var29 then
					mutedError_upvr("reportVideoLoad requires a valid entry")
				end
				local getGameTileLayoutData_upvr_result1_5 = getGameTileLayoutData_upvr(var29, var17_upvr)
				local var31 = getGameTileLayoutData_upvr_result1_5
				if var31 then
					var31 = getGameTileLayoutData_upvr_result1_5.primaryMediaAsset
					if var31 then
						var31 = getGameTileLayoutData_upvr_result1_5.primaryMediaAsset.wideVideoAssetId
					end
				end
				if not var31 then
					mutedError_upvr("reportVideoLoad requires a valid videoAssetId")
				end
				local tbl_9 = {
					videoAssetId = var31;
					videoPlaybackSessionId = arg2_3 or "INVALID_SESSION_ID";
				}
				tbl_9.totalDuration = arg3_2
				tbl_9.loadTime = arg4_2
				tbl_9.universeId = var29.universeId
				tbl_9.rootPlaceId = var29.placeId
				tbl_9.gameSetTypeId = var17_upvr
				tbl_9.sortPos = arg4
				discoveryVideoLoadEvent_upvr(arg3, tbl_9)
			end
		end, tbl_3);
		reportVideoLoop = React_upvr.useCallback(function(arg1_4, arg2_4) -- Line 105
			--[[ Upvalues[7]:
				[1]: arg5 (readonly)
				[2]: mutedError_upvr (copied, readonly)
				[3]: var17_upvr (readonly)
				[4]: getGameTileLayoutData_upvr (copied, readonly)
				[5]: discoveryVideoLoopEvent_upvr (copied, readonly)
				[6]: arg3 (readonly)
				[7]: arg4 (readonly)
			]]
			if arg1_4 ~= nil and arg5 ~= nil then
				local var35 = arg5[arg1_4]
				if not var35 then
					mutedError_upvr("reportVideoLoop requires a valid entry")
				end
				local getGameTileLayoutData_upvr_result1 = getGameTileLayoutData_upvr(var35, var17_upvr)
				local var37 = getGameTileLayoutData_upvr_result1
				if var37 then
					var37 = getGameTileLayoutData_upvr_result1.primaryMediaAsset
					if var37 then
						var37 = getGameTileLayoutData_upvr_result1.primaryMediaAsset.wideVideoAssetId
					end
				end
				if not var37 then
					mutedError_upvr("reportVideoLoop requires a valid videoAssetId")
				end
				local tbl_4 = {
					videoAssetId = var37;
					videoPlaybackSessionId = arg2_4 or "INVALID_SESSION_ID";
					universeId = var35.universeId;
					rootPlaceId = var35.placeId;
					gameSetTypeId = var17_upvr;
				}
				tbl_4.sortPos = arg4
				discoveryVideoLoopEvent_upvr(arg3, tbl_4)
			end
		end, tbl_8);
		reportVideoEnd = React_upvr.useCallback(function(arg1_5, arg2_5, arg3_3, arg4_3, arg5_2) -- Line 129
			--[[ Upvalues[7]:
				[1]: arg5 (readonly)
				[2]: mutedError_upvr (copied, readonly)
				[3]: var17_upvr (readonly)
				[4]: getGameTileLayoutData_upvr (copied, readonly)
				[5]: discoveryVideoEndEvent_upvr (copied, readonly)
				[6]: arg3 (readonly)
				[7]: arg4 (readonly)
			]]
			if arg1_5 ~= nil and arg5 ~= nil then
				local var41 = arg5[arg1_5]
				if not var41 then
					mutedError_upvr("reportVideoEnd requires a valid entry")
				end
				local var3_result1 = getGameTileLayoutData_upvr(var41, var17_upvr)
				local var43 = var3_result1
				if var43 then
					var43 = var3_result1.primaryMediaAsset
					if var43 then
						var43 = var3_result1.primaryMediaAsset.wideVideoAssetId
					end
				end
				if not var43 then
					mutedError_upvr("reportVideoEnd requires a valid videoAssetId")
				end
				local tbl = {
					videoAssetId = var43;
					videoPlaybackSessionId = arg3_3 or "INVALID_SESSION_ID";
				}
				tbl.endReason = arg2_5
				tbl.playbackTime = arg4_3
				tbl.universeId = var41.universeId
				tbl.rootPlaceId = var41.placeId
				tbl.gameSetTypeId = var17_upvr
				tbl.sortPos = arg4
				tbl.targetUniverseId = arg5_2
				discoveryVideoEndEvent_upvr(arg3, tbl)
			end
		end, tbl_6);
	}
end