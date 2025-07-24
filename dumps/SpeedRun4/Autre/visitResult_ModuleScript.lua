-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:46
-- Luau version 6, Types version 3
-- Time taken: 0.010092 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Map_upvr = LuauPolyfill.Map
local Set_upvr = LuauPolyfill.Set
local module = {}
local GraphQL = require(Parent.GraphQL)
local collectFields = require(script.Parent.collectFields)
local visitFieldValue_upvw
local function visitData_upvr(arg1, arg2, arg3) -- Line 101, Named "visitData"
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: visitData_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(Array_upvr.isArray(arg1)) then
		return Array_upvr.map(arg1, function(arg1_2) -- Line 103
			--[[ Upvalues[3]:
				[1]: visitData_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
			]]
			return visitData_upvr(arg1_2, arg2, arg3)
		end)
	end
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "table" then
		if arg2 ~= nil then
			typeof_result1 = arg2(arg1)
		else
			typeof_result1 = arg1
		end
		if typeof_result1 ~= nil then
			for i in typeof_result1 do
				typeof_result1[i] = visitData_upvr(typeof_result1[tostring(i)], arg2, arg3)
			end
		end
		if arg3 ~= nil then
			return arg3(typeof_result1)
		end
		return typeof_result1
	end
	return arg1
end
module.visitData = visitData_upvr
function module.visitErrors(arg1, arg2) -- Line 128
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return Array_upvr.map(arg1, function(arg1_3) -- Line 132
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2(arg1_3)
	end)
end
local Kind_upvr = GraphQL.Kind
local getOperationASTFromRequest_upvr = require(script.Parent.getOperationASTFromRequest).getOperationASTFromRequest
local visitRoot_upvw
local visitErrorsByType_upvw
function module.visitResult(arg1, arg2, arg3, arg4, arg5) -- Line 137
	--[[ Upvalues[8]:
		[1]: Array_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: Map_upvr (readonly)
		[5]: Set_upvr (readonly)
		[6]: getOperationASTFromRequest_upvr (readonly)
		[7]: visitRoot_upvw (read and write)
		[8]: visitErrorsByType_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var21
	if Boolean_upvr.toJSBoolean(arg2.variables) then
		var21 = arg2.variables
	else
		var21 = {}
	end
	local tbl = {
		segmentInfoMap = Map_upvr.new();
		unpathedErrors = Set_upvr.new();
	}
	local data = arg1.data
	local errors = arg1.errors
	if errors ~= nil then
		if arg5 == nil then
		else
		end
	end
	local var17_result1 = getOperationASTFromRequest_upvr(arg2)
	local var26
	if data ~= nil and var17_result1 ~= nil then
		if Boolean_upvr.toJSBoolean(true) then
			var26 = errors
		else
			var26 = nil
		end
		arg1.data = visitRoot_upvw(data, var17_result1, arg3, Array_upvr.reduce(arg2.document.definitions, function(arg1_4, arg2_2) -- Line 144
			--[[ Upvalues[1]:
				[1]: Kind_upvr (copied, readonly)
			]]
			if arg2_2.kind == Kind_upvr.FRAGMENT_DEFINITION then
				arg1_4[tostring(arg2_2.name.value)] = arg2_2
			end
			return arg1_4
		end, {}), var21, arg4, var26, tbl)
	end
	local var27 = false
	if errors ~= nil then
		var27 = arg5
	end
	if Boolean_upvr.toJSBoolean(var27) then
		arg1.errors = visitErrorsByType_upvw(errors, arg5, tbl)
	end
	return arg1
end
function visitErrorsByType_upvw(arg1, arg2, arg3) -- Line 190, Named "visitErrorsByType"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local segmentInfoMap_upvr = arg3.segmentInfoMap
	local __unpathed_upvr = arg2.__unpathed
	local unpathedErrors_upvr = arg3.unpathedErrors
	return Array_upvr.map(arg1, function(arg1_5) -- Line 202
		--[[ Upvalues[6]:
			[1]: segmentInfoMap_upvr (readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: Boolean_upvr (copied, readonly)
			[5]: __unpathed_upvr (readonly)
			[6]: unpathedErrors_upvr (readonly)
		]]
		local any_get_result1_2 = segmentInfoMap_upvr:get(arg1_5)
		local var33
		if any_get_result1_2 == nil then
			var33 = arg1_5
		else
			var33 = Array_upvr.reduce
			local function var34(arg1_6, arg2_3) -- Line 222
				--[[ Upvalues[1]:
					[1]: arg2 (copied, readonly)
				]]
				local var35 = arg2[arg2_3.type.name]
				if var35 == nil then
					return arg1_6
				end
				local var36 = var35[tostring(arg2_3.fieldName)]
				if var36 == nil then
					return arg1_6
				end
				return var36(arg1_6, arg2_3.pathIndex)
			end
			var33 = var33(Array_upvr.reverse(Array_upvr.concat({}, any_get_result1_2)), var34, arg1_5)
		end
		var34 = Boolean_upvr
		local var37 = var34
		if Boolean_upvr.toJSBoolean(__unpathed_upvr) then
			var37 = unpathedErrors_upvr:has(arg1_5)
		else
			var37 = __unpathed_upvr
		end
		if var37.toJSBoolean(var37) then
			return __unpathed_upvr(var33)
		end
		return var33
	end)
end
local function _(arg1, arg2) -- Line 250, Named "getOperationRootType"
	local operation_2 = arg2.operation
	if operation_2 == "query" then
		return arg1:getQueryType()
	end
	if operation_2 == "mutation" then
		return arg1:getMutationType()
	end
	if operation_2 == "subscription" then
		return arg1:getSubscriptionType()
	end
	return nil
end
local collectFields_2_upvr = collectFields.collectFields
local visitObjectValue_upvw
function visitRoot_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 269, Named "visitRoot"
	--[[ Upvalues[4]:
		[1]: collectFields_2_upvr (readonly)
		[2]: Map_upvr (readonly)
		[3]: Set_upvr (readonly)
		[4]: visitObjectValue_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
	local operation = arg2.operation
	if operation == "query" then
		-- KONSTANTWARNING: GOTO [24] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 12 start (CF ANALYSIS FAILED)
	if operation == "mutation" then
		-- KONSTANTWARNING: GOTO [24] #18
	end
	-- KONSTANTERROR: [9] 7. Error Block 12 end (CF ANALYSIS FAILED)
end
local sortErrorsByPathSegment_upvw
local TypeNameMetaFieldDef_upvr = GraphQL.TypeNameMetaFieldDef
local SchemaMetaFieldDef_upvr = GraphQL.SchemaMetaFieldDef
local addPathSegmentInfo_upvw
local updateObject_upvw
function visitObjectValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 308, Named "visitObjectValue"
	--[[ Upvalues[6]:
		[1]: sortErrorsByPathSegment_upvw (read and write)
		[2]: TypeNameMetaFieldDef_upvr (readonly)
		[3]: SchemaMetaFieldDef_upvr (readonly)
		[4]: addPathSegmentInfo_upvw (read and write)
		[5]: visitFieldValue_upvw (read and write)
		[6]: updateObject_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 72 start (CF ANALYSIS FAILED)
	local any_getFields_result1 = arg2:getFields()
	local var76
	if typeof(arg7) == "table" then
		var76 = arg7[arg2.name]
	else
		var76 = nil
	end
	if typeof(var76) == "table" then
		-- KONSTANTWARNING: GOTO [26] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 72 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 77 start (CF ANALYSIS FAILED)
	local var77
	if var77 ~= nil then
		local var77_result1 = var77(arg1)
	else
	end
	if arg9 ~= nil then
		local sortErrorsByPathSegment_upvw_result1 = sortErrorsByPathSegment_upvw(arg9, arg8)
		local errorMap = sortErrorsByPathSegment_upvw_result1.errorMap
		for _, v in sortErrorsByPathSegment_upvw_result1.unpathedErrors do
			arg10.unpathedErrors:add(v)
		end
	end
	for i_3, v_2 in arg3 do
		local unpacked_value_1, unpacked_value_2 = table.unpack(v_2, 1, 2)
		local name = unpacked_value_2[1].name
		local value = name.value
		if typeof(any_getFields_result1:get(value)) == "table" then
			name = any_getFields_result1:get(value).type
		else
			name = nil
		end
		if name == nil then
			if value == "__typename" then
			elseif value == "__schema" then
			end
		end
		local var85 = arg8 + 1
		if errorMap then
			local var86 = errorMap[tostring(unpacked_value_1)]
			if var86 ~= nil then
				errorMap[tostring(unpacked_value_1)] = nil
			end
			addPathSegmentInfo_upvw(arg2, value, var85, var86, arg10)
		end
		updateObject_upvw(arg1, unpacked_value_1, visitFieldValue_upvw(arg1[tostring(unpacked_value_1)], SchemaMetaFieldDef_upvr.type, unpacked_value_2, arg4, arg5, arg6, arg7, var85, var86, arg10), var76, value)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local __typename = arg1.__typename
	if __typename ~= nil then
		i_3 = "__typename"
		v_2 = __typename
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		updateObject_upvw(arg1, i_3, v_2, var76, "__typename")
	end
	if errorMap then
		i_3 = nil
		for i_4 in errorMap, nil, i_3 do
			for _, v_3 in errorMap[i_4] do
				arg10.unpathedErrors:add(v_3)
			end
		end
	end
	if typeof(var76) == "table" then
		local _ = var76.__leave
	else
	end
	if nil ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		return nil(arg1)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return arg1
	end
	-- KONSTANTERROR: [25] 19. Error Block 77 end (CF ANALYSIS FAILED)
end
function updateObject_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 438, Named "updateObject"
	if arg4 == nil then
		arg1[tostring(arg2)] = arg3
	else
		local var89 = arg4[arg5]
		if var89 == nil then
			arg1[tostring(arg2)] = arg3
			return
		end
		local var89_result1 = var89(arg3)
		if var89_result1 == nil then
			arg1[tostring(arg2)] = nil
			return
		end
		arg1[tostring(arg2)] = var89_result1
	end
end
local function visitListValue_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 469, Named "visitListValue"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: visitFieldValue_upvw (read and write)
	]]
	return Array_upvr.map(arg1, function(arg1_7) -- Line 481
		--[[ Upvalues[10]:
			[1]: visitFieldValue_upvw (copied, read and write)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: arg5 (readonly)
			[6]: arg6 (readonly)
			[7]: arg7 (readonly)
			[8]: arg8 (readonly)
			[9]: arg9 (readonly)
			[10]: arg10 (readonly)
		]]
		return visitFieldValue_upvw(arg1_7, arg2, arg3, arg4, arg5, arg6, arg7, arg8 + 1, arg9, arg10)
	end)
end
local NULL_upvr = GraphQL.NULL
local getNullableType_upvr = GraphQL.getNullableType
local isListType_upvr = GraphQL.isListType
local isAbstractType_upvr = GraphQL.isAbstractType
local collectSubFields_upvr = collectFields.collectSubFields
local isObjectType_upvr = GraphQL.isObjectType
function visitFieldValue_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 498, Named "visitFieldValue"
	--[[ Upvalues[9]:
		[1]: NULL_upvr (readonly)
		[2]: getNullableType_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: isListType_upvr (readonly)
		[5]: visitListValue_upvr (readonly)
		[6]: isAbstractType_upvr (readonly)
		[7]: collectSubFields_upvr (readonly)
		[8]: visitObjectValue_upvw (read and write)
		[9]: isObjectType_upvr (readonly)
	]]
	if arg9 ~= nil then
		local _ = arg9
	else
	end
	if arg1 == nil or arg1 == NULL_upvr then
		return arg1
	end
	local getNullableType_upvr_result1 = getNullableType_upvr(arg2)
	if Boolean_upvr.toJSBoolean(isListType_upvr(getNullableType_upvr_result1)) then
		return visitListValue_upvr(arg1, getNullableType_upvr_result1.ofType, arg3, arg4, arg5, arg6, arg7, arg8, {}, arg10)
	end
	if Boolean_upvr.toJSBoolean(isAbstractType_upvr(getNullableType_upvr_result1)) then
		local any_getType_result1 = arg4:getType(arg1.__typename)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return visitObjectValue_upvw(arg1, any_getType_result1, collectSubFields_upvr(arg4, arg5, arg6, any_getType_result1, arg3), arg4, arg5, arg6, arg7, arg8, {}, arg10)
	end
	if Boolean_upvr.toJSBoolean(isObjectType_upvr(getNullableType_upvr_result1)) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return visitObjectValue_upvw(arg1, getNullableType_upvr_result1, collectSubFields_upvr(arg4, arg5, arg6, getNullableType_upvr_result1, arg3), arg4, arg5, arg6, arg7, arg8, {}, arg10)
	end
	if typeof(arg7) == "table" then
		local _ = arg7[getNullableType_upvr_result1.name]
	else
	end
	if nil == nil then
		return arg1
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var102 = nil(arg1)
	if var102 == nil then
		return arg1
	end
	return var102
end
local Object_upvr = LuauPolyfill.Object
function sortErrorsByPathSegment_upvw(arg1, arg2) -- Line 589, Named "sortErrorsByPathSegment"
	--[[ Upvalues[3]:
		[1]: Set_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var104
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 53. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 53. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [70.10]
	if nil == "table" then
	else
	end
	if var104 == nil then
		-- KONSTANTWARNING: GOTO [70] #53
	end
	-- KONSTANTERROR: [10] 9. Error Block 19 end (CF ANALYSIS FAILED)
end
function addPathSegmentInfo_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 614, Named "addPathSegmentInfo"
	if arg4 ~= nil then
	else
	end
	for _, v_4 in {} do
		local tbl_2 = {}
		tbl_2.type = arg1
		tbl_2.fieldName = arg2
		tbl_2.pathIndex = arg3
		local any_get_result1 = arg5.segmentInfoMap:get(v_4)
		if any_get_result1 == nil then
			arg5.segmentInfoMap:set(v_4, {tbl_2})
		else
			table.insert(any_get_result1, tbl_2)
		end
	end
end
return module