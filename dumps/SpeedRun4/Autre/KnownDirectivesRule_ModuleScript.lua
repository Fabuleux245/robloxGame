-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:21
-- Luau version 6, Types version 3
-- Time taken: 0.004485 seconds

local Parent = script.Parent.Parent.Parent
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
local language = Parent.language
local jsutils = Parent.jsutils
local invariant_upvr = require(jsutils.invariant).invariant
local Kind_upvr = require(language.kinds).Kind
local DirectiveLocation_upvr = require(language.directiveLocation).DirectiveLocation
local module = {}
local specifiedDirectives_upvr = require(Parent.type.directives).specifiedDirectives
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local getDirectiveLocationForASTPath_upvw
function module.KnownDirectivesRule(arg1) -- Line 35
	--[[ Upvalues[5]:
		[1]: specifiedDirectives_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
		[5]: getDirectiveLocationForASTPath_upvw (read and write)
	]]
	local tbl_upvr = {}
	local any_getSchema_result1 = arg1:getSchema()
	local var22 = specifiedDirectives_upvr
	if any_getSchema_result1 then
		var22 = any_getSchema_result1:getDirectives()
	end
	for _, v in ipairs(var22) do
		tbl_upvr[v.name] = v.locations
	end
	for _, v_2 in ipairs(arg1:getDocument().definitions) do
		if v_2.kind == Kind_upvr.DIRECTIVE_DEFINITION then
			tbl_upvr[v_2.name.value] = Array_upvr.map(v_2.locations, function(arg1_2) -- Line 50
				return arg1_2.value
			end)
		end
	end
	return {
		Directive = function(arg1_3, arg2, arg3, arg4, arg5, arg6) -- Line 57, Named "Directive"
			--[[ Upvalues[5]:
				[1]: tbl_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: GraphQLError_upvr (copied, readonly)
				[4]: getDirectiveLocationForASTPath_upvw (copied, read and write)
				[5]: Array_upvr (copied, readonly)
			]]
			local value = arg2.name.value
			local var32 = tbl_upvr[value]
			if not var32 then
				arg1:reportError(GraphQLError_upvr.new("Unknown directive \"@%s\".":format(value), arg2))
			else
				local getDirectiveLocationForASTPath_result1 = getDirectiveLocationForASTPath_upvw(arg6)
				if getDirectiveLocationForASTPath_result1 and Array_upvr.indexOf(var32, getDirectiveLocationForASTPath_result1) == -1 then
					arg1:reportError(GraphQLError_upvr.new("Directive \"@%s\" may not be used on %s.":format(value, getDirectiveLocationForASTPath_result1), arg2))
				end
			end
		end;
	}
end
local getDirectiveLocationForOperation_upvw
function getDirectiveLocationForASTPath_upvw(arg1) -- Line 83, Named "getDirectiveLocationForASTPath"
	--[[ Upvalues[5]:
		[1]: invariant_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Kind_upvr (readonly)
		[4]: getDirectiveLocationForOperation_upvw (read and write)
		[5]: DirectiveLocation_upvr (readonly)
	]]
	local var35 = arg1[#arg1]
	invariant_upvr(not Array_upvr.isArray(var35))
	local kind = var35.kind
	if kind == Kind_upvr.OPERATION_DEFINITION then
		return getDirectiveLocationForOperation_upvw(var35.operation)
	end
	if kind == Kind_upvr.FIELD then
		return DirectiveLocation_upvr.FIELD
	end
	if kind == Kind_upvr.FRAGMENT_SPREAD then
		return DirectiveLocation_upvr.FRAGMENT_SPREAD
	end
	if kind == Kind_upvr.INLINE_FRAGMENT then
		return DirectiveLocation_upvr.INLINE_FRAGMENT
	end
	if kind == Kind_upvr.FRAGMENT_DEFINITION then
		return DirectiveLocation_upvr.FRAGMENT_DEFINITION
	end
	if kind == Kind_upvr.VARIABLE_DEFINITION then
		return DirectiveLocation_upvr.VARIABLE_DEFINITION
	end
	if kind == Kind_upvr.SCHEMA_DEFINITION or kind == Kind_upvr.SCHEMA_EXTENSION then
		return DirectiveLocation_upvr.SCHEMA
	end
	if kind == Kind_upvr.SCALAR_TYPE_DEFINITION or kind == Kind_upvr.SCALAR_TYPE_EXTENSION then
		return DirectiveLocation_upvr.SCALAR
	end
	if kind == Kind_upvr.OBJECT_TYPE_DEFINITION or kind == Kind_upvr.OBJECT_TYPE_EXTENSION then
		return DirectiveLocation_upvr.OBJECT
	end
	if kind == Kind_upvr.FIELD_DEFINITION then
		return DirectiveLocation_upvr.FIELD_DEFINITION
	end
	if kind == Kind_upvr.INTERFACE_TYPE_DEFINITION or kind == Kind_upvr.INTERFACE_TYPE_EXTENSION then
		return DirectiveLocation_upvr.INTERFACE
	end
	if kind == Kind_upvr.UNION_TYPE_DEFINITION or kind == Kind_upvr.UNION_TYPE_EXTENSION then
		return DirectiveLocation_upvr.UNION
	end
	if kind == Kind_upvr.ENUM_TYPE_DEFINITION or kind == Kind_upvr.ENUM_TYPE_EXTENSION then
		return DirectiveLocation_upvr.ENUM
	end
	if kind == Kind_upvr.ENUM_VALUE_DEFINITION then
		return DirectiveLocation_upvr.ENUM_VALUE
	end
	if kind == Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION or kind == Kind_upvr.INPUT_OBJECT_TYPE_EXTENSION then
		return DirectiveLocation_upvr.INPUT_OBJECT
	end
	local var37
	if kind == Kind_upvr.INPUT_VALUE_DEFINITION then
		var37 = #arg1 - 2
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var37 = DirectiveLocation_upvr.INPUT_FIELD_DEFINITION
			return var37
		end
		if arg1[var37].kind ~= Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION or not INLINED() then
			var37 = DirectiveLocation_upvr.ARGUMENT_DEFINITION
		end
		return var37
	end
	return nil
end
local inspect_upvr = require(jsutils.inspect).inspect
function getDirectiveLocationForOperation_upvw(arg1) -- Line 146, Named "getDirectiveLocationForOperation"
	--[[ Upvalues[3]:
		[1]: DirectiveLocation_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: inspect_upvr (readonly)
	]]
	if arg1 == "query" then
		return DirectiveLocation_upvr.QUERY
	end
	if arg1 == "mutation" then
		return DirectiveLocation_upvr.MUTATION
	end
	if arg1 == "subscription" then
		return DirectiveLocation_upvr.SUBSCRIPTION
	end
	invariant_upvr(false, "Unexpected operation: "..inspect_upvr(arg1))
	return nil
end
return module