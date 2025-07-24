-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:05
-- Luau version 6, Types version 3
-- Time taken: 0.008054 seconds

local Parent = script.Parent.Parent
local luaUtils = Parent.luaUtils
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local isNillish = require(luaUtils.isNillish)
local definition = require(Parent.type.definition)
local introspection = require(Parent.type.introspection)
local TypeKind_upvr = introspection.TypeKind
local Error_upvr = LuauPolyfill.Error
local GraphQLList_upvr = definition.GraphQLList
local GraphQLNonNull_upvr = definition.GraphQLNonNull
local assertNullableType_upvr = definition.assertNullableType
local isNillish_2_upvr = isNillish.isNillish
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local assertObjectType_upvr = definition.assertObjectType
local assertInterfaceType_upvr = definition.assertInterfaceType
local isNotNillish_upvr = isNillish.isNotNillish
local GraphQLScalarType_upvr = definition.GraphQLScalarType
local Array_upvr = LuauPolyfill.Array
local GraphQLObjectType_upvr = definition.GraphQLObjectType
local GraphQLInterfaceType_upvr = definition.GraphQLInterfaceType
local GraphQLUnionType_upvr = definition.GraphQLUnionType
local GraphQLEnumType_upvr = definition.GraphQLEnumType
local keyValMap_upvr = require(Parent.jsutils.keyValMap).keyValMap
local GraphQLInputObjectType_upvr = definition.GraphQLInputObjectType
local isOutputType_upvr = definition.isOutputType
local isInputType_upvr = definition.isInputType
local valueFromAST_upvr = require(script.Parent.valueFromAST).valueFromAST
local parseValue_upvr = require(Parent.language.parser).parseValue
local GraphQLDirective_upvr = require(Parent.type.directives).GraphQLDirective
local devAssert_upvr = require(Parent.jsutils.devAssert).devAssert
local isObjectLike_upvr = require(Parent.jsutils.isObjectLike).isObjectLike
local specifiedScalarTypes_upvr = require(Parent.type.scalars).specifiedScalarTypes
local introspectionTypes_upvr = introspection.introspectionTypes
local null_upvr = require(luaUtils.null)
local GraphQLSchema_upvr = require(Parent.type.schema).GraphQLSchema
return {
	buildClientSchema = function(arg1, arg2) -- Line 100, Named "buildClientSchema"
		--[[ Upvalues[29]:
			[1]: TypeKind_upvr (readonly)
			[2]: Error_upvr (readonly)
			[3]: GraphQLList_upvr (readonly)
			[4]: GraphQLNonNull_upvr (readonly)
			[5]: assertNullableType_upvr (readonly)
			[6]: isNillish_2_upvr (readonly)
			[7]: inspect_upvr (readonly)
			[8]: assertObjectType_upvr (readonly)
			[9]: assertInterfaceType_upvr (readonly)
			[10]: isNotNillish_upvr (readonly)
			[11]: GraphQLScalarType_upvr (readonly)
			[12]: Array_upvr (readonly)
			[13]: GraphQLObjectType_upvr (readonly)
			[14]: GraphQLInterfaceType_upvr (readonly)
			[15]: GraphQLUnionType_upvr (readonly)
			[16]: GraphQLEnumType_upvr (readonly)
			[17]: keyValMap_upvr (readonly)
			[18]: GraphQLInputObjectType_upvr (readonly)
			[19]: isOutputType_upvr (readonly)
			[20]: isInputType_upvr (readonly)
			[21]: valueFromAST_upvr (readonly)
			[22]: parseValue_upvr (readonly)
			[23]: GraphQLDirective_upvr (readonly)
			[24]: devAssert_upvr (readonly)
			[25]: isObjectLike_upvr (readonly)
			[26]: specifiedScalarTypes_upvr (readonly)
			[27]: introspectionTypes_upvr (readonly)
			[28]: null_upvr (readonly)
			[29]: GraphQLSchema_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
		local buildFieldDefMap_upvw
		local buildInputValueDefMap_upvw
		local getNamedType_upvw
		local function getType_upvw(arg1_2) -- Line 132, Named "getType"
			--[[ Upvalues[7]:
				[1]: TypeKind_upvr (copied, readonly)
				[2]: Error_upvr (copied, readonly)
				[3]: GraphQLList_upvr (copied, readonly)
				[4]: getType_upvw (read and write)
				[5]: GraphQLNonNull_upvr (copied, readonly)
				[6]: assertNullableType_upvr (copied, readonly)
				[7]: getNamedType_upvw (read and write)
			]]
			if arg1_2.kind == TypeKind_upvr.LIST then
				local ofType = arg1_2.ofType
				if not ofType then
					error(Error_upvr.new("Decorated type deeper than introspection query."))
				end
				return GraphQLList_upvr.new(getType_upvw(ofType))
			end
			if arg1_2.kind == TypeKind_upvr.NON_NULL then
				local ofType_2 = arg1_2.ofType
				if not ofType_2 then
					error(Error_upvr.new("Decorated type deeper than introspection query."))
				end
				return GraphQLNonNull_upvr.new(assertNullableType_upvr(getType_upvw(ofType_2)))
			end
			return getNamedType_upvw(arg1_2)
		end
		function getNamedType_upvw(arg1_3) -- Line 155, Named "getNamedType"
			--[[ Upvalues[4]:
				[1]: isNillish_2_upvr (copied, readonly)
				[2]: Error_upvr (copied, readonly)
				[3]: inspect_upvr (copied, readonly)
				[4]: var46_upvw (read and write)
			]]
			local name = arg1_3.name
			if isNillish_2_upvr(name) then
				error(Error_upvr.new("Unknown type reference: %s.":format(inspect_upvr(arg1_3))))
			end
			local any_get_result1 = var46_upvw:get(name)
			if isNillish_2_upvr(any_get_result1) then
				error(Error_upvr.new("Invalid or incomplete schema, unknown type: %s. Ensure that a full introspection query is used in order to build a client schema.":format(name)))
			end
			return any_get_result1
		end
		local var46_upvw
		local var45_upvw = getNamedType_upvw
		local function getObjectType_upvw(arg1_4) -- Line 176, Named "getObjectType"
			--[[ Upvalues[2]:
				[1]: assertObjectType_upvr (copied, readonly)
				[2]: var45_upvw (read and write)
			]]
			return assertObjectType_upvr(var45_upvw(arg1_4))
		end
		local function getInterfaceType_upvw(arg1_5) -- Line 182, Named "getInterfaceType"
			--[[ Upvalues[2]:
				[1]: assertInterfaceType_upvr (copied, readonly)
				[2]: var45_upvw (read and write)
			]]
			return assertInterfaceType_upvr(var45_upvw(arg1_5))
		end
		local buildScalarDef_upvw
		local buildObjectDef_upvw
		local buildInterfaceDef_upvw
		local buildUnionDef_upvw
		local buildEnumDef_upvw
		local buildInputObjectDef_upvw
		local function buildType_upvw(arg1_6) -- Line 190, Named "buildType"
			--[[ Upvalues[10]:
				[1]: isNotNillish_upvr (copied, readonly)
				[2]: TypeKind_upvr (copied, readonly)
				[3]: buildScalarDef_upvw (read and write)
				[4]: buildObjectDef_upvw (read and write)
				[5]: buildInterfaceDef_upvw (read and write)
				[6]: buildUnionDef_upvw (read and write)
				[7]: buildEnumDef_upvw (read and write)
				[8]: buildInputObjectDef_upvw (read and write)
				[9]: inspect_upvr (copied, readonly)
				[10]: Error_upvr (copied, readonly)
			]]
			if isNotNillish_upvr(arg1_6) and isNotNillish_upvr(arg1_6.name) and isNotNillish_upvr(arg1_6.kind) then
				if arg1_6.kind == TypeKind_upvr.SCALAR then
					return buildScalarDef_upvw(arg1_6)
				end
				if arg1_6.kind == TypeKind_upvr.OBJECT then
					return buildObjectDef_upvw(arg1_6)
				end
				if arg1_6.kind == TypeKind_upvr.INTERFACE then
					return buildInterfaceDef_upvw(arg1_6)
				end
				if arg1_6.kind == TypeKind_upvr.UNION then
					return buildUnionDef_upvw(arg1_6)
				end
				if arg1_6.kind == TypeKind_upvr.ENUM then
					return buildEnumDef_upvw(arg1_6)
				end
				if arg1_6.kind == TypeKind_upvr.INPUT_OBJECT then
					return buildInputObjectDef_upvw(arg1_6)
				end
			end
			error(Error_upvr.new("Invalid or incomplete introspection result. Ensure that a full introspection query is used in order to build a client schema: %s.":format(inspect_upvr(arg1_6))))
		end
		function buildScalarDef_upvw(arg1_7) -- Line 217, Named "buildScalarDef"
			--[[ Upvalues[1]:
				[1]: GraphQLScalarType_upvr (copied, readonly)
			]]
			return GraphQLScalarType_upvr.new({
				name = arg1_7.name;
				description = arg1_7.description;
				specifiedByUrl = arg1_7.specifiedByUrl;
			})
		end
		local function buildImplementationsList_upvw(arg1_8) -- Line 225, Named "buildImplementationsList"
			--[[ Upvalues[5]:
				[1]: TypeKind_upvr (copied, readonly)
				[2]: inspect_upvr (copied, readonly)
				[3]: Error_upvr (copied, readonly)
				[4]: Array_upvr (copied, readonly)
				[5]: getInterfaceType_upvw (read and write)
			]]
			if arg1_8.interfaces == nil and arg1_8.kind == TypeKind_upvr.INTERFACE then
				return {}
			end
			if not arg1_8.interfaces then
				error(Error_upvr.new("Introspection result missing interfaces: %s.":format(inspect_upvr(arg1_8))))
			end
			return Array_upvr.map(arg1_8.interfaces, getInterfaceType_upvw)
		end
		function buildObjectDef_upvw(arg1_9) -- Line 251, Named "buildObjectDef"
			--[[ Upvalues[3]:
				[1]: GraphQLObjectType_upvr (copied, readonly)
				[2]: buildImplementationsList_upvw (read and write)
				[3]: buildFieldDefMap_upvw (read and write)
			]]
			local module = {
				name = arg1_9.name;
				description = arg1_9.description;
			}
			local function interfaces() -- Line 255
				--[[ Upvalues[2]:
					[1]: buildImplementationsList_upvw (copied, read and write)
					[2]: arg1_9 (readonly)
				]]
				return buildImplementationsList_upvw(arg1_9)
			end
			module.interfaces = interfaces
			local function fields() -- Line 258
				--[[ Upvalues[2]:
					[1]: buildFieldDefMap_upvw (copied, read and write)
					[2]: arg1_9 (readonly)
				]]
				return buildFieldDefMap_upvw(arg1_9)
			end
			module.fields = fields
			return GraphQLObjectType_upvr.new(module)
		end
		function buildInterfaceDef_upvw(arg1_10) -- Line 264, Named "buildInterfaceDef"
			--[[ Upvalues[3]:
				[1]: GraphQLInterfaceType_upvr (copied, readonly)
				[2]: buildImplementationsList_upvw (read and write)
				[3]: buildFieldDefMap_upvw (read and write)
			]]
			local module_2 = {
				name = arg1_10.name;
				description = arg1_10.description;
				interfaces = function() -- Line 270, Named "interfaces"
					--[[ Upvalues[2]:
						[1]: buildImplementationsList_upvw (copied, read and write)
						[2]: arg1_10 (readonly)
					]]
					return buildImplementationsList_upvw(arg1_10)
				end;
			}
			local function fields() -- Line 273
				--[[ Upvalues[2]:
					[1]: buildFieldDefMap_upvw (copied, read and write)
					[2]: arg1_10 (readonly)
				]]
				return buildFieldDefMap_upvw(arg1_10)
			end
			module_2.fields = fields
			return GraphQLInterfaceType_upvr.new(module_2)
		end
		function buildUnionDef_upvw(arg1_11) -- Line 279, Named "buildUnionDef"
			--[[ Upvalues[5]:
				[1]: inspect_upvr (copied, readonly)
				[2]: Error_upvr (copied, readonly)
				[3]: GraphQLUnionType_upvr (copied, readonly)
				[4]: Array_upvr (copied, readonly)
				[5]: getObjectType_upvw (read and write)
			]]
			if not arg1_11.possibleTypes then
				error(Error_upvr.new("Introspection result missing possibleTypes: %s.":format(inspect_upvr(arg1_11))))
			end
			return GraphQLUnionType_upvr.new({
				name = arg1_11.name;
				description = arg1_11.description;
				types = function() -- Line 294, Named "types"
					--[[ Upvalues[3]:
						[1]: Array_upvr (copied, readonly)
						[2]: arg1_11 (readonly)
						[3]: getObjectType_upvw (copied, read and write)
					]]
					return Array_upvr.map(arg1_11.possibleTypes, getObjectType_upvw)
				end;
			})
		end
		function buildEnumDef_upvw(arg1_12) -- Line 300, Named "buildEnumDef"
			--[[ Upvalues[4]:
				[1]: inspect_upvr (copied, readonly)
				[2]: Error_upvr (copied, readonly)
				[3]: GraphQLEnumType_upvr (copied, readonly)
				[4]: keyValMap_upvr (copied, readonly)
			]]
			if not arg1_12.enumValues then
				error(Error_upvr.new("Introspection result missing enumValues: %s.":format(inspect_upvr(arg1_12))))
			end
			return GraphQLEnumType_upvr.new({
				name = arg1_12.name;
				description = arg1_12.description;
				values = keyValMap_upvr(arg1_12.enumValues, function(arg1_13) -- Line 312
					return arg1_13.name
				end, function(arg1_14) -- Line 314
					return {
						description = arg1_14.description;
						deprecationReason = arg1_14.deprecationReason;
					}
				end);
			})
		end
		function buildInputObjectDef_upvw(arg1_15) -- Line 324, Named "buildInputObjectDef"
			--[[ Upvalues[4]:
				[1]: inspect_upvr (copied, readonly)
				[2]: Error_upvr (copied, readonly)
				[3]: GraphQLInputObjectType_upvr (copied, readonly)
				[4]: buildInputValueDefMap_upvw (read and write)
			]]
			if not arg1_15.inputFields then
				error(Error_upvr.new("Introspection result missing inputFields: %s.":format(inspect_upvr(arg1_15))))
			end
			return GraphQLInputObjectType_upvr.new({
				name = arg1_15.name;
				description = arg1_15.description;
				fields = function() -- Line 340, Named "fields"
					--[[ Upvalues[2]:
						[1]: buildInputValueDefMap_upvw (copied, read and write)
						[2]: arg1_15 (readonly)
					]]
					return buildInputValueDefMap_upvw(arg1_15.inputFields)
				end;
			})
		end
		local buildField_upvw
		function buildFieldDefMap_upvw(arg1_16) -- Line 346, Named "buildFieldDefMap"
			--[[ Upvalues[4]:
				[1]: Error_upvr (copied, readonly)
				[2]: inspect_upvr (copied, readonly)
				[3]: keyValMap_upvr (copied, readonly)
				[4]: buildField_upvw (read and write)
			]]
			if not arg1_16.fields then
				error(Error_upvr.new("Introspection result missing fields: %s.":format(inspect_upvr(arg1_16))))
			end
			return keyValMap_upvr(arg1_16.fields, function(arg1_17) -- Line 358
				return arg1_17.name
			end, buildField_upvw)
		end
		function buildField_upvw(arg1_18) -- Line 363, Named "buildField"
			--[[ Upvalues[5]:
				[1]: getType_upvw (read and write)
				[2]: isOutputType_upvr (copied, readonly)
				[3]: inspect_upvr (copied, readonly)
				[4]: Error_upvr (copied, readonly)
				[5]: buildInputValueDefMap_upvw (read and write)
			]]
			local getType_result1_2 = getType_upvw(arg1_18.type)
			if not isOutputType_upvr(getType_result1_2) then
				error(Error_upvr.new("Introspection must provide output type for fields, but received: %s.":format(inspect_upvr(getType_result1_2))))
			end
			if not arg1_18.args then
				error(Error_upvr.new("Introspection result missing field args: %s.":format(inspect_upvr(arg1_18))))
			end
			return {
				description = arg1_18.description;
				deprecationReason = arg1_18.deprecationReason;
				type = getType_result1_2;
				args = buildInputValueDefMap_upvw(arg1_18.args);
			}
		end
		local buildInputValue_upvw
		function buildInputValueDefMap_upvw(arg1_19) -- Line 394, Named "buildInputValueDefMap"
			--[[ Upvalues[2]:
				[1]: keyValMap_upvr (copied, readonly)
				[2]: buildInputValue_upvw (read and write)
			]]
			return keyValMap_upvr(arg1_19, function(arg1_20) -- Line 395
				return arg1_20.name
			end, buildInputValue_upvw)
		end
		function buildInputValue_upvw(arg1_21) -- Line 400, Named "buildInputValue"
			--[[ Upvalues[7]:
				[1]: getType_upvw (read and write)
				[2]: isInputType_upvr (copied, readonly)
				[3]: inspect_upvr (copied, readonly)
				[4]: Error_upvr (copied, readonly)
				[5]: isNotNillish_upvr (copied, readonly)
				[6]: valueFromAST_upvr (copied, readonly)
				[7]: parseValue_upvr (copied, readonly)
			]]
			local getType_result1 = getType_upvw(arg1_21.type)
			local var71
			if not var71 then
				var71 = inspect_upvr(getType_result1)
				error(Error_upvr.new("Introspection must provide input type for arguments, but received: %s.":format(var71)))
			end
			if isNotNillish_upvr(arg1_21.defaultValue) then
				var71 = valueFromAST_upvr(parseValue_upvr(arg1_21.defaultValue), getType_result1)
			else
				var71 = nil
			end
			return {
				description = arg1_21.description;
				type = getType_result1;
				defaultValue = var71;
				deprecationReason = arg1_21.deprecationReason;
			}
		end
		local function _(arg1_22) -- Line 429, Named "buildDirective"
			--[[ Upvalues[5]:
				[1]: inspect_upvr (copied, readonly)
				[2]: Error_upvr (copied, readonly)
				[3]: GraphQLDirective_upvr (copied, readonly)
				[4]: Array_upvr (copied, readonly)
				[5]: buildInputValueDefMap_upvw (read and write)
			]]
			if not arg1_22.args then
				error(Error_upvr.new("Introspection result missing directive args: %s.":format(inspect_upvr(arg1_22))))
			end
			if not arg1_22.locations then
				error(Error_upvr.new("Introspection result missing directive locations: %s.":format(inspect_upvr(arg1_22))))
			end
			return GraphQLDirective_upvr.new({
				name = arg1_22.name;
				description = arg1_22.description;
				isRepeatable = arg1_22.isRepeatable;
				locations = Array_upvr.slice(arg1_22.locations);
				args = buildInputValueDefMap_upvw(arg1_22.args);
			})
		end
		local isObjectLike_upvr_result1 = isObjectLike_upvr(arg1)
		if isObjectLike_upvr_result1 then
			isObjectLike_upvr_result1 = isObjectLike_upvr(arg1.__schema)
		end
		devAssert_upvr(isObjectLike_upvr_result1, "Invalid or incomplete introspection result. Ensure that you are passing \"data\" property of introspection response and no \"errors\" was returned alongside: %s.":format(inspect_upvr(arg1)))
		local __schema = arg1.__schema
		var46_upvw = keyValMap_upvr(__schema.types, function(arg1_23) -- Line 471
			return arg1_23.name
		end, function(arg1_24) -- Line 473
			--[[ Upvalues[1]:
				[1]: buildType_upvw (read and write)
			]]
			return buildType_upvw(arg1_24)
		end)
		local var78 = var46_upvw
		for _, v in ipairs(Array_upvr.concat(specifiedScalarTypes_upvr, introspectionTypes_upvr)) do
			if var78:get(v.name) then
				var78:set(v.name, v)
			end
		end
		if isNotNillish_upvr(__schema.queryType) then
		else
		end
		if isNotNillish_upvr(__schema.mutationType) then
			-- KONSTANTWARNING: GOTO [182] #168
		end
		-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [181] 167. Error Block 48 start (CF ANALYSIS FAILED)
		if isNotNillish_upvr(__schema.subscriptionType) then
			-- KONSTANTWARNING: GOTO [193] #177
		end
		-- KONSTANTERROR: [181] 167. Error Block 48 end (CF ANALYSIS FAILED)
	end;
}