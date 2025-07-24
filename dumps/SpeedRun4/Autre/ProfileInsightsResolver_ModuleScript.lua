-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:23
-- Luau version 6, Types version 3
-- Time taken: 0.003213 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local FFlagProfileInsightsUpdateGql_upvr = require(Parent.SharedFlags).FFlagProfileInsightsUpdateGql
local ProfileInsightsConnector = require(script.Parent.Parent.connectors.ProfileInsightsConnector)
local function _(arg1) -- Line 25
	if not arg1 or not arg1.profileInsights or not arg1.profileInsights[1] then
	end
	return nil
end
local function _(arg1, arg2) -- Line 31
	for _, v in arg1.profileInsights do
		if v[arg2] then
			return v[arg2]
		end
	end
	return {}
end
local module = {}
local tbl = {
	targetUserId = function(arg1) -- Line 45, Named "targetUserId"
		return arg1.targetUser
	end;
}
local Cryo_upvr = require(Parent.Cryo)
function tbl.mutualFriends(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: FFlagProfileInsightsUpdateGql_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var11
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 20. Error Block 29 start (CF ANALYSIS FAILED)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = arg1.profileInsights[1]
		return var11
	end
	if not arg1 or not arg1.profileInsights or not INLINED() then
		var11 = nil
	end
	if var11 and var11.mutualFriendInsight then
	else
	end
	-- KONSTANTERROR: [26] 20. Error Block 29 end (CF ANALYSIS FAILED)
end
function tbl.isOfflineFrequents(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: FFlagProfileInsightsUpdateGql_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var12
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 22 start (CF ANALYSIS FAILED)
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var12 = arg1.profileInsights[1]
		return var12
	end
	if not arg1 or not arg1.profileInsights or not INLINED_2() then
		var12 = nil
	end
	if not var12 or not var12.offlineFrequentsInsight then
	end
	-- KONSTANTERROR: [20] 16. Error Block 22 end (CF ANALYSIS FAILED)
end
function tbl.friendshipAgeUnixSeconds(arg1) -- Line 88
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.8]
	if nil then
		-- KONSTANTWARNING: GOTO [16] #12
	end
	-- KONSTANTERROR: [6] 6. Error Block 12 end (CF ANALYSIS FAILED)
end
function tbl.friendRequestOriginSource(arg1) -- Line 93
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.8]
	if nil then
		-- KONSTANTWARNING: GOTO [16] #12
	end
	-- KONSTANTERROR: [6] 6. Error Block 7 end (CF ANALYSIS FAILED)
end
function tbl.accountCreationDateUnixSeconds(arg1) -- Line 98
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.8]
	if nil then
		-- KONSTANTWARNING: GOTO [16] #12
	end
	-- KONSTANTERROR: [6] 6. Error Block 12 end (CF ANALYSIS FAILED)
end
function tbl.localizedCountryName(arg1) -- Line 106
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.8]
	if nil then
		-- KONSTANTWARNING: GOTO [16] #12
	end
	-- KONSTANTERROR: [6] 6. Error Block 12 end (CF ANALYSIS FAILED)
end
function tbl.userAgeVerifiedBracket(arg1) -- Line 110
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.8]
	if nil then
		-- KONSTANTWARNING: GOTO [16] #12
	end
	-- KONSTANTERROR: [6] 6. Error Block 13 end (CF ANALYSIS FAILED)
end
module.ProfileInsights = tbl
local tbl_3 = {}
local HttpService_upvr = game:GetService("HttpService")
function tbl_3.id(arg1) -- Line 126
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	if arg1.pageId then
		return arg1.pageId
	end
	return HttpService_upvr:GenerateGUID(false)
end
function tbl_3.profileInsights(arg1) -- Line 129
	return arg1.profileInsights
end
module.ProfileInsightsPages = tbl_3
local tbl_2 = {}
local findProfileInsightsByUserIdsFeed_upvr = ProfileInsightsConnector.findProfileInsightsByUserIdsFeed
function tbl_2.profilesInsights(arg1, arg2, arg3) -- Line 135
	--[[ Upvalues[1]:
		[1]: findProfileInsightsByUserIdsFeed_upvr (readonly)
	]]
	return findProfileInsightsByUserIdsFeed_upvr(arg2.userIds, arg2.count, arg2.pageId, arg3.fetchImpl)
end
local findProfileInsightsByUserIds_upvr = ProfileInsightsConnector.findProfileInsightsByUserIds
function tbl_2.profilesInsightsByUserIds(arg1, arg2, arg3) -- Line 138
	--[[ Upvalues[2]:
		[1]: FFlagProfileInsightsUpdateGql_upvr (readonly)
		[2]: findProfileInsightsByUserIds_upvr (readonly)
	]]
	if FFlagProfileInsightsUpdateGql_upvr then
		return findProfileInsightsByUserIds_upvr(arg2.userIds, arg2.count, arg2.rankingStrategy, arg3.fetchImpl)
	end
	return findProfileInsightsByUserIds_upvr(arg2.userIds, arg2.count, arg3.fetchImpl)
end
module.Query = tbl_2
return module