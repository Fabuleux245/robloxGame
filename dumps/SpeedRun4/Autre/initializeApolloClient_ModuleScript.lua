-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:53
-- Luau version 6, Types version 3
-- Time taken: 0.001091 seconds

local Parent = script:FindFirstAncestor("RobloxApolloClient").Parent
local ApolloClient = require(Parent.ApolloClient)
local GraphQLServer_upvr = require(Parent.GraphQLServer).GraphQLServer
local HttpLink_upvr = ApolloClient.HttpLink
local InMemoryCache_upvr = ApolloClient.InMemoryCache
local typePolicies_upvr = require(Parent.ApolloLocalState).typePolicies
local ApolloClient_upvr = ApolloClient.ApolloClient
function initalizeApolloClient(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: GraphQLServer_upvr (readonly)
		[2]: HttpLink_upvr (readonly)
		[3]: InMemoryCache_upvr (readonly)
		[4]: typePolicies_upvr (readonly)
		[5]: ApolloClient_upvr (readonly)
	]]
	local tbl = {
		uri = "/api";
	}
	local any_new_result1_upvr = GraphQLServer_upvr.new(arg1)
	function tbl.fetch(arg1_2, arg2) -- Line 18
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		return any_new_result1_upvr:fetchLocal(arg2)
	end
	return ApolloClient_upvr.new({
		link = HttpLink_upvr.new(tbl);
		cache = InMemoryCache_upvr.new({
			typePolicies = typePolicies_upvr;
		});
	})
end
return initalizeApolloClient