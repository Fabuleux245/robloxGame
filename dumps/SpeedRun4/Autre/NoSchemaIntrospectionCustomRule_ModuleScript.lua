-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:18
-- Luau version 6, Types version 3
-- Time taken: 0.001100 seconds

local Parent = script.Parent.Parent.Parent.Parent
local module = {}
local getNamedType_upvr = require(Parent.type.definition).getNamedType
local isIntrospectionType_upvr = require(Parent.type.introspection).isIntrospectionType
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.NoSchemaIntrospectionCustomRule(arg1) -- Line 27
	--[[ Upvalues[3]:
		[1]: getNamedType_upvr (readonly)
		[2]: isIntrospectionType_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
	]]
	return {
		Field = function(arg1_2, arg2) -- Line 29, Named "Field"
			--[[ Upvalues[4]:
				[1]: getNamedType_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isIntrospectionType_upvr (copied, readonly)
				[4]: GraphQLError_upvr (copied, readonly)
			]]
			local var4_result1 = getNamedType_upvr(arg1:getType())
			if var4_result1 and isIntrospectionType_upvr(var4_result1) then
				arg1:reportError(GraphQLError_upvr.new("GraphQL introspection has been disabled, but the requested query contained the field \"%s\".":format(arg2.name.value), arg2))
			end
		end;
	}
end
return module