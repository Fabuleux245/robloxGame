-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:26
-- Luau version 6, Types version 3
-- Time taken: 0.018821 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local language = Parent.language
local definition = require(Parent.type.definition)
local isObjectType_upvr = definition.isObjectType
local typeFromAST_upvr = require(Parent.utilities.typeFromAST).typeFromAST
local module_4 = {}
local collectConflictsBetween_upvw
local getFieldsAndFragmentNames_upvw
local getReferencedFieldsAndFragmentNames_upvw
local findConflict_upvw
local function reasonMessage_upvr(arg1) -- Line 49, Named "reasonMessage"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: reasonMessage_upvr (readonly)
	]]
	if Array_upvr.isArray(arg1) then
		return table.concat(Array_upvr.map(arg1, function(arg1_2) -- Line 52
			--[[ Upvalues[1]:
				[1]: reasonMessage_upvr (copied, readonly)
			]]
			return "subfields \"%s\" conflict because ":format(arg1_2[1])..reasonMessage_upvr(arg1_2[2])
		end), " and ")
	end
	return arg1
end
local var15_upvw
local findConflictsWithinSelectionSet_upvw
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module_4.OverlappingFieldsCanBeMergedRule(arg1) -- Line 70
	--[[ Upvalues[5]:
		[1]: var15_upvw (read and write)
		[2]: findConflictsWithinSelectionSet_upvw (read and write)
		[3]: Array_upvr (readonly)
		[4]: reasonMessage_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	local module_7 = {}
	local tbl_26_upvr = {}
	local any_new_result1_upvr = var15_upvw.new()
	function module_7.SelectionSet(arg1_3, arg2) -- Line 82
		--[[ Upvalues[7]:
			[1]: findConflictsWithinSelectionSet_upvw (copied, read and write)
			[2]: arg1 (readonly)
			[3]: tbl_26_upvr (readonly)
			[4]: any_new_result1_upvr (readonly)
			[5]: Array_upvr (copied, readonly)
			[6]: reasonMessage_upvr (copied, readonly)
			[7]: GraphQLError_upvr (copied, readonly)
		]]
		for _, v in ipairs(findConflictsWithinSelectionSet_upvw(arg1, tbl_26_upvr, any_new_result1_upvr, arg1:getParentType(), arg2)) do
			local _1_9 = v[1]
			local _2_10 = _1_9[2]
			local var30
			if Array_upvr.isArray(_2_10) then
				var30 = table.concat
				var30 = var30(Array_upvr.map(_2_10, function(arg1_4) -- Line 52
					--[[ Upvalues[1]:
						[1]: reasonMessage_upvr (copied, readonly)
					]]
					return "subfields \"%s\" conflict because ":format(arg1_4[1])..reasonMessage_upvr(arg1_4[2])
				end), " and ")
			else
				var30 = _2_10
			end
			arg1:reportError(GraphQLError_upvr.new("Fields \"%s\" conflict because %s. Use different aliases on the fields to fetch both if this was intentional.":format(_1_9[1], var30), Array_upvr.concat(v[2], v[3])))
		end
	end
	return module_7
end
local collectConflictsWithin_upvw
local collectConflictsBetweenFieldsAndFragment_upvw
local collectConflictsBetweenFragments_upvw
function findConflictsWithinSelectionSet_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 168, Named "findConflictsWithinSelectionSet"
	--[[ Upvalues[4]:
		[1]: getFieldsAndFragmentNames_upvw (read and write)
		[2]: collectConflictsWithin_upvw (read and write)
		[3]: collectConflictsBetweenFieldsAndFragment_upvw (read and write)
		[4]: collectConflictsBetweenFragments_upvw (read and write)
	]]
	local module_2 = {}
	local getFieldsAndFragmentNames_upvw_result1 = getFieldsAndFragmentNames_upvw(arg1, arg2, arg4, arg5)
	local _1_11 = getFieldsAndFragmentNames_upvw_result1[1]
	local _2_5 = getFieldsAndFragmentNames_upvw_result1[2]
	collectConflictsWithin_upvw(arg1, module_2, arg2, arg3, _1_11)
	if #_2_5 ~= 0 then
		for i_2 = 1, #_2_5 do
			collectConflictsBetweenFieldsAndFragment_upvw(arg1, module_2, arg2, arg3, false, _1_11, _2_5[i_2])
			for i_3 = i_2 + 1, #_2_5 do
				collectConflictsBetweenFragments_upvw(arg1, module_2, arg2, arg3, false, _2_5[i_2], _2_5[i_3])
			end
		end
	end
	return module_2
end
function collectConflictsBetweenFieldsAndFragment_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 230, Named "collectConflictsBetweenFieldsAndFragment"
	--[[ Upvalues[3]:
		[1]: getReferencedFieldsAndFragmentNames_upvw (read and write)
		[2]: collectConflictsBetween_upvw (read and write)
		[3]: var43_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getFragment_result1_3 = arg1:getFragment(arg7)
	if not any_getFragment_result1_3 then
	else
		local getReferencedFieldsAndFragmentNames_result1 = getReferencedFieldsAndFragmentNames_upvw(arg1, arg3, any_getFragment_result1_3)
		local _1_10 = getReferencedFieldsAndFragmentNames_result1[1]
		local _2_7 = getReferencedFieldsAndFragmentNames_result1[2]
		if arg6 == _1_10 then return end
		collectConflictsBetween_upvw(arg1, arg2, arg3, arg4, arg5, arg6, _1_10)
		for i_15 = 1, #_2_7 do
			var43_upvw(arg1, arg2, arg3, arg4, arg5, arg6, _2_7[i_15])
			local _
		end
	end
end
local var43_upvw = collectConflictsBetweenFieldsAndFragment_upvw
function collectConflictsBetweenFragments_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 285, Named "collectConflictsBetweenFragments"
	--[[ Upvalues[3]:
		[1]: getReferencedFieldsAndFragmentNames_upvw (read and write)
		[2]: collectConflictsBetween_upvw (read and write)
		[3]: var53_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg6 == arg7 then
	else
		if arg4:has(arg6, arg7, arg5) then return end
		arg4:add(arg6, arg7, arg5)
		local any_getFragment_result1_2 = arg1:getFragment(arg6)
		local any_getFragment_result1 = arg1:getFragment(arg7)
		if not any_getFragment_result1_2 or not any_getFragment_result1 then return end
		local getReferencedFieldsAndFragmentNames_upvw_result1 = getReferencedFieldsAndFragmentNames_upvw(arg1, arg3, any_getFragment_result1_2)
		local _2_9 = getReferencedFieldsAndFragmentNames_upvw_result1[2]
		local getReferencedFieldsAndFragmentNames_upvw_result1_2 = getReferencedFieldsAndFragmentNames_upvw(arg1, arg3, any_getFragment_result1)
		local _2_8 = getReferencedFieldsAndFragmentNames_upvw_result1_2[2]
		collectConflictsBetween_upvw(arg1, arg2, arg3, arg4, arg5, getReferencedFieldsAndFragmentNames_upvw_result1[1], getReferencedFieldsAndFragmentNames_upvw_result1_2[1])
		for i_16 = 1, #_2_8 do
			var53_upvw(arg1, arg2, arg3, arg4, arg5, arg6, _2_8[i_16])
			local _
		end
		for i_17 = 1, #_2_9 do
			var53_upvw(arg1, arg2, arg3, arg4, arg5, _2_9[i_17], arg7)
			local _
		end
	end
end
local var53_upvw = collectConflictsBetweenFragments_upvw
local function findConflictsBetweenSubSelectionSets_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 370, Named "findConflictsBetweenSubSelectionSets"
	--[[ Upvalues[4]:
		[1]: getFieldsAndFragmentNames_upvw (read and write)
		[2]: collectConflictsBetween_upvw (read and write)
		[3]: var43_upvw (read and write)
		[4]: var53_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_5 = {}
	local getFieldsAndFragmentNames_result1_2 = getFieldsAndFragmentNames_upvw(arg1, arg2, arg5, arg6)
	local _1_5 = getFieldsAndFragmentNames_result1_2[1]
	local _2_13 = getFieldsAndFragmentNames_result1_2[2]
	local getFieldsAndFragmentNames_result1 = getFieldsAndFragmentNames_upvw(arg1, arg2, arg7, arg8)
	local _1_8 = getFieldsAndFragmentNames_result1[1]
	local _2_3 = getFieldsAndFragmentNames_result1[2]
	collectConflictsBetween_upvw(arg1, module_5, arg2, arg3, arg4, _1_5, _1_8)
	if #_2_3 ~= 0 then
		for i_4 = 1, #_2_3 do
			var43_upvw(arg1, module_5, arg2, arg3, arg4, _1_5, _2_3[i_4])
		end
	end
	if #_2_13 ~= 0 then
		for i_5 = 1, #_2_13 do
			var43_upvw(arg1, module_5, arg2, arg3, arg4, _1_8, _2_13[i_5])
		end
	end
	for i_6 = 1, #_2_13 do
		for i_7 = 1, #_2_3 do
			var53_upvw(arg1, module_5, arg2, arg3, arg4, _2_13[i_6], _2_3[i_7])
		end
	end
	return module_5
end
function collectConflictsWithin_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 461, Named "collectConflictsWithin"
	--[[ Upvalues[1]:
		[1]: findConflict_upvw (read and write)
	]]
	for _, v_2 in arg5 do
		local _2_12 = v_2[2]
		if 1 < #_2_12 then
			for i_9 = 1, #_2_12 do
				for i_10 = i_9 + 1, #_2_12 do
					local findConflict_result1_2 = findConflict_upvw(arg1, arg3, arg4, false, v_2[1], _2_12[i_9], _2_12[i_10])
					if findConflict_result1_2 then
						table.insert(arg2, findConflict_result1_2)
					end
				end
			end
		end
	end
end
function collectConflictsBetween_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 506, Named "collectConflictsBetween"
	--[[ Upvalues[1]:
		[1]: findConflict_upvw (read and write)
	]]
	for _, v_3 in ipairs(arg6:keys()) do
		local var106 = arg7[v_3]
		if var106 then
			local var107 = arg6[v_3]
			for i_12 = 1, #var107 do
				for i_13 = 1, #var106 do
					local findConflict_result1 = findConflict_upvw(arg1, arg3, arg4, arg5, v_3, var107[i_12], var106[i_13])
					if findConflict_result1 then
						table.insert(arg2, findConflict_result1)
					end
				end
			end
		end
	end
end
local sameArguments_upvw
local doTypesConflict_upvw
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local getNamedType_upvr = definition.getNamedType
local subfieldConflicts_upvw
function findConflict_upvw(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 547, Named "findConflict"
	--[[ Upvalues[7]:
		[1]: isObjectType_upvr (readonly)
		[2]: sameArguments_upvw (read and write)
		[3]: doTypesConflict_upvw (read and write)
		[4]: inspect_upvr (readonly)
		[5]: findConflictsBetweenSubSelectionSets_upvr (readonly)
		[6]: getNamedType_upvr (readonly)
		[7]: subfieldConflicts_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local _1_2 = arg6[1]
	local _2_11 = arg6[2]
	local _3_4 = arg6[3]
	local _1 = arg7[1]
	local _2_4 = arg7[2]
	local _3 = arg7[3]
	local var174 = arg4
	if not var174 then
		var174 = false
		if _1_2 ~= _1 then
			var174 = isObjectType_upvr(_1_2)
			if var174 then
				var174 = isObjectType_upvr(_1)
			end
		end
	end
	if not var174 then
		local value_5 = _2_11.name.value
		local value_2 = _2_4.name.value
		if value_5 ~= value_2 then
			local tbl_13 = {}
			local tbl_24 = {}
			tbl_24[1] = arg5
			tbl_24[2] = "\"%s\" and \"%s\" are different fields":format(value_5, value_2)
			tbl_13[1] = tbl_24
			tbl_13[2] = {_2_11}
			tbl_13[3] = {_2_4}
			return tbl_13
		end
		tbl_13 = _2_11.arguments
		local var181 = tbl_13
		if not var181 then
			var181 = {}
		end
		tbl_24 = _2_4.arguments
		local var182 = tbl_24
		if not var182 then
			var182 = {}
		end
		if not sameArguments_upvw(var181, var182) then
			local module_8 = {}
			local tbl_18 = {}
			tbl_18[1] = arg5
			tbl_18[2] = "they have differing arguments"
			module_8[1] = tbl_18
			module_8[2] = {_2_11}
			module_8[3] = {_2_4}
			return module_8
		end
	end
	if _3_4 then
		local type = _3_4.type
	end
	if _3 then
		local type_3 = _3.type
	end
	if type and type_3 and doTypesConflict_upvw(type, type_3) then
		local module_3 = {}
		local tbl_29 = {}
		tbl_29[1] = arg5
		tbl_29[2] = "they return conflicting types \"%s\" and \"%s\"":format(inspect_upvr(type), inspect_upvr(type_3))
		module_3[1] = tbl_29
		module_3[2] = {_2_11}
		module_3[3] = {_2_4}
		return module_3
	end
	local selectionSet = _2_11.selectionSet
	local selectionSet_4 = _2_4.selectionSet
	if selectionSet and selectionSet_4 then
		return subfieldConflicts_upvw(findConflictsBetweenSubSelectionSets_upvr(arg1, arg2, arg3, var174, getNamedType_upvr(type), selectionSet, getNamedType_upvr(type_3), selectionSet_4), arg5, _2_11, _2_4)
	end
	return nil
end
local sameValue_upvw
function sameArguments_upvw(arg1, arg2) -- Line 645, Named "sameArguments"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: sameValue_upvw (read and write)
	]]
	if #arg1 ~= #arg2 then
		return false
	end
	return Array_upvr.every(arg1, function(arg1_5) -- Line 649
		--[[ Upvalues[3]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: sameValue_upvw (copied, read and write)
		]]
		local any_find_result1 = Array_upvr.find(arg2, function(arg1_6) -- Line 650
			--[[ Upvalues[1]:
				[1]: arg1_5 (readonly)
			]]
			local var198
			if arg1_6.name.value ~= arg1_5.name.value then
				var198 = false
			else
				var198 = true
			end
			return var198
		end)
		if not any_find_result1 then
			return false
		end
		return sameValue_upvw(arg1_5.value, any_find_result1.value)
	end)
end
local print_upvr = require(language.printer).print
function sameValue_upvw(arg1, arg2) -- Line 660, Named "sameValue"
	--[[ Upvalues[1]:
		[1]: print_upvr (readonly)
	]]
	local var201
	if print_upvr(arg1) ~= print_upvr(arg2) then
		var201 = false
	else
		var201 = true
	end
	return var201
end
local isListType_upvr = definition.isListType
local isNonNullType_upvr = definition.isNonNullType
local isLeafType_upvr = definition.isLeafType
function doTypesConflict_upvw(arg1, arg2) -- Line 667, Named "doTypesConflict"
	--[[ Upvalues[4]:
		[1]: isListType_upvr (readonly)
		[2]: doTypesConflict_upvw (read and write)
		[3]: isNonNullType_upvr (readonly)
		[4]: isLeafType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if isListType_upvr(arg1) then
		if isListType_upvr(arg2) then
			return doTypesConflict_upvw(arg1.ofType, arg2.ofType)
		end
		return true
	end
	if isListType_upvr(arg2) then
		return true
	end
	if isNonNullType_upvr(arg1) then
		if isNonNullType_upvr(arg2) then
			return doTypesConflict_upvw(arg1.ofType, arg2.ofType)
		end
		return true
	end
	if isNonNullType_upvr(arg2) then
		return true
	end
	local var205
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var205 = isLeafType_upvr(arg2)
		return var205
	end
	if var205 or INLINED() then
		if arg1 == arg2 then
			var205 = false
		else
			var205 = true
		end
		return var205
	end
	var205 = false
	return var205
end
local Map_upvr = LuauPolyfill.Map
local _collectFieldsAndFragmentNames_upvw
local Object_upvr = LuauPolyfill.Object
function getFieldsAndFragmentNames_upvw(arg1, arg2, arg3, arg4) -- Line 695, Named "getFieldsAndFragmentNames"
	--[[ Upvalues[3]:
		[1]: Map_upvr (readonly)
		[2]: _collectFieldsAndFragmentNames_upvw (read and write)
		[3]: Object_upvr (readonly)
	]]
	local var209 = arg2[arg4]
	if not var209 then
		local any_new_result1 = Map_upvr.new()
		local tbl_7 = {}
		_collectFieldsAndFragmentNames_upvw(arg1, arg3, arg4, any_new_result1, tbl_7)
		var209 = {any_new_result1, Object_upvr.keys(tbl_7)}
		arg2[arg4] = var209
	end
	return var209
end
function getReferencedFieldsAndFragmentNames_upvw(arg1, arg2, arg3) -- Line 717, Named "getReferencedFieldsAndFragmentNames"
	--[[ Upvalues[2]:
		[1]: typeFromAST_upvr (readonly)
		[2]: getFieldsAndFragmentNames_upvw (read and write)
	]]
	local var213 = arg2[arg3.selectionSet]
	if var213 then
		return var213
	end
	return getFieldsAndFragmentNames_upvw(arg1, arg2, typeFromAST_upvr(arg1:getSchema(), arg3.typeCondition), arg3.selectionSet)
end
local Kind_upvr = require(language.kinds).Kind
local isInterfaceType_upvr = definition.isInterfaceType
local null_upvr = require(Parent.luaUtils.null)
function _collectFieldsAndFragmentNames_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 733, Named "_collectFieldsAndFragmentNames"
	--[[ Upvalues[6]:
		[1]: Kind_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
		[3]: isInterfaceType_upvr (readonly)
		[4]: null_upvr (readonly)
		[5]: typeFromAST_upvr (readonly)
		[6]: _collectFieldsAndFragmentNames_upvw (read and write)
	]]
	for _, v_4 in ipairs(arg3.selections) do
		local kind = v_4.kind
		local var225
		if kind == Kind_upvr.FIELD then
			local value_4 = v_4.name.value
			local var227
			var225 = isObjectType_upvr(arg2)
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var225 = isInterfaceType_upvr(arg2)
				return var225
			end
			if var225 or INLINED_2() then
				var225 = arg2:getFields()
				var227 = var225:get(value_4)
			end
			if v_4.alias then
				var225 = v_4.alias.value
			else
				var225 = value_4
			end
			if not arg4[var225] then
				arg4[var225] = {}
			end
			local tbl_25 = {}
			local var229 = arg2
			if not var229 then
				var229 = null_upvr
			end
			local var230 = v_4
			if not var230 then
				var230 = null_upvr
			end
			local var231 = var227
			if not var231 then
				var231 = null_upvr
			end
			tbl_25[1] = var229
			tbl_25[2] = var230
			tbl_25[3] = var231
			table.insert(arg4[var225], tbl_25)
		elseif kind == Kind_upvr.FRAGMENT_SPREAD then
			arg5[v_4.name.value] = true
		elseif kind == Kind_upvr.INLINE_FRAGMENT then
			local typeCondition = v_4.typeCondition
			local var233 = arg2
			if typeCondition then
				var225 = typeFromAST_upvr(arg1:getSchema(), typeCondition)
				var233 = var225
			end
			var225 = _collectFieldsAndFragmentNames_upvw
			var225(arg1, var233, v_4.selectionSet, arg4, arg5)
		end
	end
end
function subfieldConflicts_upvw(arg1, arg2, arg3, arg4) -- Line 780, Named "subfieldConflicts"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if 0 < #arg1 then
		local module_6 = {}
		local tbl_8 = {}
		tbl_8[1] = arg2
		tbl_8[2] = Array_upvr.map(arg1, function(arg1_7) -- Line 785
			return arg1_7[1]
		end)
		local tbl_21 = {}
		tbl_21[1] = arg3
		local tbl = {}
		tbl[1] = arg4
		module_6[1] = tbl_8
		module_6[2] = Array_upvr.reduce(arg1, function(arg1_8, arg2_2) -- Line 789
			--[[ Upvalues[1]:
				[1]: Array_upvr (copied, readonly)
			]]
			return Array_upvr.concat(arg1_8, arg2_2[2])
		end, tbl_21)
		module_6[3] = Array_upvr.reduce(arg1, function(arg1_9, arg2_3) -- Line 793
			--[[ Upvalues[1]:
				[1]: Array_upvr (copied, readonly)
			]]
			return Array_upvr.concat(arg1_9, arg2_3[3])
		end, tbl)
		return module_6
	end
	return nil
end
var15_upvw = {}
local var241 = var15_upvw
local tbl_17_upvr = {
	__index = var241;
}
function var241.new() -- Line 819
	--[[ Upvalues[1]:
		[1]: tbl_17_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_17_upvr)
	setmetatable_result1._data = {}
	return setmetatable_result1
end
function var241.has(arg1, arg2, arg3, arg4) -- Line 825
	local var244 = arg1._data[arg2]
	local var245 = var244
	if var245 then
		var245 = var244[arg3]
	end
	if var245 == nil then
		do
			return false
		end
		local var246
	end
	if arg4 == false then
		if var245 ~= false then
			var246 = false
		else
			var246 = true
		end
		return var246
	end
	return true
end
function var241.add(arg1, arg2, arg3, arg4) -- Line 840
	arg1:_pairSetAdd(arg2, arg3, arg4)
	arg1:_pairSetAdd(arg3, arg2, arg4)
end
function var241._pairSetAdd(arg1, arg2, arg3, arg4) -- Line 845
	local var247 = arg1._data[arg2]
	if not var247 then
		var247 = {}
		arg1._data[arg2] = var247
	end
	var247[arg3] = arg4
end
return module_4