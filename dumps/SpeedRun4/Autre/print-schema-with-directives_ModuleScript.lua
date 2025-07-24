-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:39
-- Luau version 6, Types version 3
-- Time taken: 0.026440 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module_10 = {}
local GraphQL = require(Parent.GraphQL)
local Kind_upvr = GraphQL.Kind
local astFromValue_upvr = GraphQL.astFromValue
local astFromType_upvr = require(script.Parent.astFromType).astFromType
local getDirectivesInExtensions_upvr = require(script.Parent["get-directives"]).getDirectivesInExtensions
local makeDirectiveNode_upvw
local makeDirectiveNodes_upvw
local astFromField_upvw
local astFromSchema_upvw
local isSpecifiedDirective_upvr = GraphQL.isSpecifiedDirective
local astFromDirective_upvw
local isSpecifiedScalarType_upvr = GraphQL.isSpecifiedScalarType
local isIntrospectionType_upvr = GraphQL.isIntrospectionType
local isObjectType_upvr = GraphQL.isObjectType
local astFromObjectType_upvw
local isInterfaceType_upvr = GraphQL.isInterfaceType
local astFromInterfaceType_upvw
local isUnionType_upvr = GraphQL.isUnionType
local astFromUnionType_upvw
local isInputObjectType_upvr = GraphQL.isInputObjectType
local astFromInputObjectType_upvw
local isEnumType_upvr = GraphQL.isEnumType
local astFromEnumType_upvw
local isScalarType_upvr = GraphQL.isScalarType
local astFromScalarType_upvw
local Error_upvr = LuauPolyfill.Error
local function getDocumentNodeFromSchema_upvr(arg1, arg2) -- Line 160, Named "getDocumentNodeFromSchema"
	--[[ Upvalues[20]:
		[1]: astFromSchema_upvw (read and write)
		[2]: Boolean_upvr (readonly)
		[3]: isSpecifiedDirective_upvr (readonly)
		[4]: astFromDirective_upvw (read and write)
		[5]: isSpecifiedScalarType_upvr (readonly)
		[6]: isIntrospectionType_upvr (readonly)
		[7]: isObjectType_upvr (readonly)
		[8]: astFromObjectType_upvw (read and write)
		[9]: isInterfaceType_upvr (readonly)
		[10]: astFromInterfaceType_upvw (read and write)
		[11]: isUnionType_upvr (readonly)
		[12]: astFromUnionType_upvw (read and write)
		[13]: isInputObjectType_upvr (readonly)
		[14]: astFromInputObjectType_upvw (read and write)
		[15]: isEnumType_upvr (readonly)
		[16]: astFromEnumType_upvw (read and write)
		[17]: isScalarType_upvr (readonly)
		[18]: astFromScalarType_upvw (read and write)
		[19]: Error_upvr (readonly)
		[20]: Kind_upvr (readonly)
	]]
	if arg2 ~= nil then
	else
	end
	local pathToDirectivesInExtensions = ({}).pathToDirectivesInExtensions
	local any_getTypeMap_result1 = arg1:getTypeMap()
	local astFromSchema_result1 = astFromSchema_upvw(arg1, pathToDirectivesInExtensions)
	if astFromSchema_result1 ~= nil then
		({})[1] = astFromSchema_result1
	else
	end
	for _, v in arg1:getDirectives(), nil do
		if not Boolean_upvr.toJSBoolean(isSpecifiedDirective_upvr(v)) then
			table.insert({}, astFromDirective_upvw(v, arg1, pathToDirectivesInExtensions))
		end
	end
	for _, v_2 in any_getTypeMap_result1 do
		local any_get_result1_2 = any_getTypeMap_result1:get(v_2[1])
		if not isSpecifiedScalarType_upvr(any_get_result1_2) and not isIntrospectionType_upvr(any_get_result1_2) then
			if Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1_2)) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, astFromObjectType_upvw(any_get_result1_2, arg1, pathToDirectivesInExtensions))
			elseif Boolean_upvr.toJSBoolean(isInterfaceType_upvr(any_get_result1_2)) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, astFromInterfaceType_upvw(any_get_result1_2, arg1, pathToDirectivesInExtensions))
			elseif Boolean_upvr.toJSBoolean(isUnionType_upvr(any_get_result1_2)) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, astFromUnionType_upvw(any_get_result1_2, arg1, pathToDirectivesInExtensions))
			elseif Boolean_upvr.toJSBoolean(isInputObjectType_upvr(any_get_result1_2)) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, astFromInputObjectType_upvw(any_get_result1_2, arg1, pathToDirectivesInExtensions))
			elseif Boolean_upvr.toJSBoolean(isEnumType_upvr(any_get_result1_2)) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, astFromEnumType_upvw(any_get_result1_2, arg1, pathToDirectivesInExtensions))
			elseif Boolean_upvr.toJSBoolean(isScalarType_upvr(any_get_result1_2)) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, astFromScalarType_upvw(any_get_result1_2, arg1, pathToDirectivesInExtensions))
			else
				error(Error_upvr.new("Unknown type %s.":format(tostring(any_get_result1_2))))
			end
		end
	end
	local module_5 = {
		kind = Kind_upvr.DOCUMENT;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_5.definitions = {}
	return module_5
end
module_10.getDocumentNodeFromSchema = getDocumentNodeFromSchema_upvr
local print_upvr = GraphQL.print
function module_10.printSchemaWithDirectives(arg1, arg2) -- Line 244
	--[[ Upvalues[2]:
		[1]: getDocumentNodeFromSchema_upvr (readonly)
		[2]: print_upvr (readonly)
	]]
	if arg2 ~= nil then
	else
	end
	return print_upvr(getDocumentNodeFromSchema_upvr(arg1, {}))
end
local Map_upvr = LuauPolyfill.Map
local getRootTypeMap_upvr = require(script.Parent.rootTypes).getRootTypeMap
local isSome_upvr = require(script.Parent.helpers).isSome
local getDirectiveNodes_upvw
function astFromSchema_upvw(arg1, arg2) -- Line 252, Named "astFromSchema"
	--[[ Upvalues[9]:
		[1]: Map_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: getRootTypeMap_upvr (readonly)
		[5]: astFromType_upvr (readonly)
		[6]: Kind_upvr (readonly)
		[7]: Array_upvr (readonly)
		[8]: isSome_upvr (readonly)
		[9]: getDirectiveNodes_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_3 = {{"query", Object_upvr.None}, {"mutation", Object_upvr.None}, {"subscription", Object_upvr.None}}
	local any_new_result1_2 = Map_upvr.new(tbl_3)
	tbl_3 = {}
	local var117 = tbl_3
	local var118
	if arg1.astNode ~= nil then
		table.insert(var117, arg1.astNode)
	end
	if arg1.extensionASTNodes ~= nil then
		for _, v_3 in arg1.extensionASTNodes do
			table.insert(var117, v_3)
		end
	end
	for _, v_4 in var117 do
		if Boolean_upvr.toJSBoolean(v_4.operationTypes) then
			for _, v_5 in v_4.operationTypes do
				any_new_result1_2:set(v_5.operation, v_5)
			end
		end
	end
	for _, v_6 in any_new_result1_2 do
		local unpacked_value_1_2, unpacked_value_2_2 = table.unpack(v_6, 1, 2)
		local any_get_result1_3 = getRootTypeMap_upvr(arg1):get(unpacked_value_1_2)
		if any_get_result1_3 ~= nil then
			if unpacked_value_2_2 ~= nil and unpacked_value_2_2 ~= Object_upvr.None then
				unpacked_value_2_2.type = astFromType_upvr(any_get_result1_3)
			else
				local tbl_10 = {
					kind = Kind_upvr.OPERATION_TYPE_DEFINITION;
					operation = unpacked_value_1_2;
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_10.type = astFromType_upvr(any_get_result1_3)
				any_new_result1_2:set(unpacked_value_1_2, tbl_10)
			end
		end
	end
	local any_filter_result1 = Array_upvr.filter(Array_upvr.concat({}, any_new_result1_2:values()), isSome_upvr)
	if not Boolean_upvr.toJSBoolean(#any_filter_result1) then
		if not Boolean_upvr.toJSBoolean(#getDirectiveNodes_upvw(arg1, arg1, arg2)) then
			return nil
		end
	end
	local module_2 = {}
	if any_filter_result1 ~= nil then
	else
	end
	module_2.kind = Kind_upvr.SCHEMA_EXTENSION
	module_2.operationTypes = any_filter_result1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.directives = getDirectiveNodes_upvw(arg1, arg1, arg2)
	if typeof(arg1.astNode) == "table" then
		local _ = arg1.astNode.description
	else
	end
	if nil ~= nil then
		-- KONSTANTWARNING: GOTO [216] #151
	end
	if arg1.description == nil then
		-- KONSTANTWARNING: GOTO [216] #151
	end
	if Boolean_upvr.toJSBoolean(true) then
		({}).kind = Kind_upvr.STRING
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).value = arg1.description
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).block = true
	else
	end
	module_2.description = nil
	return module_2
end
module_10.astFromSchema = astFromSchema_upvw
local astFromArg_upvw
function astFromDirective_upvw(arg1, arg2, arg3) -- Line 355, Named "astFromDirective"
	--[[ Upvalues[4]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: astFromArg_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	local var127 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var127 = arg1.astNode.description
	else
		var127 = nil
	end
	if var127 ~= nil then
		-- KONSTANTWARNING: GOTO [40] #28
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 15. Error Block 30 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
		}
		-- KONSTANTWARNING: GOTO [40] #28
	end
	-- KONSTANTERROR: [21] 15. Error Block 30 end (CF ANALYSIS FAILED)
end
module_10.astFromDirective = astFromDirective_upvw
function getDirectiveNodes_upvw(arg1, arg2, arg3) -- Line 418, Named "getDirectiveNodes"
	--[[ Upvalues[5]:
		[1]: getDirectivesInExtensions_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: makeDirectiveNodes_upvw (read and write)
		[5]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11_result1 = getDirectivesInExtensions_upvr(arg1, arg3)
	if arg1.astNode ~= nil then
		table.insert({}, arg1.astNode)
	end
	local var139
	if Array_upvr.indexOf(Object_upvr.keys(arg1), "extensionASTNodes") ~= -1 and arg1.extensionASTNodes ~= nil then
		var139 = Array_upvr.concat(var139, arg1.extensionASTNodes)
	end
	if var11_result1 ~= nil then
		return makeDirectiveNodes_upvw(arg2, var11_result1)
	end
	for _, v_7 in var139 do
		if Boolean_upvr.toJSBoolean(v_7.directives) then
		end
	end
	return Array_upvr.concat({}, v_7.directives)
end
local var129_upvw = getDirectiveNodes_upvw
module_10.getDirectiveNodes = var129_upvw
local makeDeprecatedDirective_upvw
local function getDeprecatableDirectiveNodes_upvr(arg1, arg2, arg3) -- Line 471, Named "getDeprecatableDirectiveNodes"
	--[[ Upvalues[4]:
		[1]: getDirectivesInExtensions_upvr (readonly)
		[2]: makeDirectiveNodes_upvw (read and write)
		[3]: Array_upvr (readonly)
		[4]: makeDeprecatedDirective_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local getDirectivesInExtensions_upvr_result1 = getDirectivesInExtensions_upvr(arg1, arg3)
	local var153
	if getDirectivesInExtensions_upvr_result1 ~= nil then
		var153 = makeDirectiveNodes_upvw(arg2, getDirectivesInExtensions_upvr_result1)
		-- KONSTANTWARNING: GOTO [30] #24
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 15. Error Block 30 start (CF ANALYSIS FAILED)
	if typeof(arg1.astNode) == "table" then
		var153 = arg1.astNode.directives
	else
		var153 = nil
	end
	if var153 ~= nil then
		local any_filter_result1_4 = Array_upvr.filter(var153, function(arg1_5) -- Line 493
			local var155
			if arg1_5.name.value == "deprecated" then
				var155 = false
			else
				var155 = true
			end
			return var155
		end)
		if arg1.deprecationReason ~= nil then
			if typeof(Array_upvr.filter(var153, function(arg1_6) -- Line 500
				local var158
				if arg1_6.name.value ~= "deprecated" then
					var158 = false
				else
					var158 = true
				end
				return var158
			end)) == "table" then
				local function _(arg1_7) -- Line 504
					local var160
					if arg1_7.name.value ~= "deprecated" then
						var160 = false
					else
						var160 = true
					end
					return var160
				end
			else
			end
		end
	end
	local var161
	if arg1.deprecationReason ~= nil and var161 == nil then
		var161 = makeDeprecatedDirective_upvw(arg1.deprecationReason)
	end
	if var161 == nil then
		return any_filter_result1_4
	end
	do
		return Array_upvr.concat({var161}, any_filter_result1_4)
	end
	-- KONSTANTERROR: [16] 15. Error Block 30 end (CF ANALYSIS FAILED)
end
module_10.getDeprecatableDirectiveNodes = getDeprecatableDirectiveNodes_upvr
function astFromArg_upvw(arg1, arg2, arg3) -- Line 528, Named "astFromArg"
	--[[ Upvalues[5]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: astFromType_upvr (readonly)
		[4]: astFromValue_upvr (readonly)
		[5]: getDeprecatableDirectiveNodes_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var164 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var164 = arg1.astNode.description
	else
		var164 = nil
	end
	if var164 ~= nil then
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 15. Error Block 19 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [21] 15. Error Block 19 end (CF ANALYSIS FAILED)
end
local var163_upvw = astFromArg_upvw
module_10.astFromArg = var163_upvw
function astFromObjectType_upvw(arg1, arg2, arg3) -- Line 566, Named "astFromObjectType"
	--[[ Upvalues[7]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: astFromField_upvw (read and write)
		[5]: Object_upvr (readonly)
		[6]: astFromType_upvr (readonly)
		[7]: var129_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var166 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var166 = arg1.astNode.description
	else
		var166 = nil
	end
	if var166 ~= nil then
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 15. Error Block 18 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	do
		return {
			kind = var166.OBJECT_TYPE_DEFINITION;
			description = nil;
			name = {
				kind = Kind_upvr.NAME;
				value = arg1.name;
			};
			fields = Array_upvr.map(arg1:getFields():values(), function(arg1_8) -- Line 592
				--[[ Upvalues[3]:
					[1]: astFromField_upvw (copied, read and write)
					[2]: arg2 (readonly)
					[3]: arg3 (readonly)
				]]
				return astFromField_upvw(arg1_8, arg2, arg3)
			end);
			interfaces = Array_upvr.map(Object_upvr.values(arg1:getInterfaces()), function(arg1_9) -- Line 596
				--[[ Upvalues[1]:
					[1]: astFromType_upvr (copied, readonly)
				]]
				return astFromType_upvr(arg1_9)
			end);
			directives = var129_upvw(arg1, arg2, arg3);
		}
	end
	-- KONSTANTERROR: [21] 15. Error Block 18 end (CF ANALYSIS FAILED)
end
module_10.astFromObjectType = astFromObjectType_upvw
function astFromInterfaceType_upvw(arg1, arg2, arg3) -- Line 605, Named "astFromInterfaceType"
	--[[ Upvalues[7]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: astFromField_upvw (read and write)
		[5]: var129_upvw (read and write)
		[6]: Object_upvr (readonly)
		[7]: astFromType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var172 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var172 = arg1.astNode.description
	else
		var172 = nil
	end
	if var172 ~= nil then
	elseif Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	local module_7 = {
		kind = var172.INTERFACE_TYPE_DEFINITION;
		description = nil;
		name = {
			kind = Kind_upvr.NAME;
			value = arg1.name;
		};
		fields = Array_upvr.map(arg1:getFields():values(), function(arg1_10) -- Line 631
			--[[ Upvalues[3]:
				[1]: astFromField_upvw (copied, read and write)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
			]]
			return astFromField_upvw(arg1_10, arg2, arg3)
		end);
		directives = var129_upvw(arg1, arg2, arg3);
	}
	if arg1.getInterfaces ~= nil then
		module_7.interfaces = Array_upvr.map(Object_upvr.values(arg1:getInterfaces()), function(arg1_11) -- Line 643
			--[[ Upvalues[1]:
				[1]: astFromType_upvr (copied, readonly)
			]]
			return astFromType_upvr(arg1_11)
		end)
	end
	return module_7
end
module_10.astFromInterfaceType = astFromInterfaceType_upvw
function astFromUnionType_upvw(arg1, arg2, arg3) -- Line 653, Named "astFromUnionType"
	--[[ Upvalues[5]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: var129_upvw (read and write)
		[4]: Array_upvr (readonly)
		[5]: astFromType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var178 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var178 = arg1.astNode.description
	else
		var178 = nil
	end
	if var178 ~= nil then
	elseif Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	return {
		kind = var178.UNION_TYPE_DEFINITION;
		description = nil;
		name = {
			kind = Kind_upvr.NAME;
			value = arg1.name;
		};
		directives = var129_upvw(arg1, arg2, arg3);
		types = Array_upvr.map(arg1:getTypes(), function(arg1_12) -- Line 680
			--[[ Upvalues[1]:
				[1]: astFromType_upvr (copied, readonly)
			]]
			return astFromType_upvr(arg1_12)
		end);
	}
end
module_10.astFromUnionType = astFromUnionType_upvw
local astFromInputField_upvw
function astFromInputObjectType_upvw(arg1, arg2, arg3) -- Line 688, Named "astFromInputObjectType"
	--[[ Upvalues[5]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: astFromInputField_upvw (read and write)
		[5]: var129_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var184 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var184 = arg1.astNode.description
	else
		var184 = nil
	end
	if var184 ~= nil then
	elseif Boolean_upvr.toJSBoolean(arg1.description) then
		local tbl_2 = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	return {
		kind = var184.INPUT_OBJECT_TYPE_DEFINITION;
		description = nil;
		name = {
			kind = Kind_upvr.NAME;
			value = arg1.name;
		};
		fields = Array_upvr.map(arg1:getFields():values(), function(arg1_13) -- Line 714
			--[[ Upvalues[3]:
				[1]: astFromInputField_upvw (copied, read and write)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
			]]
			return astFromInputField_upvw(arg1_13, arg2, arg3)
		end);
		directives = var129_upvw(arg1, arg2, arg3);
	}
end
module_10.astFromInputObjectType = astFromInputObjectType_upvw
local astFromEnumValue_upvw
function astFromEnumType_upvw(arg1, arg2, arg3) -- Line 725, Named "astFromEnumType"
	--[[ Upvalues[6]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: astFromEnumValue_upvw (read and write)
		[6]: var129_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var190 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var190 = arg1.astNode.description
	else
		var190 = nil
	end
	if var190 ~= nil then
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 15. Error Block 18 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	do
		return {
			kind = var190.ENUM_TYPE_DEFINITION;
			description = nil;
			name = {
				kind = Kind_upvr.NAME;
				value = arg1.name;
			};
			values = Array_upvr.map(Object_upvr.values(arg1:getValues()), function(arg1_14) -- Line 749
				--[[ Upvalues[3]:
					[1]: astFromEnumValue_upvw (copied, read and write)
					[2]: arg2 (readonly)
					[3]: arg3 (readonly)
				]]
				return astFromEnumValue_upvw(arg1_14, arg2, arg3)
			end);
			directives = var129_upvw(arg1, arg2, arg3);
		}
	end
	-- KONSTANTERROR: [21] 15. Error Block 18 end (CF ANALYSIS FAILED)
end
module_10.astFromEnumType = astFromEnumType_upvw
function astFromScalarType_upvw(arg1, arg2, arg3) -- Line 759, Named "astFromScalarType"
	--[[ Upvalues[6]:
		[1]: getDirectivesInExtensions_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: makeDirectiveNodes_upvw (read and write)
		[4]: Array_upvr (readonly)
		[5]: makeDirectiveNode_upvw (read and write)
		[6]: Kind_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	local getDirectivesInExtensions_upvr_result1_2 = getDirectivesInExtensions_upvr(arg1, arg3)
	local var196
	if Boolean_upvr.toJSBoolean(getDirectivesInExtensions_upvr_result1_2) then
		var196 = makeDirectiveNodes_upvw(arg2, getDirectivesInExtensions_upvr_result1_2)
		-- KONSTANTWARNING: GOTO [32] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 15. Error Block 47 start (CF ANALYSIS FAILED)
	if typeof(arg1.astNode) == "table" then
		var196 = arg1.astNode.directives
	else
		var196 = nil
	end
	if not var196 then
		var196 = {}
	end
	if not Boolean_upvr.toJSBoolean(arg1.specifiedByUrl) or not arg1.specifiedByUrl then
		local specifiedByURL = arg1.specifiedByURL
	end
	if Boolean_upvr.toJSBoolean(specifiedByURL) then
		local function _(arg1_15) -- Line 787
			local var199
			if arg1_15.name.value ~= "specifiedBy" then
				var199 = false
			else
				var199 = true
			end
			return var199
		end
	else
	end
	if Boolean_upvr.toJSBoolean(specifiedByURL) then
		table.insert(var196, makeDirectiveNode_upvw("specifiedBy", {
			url = specifiedByURL;
		}))
	end
	local var201 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var201 = arg1.astNode.description
	else
		var201 = nil
	end
	if var201 ~= nil then
	elseif Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	do
		return {
			kind = var201.SCALAR_TYPE_DEFINITION;
			description = nil;
			name = {
				kind = Kind_upvr.NAME;
				value = arg1.name;
			};
			directives = var196;
		}
	end
	-- KONSTANTERROR: [15] 15. Error Block 47 end (CF ANALYSIS FAILED)
end
module_10.astFromScalarType = astFromScalarType_upvw
function astFromField_upvw(arg1, arg2, arg3) -- Line 817, Named "astFromField"
	--[[ Upvalues[6]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: var163_upvw (read and write)
		[5]: astFromType_upvr (readonly)
		[6]: getDeprecatableDirectiveNodes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var205 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var205 = arg1.astNode.description
	else
		var205 = nil
	end
	if var205 ~= nil then
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 15. Error Block 18 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	do
		return {
			kind = var205.FIELD_DEFINITION;
			description = nil;
			name = {
				kind = Kind_upvr.NAME;
				value = arg1.name;
			};
			arguments = Array_upvr.map(arg1.args, function(arg1_16) -- Line 838
				--[[ Upvalues[3]:
					[1]: var163_upvw (copied, read and write)
					[2]: arg2 (readonly)
					[3]: arg3 (readonly)
				]]
				return var163_upvw(arg1_16, arg2, arg3)
			end);
			type = astFromType_upvr(arg1.type);
			directives = getDeprecatableDirectiveNodes_upvr(arg1, arg2, arg3);
		}
	end
	-- KONSTANTERROR: [21] 15. Error Block 18 end (CF ANALYSIS FAILED)
end
module_10.astFromField = astFromField_upvw
local NULL_upvr = GraphQL.NULL
function astFromInputField_upvw(arg1, arg2, arg3) -- Line 849, Named "astFromInputField"
	--[[ Upvalues[6]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: astFromType_upvr (readonly)
		[4]: getDeprecatableDirectiveNodes_upvr (readonly)
		[5]: astFromValue_upvr (readonly)
		[6]: NULL_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local var211 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var211 = arg1.astNode.description
	else
		var211 = nil
	end
	if var211 ~= nil then
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 15. Error Block 20 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [21] 15. Error Block 20 end (CF ANALYSIS FAILED)
end
module_10.astFromInputField = astFromInputField_upvw
function astFromEnumValue_upvw(arg1, arg2, arg3) -- Line 888, Named "astFromEnumValue"
	--[[ Upvalues[3]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: getDeprecatableDirectiveNodes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var213 = Kind_upvr
	if typeof(arg1.astNode) == "table" then
		var213 = arg1.astNode.description
	else
		var213 = nil
	end
	if var213 ~= nil then
		-- KONSTANTWARNING: GOTO [43] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 15. Error Block 18 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg1.description) then
		local _ = {
			kind = Kind_upvr.STRING;
			value = arg1.description;
			block = true;
		}
	else
	end
	do
		return {
			kind = var213.ENUM_VALUE_DEFINITION;
			description = nil;
			name = {
				kind = Kind_upvr.NAME;
				value = arg1.name;
			};
			directives = getDeprecatableDirectiveNodes_upvr(arg1, arg2, arg3);
		}
	end
	-- KONSTANTERROR: [21] 15. Error Block 18 end (CF ANALYSIS FAILED)
end
module_10.astFromEnumValue = astFromEnumValue_upvw
local GraphQLDeprecatedDirective_upvr = GraphQL.GraphQLDeprecatedDirective
function makeDeprecatedDirective_upvw(arg1) -- Line 916, Named "makeDeprecatedDirective"
	--[[ Upvalues[2]:
		[1]: makeDirectiveNode_upvw (read and write)
		[2]: GraphQLDeprecatedDirective_upvr (readonly)
	]]
	local module_6 = {}
	module_6.reason = arg1
	return makeDirectiveNode_upvw("deprecated", module_6, GraphQLDeprecatedDirective_upvr)
end
module_10.makeDeprecatedDirective = makeDeprecatedDirective_upvw
function makeDirectiveNode_upvw(arg1, arg2, arg3) -- Line 923, Named "makeDirectiveNode"
	--[[ Upvalues[4]:
		[1]: astFromValue_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Kind_upvr (readonly)
		[4]: astFromValueUntyped_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 27 start (CF ANALYSIS FAILED)
	for _, v_8 in arg3.args do
		local name = v_8.name
		local var233 = arg2[tostring(name)]
		if var233 ~= nil then
			local astFromValue_upvr_result1 = astFromValue_upvr(var233, v_8.type)
			if Boolean_upvr.toJSBoolean(astFromValue_upvr_result1) then
				table.insert({}, {
					kind = Kind_upvr.ARGUMENT;
					name = {
						kind = Kind_upvr.NAME;
						value = name;
					};
					value = astFromValue_upvr_result1;
				})
			end
		end
	end
	local module_8 = {
		kind = Kind_upvr.DIRECTIVE;
	}
	local tbl_8 = {
		kind = Kind_upvr.NAME;
	}
	tbl_8.value = arg1
	module_8.name = tbl_8
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_8.arguments = {}
	do
		return module_8
	end
	-- KONSTANTERROR: [4] 3. Error Block 27 end (CF ANALYSIS FAILED)
end
local astFromValueUntyped_upvr = require(script.Parent.astFromValueUntyped).astFromValueUntyped
local var219_upvw = makeDirectiveNode_upvw
module_10.makeDirectiveNode = var219_upvw
function makeDirectiveNodes_upvw(arg1, arg2) -- Line 975, Named "makeDirectiveNodes"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: var219_upvw (read and write)
	]]
	local module_3 = {}
	for i_9 in arg2 do
		local var246 = arg2[tostring(i_9)]
		local var247
		if typeof(arg1) == "table" then
			var247 = arg1:getDirective(i_9)
		else
			var247 = nil
		end
		if Array_upvr.isArray(var246) and #var246 ~= 0 then
			for i_10, v_9 in var246 do
				table.insert(module_3, var219_upvw(i_9, v_9, var247))
			end
		else
			i_10 = i_9
			v_9 = var246
			table.insert(module_3, var219_upvw(i_10, v_9, var247))
		end
	end
	return module_3
end
module_10.makeDirectiveNodes = makeDirectiveNodes_upvw
return module_10