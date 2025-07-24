-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:34
-- Luau version 6, Types version 3
-- Time taken: 0.000831 seconds

local module = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module.UniqueTypeNamesRule(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local any_getSchema_result1_upvr = arg1:getSchema()
	local tbl_upvr = {}
	local function checkTypeName(arg1_2, arg2) -- Line 25
		--[[ Upvalues[4]:
			[1]: any_getSchema_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: GraphQLError_upvr (copied, readonly)
			[4]: tbl_upvr (readonly)
		]]
		local value = arg2.name.value
		if any_getSchema_result1_upvr and any_getSchema_result1_upvr:getType(value) then
			arg1:reportError(GraphQLError_upvr.new("Type \"%s\" already exists in the schema. It cannot also be defined in this type definition.":format(value), arg2.name))
			return
		end
		if tbl_upvr[value] then
			arg1:reportError(GraphQLError_upvr.new("There can be only one type named \"%s\".":format(value), {tbl_upvr[value], arg2.name}))
		else
			tbl_upvr[value] = arg2.name
		end
		return false
	end
	return {
		ScalarTypeDefinition = checkTypeName;
		ObjectTypeDefinition = checkTypeName;
		InterfaceTypeDefinition = checkTypeName;
		UnionTypeDefinition = checkTypeName;
		EnumTypeDefinition = checkTypeName;
		InputObjectTypeDefinition = checkTypeName;
	}
end
return module