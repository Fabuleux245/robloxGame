-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:33
-- Luau version 6, Types version 3
-- Time taken: 0.000555 seconds

local Parent = script:FindFirstAncestor("ApolloProfileInsights").Parent
local useQuery_upvr = require(Parent.ApolloClient).useQuery
local queries_upvr = require(Parent.ApolloLocalState).queries
return function(arg1) -- Line 16, Named "useProfileInsightsByUserIds"
	--[[ Upvalues[2]:
		[1]: useQuery_upvr (readonly)
		[2]: queries_upvr (readonly)
	]]
	local module = {
		errorPolicy = "all";
	}
	local var5 = not arg1.userIds
	if not var5 then
		var5 = arg1.skip
	end
	module.skip = var5
	module.variables = {
		userIds = arg1.userIds;
		rankingStrategy = arg1.rankingStrategy;
	}
	return useQuery_upvr(queries_upvr.profilesInsightsByUserIds, module)
end