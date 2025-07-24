-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:04
-- Luau version 6, Types version 3
-- Time taken: 0.007584 seconds

local LocalizationService_upvr = game:GetService("LocalizationService")
local AppStorageService_upvr = game:GetService("AppStorageService")
local Parent = script:FindFirstAncestor("GameCollections").Parent
local Cryo_upvr = require(Parent.Cryo)
local gameImpressionsEvent_upvr = require(script.Parent.gameImpressionsEvent)
local reportGameImpressionCounts_upvr = require(script.Parent.reportGameImpressionCounts)
local FFlagLuaAppGameImpressionsMobileAdsId_upvr = require(Parent.SharedFlags).FFlagLuaAppGameImpressionsMobileAdsId
local FFlagLuaAppUpdateSduiGameImpressions_upvr = require(Parent.SharedFlags).FFlagLuaAppUpdateSduiGameImpressions
local FFlagLuaAppGameTileWideVideoThumbnail_upvr = require(Parent.SharedFlags).FFlagLuaAppGameTileWideVideoThumbnail
local ArgCheck_upvr = require(Parent.ArgCheck)
local getGameTileLayoutData_upvr = require(Parent.GameTile).getGameTileLayoutData
local getValidTileBadges_upvr = require(Parent.GameTile).getValidTileBadges
local function addGameFields_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 21, Named "addGameFields"
	--[[ Upvalues[6]:
		[1]: FFlagLuaAppGameTileWideVideoThumbnail_upvr (readonly)
		[2]: ArgCheck_upvr (readonly)
		[3]: getGameTileLayoutData_upvr (readonly)
		[4]: FFlagLuaAppUpdateSduiGameImpressions_upvr (readonly)
		[5]: getValidTileBadges_upvr (readonly)
		[6]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 199 start (CF ANALYSIS FAILED)
	if FFlagLuaAppGameTileWideVideoThumbnail_upvr then
	else
	end
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 199 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [346] 254. Error Block 76 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [346] 254. Error Block 76 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 23. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [346.25]
	-- KONSTANTERROR: [36] 23. Error Block 6 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 214, Named "addMobileAdvertisingIdToEventParams"
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	local any_GetItem_result1_3 = AppStorageService_upvr:GetItem("MobileAdvertisingId")
	if any_GetItem_result1_3 and any_GetItem_result1_3 ~= "" then
		arg1.mobileAdvertisingId = any_GetItem_result1_3
	end
end
local FFlagLuaAppSduiMoreErrorLogs_upvr = require(Parent.SharedFlags).FFlagLuaAppSduiMoreErrorLogs
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local FeedItemRowDataHitCounter_upvr = require(script.Parent.FeedItemRowDataHitCounter)
local FeedItemRowDataMissingCounter_upvr = require(script.Parent.FeedItemRowDataMissingCounter)
return {
	sendFromTopicContents = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15) -- Line 221
		--[[ Upvalues[11]:
			[1]: FFlagLuaAppSduiMoreErrorLogs_upvr (readonly)
			[2]: LoggingProtocol_upvr (readonly)
			[3]: FeedItemRowDataHitCounter_upvr (readonly)
			[4]: FeedItemRowDataMissingCounter_upvr (readonly)
			[5]: addGameFields_upvr (readonly)
			[6]: Cryo_upvr (readonly)
			[7]: LocalizationService_upvr (readonly)
			[8]: FFlagLuaAppGameImpressionsMobileAdsId_upvr (readonly)
			[9]: AppStorageService_upvr (readonly)
			[10]: gameImpressionsEvent_upvr (readonly)
			[11]: reportGameImpressionCounts_upvr (readonly)
		]]
		if not arg1 or not arg2 then
			if FFlagLuaAppSduiMoreErrorLogs_upvr and arg15 then
				arg15(`Missing analytics service eventIngest: {arg1} appAnalytics: {arg2}`)
			end
		else
			if not arg3 or #arg3 == 0 then
				if FFlagLuaAppSduiMoreErrorLogs_upvr and arg15 then
					arg15(`Missing impressionsToSend or impressionsToSend == 0 {arg3}`)
				end
				return
			end
			if not arg4 or #arg4 == 0 then
				if FFlagLuaAppSduiMoreErrorLogs_upvr and arg15 then
					arg15(`Missing topicContentsEntries or topicContentsEntries == 0 {arg4}`)
				end
				return
			end
			if arg8 then
				LoggingProtocol_upvr.default:logRobloxTelemetryCounter(FeedItemRowDataHitCounter_upvr)
			else
				LoggingProtocol_upvr.default:logRobloxTelemetryCounter(FeedItemRowDataMissingCounter_upvr)
			end
			local addGameFields_upvr_result1, addGameFields_upvr_result2_2 = addGameFields_upvr(arg3, arg4, arg11, arg12, arg8, arg6)
			local tbl_2 = {}
			tbl_2.sortPos = arg7
			tbl_2.gameSetTypeId = arg6
			tbl_2.gameSetTargetId = arg9
			tbl_2.pageId = arg10
			tbl_2.componentType = arg13
			tbl_2.locale = LocalizationService_upvr.RobloxLocaleId
			tbl_2.appliedFilters = arg14
			local any_join_result1 = Cryo_upvr.Dictionary.join(addGameFields_upvr_result1, tbl_2)
			if FFlagLuaAppGameImpressionsMobileAdsId_upvr then
				local any_GetItem_result1_5 = AppStorageService_upvr:GetItem("MobileAdvertisingId")
				if any_GetItem_result1_5 and any_GetItem_result1_5 ~= "" then
					any_join_result1.mobileAdvertisingId = any_GetItem_result1_5
				end
			end
			gameImpressionsEvent_upvr(arg1, arg5, any_join_result1)
			reportGameImpressionCounts_upvr(arg2, arg5, addGameFields_upvr_result2_2)
		end
	end;
	sendFromSearch = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 287
		--[[ Upvalues[7]:
			[1]: addGameFields_upvr (readonly)
			[2]: LocalizationService_upvr (readonly)
			[3]: Cryo_upvr (readonly)
			[4]: FFlagLuaAppGameImpressionsMobileAdsId_upvr (readonly)
			[5]: AppStorageService_upvr (readonly)
			[6]: gameImpressionsEvent_upvr (readonly)
			[7]: reportGameImpressionCounts_upvr (readonly)
		]]
		if not arg1 or not arg2 then
		else
			if not arg3 or #arg3 == 0 then return end
			if not arg4 or #arg4 == 0 then return end
			local addGameFields_result1_2, addGameFields_upvr_result2_4 = addGameFields_upvr(arg3, arg4, arg7, nil, arg8)
			addGameFields_result1_2.locale = LocalizationService_upvr.RobloxLocaleId
			local any_join_result1_2 = Cryo_upvr.Dictionary.join(addGameFields_result1_2, arg6)
			if FFlagLuaAppGameImpressionsMobileAdsId_upvr then
				local any_GetItem_result1_2 = AppStorageService_upvr:GetItem("MobileAdvertisingId")
				if any_GetItem_result1_2 and any_GetItem_result1_2 ~= "" then
					any_join_result1_2.mobileAdvertisingId = any_GetItem_result1_2
				end
			end
			gameImpressionsEvent_upvr(arg1, arg5, any_join_result1_2)
			reportGameImpressionCounts_upvr(arg2, arg5, addGameFields_upvr_result2_4)
		end
	end;
	sendFromGameDetails = function(arg1, arg2, arg3, arg4, arg5) -- Line 322
		--[[ Upvalues[6]:
			[1]: addGameFields_upvr (readonly)
			[2]: LocalizationService_upvr (readonly)
			[3]: FFlagLuaAppGameImpressionsMobileAdsId_upvr (readonly)
			[4]: AppStorageService_upvr (readonly)
			[5]: gameImpressionsEvent_upvr (readonly)
			[6]: reportGameImpressionCounts_upvr (readonly)
		]]
		local addGameFields_upvr_result1_3, addGameFields_upvr_result2_6 = addGameFields_upvr(arg3, arg4)
		addGameFields_upvr_result1_3.locale = LocalizationService_upvr.RobloxLocaleId
		addGameFields_upvr_result1_3.refId = arg5
		if FFlagLuaAppGameImpressionsMobileAdsId_upvr then
			local any_GetItem_result1 = AppStorageService_upvr:GetItem("MobileAdvertisingId")
			if any_GetItem_result1 and any_GetItem_result1 ~= "" then
				addGameFields_upvr_result1_3.mobileAdvertisingId = any_GetItem_result1
			end
		end
		gameImpressionsEvent_upvr(arg1, "recommended", addGameFields_upvr_result1_3)
		reportGameImpressionCounts_upvr(arg2, "recommended", addGameFields_upvr_result2_6)
	end;
	sendFromSeeAll = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 342
		--[[ Upvalues[8]:
			[1]: addGameFields_upvr (readonly)
			[2]: FFlagLuaAppUpdateSduiGameImpressions_upvr (readonly)
			[3]: Cryo_upvr (readonly)
			[4]: LocalizationService_upvr (readonly)
			[5]: FFlagLuaAppGameImpressionsMobileAdsId_upvr (readonly)
			[6]: AppStorageService_upvr (readonly)
			[7]: gameImpressionsEvent_upvr (readonly)
			[8]: reportGameImpressionCounts_upvr (readonly)
		]]
		if not arg1 or not arg2 then
		else
			if not arg3 or #arg3 == 0 then return end
			if not arg4 or #arg4 == 0 then return end
			if FFlagLuaAppUpdateSduiGameImpressions_upvr then
			else
			end
			local addGameFields_result1_3, addGameFields_upvr_result2_3 = addGameFields_upvr(arg3, arg4, nil, nil)
			local tbl_3 = {}
			tbl_3.gameSetTypeId = arg6
			tbl_3.gameSetTargetId = arg7
			tbl_3.pageId = arg8
			tbl_3.locale = LocalizationService_upvr.RobloxLocaleId
			tbl_3.seeAllFlag = 1
			tbl_3.appliedFilters = arg9
			local any_join_result1_3 = Cryo_upvr.Dictionary.join(addGameFields_result1_3, tbl_3)
			if FFlagLuaAppGameImpressionsMobileAdsId_upvr then
				local any_GetItem_result1_4 = AppStorageService_upvr:GetItem("MobileAdvertisingId")
				if any_GetItem_result1_4 and any_GetItem_result1_4 ~= "" then
					any_join_result1_3.mobileAdvertisingId = any_GetItem_result1_4
				end
			end
			gameImpressionsEvent_upvr(arg1, arg5, any_join_result1_3)
			reportGameImpressionCounts_upvr(arg2, arg5, addGameFields_upvr_result2_3, 1)
		end
	end;
}