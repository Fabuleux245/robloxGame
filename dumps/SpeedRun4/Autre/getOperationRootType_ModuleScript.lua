-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:10
-- Luau version 6, Types version 3
-- Time taken: 0.000817 seconds

local GraphQLError_upvr = require(script.Parent.Parent.error.GraphQLError).GraphQLError
return {
	getOperationRootType = function(arg1, arg2) -- Line 22, Named "getOperationRootType"
		--[[ Upvalues[1]:
			[1]: GraphQLError_upvr (readonly)
		]]
		if arg2.operation == "query" then
			local any_getQueryType_result1 = arg1:getQueryType()
			if not any_getQueryType_result1 then
				error(GraphQLError_upvr.new("Schema does not define the required query root type.", arg2))
			end
			return any_getQueryType_result1
		end
		if arg2.operation == "mutation" then
			local any_getMutationType_result1 = arg1:getMutationType()
			if not any_getMutationType_result1 then
				error(GraphQLError_upvr.new("Schema is not configured for mutations.", arg2))
			end
			return any_getMutationType_result1
		end
		if arg2.operation == "subscription" then
			local any_getSubscriptionType_result1 = arg1:getSubscriptionType()
			if not any_getSubscriptionType_result1 then
				error(GraphQLError_upvr.new("Schema is not configured for subscriptions.", arg2))
			end
			return any_getSubscriptionType_result1
		end
		error(GraphQLError_upvr.new("Can only have query, mutation and subscription operations.", arg2))
	end;
}