-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:17
-- Luau version 6, Types version 3
-- Time taken: 0.000710 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local AddFriends = FriendsLanding.AddFriends
local RoduxFriends_upvr = require(AddFriends.Redux.RoduxFriends)
local RecommendationSourceEnum_upvr = dependencies.SocialCommon.Enums.RecommendationSourceEnum
local llama_upvr = dependencies.llama
local AddFriendsSelector_upvr = require(AddFriends.Redux.AddFriendsSelector)
return function(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: RoduxFriends_upvr (readonly)
		[2]: RecommendationSourceEnum_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: AddFriendsSelector_upvr (readonly)
	]]
	local LocalUserId_upvr = arg1.LocalUserId
	return llama_upvr.List.map(RoduxFriends_upvr.Selectors.getSortedByRankRecommendationIds(arg1)(LocalUserId_upvr, RoduxFriends_upvr.Selectors.getRecommendationIdsBySource(arg1)(RecommendationSourceEnum_upvr.AddFriendsPage)), function(arg1_2) -- Line 21
		--[[ Upvalues[4]:
			[1]: llama_upvr (copied, readonly)
			[2]: AddFriendsSelector_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: LocalUserId_upvr (readonly)
		]]
		return llama_upvr.Dictionary.join(AddFriendsSelector_upvr(arg1, "Users.byUserId.%s", arg1_2), AddFriendsSelector_upvr(arg1, "Friends.recommendations.byUserId.%s.%s", LocalUserId_upvr, arg1_2), {
			isRecommendation = true;
		})
	end)
end