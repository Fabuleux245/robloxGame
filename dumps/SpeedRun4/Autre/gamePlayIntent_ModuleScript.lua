-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:04
-- Luau version 6, Types version 3
-- Time taken: 0.003672 seconds

-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
local DiscoveryAnalytics = script:FindFirstAncestor("DiscoveryAnalytics")
local Parent = DiscoveryAnalytics.Parent
local t = require(Parent.t)
local FFlagEnableAdDataPlayIntentEventIngest_upvr = require(Parent.SharedFlags).FFlagEnableAdDataPlayIntentEventIngest
local Constants = require(DiscoveryAnalytics.Constants)
local tbl_3 = {
	placeId = t.string;
	rootPlaceId = t.number;
	universeId = t.string;
	referralSource = t.optional(t.string);
	sortIndex = t.string;
	sortEntryIndex = t.string;
	gameSetTypeId = t.optional(t.string);
	gameSetTargetId = t.optional(t.number);
	appliedFilters = t.optional(t.string);
}
local any_optional_result1 = t.optional(t.number)
tbl_3.topicDataPosition = any_optional_result1
local var19
if FFlagEnableAdDataPlayIntentEventIngest_upvr then
	any_optional_result1 = t.optional(t.string)
else
	any_optional_result1 = nil
end
tbl_3.nativeAdData = any_optional_result1
local tbl_7 = {
	placeId = t.string;
	rootPlaceId = t.number;
	universeId = t.string;
	sortEntryIndex = t.string;
	gameSetTypeId = t.string;
	sortIndex = t.number;
	rowOnPage = t.optional(t.number);
	topicDataPosition = t.optional(t.number);
}
if FFlagEnableAdDataPlayIntentEventIngest_upvr then
	-- KONSTANTWARNING: GOTO [300] #175
end
-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [299] 174. Error Block 22 start (CF ANALYSIS FAILED)
tbl_7.nativeAdData = nil
local tbl = {}
var19 = t.number
tbl.placeId = t.union(t.string, var19)
var19 = t.string
tbl.rootPlaceId = t.union(t.number, var19)
tbl.linkId = t.string
tbl.linkType = t.string
tbl.linkStatus = t.string
tbl.joinAttemptId = t.optional(t.string)
local tbl_4 = {
	friendId = t.string;
	pageName = t.string;
}
var19 = t.string
tbl_4.placeId = t.optional(var19)
var19 = t.string
tbl_4.rootPlaceId = t.optional(var19)
tbl_4.joinAttemptId = t.string
local tbl_6 = {}
var19 = t.string
tbl_6.placeId = var19
var19 = t.number
tbl_6.rootPlaceId = var19
var19 = t.string
tbl_6.universeId = var19
var19 = t.string
tbl_6.referralSource = var19
var19 = t.string
tbl_6.sortIndex = var19
var19 = t.string
tbl_6.sortEntryIndex = var19
var19 = t.string
tbl_6.gameSetTypeId = var19
var19 = t.optional(t.number)
tbl_6.gameSetTargetId = var19
var19 = t.optional(t.number)
tbl_6.topicDataPosition = var19
if FFlagEnableAdDataPlayIntentEventIngest_upvr then
	var19 = t.optional(t.string)
else
	var19 = nil
end
tbl_6.nativeAdData = var19
local tbl_5_upvr = {
	PlayButton = t.strictInterface({
		placeId = t.union(t.string, t.number);
		rootPlaceId = t.union(t.number, t.string);
		referralSource = t.optional(t.string);
		universeId = t.string;
	});
}
var19 = Constants.Context.ExperienceTile
tbl_5_upvr[var19] = t.strictInterface(tbl_3)
var19 = Constants.Context.SearchExperienceTile
tbl_5_upvr[var19] = t.strictInterface(tbl_7)
var19 = Constants.Context.PeopleListInHomePage
tbl_5_upvr[var19] = t.strictInterface({
	placeId = t.string;
	rootPlaceId = t.number;
	joinAttemptId = t.optional(t.string);
	friendId = t.string;
})
var19 = Constants.Context.GamePlayIntentInPlacesList
tbl_5_upvr[var19] = t.strictInterface({
	placeId = t.string;
	rootPlaceId = t.number;
	joinAttemptId = t.optional(t.string);
	friendId = t.string;
})
tbl_5_upvr.shareLinks = t.strictInterface(tbl)
tbl_5_upvr.PlayGameFromPlayTogether = t.strictInterface({
	placeId = t.union(t.string, t.number);
	rootPlaceId = t.union(t.number, t.string);
	referralSource = t.optional(t.string);
	sortIndex = t.optional(t.string);
	sortEntryIndex = t.optional(t.string);
	gameSetTypeId = t.optional(t.string);
	gameSetTargetId = t.optional(t.number);
	linkId = t.optional(t.union(t.string, t.number));
	linkType = t.optional(t.string);
	linkStatus = t.optional(t.string);
	conversationId = t.optional(t.union(t.number, t.string));
	joinAttemptId = t.optional(t.string);
	uid = t.optional(t.string);
})
tbl_5_upvr.PlayGameFromLinkCard = t.strictInterface({
	placeId = t.string;
	rootPlaceId = t.number;
	joinAttemptId = t.optional(t.string);
	conversationId = t.optional(t.string);
})
var19 = Constants.Context.PlayerContextualMenu
tbl_5_upvr[var19] = t.strictInterface(tbl_4)
var19 = Constants.Context.HoldToPlayLauncher
tbl_5_upvr[var19] = t.strictInterface(tbl_6)
local flaggedMutedError_upvr = require(Parent.Loggers).flaggedMutedError
local mutedError_upvr = require(Parent.Loggers).mutedError
function var19(arg1, arg2, arg3) -- Line 125
	--[[ Upvalues[4]:
		[1]: tbl_5_upvr (readonly)
		[2]: flaggedMutedError_upvr (readonly)
		[3]: mutedError_upvr (readonly)
		[4]: FFlagEnableAdDataPlayIntentEventIngest_upvr (readonly)
	]]
	if tbl_5_upvr[arg2] ~= nil then
		local any_any_result1, any_any_result2 = tbl_5_upvr[arg2](arg3)
		if not any_any_result1 then
			flaggedMutedError_upvr("gamePlayIntentCheck", any_any_result2)
			-- KONSTANTWARNING: GOTO [22] #21
		end
	else
		mutedError_upvr(string.format("Missing interface for eventContext %s to type check gamePlayIntent event parameters", arg2))
	end
	local tbl_2 = {
		placeId = arg3.placeId;
		rootPlaceId = arg3.rootPlaceId;
		universeId = arg3.universeId;
		referralSource = arg3.referralSource;
		sortIndex = arg3.sortIndex;
		sortEntryIndex = arg3.sortEntryIndex;
		gameSetTypeId = arg3.gameSetTypeId;
		gameSetTargetId = arg3.gameSetTargetId;
		linkId = arg3.linkId;
		linkType = arg3.linkType;
		linkStatus = arg3.linkStatus;
		conversationId = arg3.conversationId;
		joinAttemptId = arg3.joinAttemptId;
		friendId = arg3.friendId;
		pageName = arg3.pageName;
		rowOnPage = arg3.rowOnPage;
		appliedFilters = arg3.appliedFilters;
	}
	local topicDataPosition = arg3.topicDataPosition
	tbl_2.topicDataPosition = topicDataPosition
	if FFlagEnableAdDataPlayIntentEventIngest_upvr then
		topicDataPosition = arg3.nativeAdData
	else
		topicDataPosition = nil
	end
	tbl_2.nativeAdData = topicDataPosition
	arg1:sendEventDeferred(arg2, "gamePlayIntent", tbl_2)
end
do
	return var19
end
-- KONSTANTERROR: [299] 174. Error Block 22 end (CF ANALYSIS FAILED)