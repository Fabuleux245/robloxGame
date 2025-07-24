-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:01
-- Luau version 6, Types version 3
-- Time taken: 0.020026 seconds

local Parent = script.Parent.Parent
local jsutils = Parent.jsutils
local language = Parent.language
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Map_upvr = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local isNotNillish_upvr = require(Parent.luaUtils.isNillish).isNotNillish
local DirectiveLocation = require(language.directiveLocation).DirectiveLocation
local scalars = require(script.Parent.scalars)
local GraphQLString_upvr = scalars.GraphQLString
local GraphQLBoolean_upvr = scalars.GraphQLBoolean
local definition = require(script.Parent.definition)
local GraphQLList_upvr = definition.GraphQLList
local GraphQLNonNull_upvr = definition.GraphQLNonNull
local GraphQLObjectType = definition.GraphQLObjectType
local GraphQLEnumType = definition.GraphQLEnumType
local var18_upvw
local var19_upvw
local tbl_66 = {
	name = "__Schema";
	description = "A GraphQL Schema defines the capabilities of a GraphQL server. It exposes all available types and directives on the server, as well as the entry points for query, mutation, and subscription operations.";
}
local var21_upvw
local function fields() -- Line 74
	--[[ Upvalues[6]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLString_upvr (readonly)
		[3]: GraphQLNonNull_upvr (readonly)
		[4]: GraphQLList_upvr (readonly)
		[5]: var18_upvw (read and write)
		[6]: var21_upvw (read and write)
	]]
	local module_4 = {}
	local tbl_10 = {}
	local tbl_80 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 80
		return arg1.description
	end
	tbl_80.resolve = resolve
	tbl_10[1] = "description"
	tbl_10[2] = tbl_80
	local tbl_17 = {}
	local tbl_62 = {
		description = "A list of all types supported by this server.";
		type = GraphQLNonNull_upvr.new(GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var18_upvw)));
	}
	local function resolve(arg1) -- Line 90
		return arg1:getTypeMap():values()
	end
	tbl_62.resolve = resolve
	tbl_17[1] = "types"
	tbl_17[2] = tbl_62
	local tbl_32 = {}
	local tbl_60 = {
		description = "The type that query operations will be rooted at.";
		type = GraphQLNonNull_upvr.new(var18_upvw);
	}
	local function resolve(arg1) -- Line 101
		return arg1:getQueryType()
	end
	tbl_60.resolve = resolve
	tbl_32[1] = "queryType"
	tbl_32[2] = tbl_60
	local tbl_61 = {}
	local tbl_77 = {
		description = "If this server supports mutation, the type that mutation operations will be rooted at.";
		type = var18_upvw;
	}
	local function resolve(arg1) -- Line 111
		return arg1:getMutationType()
	end
	tbl_77.resolve = resolve
	tbl_61[1] = "mutationType"
	tbl_61[2] = tbl_77
	local tbl_26 = {}
	local tbl_38 = {
		description = "If this server support subscription, the type that subscription operations will be rooted at.";
		type = var18_upvw;
	}
	local function resolve(arg1) -- Line 121
		return arg1:getSubscriptionType()
	end
	tbl_38.resolve = resolve
	tbl_26[1] = "subscriptionType"
	tbl_26[2] = tbl_38
	local tbl_14 = {}
	local tbl_25 = {
		description = "A list of all directives supported by this server.";
		type = GraphQLNonNull_upvr.new(GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var21_upvw)));
	}
	local function resolve(arg1) -- Line 131
		return arg1:getDirectives()
	end
	tbl_25.resolve = resolve
	tbl_14[1] = "directives"
	tbl_14[2] = tbl_25
	module_4[1] = tbl_10
	module_4[2] = tbl_17
	module_4[3] = tbl_32
	module_4[4] = tbl_61
	module_4[5] = tbl_26
	module_4[6] = tbl_14
	return Map_upvr.new(module_4)
end
tbl_66.fields = fields
local any_new_result1 = GraphQLObjectType.new(tbl_66)
local tbl_20 = {
	name = "__Directive";
	description = "A Directive provides a way to describe alternate runtime execution and type validation behavior in a GraphQL document.\n\nIn some cases, you need to provide options to alter GraphQL's execution behavior in ways field arguments will not suffice, such as conditionally including or skipping a field. Directives provide this by describing additional information to the executor.";
}
local var37_upvw
local function fields() -- Line 143
	--[[ Upvalues[7]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLNonNull_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: GraphQLBoolean_upvr (readonly)
		[5]: GraphQLList_upvr (readonly)
		[6]: var37_upvw (read and write)
		[7]: var19_upvw (read and write)
	]]
	local module_6 = {}
	local tbl_37 = {}
	local tbl_67 = {
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
	}
	local function resolve(arg1) -- Line 149
		return arg1.name
	end
	tbl_67.resolve = resolve
	tbl_37[1] = "name"
	tbl_37[2] = tbl_67
	local tbl_21 = {}
	local tbl_31 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 158
		return arg1.description
	end
	tbl_31.resolve = resolve
	tbl_21[1] = "description"
	tbl_21[2] = tbl_31
	local tbl_33 = {}
	local tbl_70 = {
		type = GraphQLNonNull_upvr.new(GraphQLBoolean_upvr);
	}
	local function resolve(arg1) -- Line 167
		return arg1.isRepeatable
	end
	tbl_70.resolve = resolve
	tbl_33[1] = "isRepeatable"
	tbl_33[2] = tbl_70
	local tbl_45 = {}
	local tbl_42 = {
		type = GraphQLNonNull_upvr.new(GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var37_upvw)));
	}
	local function resolve(arg1) -- Line 178
		return arg1.locations
	end
	tbl_42.resolve = resolve
	tbl_45[1] = "locations"
	tbl_45[2] = tbl_42
	local tbl_24 = {}
	local tbl_41 = {
		type = GraphQLNonNull_upvr.new(GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var19_upvw)));
	}
	local function resolve(arg1) -- Line 187
		return arg1.args
	end
	tbl_41.resolve = resolve
	tbl_24[1] = "args"
	tbl_24[2] = tbl_41
	module_6[1] = tbl_37
	module_6[2] = tbl_21
	module_6[3] = tbl_33
	module_6[4] = tbl_45
	module_6[5] = tbl_24
	return Map_upvr.new(module_6)
end
tbl_20.fields = fields
var21_upvw = GraphQLObjectType.new(tbl_20)
local var49 = var21_upvw
var37_upvw = GraphQLEnumType.new({
	name = "__DirectiveLocation";
	description = "A Directive can be adjacent to many parts of the GraphQL language, a __DirectiveLocation describes one such possible adjacencies.";
	values = Map_upvr.new({{"QUERY", {
		value = DirectiveLocation.QUERY;
		description = "Location adjacent to a query operation.";
	}}, {"MUTATION", {
		value = DirectiveLocation.MUTATION;
		description = "Location adjacent to a mutation operation.";
	}}, {"SUBSCRIPTION", {
		value = DirectiveLocation.SUBSCRIPTION;
		description = "Location adjacent to a subscription operation.";
	}}, {"FIELD", {
		value = DirectiveLocation.FIELD;
		description = "Location adjacent to a field.";
	}}, {"FRAGMENT_DEFINITION", {
		value = DirectiveLocation.FRAGMENT_DEFINITION;
		description = "Location adjacent to a fragment definition.";
	}}, {"FRAGMENT_SPREAD", {
		value = DirectiveLocation.FRAGMENT_SPREAD;
		description = "Location adjacent to a fragment spread.";
	}}, {"INLINE_FRAGMENT", {
		value = DirectiveLocation.INLINE_FRAGMENT;
		description = "Location adjacent to an inline fragment.";
	}}, {"VARIABLE_DEFINITION", {
		value = DirectiveLocation.VARIABLE_DEFINITION;
		description = "Location adjacent to a variable definition.";
	}}, {"SCHEMA", {
		value = DirectiveLocation.SCHEMA;
		description = "Location adjacent to a schema definition.";
	}}, {"SCALAR", {
		value = DirectiveLocation.SCALAR;
		description = "Location adjacent to a scalar definition.";
	}}, {"OBJECT", {
		value = DirectiveLocation.OBJECT;
		description = "Location adjacent to an object type definition.";
	}}, {"FIELD_DEFINITION", {
		value = DirectiveLocation.FIELD_DEFINITION;
		description = "Location adjacent to a field definition.";
	}}, {"ARGUMENT_DEFINITION", {
		value = DirectiveLocation.ARGUMENT_DEFINITION;
		description = "Location adjacent to an argument definition.";
	}}, {"INTERFACE", {
		value = DirectiveLocation.INTERFACE;
		description = "Location adjacent to an interface definition.";
	}}, {"UNION", {
		value = DirectiveLocation.UNION;
		description = "Location adjacent to a union definition.";
	}}, {"ENUM", {
		value = DirectiveLocation.ENUM;
		description = "Location adjacent to an enum definition.";
	}}, {"ENUM_VALUE", {
		value = DirectiveLocation.ENUM_VALUE;
		description = "Location adjacent to an enum value definition.";
	}}, {"INPUT_OBJECT", {
		value = DirectiveLocation.INPUT_OBJECT;
		description = "Location adjacent to an input object type definition.";
	}}, {"INPUT_FIELD_DEFINITION", {
		value = DirectiveLocation.INPUT_FIELD_DEFINITION;
		description = "Location adjacent to an input object field definition.";
	}}});
})
local var90 = var37_upvw
local tbl_56 = {
	name = "__Type";
	description = "The fundamental unit of any GraphQL Schema is the type. There are many kinds of types in GraphQL as represented by the `__TypeKind` enum.\n\nDepending on the kind of a type, certain fields describe information about that type. Scalar types provide no information beyond a name, description and optional `specifiedByUrl`, while Enum types provide their values. Object and Interface types provide the fields they describe. Abstract types, Union and Interface, provide the Object types possible at runtime. List and NonNull types compose other types.";
}
local var92_upvw
local isScalarType_upvr = definition.isScalarType
local var94_upvw
local isObjectType_upvr = definition.isObjectType
local isInterfaceType_upvr = definition.isInterfaceType
local isUnionType_upvr = definition.isUnionType
local isEnumType_upvr = definition.isEnumType
local isInputObjectType_upvr = definition.isInputObjectType
local isListType_upvr = definition.isListType
local isNonNullType_upvr = definition.isNonNullType
local invariant_upvr = require(jsutils.invariant).invariant
local inspect_upvr = require(jsutils.inspect).inspect
local var104_upvw
local isAbstractType_upvr = definition.isAbstractType
local var106_upvw
local function fields() -- Line 339
	--[[ Upvalues[23]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLNonNull_upvr (readonly)
		[3]: var92_upvw (read and write)
		[4]: isScalarType_upvr (readonly)
		[5]: var94_upvw (read and write)
		[6]: isObjectType_upvr (readonly)
		[7]: isInterfaceType_upvr (readonly)
		[8]: isUnionType_upvr (readonly)
		[9]: isEnumType_upvr (readonly)
		[10]: isInputObjectType_upvr (readonly)
		[11]: isListType_upvr (readonly)
		[12]: isNonNullType_upvr (readonly)
		[13]: invariant_upvr (readonly)
		[14]: inspect_upvr (readonly)
		[15]: GraphQLString_upvr (readonly)
		[16]: GraphQLList_upvr (readonly)
		[17]: var104_upvw (read and write)
		[18]: GraphQLBoolean_upvr (readonly)
		[19]: Array_upvr (readonly)
		[20]: var18_upvw (read and write)
		[21]: isAbstractType_upvr (readonly)
		[22]: var106_upvw (read and write)
		[23]: var19_upvw (read and write)
	]]
	local module_2 = {}
	local tbl_2 = {}
	local tbl_79 = {
		type = GraphQLNonNull_upvr.new(var92_upvw);
	}
	local function resolve(arg1) -- Line 345
		--[[ Upvalues[11]:
			[1]: isScalarType_upvr (copied, readonly)
			[2]: var94_upvw (copied, read and write)
			[3]: isObjectType_upvr (copied, readonly)
			[4]: isInterfaceType_upvr (copied, readonly)
			[5]: isUnionType_upvr (copied, readonly)
			[6]: isEnumType_upvr (copied, readonly)
			[7]: isInputObjectType_upvr (copied, readonly)
			[8]: isListType_upvr (copied, readonly)
			[9]: isNonNullType_upvr (copied, readonly)
			[10]: invariant_upvr (copied, readonly)
			[11]: inspect_upvr (copied, readonly)
		]]
		if isScalarType_upvr(arg1) then
			return var94_upvw.SCALAR
		end
		if isObjectType_upvr(arg1) then
			return var94_upvw.OBJECT
		end
		if isInterfaceType_upvr(arg1) then
			return var94_upvw.INTERFACE
		end
		if isUnionType_upvr(arg1) then
			return var94_upvw.UNION
		end
		if isEnumType_upvr(arg1) then
			return var94_upvw.ENUM
		end
		if isInputObjectType_upvr(arg1) then
			return var94_upvw.INPUT_OBJECT
		end
		if isListType_upvr(arg1) then
			return var94_upvw.LIST
		end
		if isNonNullType_upvr(arg1) then
			return var94_upvw.NON_NULL
		end
		invariant_upvr(false, "Unexpected type: \"%s\".":format(inspect_upvr(arg1)))
		assert(false)
	end
	tbl_79.resolve = resolve
	tbl_2[1] = "kind"
	tbl_2[2] = tbl_79
	local tbl_46 = {}
	local tbl_78 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 382
		if arg1.name ~= nil then
			return arg1.name
		end
		return nil
	end
	tbl_78.resolve = resolve
	tbl_46[1] = "name"
	tbl_46[2] = tbl_78
	local tbl_35 = {}
	local tbl_63 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 391
		if arg1.description ~= nil then
			return arg1.description
		end
		return nil
	end
	tbl_63.resolve = resolve
	tbl_35[1] = "description"
	tbl_35[2] = tbl_63
	local tbl_22 = {}
	local tbl = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 400
		if arg1.specifiedByUrl ~= nil then
			return arg1.specifiedByUrl
		end
		return nil
	end
	tbl.resolve = resolve
	tbl_22[1] = "specifiedByUrl"
	tbl_22[2] = tbl
	local tbl_43 = {}
	local tbl_34 = {
		type = GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var104_upvw));
		args = {
			includeDeprecated = {
				type = GraphQLBoolean_upvr;
				defaultValue = false;
			};
		};
	}
	local function resolve(arg1, arg2) -- Line 415
		--[[ Upvalues[3]:
			[1]: isObjectType_upvr (copied, readonly)
			[2]: isInterfaceType_upvr (copied, readonly)
			[3]: Array_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var120
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var120 = arg1
			return isInterfaceType_upvr(var120)
		end
		if isObjectType_upvr(arg1) or INLINED() then
			local any_values_result1_2 = arg1:getFields():values()
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var120 = any_values_result1_2
				return var120
			end
			if not arg2.includeDeprecated or not INLINED_2() then
				var120 = Array_upvr.filter
				var120 = var120(any_values_result1_2, function(arg1_2) -- Line 421
					local var123
					if arg1_2.deprecationReason ~= nil then
						var123 = false
					else
						var123 = true
					end
					return var123
				end)
			end
			return var120
		end
	end
	tbl_34.resolve = resolve
	tbl_43[1] = "fields"
	tbl_43[2] = tbl_34
	local tbl_9 = {}
	local tbl_48 = {
		type = GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var18_upvw));
	}
	local function resolve(arg1) -- Line 433
		--[[ Upvalues[2]:
			[1]: isObjectType_upvr (copied, readonly)
			[2]: isInterfaceType_upvr (copied, readonly)
		]]
		if isObjectType_upvr(arg1) or isInterfaceType_upvr(arg1) then
			return arg1:getInterfaces()
		end
	end
	tbl_48.resolve = resolve
	tbl_9[1] = "interfaces"
	tbl_9[2] = tbl_48
	local tbl_58 = {}
	local tbl_39 = {
		type = GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var18_upvw));
	}
	local function resolve(arg1, arg2, arg3, arg4) -- Line 445
		--[[ Upvalues[1]:
			[1]: isAbstractType_upvr (copied, readonly)
		]]
		if isAbstractType_upvr(arg1) then
			return arg4.schema:getPossibleTypes(arg1)
		end
		return nil
	end
	tbl_39.resolve = resolve
	tbl_58[1] = "possibleTypes"
	tbl_58[2] = tbl_39
	local tbl_44 = {}
	local tbl_8 = {
		type = GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var106_upvw));
		args = {
			includeDeprecated = {
				type = GraphQLBoolean_upvr;
				defaultValue = false;
			};
		};
	}
	local function resolve(arg1, arg2) -- Line 465
		--[[ Upvalues[2]:
			[1]: isEnumType_upvr (copied, readonly)
			[2]: Array_upvr (copied, readonly)
		]]
		local var132
		if isEnumType_upvr(arg1) then
			local any_getValues_result1 = arg1:getValues()
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var132 = any_getValues_result1
				return var132
			end
			if not arg2.includeDeprecated or not INLINED_3() then
				var132 = Array_upvr.filter
				var132 = var132(any_getValues_result1, function(arg1_3) -- Line 472
					local var135
					if arg1_3.deprecationReason ~= nil then
						var135 = false
					else
						var135 = true
					end
					return var135
				end)
			end
			return var132
		end
	end
	tbl_8.resolve = resolve
	tbl_44[1] = "enumValues"
	tbl_44[2] = tbl_8
	local tbl_6 = {}
	local tbl_15 = {
		type = GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var19_upvw));
		args = {
			includeDeprecated = {
				type = GraphQLBoolean_upvr;
				defaultValue = false;
			};
		};
	}
	local function resolve(arg1, arg2) -- Line 490
		--[[ Upvalues[2]:
			[1]: isInputObjectType_upvr (copied, readonly)
			[2]: Array_upvr (copied, readonly)
		]]
		local var140
		if isInputObjectType_upvr(arg1) then
			local any_values_result1 = arg1:getFields():values()
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var140 = any_values_result1
				return var140
			end
			if not arg2.includeDeprecated or not INLINED_4() then
				var140 = Array_upvr.filter
				var140 = var140(any_values_result1, function(arg1_4) -- Line 498
					local var143
					if arg1_4.deprecationReason ~= nil then
						var143 = false
					else
						var143 = true
					end
					return var143
				end)
			end
			return var140
		end
	end
	tbl_15.resolve = resolve
	tbl_6[1] = "inputFields"
	tbl_6[2] = tbl_15
	local tbl_59 = {}
	local tbl_30 = {
		type = var18_upvw;
	}
	local function resolve(arg1) -- Line 510
		if arg1.ofType ~= nil then
			return arg1.ofType
		end
		return nil
	end
	tbl_30.resolve = resolve
	tbl_59[1] = "ofType"
	tbl_59[2] = tbl_30
	module_2[1] = tbl_2
	module_2[2] = tbl_46
	module_2[3] = tbl_35
	module_2[4] = tbl_22
	module_2[5] = tbl_43
	module_2[6] = tbl_9
	module_2[7] = tbl_58
	module_2[8] = tbl_44
	module_2[9] = tbl_6
	module_2[10] = tbl_59
	return Map_upvr.new(module_2)
end
tbl_56.fields = fields
var18_upvw = GraphQLObjectType.new(tbl_56)
local var146_upvw = var18_upvw
local tbl_47 = {
	name = "__Field";
	description = "Object and Interface types are described by a list of Fields, each of which has a name, potentially a list of arguments, and a return type.";
}
local function fields() -- Line 522
	--[[ Upvalues[9]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLNonNull_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: GraphQLList_upvr (readonly)
		[5]: var19_upvw (read and write)
		[6]: GraphQLBoolean_upvr (readonly)
		[7]: Array_upvr (readonly)
		[8]: var146_upvw (read and write)
		[9]: isNotNillish_upvr (readonly)
	]]
	local module_3 = {}
	local tbl_19 = {}
	local tbl_11 = {
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
	}
	local function resolve(arg1) -- Line 528
		return arg1.name
	end
	tbl_11.resolve = resolve
	tbl_19[1] = "name"
	tbl_19[2] = tbl_11
	local tbl_3 = {}
	local tbl_28 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 537
		return arg1.description
	end
	tbl_28.resolve = resolve
	tbl_3[1] = "description"
	tbl_3[2] = tbl_28
	local tbl_13 = {}
	local tbl_65 = {
		type = GraphQLNonNull_upvr.new(GraphQLList_upvr.new(GraphQLNonNull_upvr.new(var19_upvw)));
		args = {
			includeDeprecated = {
				type = GraphQLBoolean_upvr;
				defaultValue = false;
			};
		};
	}
	local function resolve(arg1, arg2) -- Line 552
		--[[ Upvalues[1]:
			[1]: Array_upvr (copied, readonly)
		]]
		if arg2.includeDeprecated then
			return arg1.args
		end
		return Array_upvr.filter(arg1.args, function(arg1_5) -- Line 557
			local var158
			if arg1_5.deprecationReason ~= nil then
				var158 = false
			else
				var158 = true
			end
			return var158
		end)
	end
	tbl_65.resolve = resolve
	tbl_13[1] = "args"
	tbl_13[2] = tbl_65
	local tbl_49 = {}
	local tbl_76 = {
		type = GraphQLNonNull_upvr.new(var146_upvw);
	}
	local function resolve(arg1) -- Line 567
		return arg1.type
	end
	tbl_76.resolve = resolve
	tbl_49[1] = "type"
	tbl_49[2] = tbl_76
	local tbl_64 = {}
	local tbl_75 = {
		type = GraphQLNonNull_upvr.new(GraphQLBoolean_upvr);
	}
	local function resolve(arg1) -- Line 576
		--[[ Upvalues[1]:
			[1]: isNotNillish_upvr (copied, readonly)
		]]
		return isNotNillish_upvr(arg1.deprecationReason)
	end
	tbl_75.resolve = resolve
	tbl_64[1] = "isDeprecated"
	tbl_64[2] = tbl_75
	local tbl_81 = {}
	local tbl_27 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 585
		return arg1.deprecationReason
	end
	tbl_27.resolve = resolve
	tbl_81[1] = "deprecationReason"
	tbl_81[2] = tbl_27
	module_3[1] = tbl_19
	module_3[2] = tbl_3
	module_3[3] = tbl_13
	module_3[4] = tbl_49
	module_3[5] = tbl_64
	module_3[6] = tbl_81
	return Map_upvr.new(module_3)
end
tbl_47.fields = fields
var104_upvw = GraphQLObjectType.new(tbl_47)
local var165 = var104_upvw
local tbl_50 = {
	name = "__InputValue";
	description = "Arguments provided to Fields or Directives and the input fields of an InputObject are represented as Input Values which describe their type and optionally a default value.";
}
local astFromValue_upvr = require(Parent.utilities.astFromValue).astFromValue
local print_upvr = require(language.printer).print
local function fields() -- Line 597
	--[[ Upvalues[8]:
		[1]: Map_upvr (readonly)
		[2]: GraphQLNonNull_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: var146_upvw (read and write)
		[5]: astFromValue_upvr (readonly)
		[6]: print_upvr (readonly)
		[7]: GraphQLBoolean_upvr (readonly)
		[8]: isNotNillish_upvr (readonly)
	]]
	local module = {}
	local tbl_5 = {}
	local tbl_18 = {
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
	}
	local function resolve(arg1) -- Line 603
		return arg1.name
	end
	tbl_18.resolve = resolve
	tbl_5[1] = "name"
	tbl_5[2] = tbl_18
	local tbl_73 = {}
	local tbl_72 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 612
		return arg1.description
	end
	tbl_72.resolve = resolve
	tbl_73[1] = "description"
	tbl_73[2] = tbl_72
	local tbl_55 = {}
	local tbl_40 = {
		type = GraphQLNonNull_upvr.new(var146_upvw);
	}
	local function resolve(arg1) -- Line 621
		return arg1.type
	end
	tbl_40.resolve = resolve
	tbl_55[1] = "type"
	tbl_55[2] = tbl_40
	local tbl_12 = {}
	local tbl_71 = {
		type = GraphQLString_upvr;
		description = "A GraphQL-formatted string representing the default value for this input value.";
	}
	local function resolve(arg1) -- Line 631
		--[[ Upvalues[2]:
			[1]: astFromValue_upvr (copied, readonly)
			[2]: print_upvr (copied, readonly)
		]]
		local astFromValue_upvr_result1 = astFromValue_upvr(arg1.defaultValue, arg1.type)
		if astFromValue_upvr_result1 then
			return print_upvr(astFromValue_upvr_result1)
		end
		return nil
	end
	tbl_71.resolve = resolve
	tbl_12[1] = "defaultValue"
	tbl_12[2] = tbl_71
	local tbl_16 = {}
	local tbl_68 = {
		type = GraphQLNonNull_upvr.new(GraphQLBoolean_upvr);
	}
	local function resolve(arg1) -- Line 643
		--[[ Upvalues[1]:
			[1]: isNotNillish_upvr (copied, readonly)
		]]
		return isNotNillish_upvr(arg1.deprecationReason)
	end
	tbl_68.resolve = resolve
	tbl_16[1] = "isDeprecated"
	tbl_16[2] = tbl_68
	local tbl_69 = {}
	local tbl_74 = {
		type = GraphQLString_upvr;
	}
	local function resolve(arg1) -- Line 652
		return arg1.deprecationReason
	end
	tbl_74.resolve = resolve
	tbl_69[1] = "deprecationReason"
	tbl_69[2] = tbl_74
	module[1] = tbl_5
	module[2] = tbl_73
	module[3] = tbl_55
	module[4] = tbl_12
	module[5] = tbl_16
	module[6] = tbl_69
	return Map_upvr.new(module)
end
tbl_50.fields = fields
var19_upvw = GraphQLObjectType.new(tbl_50)
local var183 = var19_upvw
var106_upvw = GraphQLObjectType.new({
	name = "__EnumValue";
	description = "One possible value for a given Enum. Enum values are unique values, not a placeholder for a string or numeric value. However an Enum value is returned in a JSON response as a string.";
	fields = function() -- Line 664, Named "fields"
		--[[ Upvalues[5]:
			[1]: Map_upvr (readonly)
			[2]: GraphQLNonNull_upvr (readonly)
			[3]: GraphQLString_upvr (readonly)
			[4]: GraphQLBoolean_upvr (readonly)
			[5]: isNotNillish_upvr (readonly)
		]]
		local module_5 = {}
		local tbl_36 = {}
		local tbl_7 = {
			type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
		}
		local function resolve(arg1) -- Line 670
			return arg1.name
		end
		tbl_7.resolve = resolve
		tbl_36[1] = "name"
		tbl_36[2] = tbl_7
		local tbl_53 = {}
		local tbl_54 = {
			type = GraphQLString_upvr;
		}
		local function resolve(arg1) -- Line 679
			return arg1.description
		end
		tbl_54.resolve = resolve
		tbl_53[1] = "description"
		tbl_53[2] = tbl_54
		local tbl_52 = {}
		local tbl_23 = {
			type = GraphQLNonNull_upvr.new(GraphQLBoolean_upvr);
		}
		local function resolve(arg1) -- Line 688
			--[[ Upvalues[1]:
				[1]: isNotNillish_upvr (copied, readonly)
			]]
			return isNotNillish_upvr(arg1.deprecationReason)
		end
		tbl_23.resolve = resolve
		tbl_52[1] = "isDeprecated"
		tbl_52[2] = tbl_23
		local tbl_57 = {}
		local tbl_4 = {
			type = GraphQLString_upvr;
		}
		local function resolve(arg1) -- Line 697
			return arg1.deprecationReason
		end
		tbl_4.resolve = resolve
		tbl_57[1] = "deprecationReason"
		tbl_57[2] = tbl_4
		module_5[1] = tbl_36
		module_5[2] = tbl_53
		module_5[3] = tbl_52
		module_5[4] = tbl_57
		return Map_upvr.new(module_5)
	end;
})
local var194 = var106_upvw
var94_upvw = Object.freeze({
	SCALAR = "SCALAR";
	OBJECT = "OBJECT";
	INTERFACE = "INTERFACE";
	UNION = "UNION";
	ENUM = "ENUM";
	INPUT_OBJECT = "INPUT_OBJECT";
	LIST = "LIST";
	NON_NULL = "NON_NULL";
})
local var196 = var94_upvw
var92_upvw = GraphQLEnumType.new({
	name = "__TypeKind";
	description = "An enum describing what kind of type a given `__Type` is.";
	values = Map_upvr.new({{"SCALAR", {
		value = var196.SCALAR;
		description = "Indicates this type is a scalar.";
	}}, {"OBJECT", {
		value = var196.OBJECT;
		description = "Indicates this type is an object. `fields` and `interfaces` are valid fields.";
	}}, {"INTERFACE", {
		value = var196.INTERFACE;
		description = "Indicates this type is an interface. `fields`, `interfaces`, and `possibleTypes` are valid fields.";
	}}, {"UNION", {
		value = var196.UNION;
		description = "Indicates this type is a union. `possibleTypes` is a valid field.";
	}}, {"ENUM", {
		value = var196.ENUM;
		description = "Indicates this type is an enum. `enumValues` is a valid field.";
	}}, {"INPUT_OBJECT", {
		value = var196.INPUT_OBJECT;
		description = "Indicates this type is an input object. `inputFields` is a valid field.";
	}}, {"LIST", {
		value = var196.LIST;
		description = "Indicates this type is a list. `ofType` is a valid field.";
	}}, {"NON_NULL", {
		value = var196.NON_NULL;
		description = "Indicates this type is a non-null. `ofType` is a valid field.";
	}}});
})
local var215 = var92_upvw
local tbl_29 = {
	name = "__schema";
	type = GraphQLNonNull_upvr.new(any_new_result1);
	description = "Access the current type schema of this server.";
	args = {};
}
local function resolve(arg1, arg2, arg3, arg4) -- Line 790
	return arg4.schema
end
tbl_29.resolve = resolve
tbl_29.deprecationReason = nil
tbl_29.extensions = nil
tbl_29.astNode = nil
local tbl_51 = {
	name = "__type";
	type = var146_upvw;
	description = "Request the type information of a single type.";
	args = {{
		name = "name";
		description = nil;
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
		defaultValue = nil;
		deprecationReason = nil;
		extensions = nil;
		astNode = nil;
	}};
}
local function resolve(arg1, arg2, arg3, arg4) -- Line 815
	return arg4.schema:getType(arg2.name)
end
tbl_51.resolve = resolve
tbl_51.deprecationReason = nil
tbl_51.extensions = nil
tbl_51.astNode = nil
local any_freeze_result1_upvr = Object.freeze({any_new_result1, var49, var90, var146_upvw, var165, var183, var194, var215})
return {
	introspectionTypes = any_freeze_result1_upvr;
	isIntrospectionType = function(arg1) -- Line 852, Named "isIntrospectionType"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: any_freeze_result1_upvr (readonly)
		]]
		return Array_upvr.some(any_freeze_result1_upvr, function(arg1_6) -- Line 853
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var224
			if arg1.name ~= arg1_6.name then
				var224 = false
			else
				var224 = true
			end
			return var224
		end)
	end;
	TypeNameMetaFieldDef = {
		name = "__typename";
		type = GraphQLNonNull_upvr.new(GraphQLString_upvr);
		description = "The name of the current Object type at runtime.";
		args = {};
		resolve = function(arg1, arg2, arg3, arg4) -- Line 831, Named "resolve"
			return arg4.parentType.name
		end;
		deprecationReason = nil;
		extensions = nil;
		astNode = nil;
	};
	TypeMetaFieldDef = tbl_51;
	SchemaMetaFieldDef = tbl_29;
	TypeKind = var196;
	__TypeKind = var215;
	__Schema = any_new_result1;
	__Directive = var49;
	__DirectiveLocation = var90;
	__Type = var146_upvw;
	__Field = var165;
	__InputValue = var183;
	__EnumValue = var194;
}