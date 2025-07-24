-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:08
-- Luau version 6, Types version 3
-- Time taken: 0.031757 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local jsutils = Parent.jsutils
local Kind_upvr = require(Parent.language.kinds).Kind
local predicates = require(Parent.language.predicates)
local getDirectiveValues_upvr = require(Parent.execution.values).getDirectiveValues
local type = Parent.type
local schema = require(type.schema)
local scalars = require(type.scalars)
local introspection = require(type.introspection)
local directives = require(type.directives)
local definition = require(type.definition)
local assertSchema_upvr = schema.assertSchema
local devAssert_upvr = require(jsutils.devAssert).devAssert
local assertValidSDLExtension_upvr = require(Parent.validation.validate).assertValidSDLExtension
local GraphQLSchema_upvr = schema.GraphQLSchema
local Map_upvr = LuauPolyfill.Map
local isTypeDefinitionNode_upvr = predicates.isTypeDefinitionNode
local isTypeExtensionNode_upvr = predicates.isTypeExtensionNode
local isListType_upvr = definition.isListType
local GraphQLList_upvr = definition.GraphQLList
local isNonNullType_upvr = definition.isNonNullType
local GraphQLNonNull_upvr = definition.GraphQLNonNull
local GraphQLDirective_upvr = directives.GraphQLDirective
local Object_upvr = LuauPolyfill.Object
local mapValueOrdered_upvr = require(Parent.luaUtils.mapValueOrdered).mapValueOrdered
local coerceToMap_upvr = LuauPolyfill.coerceToMap
local isIntrospectionType_upvr = introspection.isIntrospectionType
local isSpecifiedScalarType_upvr = scalars.isSpecifiedScalarType
local isScalarType_upvr = definition.isScalarType
local isObjectType_upvr = definition.isObjectType
local isInterfaceType_upvr = definition.isInterfaceType
local isUnionType_upvr = definition.isUnionType
local isEnumType_upvr = definition.isEnumType
local isInputObjectType_upvr = definition.isInputObjectType
local inspect_upvr = require(jsutils.inspect).inspect
local GraphQLInputObjectType_upvr = definition.GraphQLInputObjectType
local GraphQLEnumType_upvr = definition.GraphQLEnumType
local getSpecifiedByUrl_upvw
local GraphQLScalarType_upvr = definition.GraphQLScalarType
local GraphQLObjectType_upvr = definition.GraphQLObjectType
local GraphQLInterfaceType_upvr = definition.GraphQLInterfaceType
local GraphQLUnionType_upvr = definition.GraphQLUnionType
local var48_upvw
local Error_upvr = LuauPolyfill.Error
local getDeprecationReason_upvw
local valueFromAST_upvr = require(script.Parent.valueFromAST).valueFromAST
function extendSchemaImpl(arg1, arg2, arg3) -- Line 175
	--[[ Upvalues[33]:
		[1]: Map_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: isTypeDefinitionNode_upvr (readonly)
		[4]: isTypeExtensionNode_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: isListType_upvr (readonly)
		[7]: GraphQLList_upvr (readonly)
		[8]: isNonNullType_upvr (readonly)
		[9]: GraphQLNonNull_upvr (readonly)
		[10]: GraphQLDirective_upvr (readonly)
		[11]: Object_upvr (readonly)
		[12]: mapValueOrdered_upvr (readonly)
		[13]: coerceToMap_upvr (readonly)
		[14]: isIntrospectionType_upvr (readonly)
		[15]: isSpecifiedScalarType_upvr (readonly)
		[16]: isScalarType_upvr (readonly)
		[17]: isObjectType_upvr (readonly)
		[18]: isInterfaceType_upvr (readonly)
		[19]: isUnionType_upvr (readonly)
		[20]: isEnumType_upvr (readonly)
		[21]: isInputObjectType_upvr (readonly)
		[22]: inspect_upvr (readonly)
		[23]: GraphQLInputObjectType_upvr (readonly)
		[24]: GraphQLEnumType_upvr (readonly)
		[25]: getSpecifiedByUrl_upvw (read and write)
		[26]: GraphQLScalarType_upvr (readonly)
		[27]: GraphQLObjectType_upvr (readonly)
		[28]: GraphQLInterfaceType_upvr (readonly)
		[29]: GraphQLUnionType_upvr (readonly)
		[30]: var48_upvw (read and write)
		[31]: Error_upvr (readonly)
		[32]: getDeprecationReason_upvw (read and write)
		[33]: valueFromAST_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_5 = {}
	local any_new_result1_upvr_3 = Map_upvr.new()
	local module_25 = {}
	local var310
	for extendField_upvw, extendScalarType_upvw in ipairs(arg2.definitions) do
		if extendScalarType_upvw.kind == Kind_upvr.SCHEMA_DEFINITION then
			var310 = extendScalarType_upvw
		elseif extendScalarType_upvw.kind == Kind_upvr.SCHEMA_EXTENSION then
			table.insert(module_25, extendScalarType_upvw)
		elseif isTypeDefinitionNode_upvr(extendScalarType_upvw) then
			table.insert(tbl_5, extendScalarType_upvw)
		else
			local var311
			if isTypeExtensionNode_upvr(extendScalarType_upvw) then
				local value_7 = extendScalarType_upvw.name.value
				local any_get_result1 = any_new_result1_upvr_3:get(value_7)
				if any_get_result1 then
					var311 = Array_upvr.concat
					var311 = var311(any_get_result1, {extendScalarType_upvw})
				else
					var311 = {}
					var311[1] = extendScalarType_upvw
				end
				any_new_result1_upvr_3:set(value_7, var311)
			elseif extendScalarType_upvw.kind == Kind_upvr.DIRECTIVE_DEFINITION then
				table.insert({}, extendScalarType_upvw)
			end
		end
	end
	local var315
	if #any_new_result1_upvr_3:keys() == 0 and #tbl_5 == 0 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if #{} == 0 and #module_25 == 0 and var310 == nil then
			return arg1
		end
	end
	local any_new_result1_upvr_4 = Map_upvr.new()
	local extendArg_upvw
	extendField_upvw = nil
	extendScalarType_upvw = nil
	local buildInterfaces_upvw
	local buildArgumentMap_upvw
	local buildFieldMap_upvw
	local replaceNamedType_upvw
	local function replaceType_upvr(arg1_27) -- Line 279, Named "replaceType"
		--[[ Upvalues[6]:
			[1]: isListType_upvr (copied, readonly)
			[2]: GraphQLList_upvr (copied, readonly)
			[3]: replaceType_upvr (readonly)
			[4]: isNonNullType_upvr (copied, readonly)
			[5]: GraphQLNonNull_upvr (copied, readonly)
			[6]: replaceNamedType_upvw (read and write)
		]]
		if isListType_upvr(arg1_27) then
			return GraphQLList_upvr.new(replaceType_upvr(arg1_27.ofType))
		end
		if isNonNullType_upvr(arg1_27) then
			return GraphQLNonNull_upvr.new(replaceType_upvr(arg1_27.ofType))
		end
		return replaceNamedType_upvw(arg1_27)
	end
	function replaceNamedType_upvw(arg1_28) -- Line 291, Named "replaceNamedType"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_4 (readonly)
		]]
		return any_new_result1_upvr_4:get(arg1_28.name)
	end
	local var322_upvw = replaceNamedType_upvw
	local extendObjectType_upvw
	local extendInterfaceType_upvw
	local extendUnionType_upvw
	local extendEnumType_upvw
	local extendInputObjectType_upvw
	local buildInputFieldMap_upvw
	function extendInputObjectType_upvw(arg1_31) -- Line 341, Named "extendInputObjectType"
		--[[ Upvalues[9]:
			[1]: any_new_result1_upvr_3 (readonly)
			[2]: GraphQLInputObjectType_upvr (copied, readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: Map_upvr (copied, readonly)
			[5]: Array_upvr (copied, readonly)
			[6]: mapValueOrdered_upvr (copied, readonly)
			[7]: coerceToMap_upvr (copied, readonly)
			[8]: replaceType_upvr (readonly)
			[9]: buildInputFieldMap_upvw (read and write)
		]]
		local any_toConfig_result1_6_upvr = arg1_31:toConfig()
		local var332_upvr = any_new_result1_upvr_3[any_toConfig_result1_6_upvr.name]
		if not var332_upvr then
			var332_upvr = {}
		end
		local module_7 = {}
		local function fields() -- Line 347
			--[[ Upvalues[9]:
				[1]: Map_upvr (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: mapValueOrdered_upvr (copied, readonly)
				[4]: coerceToMap_upvr (copied, readonly)
				[5]: any_toConfig_result1_6_upvr (readonly)
				[6]: Object_upvr (copied, readonly)
				[7]: replaceType_upvr (copied, readonly)
				[8]: buildInputFieldMap_upvw (copied, read and write)
				[9]: var332_upvr (readonly)
			]]
			return Map_upvr.new(Array_upvr.concat(mapValueOrdered_upvr(coerceToMap_upvr(any_toConfig_result1_6_upvr.fields), function(arg1_32) -- Line 349
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: replaceType_upvr (copied, readonly)
				]]
				return Object_upvr.assign({}, arg1_32, {
					type = replaceType_upvr(arg1_32.type);
				})
			end):entries(), buildInputFieldMap_upvw(var332_upvr):entries()))
		end
		module_7.fields = fields
		module_7.extensionASTNodes = Array_upvr.concat(any_toConfig_result1_6_upvr.extensionASTNodes, var332_upvr)
		return GraphQLInputObjectType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_6_upvr, module_7))
	end
	local buildEnumValueMap_upvw
	function extendEnumType_upvw(arg1_33) -- Line 360, Named "extendEnumType"
		--[[ Upvalues[6]:
			[1]: any_new_result1_upvr_3 (readonly)
			[2]: GraphQLEnumType_upvr (copied, readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: Map_upvr (copied, readonly)
			[5]: Array_upvr (copied, readonly)
			[6]: buildEnumValueMap_upvw (read and write)
		]]
		local any_toConfig_result1 = arg1_33:toConfig()
		local any_get_result1_9 = any_new_result1_upvr_3:get(arg1_33.name)
		if not any_get_result1_9 then
			any_get_result1_9 = {}
		end
		return GraphQLEnumType_upvr.new(Object_upvr.assign({}, any_toConfig_result1, {
			values = Map_upvr.new(Array_upvr.concat(any_toConfig_result1.values:entries(), buildEnumValueMap_upvw(any_get_result1_9):entries()));
			extensionASTNodes = Array_upvr.concat(any_toConfig_result1.extensionASTNodes, any_get_result1_9);
		}))
	end
	function extendScalarType_upvw(arg1_34) -- Line 378, Named "extendScalarType"
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr_3 (readonly)
			[2]: getSpecifiedByUrl_upvw (copied, read and write)
			[3]: GraphQLScalarType_upvr (copied, readonly)
			[4]: Object_upvr (copied, readonly)
			[5]: Array_upvr (copied, readonly)
		]]
		local any_toConfig_result1_8 = arg1_34:toConfig()
		local any_get_result1_3 = any_new_result1_upvr_3:get(any_toConfig_result1_8.name)
		if not any_get_result1_3 then
			any_get_result1_3 = {}
		end
		for _, _ in ipairs(any_get_result1_3) do
			local var349
		end
		return GraphQLScalarType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_8, {
			specifiedByUrl = var349;
			extensionASTNodes = Array_upvr.concat(any_toConfig_result1_8.extensionASTNodes, any_get_result1_3);
		}))
	end
	function extendObjectType_upvw(arg1_35) -- Line 394, Named "extendObjectType"
		--[[ Upvalues[11]:
			[1]: any_new_result1_upvr_3 (readonly)
			[2]: GraphQLObjectType_upvr (copied, readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: Array_upvr (copied, readonly)
			[5]: var322_upvw (read and write)
			[6]: buildInterfaces_upvw (read and write)
			[7]: Map_upvr (copied, readonly)
			[8]: mapValueOrdered_upvr (copied, readonly)
			[9]: coerceToMap_upvr (copied, readonly)
			[10]: extendField_upvw (read and write)
			[11]: buildFieldMap_upvw (read and write)
		]]
		local any_toConfig_result1_15_upvr = arg1_35:toConfig()
		local any_get_result1_5_upvr = any_new_result1_upvr_3:get(any_toConfig_result1_15_upvr.name)
		if not any_get_result1_5_upvr then
			any_get_result1_5_upvr = {}
		end
		local module_9 = {}
		local function interfaces() -- Line 400
			--[[ Upvalues[5]:
				[1]: Array_upvr (copied, readonly)
				[2]: arg1_35 (readonly)
				[3]: var322_upvw (copied, read and write)
				[4]: buildInterfaces_upvw (copied, read and write)
				[5]: any_get_result1_5_upvr (readonly)
			]]
			return Array_upvr.concat(Array_upvr.map(arg1_35:getInterfaces(), var322_upvw), buildInterfaces_upvw(any_get_result1_5_upvr))
		end
		module_9.interfaces = interfaces
		local function fields() -- Line 407
			--[[ Upvalues[8]:
				[1]: Map_upvr (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: mapValueOrdered_upvr (copied, readonly)
				[4]: coerceToMap_upvr (copied, readonly)
				[5]: any_toConfig_result1_15_upvr (readonly)
				[6]: extendField_upvw (copied, read and write)
				[7]: buildFieldMap_upvw (copied, read and write)
				[8]: any_get_result1_5_upvr (readonly)
			]]
			return Map_upvr.new(Array_upvr.concat(mapValueOrdered_upvr(coerceToMap_upvr(any_toConfig_result1_15_upvr.fields), extendField_upvw):entries(), buildFieldMap_upvw(any_get_result1_5_upvr):entries()))
		end
		module_9.fields = fields
		module_9.extensionASTNodes = Array_upvr.concat(any_toConfig_result1_15_upvr.extensionASTNodes, any_get_result1_5_upvr)
		return GraphQLObjectType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_15_upvr, module_9))
	end
	function extendInterfaceType_upvw(arg1_36) -- Line 419, Named "extendInterfaceType"
		--[[ Upvalues[11]:
			[1]: any_new_result1_upvr_3 (readonly)
			[2]: GraphQLInterfaceType_upvr (copied, readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: Array_upvr (copied, readonly)
			[5]: var322_upvw (read and write)
			[6]: buildInterfaces_upvw (read and write)
			[7]: Map_upvr (copied, readonly)
			[8]: mapValueOrdered_upvr (copied, readonly)
			[9]: coerceToMap_upvr (copied, readonly)
			[10]: extendField_upvw (read and write)
			[11]: buildFieldMap_upvw (read and write)
		]]
		local any_toConfig_result1_14_upvr = arg1_36:toConfig()
		local any_get_result1_7_upvr = any_new_result1_upvr_3:get(any_toConfig_result1_14_upvr.name)
		if not any_get_result1_7_upvr then
			any_get_result1_7_upvr = {}
		end
		local module_3 = {}
		local function interfaces() -- Line 425
			--[[ Upvalues[5]:
				[1]: Array_upvr (copied, readonly)
				[2]: arg1_36 (readonly)
				[3]: var322_upvw (copied, read and write)
				[4]: buildInterfaces_upvw (copied, read and write)
				[5]: any_get_result1_7_upvr (readonly)
			]]
			return Array_upvr.concat(Array_upvr.map(arg1_36:getInterfaces(), var322_upvw), buildInterfaces_upvw(any_get_result1_7_upvr))
		end
		module_3.interfaces = interfaces
		local function fields() -- Line 432
			--[[ Upvalues[8]:
				[1]: Map_upvr (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: mapValueOrdered_upvr (copied, readonly)
				[4]: coerceToMap_upvr (copied, readonly)
				[5]: any_toConfig_result1_14_upvr (readonly)
				[6]: extendField_upvw (copied, read and write)
				[7]: buildFieldMap_upvw (copied, read and write)
				[8]: any_get_result1_7_upvr (readonly)
			]]
			return Map_upvr.new(Array_upvr.concat(mapValueOrdered_upvr(coerceToMap_upvr(any_toConfig_result1_14_upvr.fields), extendField_upvw):entries(), buildFieldMap_upvw(any_get_result1_7_upvr):entries()))
		end
		module_3.fields = fields
		module_3.extensionASTNodes = Array_upvr.concat(any_toConfig_result1_14_upvr.extensionASTNodes, any_get_result1_7_upvr)
		return GraphQLInterfaceType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_14_upvr, module_3))
	end
	local buildUnionTypes_upvw
	function extendUnionType_upvw(arg1_37) -- Line 444, Named "extendUnionType"
		--[[ Upvalues[6]:
			[1]: any_new_result1_upvr_3 (readonly)
			[2]: GraphQLUnionType_upvr (copied, readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: Array_upvr (copied, readonly)
			[5]: var322_upvw (read and write)
			[6]: buildUnionTypes_upvw (read and write)
		]]
		local any_toConfig_result1_2 = arg1_37:toConfig()
		local any_get_result1_2_upvr = any_new_result1_upvr_3:get(any_toConfig_result1_2.name)
		if not any_get_result1_2_upvr then
			any_get_result1_2_upvr = {}
		end
		local module_11 = {}
		local function types() -- Line 450
			--[[ Upvalues[5]:
				[1]: Array_upvr (copied, readonly)
				[2]: arg1_37 (readonly)
				[3]: var322_upvw (copied, read and write)
				[4]: buildUnionTypes_upvw (copied, read and write)
				[5]: any_get_result1_2_upvr (readonly)
			]]
			return Array_upvr.concat(Array_upvr.map(arg1_37:getTypes(), var322_upvw), buildUnionTypes_upvw(any_get_result1_2_upvr))
		end
		module_11.types = types
		module_11.extensionASTNodes = Array_upvr.concat(any_toConfig_result1_2.extensionASTNodes, any_get_result1_2_upvr)
		return GraphQLUnionType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_2, module_11))
	end
	function extendField_upvw(arg1_38) -- Line 461, Named "extendField"
		--[[ Upvalues[4]:
			[1]: Object_upvr (copied, readonly)
			[2]: replaceType_upvr (readonly)
			[3]: mapValueOrdered_upvr (copied, readonly)
			[4]: extendArg_upvw (read and write)
		]]
		local module_5 = {}
		local replaceType_upvr_result1 = replaceType_upvr(arg1_38.type)
		module_5.type = replaceType_upvr_result1
		if arg1_38.args then
			replaceType_upvr_result1 = mapValueOrdered_upvr(arg1_38.args, extendArg_upvw)
		else
			replaceType_upvr_result1 = nil
		end
		module_5.args = replaceType_upvr_result1
		return Object_upvr.assign({}, arg1_38, module_5)
	end
	function extendArg_upvw(arg1_39) -- Line 469, Named "extendArg"
		--[[ Upvalues[2]:
			[1]: Object_upvr (copied, readonly)
			[2]: replaceType_upvr (readonly)
		]]
		return Object_upvr.assign({}, arg1_39, {
			type = replaceType_upvr(arg1_39.type);
		})
	end
	local getNamedType_upvw
	local function getOperationTypes(arg1_40) -- Line 473
		--[[ Upvalues[1]:
			[1]: getNamedType_upvw (read and write)
		]]
		local module_33 = {}
		for _, v_3 in ipairs(arg1_40) do
			local operationTypes_2 = v_3.operationTypes
			if not operationTypes_2 then
				operationTypes_2 = {}
			end
			for _, v_4 in ipairs(operationTypes_2) do
				module_33[v_4.operation] = getNamedType_upvw(v_4.type)
			end
		end
		return module_33
	end
	function getNamedType_upvw(arg1_41) -- Line 496, Named "getNamedType"
		--[[ Upvalues[3]:
			[1]: var48_upvw (copied, read and write)
			[2]: any_new_result1_upvr_4 (readonly)
			[3]: Error_upvr (copied, readonly)
		]]
		local value = arg1_41.name.value
		local var383 = var48_upvw[value]
		if not var383 then
			var383 = any_new_result1_upvr_4[value]
		end
		if var383 == nil then
			error(Error_upvr.new("Unknown type: \"%s\".":format(value)))
		end
		return var383
	end
	local var381_upvw = getNamedType_upvw
	local function getWrappedType_upvr(arg1_42) -- Line 508, Named "getWrappedType"
		--[[ Upvalues[5]:
			[1]: Kind_upvr (copied, readonly)
			[2]: GraphQLList_upvr (copied, readonly)
			[3]: getWrappedType_upvr (readonly)
			[4]: GraphQLNonNull_upvr (copied, readonly)
			[5]: var381_upvw (read and write)
		]]
		if arg1_42.kind == Kind_upvr.LIST_TYPE then
			return GraphQLList_upvr.new(getWrappedType_upvr(arg1_42.type))
		end
		if arg1_42.kind == Kind_upvr.NON_NULL_TYPE then
			return GraphQLNonNull_upvr.new(getWrappedType_upvr(arg1_42.type))
		end
		return var381_upvw(arg1_42)
	end
	function buildFieldMap_upvw(arg1_45) -- Line 537, Named "buildFieldMap"
		--[[ Upvalues[4]:
			[1]: Map_upvr (copied, readonly)
			[2]: getWrappedType_upvr (readonly)
			[3]: buildArgumentMap_upvw (read and write)
			[4]: getDeprecationReason_upvw (copied, read and write)
		]]
		for _, v_5 in ipairs(arg1_45) do
			local var398
			if v_5.fields then
				var398 = v_5.fields
			else
				var398 = {}
			end
			for _, v_6 in ipairs(var398) do
				local tbl = {}
				local getWrappedType_result1_3 = getWrappedType_upvr(v_6.type)
				tbl.type = getWrappedType_result1_3
				if v_6.description then
					getWrappedType_result1_3 = v_6.description.value
				else
					getWrappedType_result1_3 = nil
				end
				tbl.description = getWrappedType_result1_3
				tbl.args = buildArgumentMap_upvw(v_6.arguments)
				tbl.deprecationReason = getDeprecationReason_upvw(v_6)
				tbl.astNode = v_6
				Map_upvr.new():set(v_6.name.value, tbl)
			end
		end
		return Map_upvr.new()
	end
	function buildArgumentMap_upvw(arg1_46) -- Line 565, Named "buildArgumentMap"
		--[[ Upvalues[4]:
			[1]: Map_upvr (copied, readonly)
			[2]: getWrappedType_upvr (readonly)
			[3]: valueFromAST_upvr (copied, readonly)
			[4]: getDeprecationReason_upvw (copied, read and write)
		]]
		if arg1_46 then
		else
		end
		local any_new_result1_2 = Map_upvr.new()
		for _, v_7 in ipairs({}) do
			local getWrappedType_upvr_result1_2 = getWrappedType_upvr(v_7.type)
			local tbl_12 = {
				type = getWrappedType_upvr_result1_2;
			}
			local var414
			if v_7.description then
				var414 = v_7.description.value
			else
				var414 = nil
			end
			tbl_12.description = var414
			var414 = valueFromAST_upvr(v_7.defaultValue, getWrappedType_upvr_result1_2)
			tbl_12.defaultValue = var414
			var414 = getDeprecationReason_upvw(v_7)
			tbl_12.deprecationReason = var414
			tbl_12.astNode = v_7
			any_new_result1_2:set(v_7.name.value, tbl_12)
		end
		return any_new_result1_2
	end
	function buildInputFieldMap_upvw(arg1_47) -- Line 589, Named "buildInputFieldMap"
		--[[ Upvalues[4]:
			[1]: Map_upvr (copied, readonly)
			[2]: getWrappedType_upvr (readonly)
			[3]: valueFromAST_upvr (copied, readonly)
			[4]: getDeprecationReason_upvw (copied, read and write)
		]]
		for _, v_8 in ipairs(arg1_47) do
			local var426
			if v_8.fields then
				var426 = v_8.fields
			else
				var426 = {}
			end
			for _, v_9 in ipairs(var426) do
				local getWrappedType_upvr_result1 = getWrappedType_upvr(v_9.type)
				local tbl_4 = {
					type = getWrappedType_upvr_result1;
				}
				local var432
				if v_9.description then
					var432 = v_9.description.value
				else
					var432 = nil
				end
				tbl_4.description = var432
				var432 = valueFromAST_upvr(v_9.defaultValue, getWrappedType_upvr_result1)
				tbl_4.defaultValue = var432
				var432 = getDeprecationReason_upvw(v_9)
				tbl_4.deprecationReason = var432
				tbl_4.astNode = v_9
				Map_upvr.new():set(v_9.name.value, tbl_4)
			end
		end
		return Map_upvr.new()
	end
	function buildEnumValueMap_upvw(arg1_48) -- Line 621, Named "buildEnumValueMap"
		--[[ Upvalues[2]:
			[1]: Map_upvr (copied, readonly)
			[2]: getDeprecationReason_upvw (copied, read and write)
		]]
		for _, v_10 in ipairs(arg1_48) do
			local var444
			if v_10.values then
				var444 = v_10.values
			else
				var444 = {}
			end
			for _, v_11 in ipairs(var444) do
				local tbl_13 = {}
				local var449
				if v_11.description then
					var449 = v_11.description.value
				else
					var449 = nil
				end
				tbl_13.description = var449
				var449 = getDeprecationReason_upvw(v_11)
				tbl_13.deprecationReason = var449
				tbl_13.astNode = v_11
				Map_upvr.new():set(v_11.name.value, tbl_13)
			end
		end
		return Map_upvr.new()
	end
	function buildInterfaces_upvw(arg1_49) -- Line 644, Named "buildInterfaces"
		--[[ Upvalues[1]:
			[1]: var381_upvw (read and write)
		]]
		local module_28 = {}
		for _, v_12 in ipairs(arg1_49) do
			if v_12.interfaces then
				for _, v_13 in ipairs(v_12.interfaces) do
					table.insert(module_28, var381_upvw(v_13))
				end
			end
		end
		return module_28
	end
	function buildUnionTypes_upvw(arg1_50) -- Line 670, Named "buildUnionTypes"
		--[[ Upvalues[1]:
			[1]: var381_upvw (read and write)
		]]
		local module_26 = {}
		for _, v_14 in ipairs(arg1_50) do
			if v_14.types then
				for _, v_15 in ipairs(v_14.types) do
					table.insert(module_26, var381_upvw(v_15))
				end
			end
		end
		return module_26
	end
	local function _(arg1_51) -- Line 691, Named "buildType"
		--[[ Upvalues[16]:
			[1]: any_new_result1_upvr_3 (readonly)
			[2]: Kind_upvr (copied, readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: GraphQLObjectType_upvr (copied, readonly)
			[5]: buildInterfaces_upvw (read and write)
			[6]: buildFieldMap_upvw (read and write)
			[7]: GraphQLInterfaceType_upvr (copied, readonly)
			[8]: GraphQLEnumType_upvr (copied, readonly)
			[9]: buildEnumValueMap_upvw (read and write)
			[10]: GraphQLUnionType_upvr (copied, readonly)
			[11]: buildUnionTypes_upvw (read and write)
			[12]: GraphQLScalarType_upvr (copied, readonly)
			[13]: getSpecifiedByUrl_upvw (copied, read and write)
			[14]: GraphQLInputObjectType_upvr (copied, readonly)
			[15]: buildInputFieldMap_upvw (read and write)
			[16]: inspect_upvr (copied, readonly)
		]]
		local value_2 = arg1_51.name.value
		local var481
		if not var481 then
			var481 = {}
		end
		local kind_2 = arg1_51.kind
		local fields
		if kind_2 == Kind_upvr.OBJECT_TYPE_DEFINITION then
			local any_concat_result1_upvr_2 = Array_upvr.concat(arg1_51, var481)
			local module_24 = {
				name = value_2;
			}
			if arg1_51.description then
				fields = arg1_51.description.value
			else
				fields = nil
			end
			module_24.description = fields
			function fields() -- Line 704, Named "interfaces"
				--[[ Upvalues[2]:
					[1]: buildInterfaces_upvw (copied, read and write)
					[2]: any_concat_result1_upvr_2 (readonly)
				]]
				return buildInterfaces_upvw(any_concat_result1_upvr_2)
			end
			module_24.interfaces = fields
			function fields() -- Line 707
				--[[ Upvalues[2]:
					[1]: buildFieldMap_upvw (copied, read and write)
					[2]: any_concat_result1_upvr_2 (readonly)
				]]
				return buildFieldMap_upvw(any_concat_result1_upvr_2)
			end
			module_24.fields = fields
			module_24.astNode = arg1_51
			module_24.extensionASTNodes = var481
			return GraphQLObjectType_upvr.new(module_24)
		end
		any_concat_result1_upvr_2 = Kind_upvr.INTERFACE_TYPE_DEFINITION
		if kind_2 == any_concat_result1_upvr_2 then
			any_concat_result1_upvr_2 = Array_upvr.concat(arg1_51, var481)
			local var486_upvr = any_concat_result1_upvr_2
			local module = {
				name = value_2;
			}
			if arg1_51.description then
				fields = arg1_51.description.value
			else
				fields = nil
			end
			module.description = fields
			function fields() -- Line 724, Named "interfaces"
				--[[ Upvalues[2]:
					[1]: buildInterfaces_upvw (copied, read and write)
					[2]: var486_upvr (readonly)
				]]
				return buildInterfaces_upvw(var486_upvr)
			end
			module.interfaces = fields
			function fields() -- Line 727
				--[[ Upvalues[2]:
					[1]: buildFieldMap_upvw (copied, read and write)
					[2]: var486_upvr (readonly)
				]]
				return buildFieldMap_upvw(var486_upvr)
			end
			module.fields = fields
			module.astNode = arg1_51
			module.extensionASTNodes = var481
			return GraphQLInterfaceType_upvr.new(module)
		end
		var486_upvr = Kind_upvr.ENUM_TYPE_DEFINITION
		if kind_2 == var486_upvr then
			var486_upvr = Array_upvr.concat(arg1_51, var481)
			local module_23 = {
				name = value_2;
			}
			if arg1_51.description then
				fields = arg1_51.description.value
			else
				fields = nil
			end
			module_23.description = fields
			fields = buildEnumValueMap_upvw(var486_upvr)
			module_23.values = fields
			module_23.astNode = arg1_51
			module_23.extensionASTNodes = var481
			return GraphQLEnumType_upvr.new(module_23)
		end
		var486_upvr = Kind_upvr.UNION_TYPE_DEFINITION
		if kind_2 == var486_upvr then
			var486_upvr = Array_upvr.concat(arg1_51, var481)
			local module_22 = {
				name = value_2;
			}
			if arg1_51.description then
				fields = arg1_51.description.value
			else
				fields = nil
			end
			module_22.description = fields
			function fields() -- Line 750, Named "types"
				--[[ Upvalues[2]:
					[1]: buildUnionTypes_upvw (copied, read and write)
					[2]: var486_upvr (readonly)
				]]
				return buildUnionTypes_upvw(var486_upvr)
			end
			module_22.types = fields
			module_22.astNode = arg1_51
			module_22.extensionASTNodes = var481
			return GraphQLUnionType_upvr.new(module_22)
		end
		var486_upvr = Kind_upvr.SCALAR_TYPE_DEFINITION
		local var490
		if kind_2 == var486_upvr then
			var486_upvr = GraphQLScalarType_upvr.new
			local tbl_9 = {
				name = value_2;
			}
			fields = arg1_51.description
			if fields then
				fields = arg1_51.description
				var490 = fields.value
			else
				var490 = nil
			end
			tbl_9.description = var490
			var490 = getSpecifiedByUrl_upvw
			fields = arg1_51
			var490 = var490(fields)
			tbl_9.specifiedByUrl = var490
			tbl_9.astNode = arg1_51
			tbl_9.extensionASTNodes = var481
			var486_upvr = var486_upvr(tbl_9)
			return var486_upvr
		end
		var486_upvr = Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION
		if kind_2 == var486_upvr then
			var486_upvr = Array_upvr.concat
			var490 = var481
			var486_upvr = var486_upvr(arg1_51, var490)
			var490 = GraphQLInputObjectType_upvr
			var490 = {}
			var490.name = value_2
			if arg1_51.description then
				fields = arg1_51.description.value
			else
				fields = nil
			end
			var490.description = fields
			function fields() -- Line 773
				--[[ Upvalues[2]:
					[1]: buildInputFieldMap_upvw (copied, read and write)
					[2]: var486_upvr (readonly)
				]]
				return buildInputFieldMap_upvw(var486_upvr)
			end
			var490.fields = fields
			var490.astNode = arg1_51
			var490.extensionASTNodes = var481
			return var490.new(var490)
		end
		var486_upvr = assert
		var486_upvr(false, "Unexpected type definition node: "..inspect_upvr(arg1_51))
	end
	for _, v_16 in ipairs(arg1.types) do
		any_new_result1_upvr_4:set(v_16.name, (function(arg1_30) -- Line 310, Named "extendNamedType"
			--[[ Upvalues[15]:
				[1]: isIntrospectionType_upvr (copied, readonly)
				[2]: isSpecifiedScalarType_upvr (copied, readonly)
				[3]: isScalarType_upvr (copied, readonly)
				[4]: extendScalarType_upvw (read and write)
				[5]: isObjectType_upvr (copied, readonly)
				[6]: extendObjectType_upvw (read and write)
				[7]: isInterfaceType_upvr (copied, readonly)
				[8]: extendInterfaceType_upvw (read and write)
				[9]: isUnionType_upvr (copied, readonly)
				[10]: extendUnionType_upvw (read and write)
				[11]: isEnumType_upvr (copied, readonly)
				[12]: extendEnumType_upvw (read and write)
				[13]: isInputObjectType_upvr (copied, readonly)
				[14]: extendInputObjectType_upvw (read and write)
				[15]: inspect_upvr (copied, readonly)
			]]
			if isIntrospectionType_upvr(arg1_30) or isSpecifiedScalarType_upvr(arg1_30) then
				return arg1_30
			end
			if isScalarType_upvr(arg1_30) then
				return extendScalarType_upvw(arg1_30)
			end
			if isObjectType_upvr(arg1_30) then
				return extendObjectType_upvw(arg1_30)
			end
			if isInterfaceType_upvr(arg1_30) then
				return extendInterfaceType_upvw(arg1_30)
			end
			if isUnionType_upvr(arg1_30) then
				return extendUnionType_upvw(arg1_30)
			end
			if isEnumType_upvr(arg1_30) then
				return extendEnumType_upvw(arg1_30)
			end
			if isInputObjectType_upvr(arg1_30) then
				return extendInputObjectType_upvw(arg1_30)
			end
			assert(false, "Unexpected type: "..inspect_upvr(arg1_30))
		end)(v_16))
		local _
	end
	for i_17, v_17 in ipairs(tbl_5) do
		local value_8 = v_17.name.value
		local var500 = var48_upvw[value_8]
		if not var500 then
			var500 = _(v_17)
		end
		any_new_result1_upvr_4:set(value_8, var500)
	end
	local module_21 = {}
	i_17 = arg1.query
	if i_17 then
		i_17 = var322_upvw
		v_17 = arg1.query
		i_17 = i_17(v_17)
	end
	module_21.query = i_17
	if arg1.mutation then
	end
	module_21.mutation = var322_upvw(arg1.mutation)
	if arg1.subscription then
	end
	module_21.subscription = var322_upvw(arg1.subscription)
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_8[1] = var310
		local tbl_8 = {}
		return getOperationTypes(tbl_8)
	end
	if not var310 or not INLINED_2() then
	end
	local var503
	if var310 ~= nil and var310.description ~= nil then
		var503 = var310.description.value
	end
	local var504
	if arg3 ~= nil and arg3.assumeValid ~= nil then
		var504 = arg3.assumeValid
	end
	local module_8 = {
		description = var503;
	}
	local module_29 = {
		types = any_new_result1_upvr_4:values();
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_29.directives = Array_upvr.concat(Array_upvr.map(arg1.directives, function(arg1_29) -- Line 299, Named "replaceDirective"
		--[[ Upvalues[5]:
			[1]: GraphQLDirective_upvr (copied, readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: mapValueOrdered_upvr (copied, readonly)
			[4]: coerceToMap_upvr (copied, readonly)
			[5]: extendArg_upvw (read and write)
		]]
		local any_toConfig_result1_7 = arg1_29:toConfig()
		return GraphQLDirective_upvr.new(Object_upvr.assign({}, any_toConfig_result1_7, {
			args = mapValueOrdered_upvr(coerceToMap_upvr(any_toConfig_result1_7.args), extendArg_upvw);
		}))
	end), Array_upvr.map({}, function(arg1_43) -- Line 519, Named "buildDirective"
		--[[ Upvalues[3]:
			[1]: Array_upvr (copied, readonly)
			[2]: GraphQLDirective_upvr (copied, readonly)
			[3]: buildArgumentMap_upvw (read and write)
		]]
		local module_31 = {}
		local value_10 = arg1_43.name.value
		module_31.name = value_10
		if arg1_43.description then
			value_10 = arg1_43.description.value
		else
			value_10 = nil
		end
		module_31.description = value_10
		module_31.locations = Array_upvr.map(arg1_43.locations, function(arg1_44) -- Line 520
			return arg1_44.value
		end)
		module_31.isRepeatable = arg1_43.repeatable
		module_31.args = buildArgumentMap_upvw(arg1_43.arguments)
		module_31.astNode = arg1_43
		return GraphQLDirective_upvr.new(module_31)
	end))
	local var507 = var310
	if not var507 then
		var507 = arg1.astNode
	end
	module_29.astNode = var507
	module_29.extensionASTNodes = Array_upvr.concat(arg1.extensionASTNodes, module_25)
	module_29.assumeValid = var504
	Object_upvr.assign({}, module_8, Object_upvr.assign({}, module_21, {}, getOperationTypes(module_25)), module_29).extensions = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Object_upvr.assign({}, module_8, Object_upvr.assign({}, module_21, {}, getOperationTypes(module_25)), module_29)
end
var48_upvw = require(jsutils.keyMap).keyMap(Array_upvr.concat(scalars.specifiedScalarTypes, introspection.introspectionTypes), function(arg1) -- Line 846
	return arg1.name
end)
local GraphQLDeprecatedDirective_upvr = directives.GraphQLDeprecatedDirective
function getDeprecationReason_upvw(arg1) -- Line 854, Named "getDeprecationReason"
	--[[ Upvalues[2]:
		[1]: getDirectiveValues_upvr (readonly)
		[2]: GraphQLDeprecatedDirective_upvr (readonly)
	]]
	local getDirectiveValues_upvr_result1_2 = getDirectiveValues_upvr(GraphQLDeprecatedDirective_upvr, arg1)
	local var511 = getDirectiveValues_upvr_result1_2
	if var511 then
		var511 = getDirectiveValues_upvr_result1_2.reason
	end
	return var511
end
local GraphQLSpecifiedByDirective_upvr = directives.GraphQLSpecifiedByDirective
function getSpecifiedByUrl_upvw(arg1) -- Line 864, Named "getSpecifiedByUrl"
	--[[ Upvalues[2]:
		[1]: getDirectiveValues_upvr (readonly)
		[2]: GraphQLSpecifiedByDirective_upvr (readonly)
	]]
	local getDirectiveValues_upvr_result1 = getDirectiveValues_upvr(GraphQLSpecifiedByDirective_upvr, arg1)
	local var514 = getDirectiveValues_upvr_result1
	if var514 then
		var514 = getDirectiveValues_upvr_result1.url
	end
	return var514
end
return {
	extendSchema = function(arg1, arg2, arg3) -- Line 152, Named "extendSchema"
		--[[ Upvalues[5]:
			[1]: assertSchema_upvr (readonly)
			[2]: devAssert_upvr (readonly)
			[3]: Kind_upvr (readonly)
			[4]: assertValidSDLExtension_upvr (readonly)
			[5]: GraphQLSchema_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		assertSchema_upvr(arg1)
		local var18 = false
		if arg2 ~= nil then
			if arg2.kind ~= Kind_upvr.DOCUMENT then
				var18 = false
			else
				var18 = true
			end
		end
		devAssert_upvr(var18, "Must provide valid Document AST.")
		if arg3 then
		end
		if arg3.assumeValid ~= true then
			if arg3 then
			end
			if arg3.assumeValidSDL ~= true then
				assertValidSDLExtension_upvr(arg2, arg1)
			end
		end
		local any_toConfig_result1_12 = arg1:toConfig()
		local extendSchemaImpl_result1 = extendSchemaImpl(any_toConfig_result1_12, arg2, arg3)
		if any_toConfig_result1_12 == extendSchemaImpl_result1 then
			return arg1
		end
		return GraphQLSchema_upvr.new(extendSchemaImpl_result1)
	end;
	extendSchemaImpl = extendSchemaImpl;
}