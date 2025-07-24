-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:31
-- Luau version 6, Types version 3
-- Time taken: 0.000764 seconds

local GraphQL_upvr = require(script:FindFirstAncestor("GraphQLServer").Parent.GraphQL)
local function getFieldResolver_upvr(arg1, arg2) -- Line 7, Named "getFieldResolver"
	--[[ Upvalues[1]:
		[1]: GraphQL_upvr (readonly)
	]]
	if not arg1 or not arg1.parentType or not arg1.fieldName or type(arg1.parentType.name) ~= "string" or type(arg2[arg1.parentType.name]) ~= "table" or type(arg2[arg1.parentType.name][arg1.fieldName]) ~= "function" then
		return GraphQL_upvr.defaultFieldResolver
	end
	return arg2[arg1.parentType.name][arg1.fieldName]
end
return function(arg1) -- Line 22, Named "buildFieldResolver"
	--[[ Upvalues[1]:
		[1]: getFieldResolver_upvr (readonly)
	]]
	return function(arg1_2, arg2, arg3, arg4) -- Line 23
		--[[ Upvalues[2]:
			[1]: getFieldResolver_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return getFieldResolver_upvr(arg4, arg1)(arg1_2, arg2, arg3, arg4)
	end
end