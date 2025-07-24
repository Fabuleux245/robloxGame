-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:09
-- Luau version 6, Types version 3
-- Time taken: 0.004039 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local function _(arg1, arg2) -- Line 22, Named "getGameSetTypeId"
	if arg1 ~= nil then
		if arg2 then
			return arg1.topicId
		end
		return arg1.gameSetTypeId
	end
	return nil
end
local function _(arg1, arg2) -- Line 34, Named "getGameSetTargetId"
	if not arg2 and arg1 ~= nil then
		return arg1.gameSetTargetId
	end
	return nil
end
local function _(arg1, arg2) -- Line 44, Named "getAppliedFilters"
	if not arg2 and arg1 then
		return arg1.appliedFilters
	end
	return nil
end
local useStore_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useStore
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactAnalyticsCommonGameEvents_upvr = require(Parent.RoactServiceTags).RoactAnalyticsCommonGameEvents
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local React_upvr = require(Parent.React)
local mutedError_upvr = require(Parent.Loggers).mutedError
local FFlagEnableAdDataReferralEventIngest_upvr = require(Parent.SharedFlags).FFlagEnableAdDataReferralEventIngest
local gamePlayIntent_upvr = require(Parent.DiscoveryAnalytics).Events.gamePlayIntent
local FFlagEnableAdDataPlayIntentEventIngest_upvr = require(Parent.SharedFlags).FFlagEnableAdDataPlayIntentEventIngest
local feedScroll_upvr = require(Parent.ScrollTelemetry).feedScroll
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 57, Named "useGameSortAnalytics"
	--[[ Upvalues[10]:
		[1]: useStore_upvr (readonly)
		[2]: useRoactService_upvr (readonly)
		[3]: RoactAnalyticsCommonGameEvents_upvr (readonly)
		[4]: AppEventIngestService_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: mutedError_upvr (readonly)
		[7]: FFlagEnableAdDataReferralEventIngest_upvr (readonly)
		[8]: gamePlayIntent_upvr (readonly)
		[9]: FFlagEnableAdDataPlayIntentEventIngest_upvr (readonly)
		[10]: feedScroll_upvr (readonly)
	]]
	local var2_result1_upvr = useStore_upvr()
	local useRoactService_upvr_result1_upvr_2 = useRoactService_upvr(RoactAnalyticsCommonGameEvents_upvr)
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	local var15_upvr
	if arg1 ~= nil then
		if arg2 then
			var15_upvr = arg1.topicId
		else
			var15_upvr = arg1.gameSetTypeId
		end
	else
		var15_upvr = nil
		local var16_upvr
	end
	if not arg2 and arg1 ~= nil then
		var16_upvr = arg1.gameSetTargetId
	else
		var16_upvr = nil
		local var17_upvr
	end
	if not arg2 and arg1 then
		var17_upvr = arg1.appliedFilters
	else
		var17_upvr = nil
	end
	local module_4 = {useRoactService_upvr_result1_upvr_2}
	module_4[2] = arg3
	module_4[3] = arg4
	module_4[4] = var15_upvr
	module_4[5] = var16_upvr
	module_4[6] = arg6
	local module_2 = {}
	module_2[1] = arg3
	module_2[2] = useRoactService_upvr_result1_upvr
	module_2[3] = var15_upvr
	module_2[4] = var16_upvr
	local module = {useRoactService_upvr_result1_upvr_2, var15_upvr, var16_upvr}
	module[4] = arg3
	local module_3 = {useRoactService_upvr_result1_upvr}
	module_3[2] = arg3
	module_3[3] = arg4
	module_3[4] = arg5
	module_3[5] = var15_upvr
	module_3[6] = var16_upvr
	module_3[7] = var2_result1_upvr
	return React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 75
		--[[ Upvalues[9]:
			[1]: arg6 (readonly)
			[2]: mutedError_upvr (copied, readonly)
			[3]: useRoactService_upvr_result1_upvr_2 (readonly)
			[4]: var15_upvr (readonly)
			[5]: var16_upvr (readonly)
			[6]: arg3 (readonly)
			[7]: FFlagEnableAdDataReferralEventIngest_upvr (copied, readonly)
			[8]: arg4 (readonly)
			[9]: var17_upvr (readonly)
		]]
		if arg1_2 ~= nil then
			local var21
			if arg6 ~= nil then
				local var22 = arg6[arg1_2]
				if not var22 then
					mutedError_upvr("reportGameDetailOpened requires a valid entry")
				end
				if FFlagEnableAdDataReferralEventIngest_upvr then
					var21 = var22.adId
				else
					var21 = nil
				end
				useRoactService_upvr_result1_upvr_2.reportOpenGameDetailWithId(var22.placeId, var15_upvr, var16_upvr, arg3, arg1_2, #arg6, var22.isSponsored, var21, var22.universeId, arg4, arg2_2, var17_upvr, var22.topicContentsIndex or arg1_2)
			end
		end
	end, module_4), React_upvr.useCallback(function(arg1_3, arg2_3, arg3_2, arg4_2, arg5_2) -- Line 111
		--[[ Upvalues[7]:
			[1]: gamePlayIntent_upvr (copied, readonly)
			[2]: useRoactService_upvr_result1_upvr (readonly)
			[3]: arg3 (readonly)
			[4]: var15_upvr (readonly)
			[5]: var16_upvr (readonly)
			[6]: var17_upvr (readonly)
			[7]: FFlagEnableAdDataPlayIntentEventIngest_upvr (copied, readonly)
		]]
		local tbl_2 = {
			placeId = arg1_3.placeId;
			rootPlaceId = tonumber(arg1_3.placeId);
			universeId = arg1_3.universeId;
		}
		local tostring_result1 = tostring(arg3)
		tbl_2.sortIndex = tostring_result1
		if arg5_2 then
			tostring_result1 = tostring(arg5_2)
		else
			tostring_result1 = nil
		end
		tbl_2.sortEntryIndex = tostring_result1
		tbl_2.referralSource = arg2_3
		tostring_result1 = var15_upvr
		tbl_2.gameSetTypeId = tostring_result1
		tostring_result1 = var16_upvr
		tbl_2.gameSetTargetId = tostring_result1
		tostring_result1 = var17_upvr
		tbl_2.appliedFilters = tostring_result1
		tostring_result1 = arg1_3.topicContentsIndex or arg5_2
		tbl_2.topicDataPosition = tostring_result1
		if FFlagEnableAdDataPlayIntentEventIngest_upvr then
			tostring_result1 = arg1_3.adId
		else
			tostring_result1 = nil
		end
		tbl_2.nativeAdData = tostring_result1
		gamePlayIntent_upvr(useRoactService_upvr_result1_upvr, arg4_2, tbl_2)
	end, module_2), React_upvr.useCallback(function() -- Line 136
		--[[ Upvalues[4]:
			[1]: useRoactService_upvr_result1_upvr_2 (readonly)
			[2]: var15_upvr (readonly)
			[3]: var16_upvr (readonly)
			[4]: arg3 (readonly)
		]]
		useRoactService_upvr_result1_upvr_2.reportSeeAllWithId(var15_upvr, var16_upvr, arg3)
	end, module), React_upvr.useCallback(function(arg1_4, arg2_4, arg3_3) -- Line 149
		--[[ Upvalues[9]:
			[1]: arg5 (readonly)
			[2]: mutedError_upvr (copied, readonly)
			[3]: var2_result1_upvr (readonly)
			[4]: arg3 (readonly)
			[5]: var15_upvr (readonly)
			[6]: var16_upvr (readonly)
			[7]: feedScroll_upvr (copied, readonly)
			[8]: useRoactService_upvr_result1_upvr (readonly)
			[9]: arg4 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var31
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		local var32 = arg5
		local current = var32.current
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 24. Error Block 22 start (CF ANALYSIS FAILED)
		var31 = `Direction {current.Name} is an unsupported option for feedScroll event`
		mutedError_upvr(var31)
		local ScreenSize = var2_result1_upvr:getState().ScreenSize
		local tbl = {}
		tbl.distance = arg1_4
		var31 = ScreenSize.X
		tbl.screenSizeX = var31
		var31 = ScreenSize.Y
		tbl.screenSizeY = var31
		tbl.scrollAreaSize = var32
		if 0 < var32 then
			var31 = arg1_4 / var32
		else
			var31 = nil
		end
		tbl.scrollDepth = var31
		if 0 < var32 then
		else
		end
		tbl.startDepth = nil
		tbl.startPos = arg3_3
		tbl.scrollDuration = arg2_4
		tbl.sortPos = arg3
		tbl.gameSetTypeId = var15_upvr
		tbl.gameSetTargetId = var16_upvr
		feedScroll_upvr(useRoactService_upvr_result1_upvr, arg4, current, tbl)
		-- KONSTANTERROR: [37] 24. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [100] 68. Error Block 19 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [100] 68. Error Block 19 end (CF ANALYSIS FAILED)
	end, module_3)
end