-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:22
-- Luau version 6, Types version 3
-- Time taken: 0.019402 seconds

local Parent = script.Parent.Parent
local jsutils = Parent.jsutils
local error = Parent.error
local type = Parent.type
local utilities = Parent.utilities
local luaUtils = Parent.luaUtils
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Error_upvr = LuauPolyfill.Error
local Map_upvr = LuauPolyfill.Map
local instanceof_upvr = LuauPolyfill.instanceof
local Promise_upvr = require(Parent.Parent.Promise)
local null_upvr = require(luaUtils.null)
local inspect_upvr = require(jsutils.inspect).inspect
local isPromise_upvr = require(jsutils.isPromise).isPromise
local isObjectLike_upvr = require(jsutils.isObjectLike).isObjectLike
local Path = require(jsutils.Path)
local addPath_upvr = Path.addPath
local pathToArray_upvr = Path.pathToArray
local GraphQLError_upvr = require(error.GraphQLError).GraphQLError
local locatedError_upvr = require(error.locatedError).locatedError
local Kind_upvr = require(Parent.language.kinds).Kind
local definition = require(type.definition)
local introspection = require(type.introspection)
local directives = require(type.directives)
local isObjectType_upvr = definition.isObjectType
local isAbstractType_upvr = definition.isAbstractType
local isNonNullType_upvr = definition.isNonNullType
local values = require(script.Parent.values)
local resolveField_upvw
local completeObjectValue_upvw
local assertValidExecutionArguments_upvw
local buildExecutionContext_upvw
local executeOperation_upvw
local buildResponse_upvw
local function execute_upvw(arg1) -- Line 225, Named "execute"
	--[[ Upvalues[5]:
		[1]: assertValidExecutionArguments_upvw (read and write)
		[2]: buildExecutionContext_upvw (read and write)
		[3]: Array_upvr (readonly)
		[4]: executeOperation_upvw (read and write)
		[5]: buildResponse_upvw (read and write)
	]]
	local schema = arg1.schema
	local document = arg1.document
	local rootValue = arg1.rootValue
	local variableValues = arg1.variableValues
	assertValidExecutionArguments_upvw(schema, document, variableValues)
	local buildExecutionContext_result1 = buildExecutionContext_upvw(schema, document, rootValue, arg1.contextValue, variableValues, arg1.operationName, arg1.fieldResolver, arg1.typeResolver)
	if Array_upvr.isArray(buildExecutionContext_result1) or not buildExecutionContext_result1.schema then
		return {
			errors = buildExecutionContext_result1;
		}
	end
	return buildResponse_upvw(buildExecutionContext_result1, executeOperation_upvw(buildExecutionContext_result1, buildExecutionContext_result1.operation, rootValue))
end
function buildResponse_upvw(arg1, arg2) -- Line 294, Named "buildResponse"
	--[[ Upvalues[2]:
		[1]: isPromise_upvr (readonly)
		[2]: buildResponse_upvw (read and write)
	]]
	if isPromise_upvr(arg2) then
		return arg2:andThen(function(arg1_2) -- Line 301
			--[[ Upvalues[2]:
				[1]: buildResponse_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			return buildResponse_upvw(arg1, arg1_2)
		end)
	end
	if #arg1.errors == 0 then
		local module = {}
		module.data = arg2
		return module
	end
	local module_2 = {
		errors = arg1.errors;
	}
	module_2.data = arg2
	return module_2
end
local devAssert_upvr = require(jsutils.devAssert).devAssert
local assertValidSchema_upvr = require(type.validate).assertValidSchema
function assertValidExecutionArguments_upvw(arg1, arg2, arg3) -- Line 320, Named "assertValidExecutionArguments"
	--[[ Upvalues[3]:
		[1]: devAssert_upvr (readonly)
		[2]: assertValidSchema_upvr (readonly)
		[3]: isObjectLike_upvr (readonly)
	]]
	devAssert_upvr(arg2, "Must provide document.")
	assertValidSchema_upvr(arg1)
	local var48 = true
	if arg3 ~= nil then
		var48 = isObjectLike_upvr(arg3)
	end
	devAssert_upvr(var48, "Variables must be provided as an Object where each property is a variable value. Perhaps look to see if an unparsed JSON string was provided.")
end
local getVariableValues_upvr = values.getVariableValues
local var188_upvw
local var180_upvw
function buildExecutionContext_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 345, Named "buildExecutionContext"
	--[[ Upvalues[5]:
		[1]: Kind_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: getVariableValues_upvr (readonly)
		[4]: var188_upvw (read and write)
		[5]: var180_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_3, ipairs_result2, ipairs_result3 = ipairs(arg2.definitions)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 36. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 36. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 55 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [55.15]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [55.2147483650]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [55.16]
	if nil == nil then
		if arg6 == nil then
			if nil ~= nil then
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil == arg6 then
				-- KONSTANTWARNING: GOTO [55] #36
			end
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil == nil then
		end
	end
	-- KONSTANTERROR: [9] 7. Error Block 55 end (CF ANALYSIS FAILED)
end
local getOperationRootType_upvr = require(utilities.getOperationRootType).getOperationRootType
local collectFields_upvw
local executeFieldsSerially_upvw
local executeFields_upvw
function executeOperation_upvw(arg1, arg2, arg3) -- Line 421, Named "executeOperation"
	--[[ Upvalues[8]:
		[1]: getOperationRootType_upvr (readonly)
		[2]: collectFields_upvw (read and write)
		[3]: Map_upvr (readonly)
		[4]: executeFieldsSerially_upvw (read and write)
		[5]: executeFields_upvw (read and write)
		[6]: isPromise_upvr (readonly)
		[7]: Promise_upvr (readonly)
		[8]: null_upvr (readonly)
	]]
	local var55_result1 = getOperationRootType_upvr(arg1.schema, arg2)
	local var60
	local var61
	if arg2.operation == "mutation" then
		local pcall_result1, pcall_result2_2 = pcall(executeFieldsSerially_upvw, arg1, var55_result1, arg3, nil, collectFields_upvw(arg1, var55_result1, arg2.selectionSet, Map_upvr.new(), {}))
		var60 = pcall_result1
		var61 = pcall_result2_2
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local pcall_result1_2, pcall_result2 = pcall(executeFields_upvw, arg1, var55_result1, arg3, nil, collectFields_upvw(arg1, var55_result1, arg2.selectionSet, Map_upvr.new(), {}))
		var60 = pcall_result1_2
		var61 = pcall_result2
	end
	if isPromise_upvr(var61) then
		return var61:andThen(nil, function(arg1_3) -- Line 450
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: null_upvr (copied, readonly)
			]]
			table.insert(arg1.errors, arg1_3)
			return Promise_upvr.resolve(null_upvr)
		end)
	end
	if not var60 then
		table.insert(arg1.errors, var61)
		return null_upvr
	end
	return var61
end
local promiseReduce_upvr = require(jsutils.promiseReduce).promiseReduce
function executeFieldsSerially_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 467, Named "executeFieldsSerially"
	--[[ Upvalues[4]:
		[1]: promiseReduce_upvr (readonly)
		[2]: addPath_upvr (readonly)
		[3]: resolveField_upvw (read and write)
		[4]: isPromise_upvr (readonly)
	]]
	return promiseReduce_upvr(arg5:keys(), function(arg1_4, arg2_2) -- Line 477
		--[[ Upvalues[8]:
			[1]: arg5 (readonly)
			[2]: addPath_upvr (copied, readonly)
			[3]: arg4 (readonly)
			[4]: arg2 (readonly)
			[5]: resolveField_upvw (copied, read and write)
			[6]: arg1 (readonly)
			[7]: arg3 (readonly)
			[8]: isPromise_upvr (copied, readonly)
		]]
		local resolveField_result1 = resolveField_upvw(arg1, arg2, arg3, arg5[arg2_2], addPath_upvr(arg4, arg2_2, arg2.name))
		if resolveField_result1 == nil then
			return arg1_4
		end
		if isPromise_upvr(resolveField_result1) then
			return resolveField_result1:andThen(function(arg1_5) -- Line 489
				--[[ Upvalues[2]:
					[1]: arg1_4 (readonly)
					[2]: arg2_2 (readonly)
				]]
				arg1_4[arg2_2] = arg1_5
				return arg1_4
			end)
		end
		arg1_4[arg2_2] = resolveField_result1
		return arg1_4
	end, {})
end
local promiseForObject_upvr = require(jsutils.promiseForObject).promiseForObject
function executeFields_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 508, Named "executeFields"
	--[[ Upvalues[4]:
		[1]: addPath_upvr (readonly)
		[2]: resolveField_upvw (read and write)
		[3]: isPromise_upvr (readonly)
		[4]: promiseForObject_upvr (readonly)
	]]
	local module_4 = {}
	local var90
	for _, v in ipairs(arg5:keys()) do
		local resolveField_upvw_result1 = resolveField_upvw(arg1, arg2, arg3, arg5[v], addPath_upvr(arg4, v, arg2.name))
		if resolveField_upvw_result1 ~= nil then
			module_4[v] = resolveField_upvw_result1
			if isPromise_upvr(resolveField_upvw_result1) then
			end
		end
	end
	if not nil then
		return module_4
	end
	return promiseForObject_upvr(module_4)
end
function collectFields_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 555, Named "collectFields"
	--[[ Upvalues[5]:
		[1]: Kind_upvr (readonly)
		[2]: shouldIncludeNode_upvw (read and write)
		[3]: getFieldEntryKey_upvw (read and write)
		[4]: doesFragmentConditionMatch_upvw (read and write)
		[5]: var92_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_4, ipairs_result2_3, ipairs_result3_2 = ipairs(arg3.selections)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [99] 81. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [99] 81. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [99.10]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [99.2147483650]
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
local shouldIncludeNode_upvw
local getFieldEntryKey_upvw
local doesFragmentConditionMatch_upvw
local var92_upvw = collectFields_upvw
local getDirectiveValues_upvr = values.getDirectiveValues
local GraphQLSkipDirective_upvr = directives.GraphQLSkipDirective
local GraphQLIncludeDirective_upvr = directives.GraphQLIncludeDirective
function shouldIncludeNode_upvw(arg1, arg2) -- Line 616, Named "shouldIncludeNode"
	--[[ Upvalues[3]:
		[1]: getDirectiveValues_upvr (readonly)
		[2]: GraphQLSkipDirective_upvr (readonly)
		[3]: GraphQLIncludeDirective_upvr (readonly)
	]]
	local var99_result1 = getDirectiveValues_upvr(GraphQLSkipDirective_upvr, arg2, arg1.variableValues)
	local var103 = var99_result1
	if var103 then
		var103 = var99_result1["if"]
	end
	if var103 == true then
		return false
	end
	local var99_result1_2 = getDirectiveValues_upvr(GraphQLIncludeDirective_upvr, arg2, arg1.variableValues)
	local var105 = var99_result1_2
	if var105 then
		var105 = var99_result1_2["if"]
	end
	if var105 == false then
		return false
	end
	return true
end
local typeFromAST_upvr = require(utilities.typeFromAST).typeFromAST
function doesFragmentConditionMatch_upvw(arg1, arg2, arg3) -- Line 638, Named "doesFragmentConditionMatch"
	--[[ Upvalues[2]:
		[1]: typeFromAST_upvr (readonly)
		[2]: isAbstractType_upvr (readonly)
	]]
	local typeCondition = arg2.typeCondition
	if not typeCondition then
		return true
	end
	local typeFromAST_upvr_result1 = typeFromAST_upvr(arg1.schema, typeCondition)
	if typeFromAST_upvr_result1 == arg3 then
		return true
	end
	if isAbstractType_upvr(typeFromAST_upvr_result1) then
		return arg1.schema:isSubType(typeFromAST_upvr_result1, arg3)
	end
	return false
end
function getFieldEntryKey_upvw(arg1) -- Line 670, Named "getFieldEntryKey"
	if arg1.alias then
		return arg1.alias.value
	end
	return arg1.name.value
end
local getFieldDef_upvw
local buildResolveInfo_upvw
local getArgumentValues_upvr = values.getArgumentValues
local completeValue_upvw
local handleFieldError_upvw
function resolveField_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 680, Named "resolveField"
	--[[ Upvalues[8]:
		[1]: getFieldDef_upvw (read and write)
		[2]: buildResolveInfo_upvw (read and write)
		[3]: getArgumentValues_upvr (readonly)
		[4]: isPromise_upvr (readonly)
		[5]: completeValue_upvw (read and write)
		[6]: locatedError_upvr (readonly)
		[7]: pathToArray_upvr (readonly)
		[8]: handleFieldError_upvw (read and write)
	]]
	local getFieldDef_upvw_result1_upvr = getFieldDef_upvw(arg1.schema, arg2, arg4[1].name.value)
	local var115_upvr
	if not getFieldDef_upvw_result1_upvr then return end
	local type_upvr = getFieldDef_upvw_result1_upvr.type
	if getFieldDef_upvw_result1_upvr.resolve then
		var115_upvr = getFieldDef_upvw_result1_upvr.resolve
	else
		var115_upvr = arg1.fieldResolver
	end
	local buildResolveInfo_upvw_result1_upvr = buildResolveInfo_upvw(arg1, getFieldDef_upvw_result1_upvr, arg4, arg2, arg5)
	local pcall_result1_3, pcall_result2_4 = pcall(function() -- Line 711
		--[[ Upvalues[14]:
			[1]: getArgumentValues_upvr (copied, readonly)
			[2]: getFieldDef_upvw_result1_upvr (readonly)
			[3]: arg4 (readonly)
			[4]: arg1 (readonly)
			[5]: var115_upvr (readonly)
			[6]: arg3 (readonly)
			[7]: buildResolveInfo_upvw_result1_upvr (readonly)
			[8]: isPromise_upvr (copied, readonly)
			[9]: completeValue_upvw (copied, read and write)
			[10]: type_upvr (readonly)
			[11]: arg5 (readonly)
			[12]: locatedError_upvr (copied, readonly)
			[13]: pathToArray_upvr (copied, readonly)
			[14]: handleFieldError_upvw (copied, read and write)
		]]
		local var115_result1 = var115_upvr(arg3, getArgumentValues_upvr(getFieldDef_upvw_result1_upvr, arg4[1], arg1.variableValues), arg1.contextValue, buildResolveInfo_upvw_result1_upvr)
		local var120
		if isPromise_upvr(var115_result1) then
			var120 = var115_result1:andThen(function(arg1_6) -- Line 736
				--[[ Upvalues[6]:
					[1]: completeValue_upvw (copied, read and write)
					[2]: arg1 (copied, readonly)
					[3]: type_upvr (copied, readonly)
					[4]: arg4 (copied, readonly)
					[5]: buildResolveInfo_upvw_result1_upvr (copied, readonly)
					[6]: arg5 (copied, readonly)
				]]
				return completeValue_upvw(arg1, type_upvr, arg4, buildResolveInfo_upvw_result1_upvr, arg5, arg1_6)
			end)
		else
			var120 = completeValue_upvw(arg1, type_upvr, arg4, buildResolveInfo_upvw_result1_upvr, arg5, var115_result1)
		end
		if isPromise_upvr(var120) then
			return var120:andThen(nil, function(arg1_7) -- Line 746
				--[[ Upvalues[7]:
					[1]: locatedError_upvr (copied, readonly)
					[2]: arg4 (copied, readonly)
					[3]: pathToArray_upvr (copied, readonly)
					[4]: arg5 (copied, readonly)
					[5]: handleFieldError_upvw (copied, read and write)
					[6]: type_upvr (copied, readonly)
					[7]: arg1 (copied, readonly)
				]]
				return handleFieldError_upvw(locatedError_upvr(arg1_7, arg4, pathToArray_upvr(arg5)), type_upvr, arg1)
			end)
		end
		return var120
	end)
	if not pcall_result1_3 then
		return handleFieldError_upvw(locatedError_upvr(pcall_result2_4, arg4, pathToArray_upvr(arg5)), type_upvr, arg1)
	end
	return pcall_result2_4
end
function buildResolveInfo_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 766, Named "buildResolveInfo"
	local module_3 = {
		fieldName = arg2.name;
	}
	module_3.fieldNodes = arg3
	module_3.returnType = arg2.type
	module_3.parentType = arg4
	module_3.path = arg5
	module_3.schema = arg1.schema
	module_3.fragments = arg1.fragments
	module_3.rootValue = arg1.rootValue
	module_3.operation = arg1.operation
	module_3.variableValues = arg1.variableValues
	return module_3
end
function handleFieldError_upvw(arg1, arg2, arg3) -- Line 789, Named "handleFieldError"
	--[[ Upvalues[2]:
		[1]: isNonNullType_upvr (readonly)
		[2]: null_upvr (readonly)
	]]
	if isNonNullType_upvr(arg2) then
		error(arg1)
	end
	table.insert(arg3.errors, arg1)
	return null_upvr
end
function completeValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 827, Named "completeValue"
	--[[ Upvalues[16]:
		[1]: instanceof_upvr (readonly)
		[2]: Error_upvr (readonly)
		[3]: isNonNullType_upvr (readonly)
		[4]: var126_upvw (read and write)
		[5]: isNillish_upvr (readonly)
		[6]: null_upvr (readonly)
		[7]: isListType_upvr (readonly)
		[8]: completeListValue_upvw (read and write)
		[9]: isLeafType_upvr (readonly)
		[10]: completeLeafValue_upvw (read and write)
		[11]: isAbstractType_upvr (readonly)
		[12]: completeAbstractValue_upvw (read and write)
		[13]: isObjectType_upvr (readonly)
		[14]: completeObjectValue_upvw (read and write)
		[15]: invariant_upvr (readonly)
		[16]: inspect_upvr (readonly)
	]]
	if instanceof_upvr(arg6, Error_upvr) then
		error(arg6)
	end
	if isNonNullType_upvr(arg2) then
		local var126_result1 = var126_upvw(arg1, arg2.ofType, arg3, arg4, arg5, arg6)
		if isNillish_upvr(var126_result1) then
			error(Error_upvr.new("Cannot return null for non-nullable field %s.%s.":format(arg4.parentType.name, arg4.fieldName)))
		end
		return var126_result1
	end
	if isNillish_upvr(arg6) then
		return null_upvr
	end
	if isListType_upvr(arg2) then
		return completeListValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6)
	end
	if isLeafType_upvr(arg2) then
		return completeLeafValue_upvw(arg2, arg6)
	end
	if isAbstractType_upvr(arg2) then
		return completeAbstractValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6)
	end
	if isObjectType_upvr(arg2) then
		return completeObjectValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6)
	end
	invariant_upvr(false, "Cannot complete value of unexpected output type: "..inspect_upvr(arg2))
	assert(false, "Cannot complete value of unexpected output type: "..inspect_upvr(arg2))
end
local isNillish_upvr = require(luaUtils.isNillish).isNillish
local isListType_upvr = definition.isListType
local completeListValue_upvw
local isLeafType_upvr = definition.isLeafType
local completeLeafValue_upvw
local completeAbstractValue_upvw
local invariant_upvr = require(jsutils.invariant).invariant
local var126_upvw = completeValue_upvw
local Set_upvr = LuauPolyfill.Set
local isIteratableObject_upvr = require(jsutils.isIteratableObject).isIteratableObject
function completeListValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 932, Named "completeListValue"
	--[[ Upvalues[12]:
		[1]: instanceof_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: isIteratableObject_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: addPath_upvr (readonly)
		[7]: isPromise_upvr (readonly)
		[8]: var126_upvw (read and write)
		[9]: locatedError_upvr (readonly)
		[10]: pathToArray_upvr (readonly)
		[11]: handleFieldError_upvw (read and write)
		[12]: Promise_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var145
	if instanceof_upvr(arg6, Set_upvr) then
		for _, v_2 in var145 do
			table.insert({}, v_2)
			local var147
		end
		var145 = var147
	end
	if not isIteratableObject_upvr(var145) then
		error(GraphQLError_upvr.new("Expected Iterable, but did not find one for field \"%s.%s\".":format(arg4.parentType.name, arg4.fieldName)))
	end
	local var148_upvw = false
	local var149_upvw = false
	local ofType_upvr = arg2.ofType
	local function _(arg1_8, arg2_3) -- Line 967
		--[[ Upvalues[13]:
			[1]: addPath_upvr (copied, readonly)
			[2]: arg5 (readonly)
			[3]: isPromise_upvr (copied, readonly)
			[4]: var126_upvw (copied, read and write)
			[5]: arg1 (readonly)
			[6]: ofType_upvr (readonly)
			[7]: arg3 (readonly)
			[8]: arg4 (readonly)
			[9]: var148_upvw (read and write)
			[10]: locatedError_upvr (copied, readonly)
			[11]: pathToArray_upvr (copied, readonly)
			[12]: handleFieldError_upvw (copied, read and write)
			[13]: var149_upvw (read and write)
		]]
		local addPath_upvr_result1_upvr = addPath_upvr(arg5, arg2_3, nil)
		local pcall_result1_4, pcall_result2_3 = pcall(function() -- Line 972
			--[[ Upvalues[13]:
				[1]: isPromise_upvr (copied, readonly)
				[2]: arg1_8 (readonly)
				[3]: var126_upvw (copied, read and write)
				[4]: arg1 (copied, readonly)
				[5]: ofType_upvr (copied, readonly)
				[6]: arg3 (copied, readonly)
				[7]: arg4 (copied, readonly)
				[8]: addPath_upvr_result1_upvr (readonly)
				[9]: var148_upvw (copied, read and write)
				[10]: locatedError_upvr (copied, readonly)
				[11]: pathToArray_upvr (copied, readonly)
				[12]: handleFieldError_upvw (copied, read and write)
				[13]: var149_upvw (copied, read and write)
			]]
			local var154
			if isPromise_upvr(arg1_8) then
				var154 = arg1_8:andThen(function(arg1_9) -- Line 975
					--[[ Upvalues[6]:
						[1]: var126_upvw (copied, read and write)
						[2]: arg1 (copied, readonly)
						[3]: ofType_upvr (copied, readonly)
						[4]: arg3 (copied, readonly)
						[5]: arg4 (copied, readonly)
						[6]: addPath_upvr_result1_upvr (copied, readonly)
					]]
					return var126_upvw(arg1, ofType_upvr, arg3, arg4, addPath_upvr_result1_upvr, arg1_9)
				end)
			else
				var154 = var126_upvw(arg1, ofType_upvr, arg3, arg4, addPath_upvr_result1_upvr, arg1_8)
			end
			if isPromise_upvr(var154) then
				var148_upvw = true
				return var154:andThen(nil, function(arg1_10) -- Line 993
					--[[ Upvalues[7]:
						[1]: locatedError_upvr (copied, readonly)
						[2]: arg3 (copied, readonly)
						[3]: pathToArray_upvr (copied, readonly)
						[4]: addPath_upvr_result1_upvr (copied, readonly)
						[5]: handleFieldError_upvw (copied, read and write)
						[6]: ofType_upvr (copied, readonly)
						[7]: arg1 (copied, readonly)
					]]
					return handleFieldError_upvw(locatedError_upvr(arg1_10, arg3, pathToArray_upvr(addPath_upvr_result1_upvr)), ofType_upvr, arg1)
				end)
			end
			var149_upvw = true
			return var154
		end)
		if not pcall_result1_4 then
			return handleFieldError_upvw(locatedError_upvr(pcall_result2_3, arg3, pathToArray_upvr(addPath_upvr_result1_upvr)), ofType_upvr, arg1)
		end
		return pcall_result2_3
	end
	local var159
	if var149_upvw and var148_upvw then
		var159 = Array_upvr.map(var159, function(arg1_11) -- Line 1015
			--[[ Upvalues[2]:
				[1]: isPromise_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			if isPromise_upvr(arg1_11) then
				return arg1_11
			end
			return Promise_upvr.resolve(arg1_11)
		end)
	end
	if var148_upvw then
	else
	end
	return var159
end
function completeLeafValue_upvw(arg1, arg2) -- Line 1028, Named "completeLeafValue"
	--[[ Upvalues[2]:
		[1]: Error_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	local any_serialize_result1 = arg1:serialize(arg2)
	if any_serialize_result1 == nil then
		error(Error_upvr.new("Expected a value of type \"%s\" but ":format(inspect_upvr(arg1)).."received: %s":format(inspect_upvr(arg2))))
	end
	return any_serialize_result1
end
local ensureValidRuntimeType_upvw
function completeAbstractValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1048, Named "completeAbstractValue"
	--[[ Upvalues[3]:
		[1]: isPromise_upvr (readonly)
		[2]: completeObjectValue_upvw (read and write)
		[3]: ensureValidRuntimeType_upvw (read and write)
	]]
	local var163
	if arg2.resolveType then
		var163 = arg2.resolveType
	else
		var163 = arg1.typeResolver
	end
	local var163_result1 = var163(arg6, arg1.contextValue, arg4, arg2)
	if isPromise_upvr(var163_result1) then
		return var163_result1:andThen(function(arg1_12) -- Line 1066
			--[[ Upvalues[8]:
				[1]: completeObjectValue_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: ensureValidRuntimeType_upvw (copied, read and write)
				[4]: arg2 (readonly)
				[5]: arg3 (readonly)
				[6]: arg4 (readonly)
				[7]: arg6 (readonly)
				[8]: arg5 (readonly)
			]]
			return completeObjectValue_upvw(arg1, ensureValidRuntimeType_upvw(arg1_12, arg1, arg2, arg3, arg4, arg6), arg3, arg4, arg5, arg6)
		end)
	end
	return completeObjectValue_upvw(arg1, ensureValidRuntimeType_upvw(var163_result1, arg1, arg2, arg3, arg4, arg6), arg3, arg4, arg5, arg6)
end
function ensureValidRuntimeType_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1103, Named "ensureValidRuntimeType"
	--[[ Upvalues[3]:
		[1]: GraphQLError_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
		[3]: inspect_upvr (readonly)
	]]
	if arg1 == nil then
		error(GraphQLError_upvr.new("Abstract type \"%s\" must resolve to an Object type at runtime for field \"%s.%s\". Either the \"%s\" type should provide a \"resolveType\" function or each possible type should provide an \"isTypeOf\" function.":format(arg3.name, arg5.parentType.name, arg5.fieldName, arg3.name), arg4))
	end
	if isObjectType_upvr(arg1) then
		error(GraphQLError_upvr.new("Support for returning GraphQLObjectType from resolveType was removed in graphql-js@16.0.0 please return type name instead."))
	end
	if typeof(arg1) ~= "string" then
		error(GraphQLError_upvr.new("Abstract type \"%s\" must resolve to an Object type at runtime for field \"%s.%s\" with ":format(arg3.name, arg5.parentType.name, arg5.fieldName).."value %s, received \"%s\".":format(inspect_upvr(arg6), inspect_upvr(arg1))))
	end
	local any_getType_result1 = arg2.schema:getType(arg1)
	if any_getType_result1 == nil then
		error(GraphQLError_upvr.new("Abstract type \"%s\" was resolve to a type \"%s\" that does not exist inside schema.":format(arg3.name, arg1), arg4))
	end
	if not isObjectType_upvr(any_getType_result1) then
		error(GraphQLError_upvr.new("Abstract type \"%s\" was resolve to a non-object type \"%s\".":format(arg3.name, arg1), arg4))
	end
	if not arg2.schema:isSubType(arg3, any_getType_result1) then
		error(GraphQLError_upvr.new("Runtime Object type \"%s\" is not a possible type for \"%s\".":format(any_getType_result1.name, arg3.name), arg4))
	end
	return any_getType_result1
end
local invalidReturnTypeError_upvw
local collectAndExecuteSubfields_upvw
function completeObjectValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1190, Named "completeObjectValue"
	--[[ Upvalues[3]:
		[1]: isPromise_upvr (readonly)
		[2]: invalidReturnTypeError_upvw (read and write)
		[3]: collectAndExecuteSubfields_upvw (read and write)
	]]
	if arg2.isTypeOf ~= nil then
		local any_isTypeOf_result1_2 = arg2.isTypeOf(arg2, arg6, arg1.contextValue, arg4)
		if isPromise_upvr(any_isTypeOf_result1_2) then
			return any_isTypeOf_result1_2:andThen(function(arg1_13) -- Line 1206
				--[[ Upvalues[7]:
					[1]: invalidReturnTypeError_upvw (copied, read and write)
					[2]: arg2 (readonly)
					[3]: arg6 (readonly)
					[4]: arg3 (readonly)
					[5]: collectAndExecuteSubfields_upvw (copied, read and write)
					[6]: arg1 (readonly)
					[7]: arg5 (readonly)
				]]
				if not arg1_13 then
					error(invalidReturnTypeError_upvw(arg2, arg6, arg3))
				end
				return collectAndExecuteSubfields_upvw(arg1, arg2, arg3, arg5, arg6)
			end)
		end
		if not any_isTypeOf_result1_2 then
			error(invalidReturnTypeError_upvw(arg2, arg6, arg3))
		end
	end
	return collectAndExecuteSubfields_upvw(arg1, arg2, arg3, arg5, arg6)
end
function invalidReturnTypeError_upvw(arg1, arg2, arg3) -- Line 1223, Named "invalidReturnTypeError"
	--[[ Upvalues[2]:
		[1]: GraphQLError_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	return GraphQLError_upvr.new("Expected value of type \"%s\" but got: %s.":format(arg1.name, inspect_upvr(arg2)), arg3)
end
local var171_upvw
function collectAndExecuteSubfields_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 1234, Named "collectAndExecuteSubfields"
	--[[ Upvalues[2]:
		[1]: var171_upvw (read and write)
		[2]: executeFields_upvw (read and write)
	]]
	return executeFields_upvw(arg1, arg2, arg5, arg4, var171_upvw(arg1, arg2, arg3))
end
var171_upvw = require(jsutils.memoize3).memoize3(function(arg1, arg2, arg3) -- Line 1250, Named "_collectSubfields"
	--[[ Upvalues[2]:
		[1]: Map_upvr (readonly)
		[2]: var92_upvw (read and write)
	]]
	local var179
	for _, v_3 in ipairs(arg3) do
		if v_3.selectionSet then
			var179 = var92_upvw(arg1, arg2, v_3.selectionSet, var179, {})
		end
	end
	return var179
end)
function var180_upvw(arg1, arg2, arg3, arg4) -- Line 1290
	--[[ Upvalues[3]:
		[1]: isObjectLike_upvr (readonly)
		[2]: isPromise_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	if isObjectLike_upvr(arg1) and typeof(arg1.__typename) == "string" then
		return arg1.__typename
	end
	local any_getPossibleTypes_result1_upvr = arg3.schema:getPossibleTypes(arg4)
	local module_5 = {}
	for var186 = 1, #any_getPossibleTypes_result1_upvr do
		local var184 = any_getPossibleTypes_result1_upvr[var186]
		if var184.isTypeOf then
			local any_isTypeOf_result1 = var184:isTypeOf(arg1, arg2, arg3)
			if isPromise_upvr(any_isTypeOf_result1) then
				module_5[var186] = any_isTypeOf_result1
			elseif any_isTypeOf_result1 then
				return var184.name
			end
		end
	end
	if 0 < #module_5 then
		function var186(arg1_14) -- Line 1315
			--[[ Upvalues[1]:
				[1]: any_getPossibleTypes_result1_upvr (readonly)
			]]
			for i_5 = 1, #arg1_14 do
				if arg1_14[i_5] then
					return any_getPossibleTypes_result1_upvr[i_5].name
				end
			end
			return nil
		end
		return Promise_upvr.all(module_5):andThen(var186)
	end
	return nil
end
function var188_upvw(arg1, arg2, arg3, arg4) -- Line 1334
	--[[ Upvalues[1]:
		[1]: isObjectLike_upvr (readonly)
	]]
	if isObjectLike_upvr(arg1) or typeof(arg1) == "function" then
		local var189 = arg1[arg4.fieldName]
		if typeof(var189) == "function" then
			return arg1[arg4.fieldName](arg1, arg2, arg3, arg4)
		end
		return var189
	end
	return nil
end
local SchemaMetaFieldDef_upvr = introspection.SchemaMetaFieldDef
local TypeMetaFieldDef_upvr = introspection.TypeMetaFieldDef
local TypeNameMetaFieldDef_upvr = introspection.TypeNameMetaFieldDef
function getFieldDef_upvw(arg1, arg2, arg3) -- Line 1358, Named "getFieldDef"
	--[[ Upvalues[3]:
		[1]: SchemaMetaFieldDef_upvr (readonly)
		[2]: TypeMetaFieldDef_upvr (readonly)
		[3]: TypeNameMetaFieldDef_upvr (readonly)
	]]
	if arg3 == SchemaMetaFieldDef_upvr.name and arg1:getQueryType() == arg2 then
		return SchemaMetaFieldDef_upvr
	end
	if arg3 == TypeMetaFieldDef_upvr.name and arg1:getQueryType() == arg2 then
		return TypeMetaFieldDef_upvr
	end
	if arg3 == TypeNameMetaFieldDef_upvr.name then
		return TypeNameMetaFieldDef_upvr
	end
	return arg2:getFields():get(arg3)
end
return {
	execute = execute_upvw;
	executeSync = function(arg1) -- Line 278, Named "executeSync"
		--[[ Upvalues[3]:
			[1]: execute_upvw (read and write)
			[2]: isPromise_upvr (readonly)
			[3]: Error_upvr (readonly)
		]]
		local execute_upvw_result1 = execute_upvw(arg1)
		if isPromise_upvr(execute_upvw_result1) then
			error(Error_upvr.new("GraphQL execution failed to complete synchronously."))
		end
		return execute_upvw_result1
	end;
	assertValidExecutionArguments = assertValidExecutionArguments_upvw;
	buildExecutionContext = buildExecutionContext_upvw;
	collectFields = var92_upvw;
	buildResolveInfo = buildResolveInfo_upvw;
	getFieldDef = getFieldDef_upvw;
	defaultFieldResolver = var188_upvw;
	defaultTypeResolver = var180_upvw;
}