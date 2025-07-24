-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:02
-- Luau version 6, Types version 3
-- Time taken: 0.001630 seconds

-- KONSTANTERROR: [0] 1. Error Block 80 start (CF ANALYSIS FAILED)
local Parent = script:FindFirstAncestor("GameCollections").Parent
local t = require(Parent.t)
local tbl = {
	absPositions = t.string;
	topicDataPositions = t.string;
	rootPlaceIds = t.string;
	universeIds = t.string;
	gameSetTypeId = t.string;
	sortPos = t.number;
	locale = t.string;
	thumbnailAssetIds = t.optional(t.string);
}
local any_optional_result1 = t.optional(t.string)
tbl.thumbnailListIds = any_optional_result1
if require(Parent.SharedFlags).FFlagLuaAppGameTileWideVideoThumbnail then
	any_optional_result1 = t.optional(t.string)
else
	any_optional_result1 = nil
end
tbl.videoThumbnailAssetIds = any_optional_result1
tbl.componentType = t.optional(t.string)
tbl.gameSetTargetId = t.optional(t.number)
tbl.pageId = t.optional(t.string)
tbl.adFlags = t.optional(t.string)
tbl.adIds = t.optional(t.string)
tbl.rows = t.optional(t.string)
tbl.rowsOnPage = t.optional(t.string)
tbl.positionsInRows = t.optional(t.string)
tbl.tileBadgeContexts = t.optional(t.string)
tbl.appliedFilters = t.optional(t.string)
if require(Parent.SharedFlags).FFlagLuaAppGameImpressionsMobileAdsId then
	-- KONSTANTWARNING: GOTO [189] #111
end
-- KONSTANTERROR: [0] 1. Error Block 80 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [188] 110. Error Block 90 start (CF ANALYSIS FAILED)
tbl.mobileAdvertisingId = nil
local tbl_2 = {
	absPositions = t.string;
	topicDataPositions = t.string;
	rootPlaceIds = t.string;
	universeIds = t.string;
	gameSetTypeId = t.string;
	locale = t.string;
	seeAllFlag = t.number;
	gameSetTargetId = t.optional(t.number);
	pageId = t.optional(t.string);
	adFlags = t.optional(t.string);
	adIds = t.optional(t.string);
}
if require(Parent.SharedFlags).FFlagLuaAppUpdateSduiGameImpressions then
	-- KONSTANTWARNING: GOTO [259] #151
end
-- KONSTANTERROR: [188] 110. Error Block 90 end (CF ANALYSIS FAILED)