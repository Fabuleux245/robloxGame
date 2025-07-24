-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:04
-- Luau version 6, Types version 3
-- Time taken: 0.001116 seconds

-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
local Parent = script:FindFirstAncestor("DiscoveryAnalytics").Parent
local t = require(Parent.t)
local FFlagEnableShareLinksInGameDetailEvent = require(Parent.SharedFlags).FFlagEnableShareLinksInGameDetailEvent
local tbl = {
	pg = t.string;
	universeId = t.union(t.string, t.number);
	navigationUniverseId = t.optional(t.string);
	pos = t.optional(t.number);
	pid = t.optional(t.union(t.number, t.string));
	sortPos = t.optional(t.number);
}
local any_optional_result1 = t.optional(t.string)
tbl.ad = any_optional_result1
if require(Parent.SharedFlags).FFlagEnableAdDataReferralEventIngest then
	any_optional_result1 = t.optional(t.string)
else
	any_optional_result1 = nil
end
tbl.nativeAdData = any_optional_result1
tbl.gameSetTargetId = t.optional(t.number)
tbl.gameSetTypeId = t.optional(t.string)
tbl.tis = t.optional(t.number)
tbl.refId = t.optional(t.string)
tbl.src = t.optional(t.string)
tbl.friendId = t.optional(t.string)
tbl.position = t.optional(t.number)
tbl.absolutePosition = t.optional(t.number)
tbl.fromWhere = t.optional(t.string)
tbl.locale = t.optional(t.string)
tbl.conversationId = t.optional(t.number)
if FFlagEnableShareLinksInGameDetailEvent then
	-- KONSTANTWARNING: GOTO [193] #115
end
-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [192] 114. Error Block 29 start (CF ANALYSIS FAILED)
tbl.shareLinkType = nil
if FFlagEnableShareLinksInGameDetailEvent then
	-- KONSTANTWARNING: GOTO [203] #122
end
-- KONSTANTERROR: [192] 114. Error Block 29 end (CF ANALYSIS FAILED)