-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:15
-- Luau version 6, Types version 3
-- Time taken: 0.022161 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Map_upvr = LuauPolyfill.Map
local Object_upvr = LuauPolyfill.Object
local module_4 = {}
local GraphQL = require(Parent.GraphQL)
local getNamedType_upvr = GraphQL.getNamedType
local isNonNullType_upvr = GraphQL.isNonNullType
local isScalarType_upvr = GraphQL.isScalarType
local Kind_upvr = GraphQL.Kind
local rootTypes = require(script.Parent.rootTypes)
local resolveField_upvw
local tbl_20_upvr = {}
local tbl_5_upvw = {}
local any_new_result1_upvw = Map_upvr.new()
local function _(arg1) -- Line 89, Named "addOperationVariable"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvw (read and write)
	]]
	table.insert(tbl_5_upvw, arg1)
end
local function _() -- Line 92, Named "resetOperationVariables"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvw (read and write)
	]]
	tbl_5_upvw = {}
end
local function _() -- Line 95, Named "resetFieldMap"
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvw (read and write)
		[2]: Map_upvr (readonly)
	]]
	any_new_result1_upvw = Map_upvr.new()
end
local getRootTypeNames_upvr = rootTypes.getRootTypeNames
local buildOperationAndCollectVariables_upvw
function module_4.buildOperationNodeForField(arg1) -- Line 102
	--[[ Upvalues[7]:
		[1]: tbl_5_upvw (read and write)
		[2]: any_new_result1_upvw (read and write)
		[3]: Map_upvr (readonly)
		[4]: getRootTypeNames_upvr (readonly)
		[5]: buildOperationAndCollectVariables_upvw (read and write)
		[6]: Boolean_upvr (readonly)
		[7]: Array_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	if arg1.ignore == nil then
	else
	end
	if arg1.selectedFields == nil then
		-- KONSTANTWARNING: GOTO [31] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 17. Error Block 35 start (CF ANALYSIS FAILED)
	tbl_5_upvw = {}
	any_new_result1_upvw = Map_upvr.new()
	local _ = {
		schema = arg1.schema;
		fieldName = arg1.field;
		kind = arg1.kind;
	}
	if Boolean_upvr.toJSBoolean(arg1.models) then
		-- KONSTANTWARNING: GOTO [60] #40
	end
	-- KONSTANTERROR: [29] 17. Error Block 35 end (CF ANALYSIS FAILED)
end
local getDefinedRootType_upvr = rootTypes.getDefinedRootType
local resolveVariable_upvw
function buildOperationAndCollectVariables_upvw(arg1) -- Line 174, Named "buildOperationAndCollectVariables"
	--[[ Upvalues[6]:
		[1]: getDefinedRootType_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: resolveVariable_upvw (read and write)
		[4]: tbl_5_upvw (read and write)
		[5]: Kind_upvr (readonly)
		[6]: resolveField_upvw (read and write)
	]]
	local schema = arg1.schema
	local fieldName = arg1.fieldName
	local kind = arg1.kind
	local argNames = arg1.argNames
	local getDefinedRootType_upvr_result1 = getDefinedRootType_upvr(schema, kind)
	local any_get_result1 = getDefinedRootType_upvr_result1:getFields():get(fieldName)
	if any_get_result1 and any_get_result1.args then
		for _, v in any_get_result1.args do
			local name = v.name
			if not argNames or Array_upvr.includes(argNames, name) then
				table.insert(tbl_5_upvw, resolveVariable_upvw(v, name))
			end
		end
	end
	return {
		kind = Kind_upvr.OPERATION_DEFINITION;
		operation = kind;
		name = {
			kind = Kind_upvr.NAME;
			value = "%s_%s":format(tostring(fieldName), tostring(kind));
		};
		variableDefinitions = {};
		selectionSet = {
			kind = Kind_upvr.SELECTION_SET;
			selections = {resolveField_upvw({
				type = getDefinedRootType_upvr_result1;
				field = any_get_result1;
				models = arg1.models;
				firstCall = true;
				path = {};
				ancestors = {};
				ignore = arg1.ignore;
				depthLimit = arg1.depthLimit;
				circularReferenceDepth = arg1.circularReferenceDepth;
				schema = schema;
				depth = 0;
				argNames = argNames;
				selectedFields = arg1.selectedFields;
				rootTypeNames = arg1.rootTypeNames;
			})};
		};
	}
end
local isUnionType_upvr = GraphQL.isUnionType
local hasCircularRef_upvw
local isInterfaceType_upvr = GraphQL.isInterfaceType
local isObjectType_upvr = GraphQL.isObjectType
local function resolveSelectionSet_upvr(arg1) -- Line 259, Named "resolveSelectionSet"
	--[[ Upvalues[12]:
		[1]: Boolean_upvr (readonly)
		[2]: isUnionType_upvr (readonly)
		[3]: Kind_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: hasCircularRef_upvw (read and write)
		[6]: resolveSelectionSet_upvr (readonly)
		[7]: tbl_20_upvr (readonly)
		[8]: isInterfaceType_upvr (readonly)
		[9]: isObjectType_upvr (readonly)
		[10]: getNamedType_upvr (readonly)
		[11]: resolveField_upvw (read and write)
		[12]: Object_upvr (readonly)
	]]
	local type_3_upvr = arg1.type
	local models_upvr = arg1.models
	local path_upvr_3 = arg1.path
	local ancestors_upvr = arg1.ancestors
	local ignore_upvr = arg1.ignore
	local depthLimit_upvr = arg1.depthLimit
	local circularReferenceDepth_upvr = arg1.circularReferenceDepth
	local schema_upvr = arg1.schema
	local depth_upvr = arg1.depth
	local argNames_upvr_3 = arg1.argNames
	local selectedFields_upvr = arg1.selectedFields
	local rootTypeNames_upvr = arg1.rootTypeNames
	local var55
	if typeof(selectedFields_upvr) == "boolean" and depthLimit_upvr < depth_upvr then return end
	var55 = Boolean_upvr
	var55 = isUnionType_upvr(type_3_upvr)
	if var55.toJSBoolean(var55) then
		var55 = {}
		var55.kind = Kind_upvr.SELECTION_SET
		var55.selections = Array_upvr.filter(Array_upvr.map(Array_upvr.filter(type_3_upvr:getTypes(), function(arg1_2) -- Line 305
			--[[ Upvalues[4]:
				[1]: hasCircularRef_upvw (copied, read and write)
				[2]: Array_upvr (copied, readonly)
				[3]: ancestors_upvr (readonly)
				[4]: circularReferenceDepth_upvr (readonly)
			]]
			local module_15 = {}
			module_15[1] = arg1_2
			return not hasCircularRef_upvw(Array_upvr.concat({}, ancestors_upvr, module_15), {
				depth = circularReferenceDepth_upvr;
			})
		end), function(arg1_3) -- Line 319
			--[[ Upvalues[14]:
				[1]: Kind_upvr (copied, readonly)
				[2]: resolveSelectionSet_upvr (copied, readonly)
				[3]: type_3_upvr (readonly)
				[4]: models_upvr (readonly)
				[5]: path_upvr_3 (readonly)
				[6]: ancestors_upvr (readonly)
				[7]: ignore_upvr (readonly)
				[8]: depthLimit_upvr (readonly)
				[9]: circularReferenceDepth_upvr (readonly)
				[10]: schema_upvr (readonly)
				[11]: depth_upvr (readonly)
				[12]: argNames_upvr_3 (readonly)
				[13]: selectedFields_upvr (readonly)
				[14]: rootTypeNames_upvr (readonly)
			]]
			local module = {
				kind = Kind_upvr.INLINE_FRAGMENT;
				typeCondition = {
					kind = Kind_upvr.NAMED_TYPE;
					name = {
						kind = Kind_upvr.NAME;
						value = arg1_3.name;
					};
				};
			}
			local tbl_12 = {
				parent = type_3_upvr;
			}
			tbl_12.type = arg1_3
			tbl_12.models = models_upvr
			tbl_12.path = path_upvr_3
			tbl_12.ancestors = ancestors_upvr
			tbl_12.ignore = ignore_upvr
			tbl_12.depthLimit = depthLimit_upvr
			tbl_12.circularReferenceDepth = circularReferenceDepth_upvr
			tbl_12.schema = schema_upvr
			tbl_12.depth = depth_upvr
			tbl_12.argNames = argNames_upvr_3
			tbl_12.selectedFields = selectedFields_upvr
			tbl_12.rootTypeNames = rootTypeNames_upvr
			module.selectionSet = resolveSelectionSet_upvr(tbl_12)
			return module
		end), function(arg1_4) -- Line 344
			--[[ Upvalues[1]:
				[1]: tbl_20_upvr (copied, readonly)
			]]
			local var68 = false
			if typeof(arg1_4) == "table" then
				var68 = false
				if arg1_4.selectionSet ~= tbl_20_upvr then
					var68 = false
					if typeof(arg1_4.selectionSet) == "table" then
						var68 = false
						if typeof(arg1_4.selectionSet.selections) == "table" then
							if 0 >= #arg1_4.selectionSet.selections then
								var68 = false
							else
								var68 = true
							end
						end
					end
				end
			end
			return var68
		end)
		return var55
	end
	var55 = Boolean_upvr
	var55 = isInterfaceType_upvr(type_3_upvr)
	if var55.toJSBoolean(var55) then
		var55 = Array_upvr
		var55 = schema_upvr:getTypeMap():values()
		var55 = {}
		var55.kind = Kind_upvr.SELECTION_SET
		var55.selections = Array_upvr.filter(Array_upvr.map(Array_upvr.filter(var55.filter(var55, function(arg1_5) -- Line 376
			--[[ Upvalues[4]:
				[1]: isObjectType_upvr (copied, readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: Array_upvr (copied, readonly)
				[4]: type_3_upvr (readonly)
			]]
			local var42_result1 = isObjectType_upvr(arg1_5)
			if Boolean_upvr.toJSBoolean(var42_result1) then
				return Array_upvr.includes(arg1_5:getInterfaces(), type_3_upvr)
			end
			return var42_result1
		end), function(arg1_6) -- Line 387
			--[[ Upvalues[4]:
				[1]: hasCircularRef_upvw (copied, read and write)
				[2]: Array_upvr (copied, readonly)
				[3]: ancestors_upvr (readonly)
				[4]: circularReferenceDepth_upvr (readonly)
			]]
			local module_11 = {}
			module_11[1] = arg1_6
			return not hasCircularRef_upvw(Array_upvr.concat({}, ancestors_upvr, module_11), {
				depth = circularReferenceDepth_upvr;
			})
		end), function(arg1_7) -- Line 401
			--[[ Upvalues[14]:
				[1]: Kind_upvr (copied, readonly)
				[2]: resolveSelectionSet_upvr (copied, readonly)
				[3]: type_3_upvr (readonly)
				[4]: models_upvr (readonly)
				[5]: path_upvr_3 (readonly)
				[6]: ancestors_upvr (readonly)
				[7]: ignore_upvr (readonly)
				[8]: depthLimit_upvr (readonly)
				[9]: circularReferenceDepth_upvr (readonly)
				[10]: schema_upvr (readonly)
				[11]: depth_upvr (readonly)
				[12]: argNames_upvr_3 (readonly)
				[13]: selectedFields_upvr (readonly)
				[14]: rootTypeNames_upvr (readonly)
			]]
			local module_17 = {
				kind = Kind_upvr.INLINE_FRAGMENT;
				typeCondition = {
					kind = Kind_upvr.NAMED_TYPE;
					name = {
						kind = Kind_upvr.NAME;
						value = arg1_7.name;
					};
				};
			}
			local tbl_21 = {
				parent = type_3_upvr;
			}
			tbl_21.type = arg1_7
			tbl_21.models = models_upvr
			tbl_21.path = path_upvr_3
			tbl_21.ancestors = ancestors_upvr
			tbl_21.ignore = ignore_upvr
			tbl_21.depthLimit = depthLimit_upvr
			tbl_21.circularReferenceDepth = circularReferenceDepth_upvr
			tbl_21.schema = schema_upvr
			tbl_21.depth = depth_upvr
			tbl_21.argNames = argNames_upvr_3
			tbl_21.selectedFields = selectedFields_upvr
			tbl_21.rootTypeNames = rootTypeNames_upvr
			module_17.selectionSet = resolveSelectionSet_upvr(tbl_21)
			return module_17
		end), function(arg1_8) -- Line 426
			--[[ Upvalues[1]:
				[1]: tbl_20_upvr (copied, readonly)
			]]
			if typeof(arg1_8) == "table" and arg1_8.selectionSet ~= tbl_20_upvr and typeof(arg1_8.selectionSet) == "table" then
				local var81
				if typeof(arg1_8.selectionSet.selections) == "table" then
					if 0 >= #arg1_8.selectionSet.selections then
						var81 = false
					else
						var81 = true
					end
					return var81
				end
			end
			return false
		end)
		return var55
	end
	var55 = Boolean_upvr
	local var42_result1_2 = isObjectType_upvr(type_3_upvr)
	if Boolean_upvr.toJSBoolean(var42_result1_2) then
		var55 = not Boolean_upvr.toJSBoolean(rootTypeNames_upvr:has(type_3_upvr.name))
	else
		var55 = var42_result1_2
	end
	if var55.toJSBoolean(var55) then
		local any_includes_result1 = Array_upvr.includes(ignore_upvr, type_3_upvr.name)
		if not Boolean_upvr.toJSBoolean(any_includes_result1) or not any_includes_result1 then
		end
		local var84 = Boolean_upvr
		local var85 = not Boolean_upvr.toJSBoolean(arg1.firstCall) and Array_upvr.includes(models_upvr, type_3_upvr.name)
		if Boolean_upvr.toJSBoolean(var85) then
			var84 = not Boolean_upvr.toJSBoolean(Array_upvr.includes(ignore_upvr, "%s.%s":format(arg1.parent.name, tostring(path_upvr_3[#path_upvr_3]))))
		else
			var84 = var85
		end
		if var84.toJSBoolean(var84) then
			return {
				kind = Kind_upvr.SELECTION_SET;
				selections = {{
					kind = Kind_upvr.FIELD;
					name = {
						kind = Kind_upvr.NAME;
						value = "id";
					};
				}};
			}
		end
		local any_getFields_result1_upvr = type_3_upvr:getFields()
		return {
			kind = Kind_upvr.SELECTION_SET;
			selections = Array_upvr.filter(Array_upvr.map(Array_upvr.filter(any_getFields_result1_upvr:keys(), function(arg1_9) -- Line 504
				--[[ Upvalues[6]:
					[1]: hasCircularRef_upvw (copied, read and write)
					[2]: Array_upvr (copied, readonly)
					[3]: ancestors_upvr (readonly)
					[4]: getNamedType_upvr (copied, readonly)
					[5]: any_getFields_result1_upvr (readonly)
					[6]: circularReferenceDepth_upvr (readonly)
				]]
				return not hasCircularRef_upvw(Array_upvr.concat({}, ancestors_upvr, {getNamedType_upvr(any_getFields_result1_upvr:get(arg1_9).type)}), {
					depth = circularReferenceDepth_upvr;
				})
			end), function(arg1_10) -- Line 517
				--[[ Upvalues[17]:
					[1]: selectedFields_upvr (readonly)
					[2]: Boolean_upvr (copied, readonly)
					[3]: resolveField_upvw (copied, read and write)
					[4]: type_3_upvr (readonly)
					[5]: any_getFields_result1_upvr (readonly)
					[6]: models_upvr (readonly)
					[7]: Array_upvr (copied, readonly)
					[8]: path_upvr_3 (readonly)
					[9]: ancestors_upvr (readonly)
					[10]: ignore_upvr (readonly)
					[11]: depthLimit_upvr (readonly)
					[12]: circularReferenceDepth_upvr (readonly)
					[13]: schema_upvr (readonly)
					[14]: depth_upvr (readonly)
					[15]: argNames_upvr_3 (readonly)
					[16]: rootTypeNames_upvr (readonly)
					[17]: tbl_20_upvr (copied, readonly)
				]]
				local var96
				if typeof(selectedFields_upvr) == "table" then
					var96 = selectedFields_upvr[tostring(arg1_10)]
				else
					var96 = true
				end
				if Boolean_upvr.toJSBoolean(var96) then
					local module_14 = {
						type = type_3_upvr;
						field = any_getFields_result1_upvr:get(arg1_10);
						models = models_upvr;
					}
					local tbl = {}
					tbl[1] = arg1_10
					module_14.path = Array_upvr.concat({}, path_upvr_3, tbl)
					module_14.ancestors = ancestors_upvr
					module_14.ignore = ignore_upvr
					module_14.depthLimit = depthLimit_upvr
					module_14.circularReferenceDepth = circularReferenceDepth_upvr
					module_14.schema = schema_upvr
					module_14.depth = depth_upvr
					module_14.argNames = argNames_upvr_3
					module_14.selectedFields = var96
					module_14.rootTypeNames = rootTypeNames_upvr
					return resolveField_upvw(module_14)
				end
				return tbl_20_upvr
			end), function(arg1_11) -- Line 552
				--[[ Upvalues[4]:
					[1]: tbl_20_upvr (copied, readonly)
					[2]: Array_upvr (copied, readonly)
					[3]: Object_upvr (copied, readonly)
					[4]: Boolean_upvr (copied, readonly)
				]]
				if arg1_11 == nil or arg1_11 == tbl_20_upvr then
					return false
				end
				if Array_upvr.indexOf(Object_upvr.keys(arg1_11), "selectionSet") ~= -1 then
					local var100
					if typeof(arg1_11.selectionSet) == "table" and typeof(arg1_11.selectionSet.selections) == "table" then
						var100 = #arg1_11.selectionSet.selections
					else
						var100 = nil
					end
					return Boolean_upvr.toJSBoolean(var100)
				end
				return true
			end);
		}
	end
	return nil
end
local isListType_upvr = GraphQL.isListType
function resolveVariable_upvw(arg1, arg2) -- Line 592, Named "resolveVariable"
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: isListType_upvr (readonly)
		[3]: Kind_upvr (readonly)
		[4]: isNonNullType_upvr (readonly)
	]]
	local function resolveVariableType_upvr(arg1_12) -- Line 599, Named "resolveVariableType"
		--[[ Upvalues[5]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: isListType_upvr (copied, readonly)
			[3]: Kind_upvr (copied, readonly)
			[4]: resolveVariableType_upvr (readonly)
			[5]: isNonNullType_upvr (copied, readonly)
		]]
		if Boolean_upvr.toJSBoolean(isListType_upvr(arg1_12)) then
			return {
				kind = Kind_upvr.LIST_TYPE;
				type = resolveVariableType_upvr(arg1_12.ofType);
			}
		end
		if Boolean_upvr.toJSBoolean(isNonNullType_upvr(arg1_12)) then
			return {
				kind = Kind_upvr.NON_NULL_TYPE;
				type = resolveVariableType_upvr(arg1_12.ofType);
			}
		end
		return {
			kind = Kind_upvr.NAMED_TYPE;
			name = {
				kind = Kind_upvr.NAME;
				value = arg1_12.name;
			};
		}
	end
	local module_12 = {
		kind = Kind_upvr.VARIABLE_DEFINITION;
	}
	local tbl_11 = {
		kind = Kind_upvr.VARIABLE;
	}
	local tbl_19 = {
		kind = Kind_upvr.NAME;
	}
	local var109
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var109 = arg2
		return var109
	end
	if not Boolean_upvr.toJSBoolean(arg2) or not INLINED() then
		var109 = arg1.name
	end
	tbl_19.value = var109
	tbl_11.name = tbl_19
	module_12.variable = tbl_11
	module_12.type = resolveVariableType_upvr(arg1.type)
	return module_12
end
local function getArgumentName_upvr(arg1, arg2) -- Line 622, Named "getArgumentName"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local module_3 = {}
	module_3[1] = arg1
	return Array_upvr.join(Array_upvr.concat({}, arg2, module_3), '_')
end
local isEnumType_upvr = GraphQL.isEnumType
function resolveField_upvw(arg1) -- Line 646, Named "resolveField"
	--[[ Upvalues[14]:
		[1]: getNamedType_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: getArgumentName_upvr (readonly)
		[5]: isNonNullType_upvr (readonly)
		[6]: resolveVariable_upvw (read and write)
		[7]: tbl_5_upvw (read and write)
		[8]: Kind_upvr (readonly)
		[9]: any_new_result1_upvw (read and write)
		[10]: isScalarType_upvr (readonly)
		[11]: isEnumType_upvr (readonly)
		[12]: resolveSelectionSet_upvr (readonly)
		[13]: Object_upvr (readonly)
		[14]: tbl_20_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type = arg1.type
	local field = arg1.field
	local firstCall_upvr = arg1.firstCall
	local path_upvr = arg1.path
	local argNames_upvr_2 = arg1.argNames
	local var9_result1 = getNamedType_upvr(field.type)
	local var151_upvw = false
	local var152
	if Boolean_upvr.toJSBoolean(field.args) and #field.args ~= 0 then
		var152 = Array_upvr
		var152 = field.args
		local function var153(arg1_14) -- Line 686
			--[[ Upvalues[11]:
				[1]: getArgumentName_upvr (copied, readonly)
				[2]: path_upvr (readonly)
				[3]: argNames_upvr_2 (readonly)
				[4]: Array_upvr (copied, readonly)
				[5]: Boolean_upvr (copied, readonly)
				[6]: isNonNullType_upvr (copied, readonly)
				[7]: var151_upvw (read and write)
				[8]: firstCall_upvr (readonly)
				[9]: resolveVariable_upvw (copied, read and write)
				[10]: tbl_5_upvw (copied, read and write)
				[11]: Kind_upvr (copied, readonly)
			]]
			local name_2 = arg1_14.name
			if argNames_upvr_2 then
				name_2 = not Array_upvr.includes(argNames_upvr_2, getArgumentName_upvr(name_2, path_upvr))
			else
				name_2 = Boolean_upvr.toJSBoolean(argNames_upvr_2)
			end
			if name_2 then
				if Boolean_upvr.toJSBoolean(isNonNullType_upvr(arg1_14.type)) then
					var151_upvw = true
				end
				return nil
			end
			if not Boolean_upvr.toJSBoolean(firstCall_upvr) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(tbl_5_upvw, resolveVariable_upvw(arg1_14, getArgumentName_upvr(name_2, path_upvr)))
			end
			return {
				kind = Kind_upvr.ARGUMENT;
				name = {
					kind = Kind_upvr.NAME;
					value = arg1_14.name;
				};
				value = {
					kind = Kind_upvr.VARIABLE;
					name = {
						kind = Kind_upvr.NAME;
						value = getArgumentName_upvr(arg1_14.name, path_upvr);
					};
				};
			}
		end
		var152 = Boolean_upvr.toJSBoolean
	end
	if Boolean_upvr.toJSBoolean(var151_upvw) then
		return nil
	end
	var152 = path_upvr
	local any_concat_result1_2 = Array_upvr.concat({}, var152, {field.name})
	var152 = Array_upvr
	var152 = any_concat_result1_2
	local any_join_result1 = var152.join(var152, '.')
	var152 = field.name
	local var162 = Boolean_upvr
	local any_has_result1 = any_new_result1_upvw:has(any_join_result1)
	if Boolean_upvr.toJSBoolean(any_has_result1) then
		if any_new_result1_upvw:get(any_join_result1) == tostring(field.type) then
			var162 = false
		else
			var162 = true
		end
	else
		var162 = any_has_result1
	end
	if var162.toJSBoolean(var162) then
		var152 = var152..tostring(field.type):gsub('!', "NonNull")
	end
	any_new_result1_upvw:set(any_join_result1, tostring(field.type))
	if not Boolean_upvr.toJSBoolean(isScalarType_upvr(var9_result1)) then
		local var164
		if not Boolean_upvr.toJSBoolean(isEnumType_upvr(var9_result1)) then
			local tbl_9 = {
				parent = type;
				type = var9_result1;
				models = arg1.models;
				firstCall = firstCall_upvr;
				path = any_concat_result1_2;
				ancestors = Array_upvr.concat({}, arg1.ancestors, {type});
				ignore = arg1.ignore;
				depthLimit = arg1.depthLimit;
				circularReferenceDepth = arg1.circularReferenceDepth;
				schema = arg1.schema;
				depth = arg1.depth + 1;
				argNames = argNames_upvr_2;
				selectedFields = arg1.selectedFields;
				rootTypeNames = arg1.rootTypeNames;
			}
			local resolveSelectionSet_result1_2 = resolveSelectionSet_upvr(tbl_9)
			if Boolean_upvr.toJSBoolean(resolveSelectionSet_result1_2) then
				tbl_9 = resolveSelectionSet_result1_2
			else
				tbl_9 = nil
			end
			local module_6 = {
				kind = Kind_upvr.FIELD;
			}
			local tbl_13 = {}
			var164 = Kind_upvr
			tbl_13.kind = var164.NAME
			tbl_13.value = field.name
			module_6.name = tbl_13
			tbl_13 = false
			local var170 = tbl_13
			if var152 ~= field.name then
				var170 = {}
				local tbl_6 = {}
				var164 = Kind_upvr.NAME
				tbl_6.kind = var164
				tbl_6.value = var152
				var170.alias = tbl_6
			end
			local module_5 = {}
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var164 = tbl_9
				return var164
			end
			if not Boolean_upvr.toJSBoolean(tbl_9) or not INLINED_3() then
				var164 = tbl_20_upvr
			end
			module_5.selectionSet = var164
			module_5.arguments = Array_upvr.filter(var152.map(var152, var153), var152)
			return Object_upvr.assign({}, module_6, var170, module_5)
		end
	end
	local module_7 = {
		kind = Kind_upvr.FIELD;
	}
	local tbl_14 = {
		kind = Kind_upvr.NAME;
		value = field.name;
	}
	module_7.name = tbl_14
	tbl_14 = false
	local var175 = tbl_14
	if var152 ~= field.name then
		var175 = {}
		var175.alias = {
			kind = Kind_upvr.NAME;
			value = var152;
		}
	end
	local module_16 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_16.arguments = Array_upvr.filter(var152.map(var152, var153), var152)
	return Object_upvr.assign({}, module_7, var175, module_16)
end
function hasCircularRef_upvw(arg1, arg2) -- Line 782, Named "hasCircularRef"
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: isScalarType_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	if arg2 ~= nil then
		local _ = arg2
	else
		({}).depth = 1
	end
	local var179_upvr = arg1[#arg1]
	if Boolean_upvr.toJSBoolean(isScalarType_upvr(var179_upvr)) then
		return false
	end
	local any_filter_result1 = Array_upvr.filter(arg1, function(arg1_15) -- Line 798
		--[[ Upvalues[1]:
			[1]: var179_upvr (readonly)
		]]
		local var181
		if arg1_15.name ~= var179_upvr.name then
			var181 = false
		else
			var181 = true
		end
		return var181
	end)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if ({}).depth >= #any_filter_result1 then
		any_filter_result1 = false
	else
		any_filter_result1 = true
	end
	return any_filter_result1
end
return module_4