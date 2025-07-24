-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:31
-- Luau version 6, Types version 3
-- Time taken: 0.000455 seconds

local Object_upvr = require(script:FindFirstAncestor("GraphQLServer").Parent.LuauPolyfill).Object
return function(arg1) -- Line 6, Named "buildRootValue"
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local Query = arg1.Query
	if not Query then
		Query = {}
	end
	local Mutation = arg1.Mutation
	if not Mutation then
		Mutation = {}
	end
	return Object_upvr.assign({}, Query, Mutation)
end