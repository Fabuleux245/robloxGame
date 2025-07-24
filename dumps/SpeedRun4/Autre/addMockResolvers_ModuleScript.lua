-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:30
-- Luau version 6, Types version 3
-- Time taken: 0.000728 seconds

local Object_upvr = require(script:FindFirstAncestor("GraphQLServer").Parent.LuauPolyfill).Object
return function(arg1, arg2) -- Line 6, Named "addMockResolvers"
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local any_assign_result1 = Object_upvr.assign({}, arg1, arg2)
	local Query_2 = arg1.Query
	if not Query_2 then
		Query_2 = {}
	end
	local Query = arg2.Query
	if not Query then
		Query = {}
	end
	Query = arg1.Mutation
	local var5 = Query
	if not var5 then
		var5 = {}
	end
	local Mutation = arg2.Mutation
	if not Mutation then
		Mutation = {}
	end
	Object_upvr.assign(any_assign_result1, {
		Query = Object_upvr.assign({}, Query_2, Query);
		Mutation = Object_upvr.assign({}, var5, Mutation);
	})
	return any_assign_result1
end