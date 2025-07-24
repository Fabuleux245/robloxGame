-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:34
-- Luau version 6, Types version 3
-- Time taken: 0.002028 seconds

local module = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module.UniqueOperationTypesRule(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local any_getSchema_result1 = arg1:getSchema()
	local var5_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5_upvr.subscription = any_getSchema_result1:getSubscriptionType()
		var5_upvr.mutation = any_getSchema_result1:getMutationType()
		var5_upvr.query = any_getSchema_result1:getQueryType()
		var5_upvr = {}
		return var5_upvr
	end
	if not any_getSchema_result1 or not INLINED() then
		var5_upvr = {}
	end
	local tbl_upvr = {}
	local function checkOperationTypes(arg1_2, arg2) -- Line 32
		--[[ Upvalues[4]:
			[1]: tbl_upvr (readonly)
			[2]: var5_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: GraphQLError_upvr (copied, readonly)
		]]
		local operationTypes = arg2.operationTypes
		if not operationTypes then
			operationTypes = {}
		end
		for _, v in ipairs(operationTypes) do
			local operation = v.operation
			local var16 = tbl_upvr[operation]
			if var5_upvr[operation] then
				arg1:reportError(GraphQLError_upvr.new("Type for %s already defined in the schema. It cannot be redefined.":format(operation), v))
			elseif var16 then
				arg1:reportError(GraphQLError_upvr.new("There can be only one %s type in schema.":format(operation), {var16, v}))
			else
				tbl_upvr[operation] = v
			end
		end
		return false
	end
	return {
		SchemaDefinition = checkOperationTypes;
		SchemaExtension = checkOperationTypes;
	}
end
return module