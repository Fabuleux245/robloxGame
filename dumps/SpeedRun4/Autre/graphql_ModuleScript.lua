-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:00
-- Luau version 6, Types version 3
-- Time taken: 0.000538 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local module = {
	typeDefs = "";
}
local mergeTypeDefs_upvr = require(Parent.GraphqlToolsMerge).mergeTypeDefs
local luaTypeDefs_upvr = require(script.luaTypeDefs)
local GraphQL_upvr = require(Parent.GraphQL)
function module.generateTypeDefs() -- Line 35
	--[[ Upvalues[3]:
		[1]: mergeTypeDefs_upvr (readonly)
		[2]: luaTypeDefs_upvr (readonly)
		[3]: GraphQL_upvr (readonly)
	]]
	return GraphQL_upvr.print(mergeTypeDefs_upvr(luaTypeDefs_upvr))
end
module.resolvers = require(script.resolvers)
module.generatedTypes = require(script.generatedTypes)
module.dataLoaders = require(script.dataLoaders)
module.mocks = require(script.mocks)
return module