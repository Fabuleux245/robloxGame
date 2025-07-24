-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:35
-- Luau version 6, Types version 3
-- Time taken: 0.017673 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module_3 = {}
local GraphQL = require(Parent.GraphQL)
local GraphQLObjectType_upvr = GraphQL.GraphQLObjectType
local isInterfaceType_upvr = GraphQL.isInterfaceType
local isEnumType_upvr = GraphQL.isEnumType
local isObjectType_upvr = GraphQL.isObjectType
local isInputObjectType_upvr = GraphQL.isInputObjectType
local GraphQLInputObjectType_upvr = GraphQL.GraphQLInputObjectType
local GraphQLInterfaceType_upvr = GraphQL.GraphQLInterfaceType
local GraphQLEnumType_upvr = GraphQL.GraphQLEnumType
local MapperKind_upvr = require(script.Parent.Interfaces).MapperKind
local transformInputValue = require(script.Parent.transformInputValue)
local Map_upvr = LuauPolyfill.Map
local String_upvr = LuauPolyfill.String
local mapArguments_upvw
local mapFields_upvw
local correctASTNodes_upvw
local mapTypes_upvw
local mapDefaultValues_upvw
local mapEnumValues_upvw
local serializeInputValue_upvr = transformInputValue.serializeInputValue
local isLeafType_upvr = GraphQL.isLeafType
local parseInputValue_upvr = transformInputValue.parseInputValue
local mapDirectives_upvw
local rewireTypes_upvr = require(script.Parent.rewire).rewireTypes
local GraphQLSchema_upvr = GraphQL.GraphQLSchema
local getObjectTypeFromTypeMap_upvr = require(script.Parent.getObjectTypeFromTypeMap).getObjectTypeFromTypeMap
function module_3.mapSchema(arg1, arg2) -- Line 172
	--[[ Upvalues[14]:
		[1]: mapArguments_upvw (read and write)
		[2]: mapFields_upvw (read and write)
		[3]: mapTypes_upvw (read and write)
		[4]: mapDefaultValues_upvw (read and write)
		[5]: mapEnumValues_upvw (read and write)
		[6]: serializeInputValue_upvr (readonly)
		[7]: isLeafType_upvr (readonly)
		[8]: parseInputValue_upvr (readonly)
		[9]: Boolean_upvr (readonly)
		[10]: mapDirectives_upvw (read and write)
		[11]: rewireTypes_upvr (readonly)
		[12]: GraphQLSchema_upvr (readonly)
		[13]: Object_upvr (readonly)
		[14]: getObjectTypeFromTypeMap_upvr (readonly)
	]]
	if arg2 ~= nil then
		local _ = arg2
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
	local mapArguments_result1 = mapArguments_upvw(mapFields_upvw(mapTypes_upvw(mapDefaultValues_upvw(mapEnumValues_upvw(mapTypes_upvw(mapDefaultValues_upvw(arg1:getTypeMap(), arg1, serializeInputValue_upvr), arg1, {}, function(arg1_2) -- Line 183
		--[[ Upvalues[1]:
			[1]: isLeafType_upvr (copied, readonly)
		]]
		return isLeafType_upvr(arg1_2)
	end), arg1, {}), arg1, parseInputValue_upvr), arg1, {}, function(arg1_3) -- Line 195
		--[[ Upvalues[2]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: isLeafType_upvr (copied, readonly)
		]]
		return not Boolean_upvr.toJSBoolean(isLeafType_upvr(arg1_3))
	end), arg1, {}), arg1, {})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var30_result1 = rewireTypes_upvr(mapArguments_result1, mapDirectives_upvw(arg1:getDirectives(), arg1, {}))
	local typeMap = var30_result1.typeMap
	local module_4 = {}
	local var32_result1_3 = getObjectTypeFromTypeMap_upvr(typeMap, getObjectTypeFromTypeMap_upvr(mapArguments_result1, arg1:getQueryType()))
	if not var32_result1_3 then
		var32_result1_3 = Object_upvr.None
	end
	module_4.query = var32_result1_3
	local var32_result1 = getObjectTypeFromTypeMap_upvr(typeMap, getObjectTypeFromTypeMap_upvr(mapArguments_result1, arg1:getMutationType()))
	if not var32_result1 then
		var32_result1 = Object_upvr.None
	end
	module_4.mutation = var32_result1
	local var32_result1_2 = getObjectTypeFromTypeMap_upvr(typeMap, getObjectTypeFromTypeMap_upvr(mapArguments_result1, arg1:getSubscriptionType()))
	if not var32_result1_2 then
		var32_result1_2 = Object_upvr.None
	end
	module_4.subscription = var32_result1_2
	local any_values_result1 = typeMap:values()
	if not any_values_result1 then
		any_values_result1 = Object_upvr.None
	end
	module_4.types = any_values_result1
	any_values_result1 = var30_result1.directives
	local var44 = any_values_result1
	if not var44 then
		var44 = Object_upvr.None
	end
	module_4.directives = var44
	return GraphQLSchema_upvr.new(Object_upvr.assign({}, arg1:toConfig(), module_4))
end
local getTypeMapper_upvw
function mapTypes_upvw(arg1, arg2, arg3, arg4) -- Line 241, Named "mapTypes"
	--[[ Upvalues[4]:
		[1]: Map_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: getTypeMapper_upvw (read and write)
	]]
	if arg4 ~= nil then
	else
	end
	for _, v in arg1 do
		local unpacked_value_1_2 = table.unpack(v)
		if not String_upvr.startsWith(unpacked_value_1_2, "__") then
			local any_get_result1_12 = arg1:get(unpacked_value_1_2)
			if any_get_result1_12 == nil or any_get_result1_12 == Object_upvr.None or not (function() -- Line 256
				return true
			end)(any_get_result1_12) then
				Map_upvr.new():set(unpacked_value_1_2, any_get_result1_12)
			else
				local getTypeMapper_result1 = getTypeMapper_upvw(arg2, arg3, unpacked_value_1_2)
				if getTypeMapper_result1 == nil or getTypeMapper_result1 == Object_upvr.None then
					Map_upvr.new():set(unpacked_value_1_2, any_get_result1_12)
				else
					local var53_result1 = getTypeMapper_result1(any_get_result1_12, arg2)
					if var53_result1 == nil then
						Map_upvr.new():set(unpacked_value_1_2, any_get_result1_12)
					else
						Map_upvr.new():set(unpacked_value_1_2, var53_result1)
					end
				end
			end
		end
	end
	return Map_upvr.new()
end
local getEnumValueMapper_upvw
function mapEnumValues_upvw(arg1, arg2, arg3) -- Line 313, Named "mapEnumValues"
	--[[ Upvalues[10]:
		[1]: getEnumValueMapper_upvw (read and write)
		[2]: Boolean_upvr (readonly)
		[3]: mapTypes_upvw (read and write)
		[4]: MapperKind_upvr (readonly)
		[5]: Map_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: Object_upvr (readonly)
		[8]: correctASTNodes_upvw (read and write)
		[9]: GraphQLEnumType_upvr (readonly)
		[10]: isEnumType_upvr (readonly)
	]]
	local getEnumValueMapper_result1_upvr = getEnumValueMapper_upvw(arg3)
	if not Boolean_upvr.toJSBoolean(getEnumValueMapper_result1_upvr) then
		return arg1
	end
	return mapTypes_upvw(arg1, arg2, {
		[tostring(MapperKind_upvr.ENUM_TYPE)] = function(arg1_4) -- Line 337
			--[[ Upvalues[8]:
				[1]: Map_upvr (copied, readonly)
				[2]: getEnumValueMapper_result1_upvr (readonly)
				[3]: arg2 (readonly)
				[4]: Boolean_upvr (copied, readonly)
				[5]: Array_upvr (copied, readonly)
				[6]: Object_upvr (copied, readonly)
				[7]: correctASTNodes_upvw (copied, read and write)
				[8]: GraphQLEnumType_upvr (copied, readonly)
			]]
			local any_toConfig_result1_3 = arg1_4:toConfig()
			local values = any_toConfig_result1_3.values
			for _, v_2 in values do
				local unpacked_value_1_3 = table.unpack(v_2)
				local any_get_result1_11 = values:get(unpacked_value_1_3)
				local var56_result1 = getEnumValueMapper_result1_upvr(any_get_result1_11, arg1_4.name, arg2, unpacked_value_1_3)
				if var56_result1 == nil then
					Map_upvr.new():set(unpacked_value_1_3, any_get_result1_11)
				else
					local var68
					if Boolean_upvr.toJSBoolean(Array_upvr.isArray(var56_result1)) then
						local unpacked_value_1_5, unpacked_value_2 = table.unpack(var56_result1, 1, 2)
						if unpacked_value_2 == nil then
							var68 = any_get_result1_11
						else
							var68 = unpacked_value_2
						end
						Map_upvr.new():set(unpacked_value_1_5, var68)
					elseif var56_result1 ~= Object_upvr.None then
						Map_upvr.new():set(unpacked_value_1_3, var56_result1)
					end
				end
			end
			return correctASTNodes_upvw(GraphQLEnumType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_3, {
				values = Map_upvr.new();
			})))
		end;
	}, function(arg1_5) -- Line 391
		--[[ Upvalues[1]:
			[1]: isEnumType_upvr (copied, readonly)
		]]
		return isEnumType_upvr(arg1_5)
	end)
end
local getNewType_upvw
function mapDefaultValues_upvw(arg1, arg2, arg3) -- Line 399, Named "mapDefaultValues"
	--[[ Upvalues[5]:
		[1]: mapArguments_upvw (read and write)
		[2]: MapperKind_upvr (readonly)
		[3]: getNewType_upvw (read and write)
		[4]: Object_upvr (readonly)
		[5]: mapFields_upvw (read and write)
	]]
	local mapArguments_upvw_result1_upvr = mapArguments_upvw(arg1, arg2, {
		[MapperKind_upvr.ARGUMENT] = function(arg1_6) -- Line 421
			--[[ Upvalues[4]:
				[1]: getNewType_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: Object_upvr (copied, readonly)
				[4]: arg3 (readonly)
			]]
			if arg1_6.defaultValue == nil then
				return arg1_6
			end
			local getNewType_result1 = getNewType_upvw(arg1, arg1_6.type)
			if getNewType_result1 ~= nil then
				return Object_upvr.assign({}, arg1_6, {
					defaultValue = arg3(getNewType_result1, arg1_6.defaultValue);
				})
			end
			return nil
		end;
	})
	return mapFields_upvw(mapArguments_upvw_result1_upvr, arg2, {
		[MapperKind_upvr.INPUT_OBJECT_FIELD] = function(arg1_7) -- Line 456
			--[[ Upvalues[4]:
				[1]: getNewType_upvw (copied, read and write)
				[2]: mapArguments_upvw_result1_upvr (readonly)
				[3]: Object_upvr (copied, readonly)
				[4]: arg3 (readonly)
			]]
			if arg1_7.defaultValue == nil then
				return arg1_7
			end
			local getNewType_result1_3 = getNewType_upvw(mapArguments_upvw_result1_upvr, arg1_7.type)
			if getNewType_result1_3 ~= nil then
				return Object_upvr.assign({}, arg1_7, {
					defaultValue = arg3(getNewType_result1_3, arg1_7.defaultValue);
				})
			end
			return nil
		end;
	})
end
local isListType_upvr = GraphQL.isListType
local GraphQLList_upvr = GraphQL.GraphQLList
local isNonNullType_upvr = GraphQL.isNonNullType
local GraphQLNonNull_upvr = GraphQL.GraphQLNonNull
local isNamedType_upvr = GraphQL.isNamedType
function getNewType_upvw(arg1, arg2) -- Line 487, Named "getNewType"
	--[[ Upvalues[7]:
		[1]: Boolean_upvr (readonly)
		[2]: isListType_upvr (readonly)
		[3]: getNewType_upvw (read and write)
		[4]: GraphQLList_upvr (readonly)
		[5]: isNonNullType_upvr (readonly)
		[6]: GraphQLNonNull_upvr (readonly)
		[7]: isNamedType_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(isListType_upvr(arg2)) then
		local getNewType_result1_4 = getNewType_upvw(arg1, arg2.ofType)
		if getNewType_result1_4 ~= nil then
			return GraphQLList_upvr.new(getNewType_result1_4)
		end
		return nil
	end
	if Boolean_upvr.toJSBoolean(isNonNullType_upvr(arg2)) then
		local getNewType_result1_2 = getNewType_upvw(arg1, arg2.ofType)
		if getNewType_result1_2 ~= nil then
			return GraphQLNonNull_upvr.new(getNewType_result1_2)
		end
		return nil
	end
	if Boolean_upvr.toJSBoolean(isNamedType_upvr(arg2)) then
		local any_get_result1_5 = arg1:get(arg2.name)
		if any_get_result1_5 ~= nil then
			return any_get_result1_5
		end
		return nil
	end
	return nil
end
local getFieldMapper_upvw
function mapFields_upvw(arg1, arg2, arg3) -- Line 521, Named "mapFields"
	--[[ Upvalues[13]:
		[1]: Map_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: isObjectType_upvr (readonly)
		[5]: isInterfaceType_upvr (readonly)
		[6]: isInputObjectType_upvr (readonly)
		[7]: getFieldMapper_upvw (read and write)
		[8]: Object_upvr (readonly)
		[9]: Array_upvr (readonly)
		[10]: correctASTNodes_upvw (read and write)
		[11]: GraphQLObjectType_upvr (readonly)
		[12]: GraphQLInterfaceType_upvr (readonly)
		[13]: GraphQLInputObjectType_upvr (readonly)
	]]
	for _, v_3 in arg1 do
		local unpacked_value_1_4 = table.unpack(v_3)
		if not String_upvr.startsWith(unpacked_value_1_4, "__") then
			local any_get_result1 = arg1:get(unpacked_value_1_4)
			if not Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1)) and not Boolean_upvr.toJSBoolean(isInterfaceType_upvr(any_get_result1)) and not Boolean_upvr.toJSBoolean(isInputObjectType_upvr(any_get_result1)) then
				Map_upvr.new():set(unpacked_value_1_4, any_get_result1)
			else
				local getFieldMapper_upvw_result1 = getFieldMapper_upvw(arg2, arg3, unpacked_value_1_4)
				if getFieldMapper_upvw_result1 == nil or getFieldMapper_upvw_result1 == Object_upvr.None then
					Map_upvr.new():set(unpacked_value_1_4, any_get_result1)
				else
					local any_toConfig_result1_6 = any_get_result1:toConfig()
					local fields_2 = any_toConfig_result1_6.fields
					for i_4, v_4 in fields_2 do
						local unpacked_value_1_9 = table.unpack(v_4)
						local any_get_result1_9 = fields_2:get(unpacked_value_1_9)
						local var102_result1 = getFieldMapper_upvw_result1(any_get_result1_9, unpacked_value_1_9, unpacked_value_1_4, arg2)
						if var102_result1 == nil then
							Map_upvr.new():set(unpacked_value_1_9, any_get_result1_9)
						elseif Boolean_upvr.toJSBoolean(Array_upvr.isArray(var102_result1)) then
							local unpacked_value_1_8, unpacked_value_2_3 = table.unpack(var102_result1, 1, 2)
							local var110
							if unpacked_value_2_3.astNode ~= nil and unpacked_value_2_3.astNode ~= Object_upvr.None then
								var110 = {}
								var110.name = Object_upvr.assign({}, unpacked_value_2_3.astNode.name, {
									value = unpacked_value_1_8;
								})
								unpacked_value_2_3.astNode = Object_upvr.assign({}, unpacked_value_2_3.astNode, var110)
							end
							if unpacked_value_2_3 == nil then
								var110 = any_get_result1_9
							else
								var110 = unpacked_value_2_3
							end
							Map_upvr.new():set(unpacked_value_1_8, var110)
						elseif var102_result1 ~= Object_upvr.None then
							Map_upvr.new():set(unpacked_value_1_9, var102_result1)
						end
					end
					if Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1)) then
						i_4 = correctASTNodes_upvw
						v_4 = GraphQLObjectType_upvr.new
						v_4 = v_4(Object_upvr.assign({}, any_toConfig_result1_6, {
							fields = Map_upvr.new();
						}))
						i_4 = i_4(v_4)
						Map_upvr.new():set(unpacked_value_1_4, i_4)
					elseif Boolean_upvr.toJSBoolean(isInterfaceType_upvr(any_get_result1)) then
						i_4 = correctASTNodes_upvw
						v_4 = GraphQLInterfaceType_upvr.new
						local tbl_8 = {}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_8.fields = Map_upvr.new()
						v_4 = v_4(Object_upvr.assign({}, any_toConfig_result1_6, tbl_8))
						i_4 = i_4(v_4)
						Map_upvr.new():set(unpacked_value_1_4, i_4)
					else
						i_4 = correctASTNodes_upvw
						v_4 = GraphQLInputObjectType_upvr.new
						local tbl_2 = {}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_2.fields = Map_upvr.new()
						v_4 = v_4(Object_upvr.assign({}, any_toConfig_result1_6, tbl_2))
						i_4 = i_4(v_4)
						Map_upvr.new():set(unpacked_value_1_4, i_4)
					end
				end
			end
		end
	end
	return Map_upvr.new()
end
local getArgumentMapper_upvw
function mapArguments_upvw(arg1, arg2, arg3) -- Line 688, Named "mapArguments"
	--[[ Upvalues[11]:
		[1]: Map_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: isObjectType_upvr (readonly)
		[5]: isInterfaceType_upvr (readonly)
		[6]: getArgumentMapper_upvw (read and write)
		[7]: Object_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: GraphQLObjectType_upvr (readonly)
		[10]: GraphQLInterfaceType_upvr (readonly)
		[11]: GraphQLInputObjectType_upvr (readonly)
	]]
	for _, v_5 in arg1 do
		local unpacked_value_1_7 = table.unpack(v_5)
		if not String_upvr.startsWith(unpacked_value_1_7, "__") then
			local any_get_result1_3 = arg1:get(unpacked_value_1_7)
			if not Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1_3)) and not Boolean_upvr.toJSBoolean(isInterfaceType_upvr(any_get_result1_3)) then
				Map_upvr.new():set(unpacked_value_1_7, any_get_result1_3)
			else
				local getArgumentMapper_result1 = getArgumentMapper_upvw(arg3)
				if getArgumentMapper_result1 == nil or getArgumentMapper_result1 == Object_upvr.None then
					Map_upvr.new():set(unpacked_value_1_7, any_get_result1_3)
				else
					local any_toConfig_result1_2 = any_get_result1_3:toConfig()
					local fields = any_toConfig_result1_2.fields
					for i_6, v_6 in fields do
						local unpacked_value_1 = table.unpack(v_6)
						local any_get_result1_10 = fields:get(unpacked_value_1)
						local args = any_get_result1_10.args
						if args == nil or args == Object_upvr.None then
							Map_upvr.new():set(unpacked_value_1, any_get_result1_10)
						else
							local any_keys_result1 = args:keys()
							if 0 >= #any_keys_result1 then
								Map_upvr.new():set(unpacked_value_1, any_get_result1_10)
							else
								for _, v_7 in any_keys_result1 do
									local any_get_result1_2 = args:get(v_7)
									local getArgumentMapper_result1_result1 = getArgumentMapper_result1(any_get_result1_2, unpacked_value_1, unpacked_value_1_7, arg2)
									if getArgumentMapper_result1_result1 == nil then
										Map_upvr.new():set(v_7, any_get_result1_2)
									elseif Boolean_upvr.toJSBoolean(Array_upvr.isArray(getArgumentMapper_result1_result1)) then
										local unpacked_value_1_6, unpacked_value_2_2 = table.unpack(getArgumentMapper_result1_result1, 1, 2)
										Map_upvr.new():set(unpacked_value_1_6, unpacked_value_2_2)
									elseif getArgumentMapper_result1_result1 ~= Object_upvr.None then
										Map_upvr.new():set(v_7, getArgumentMapper_result1_result1)
									end
								end
								Map_upvr.new():set(unpacked_value_1, Object_upvr.assign({}, any_get_result1_10, {
									args = Map_upvr.new();
								}))
							end
						end
					end
					if Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1_3)) then
						v_6 = GraphQLObjectType_upvr
						i_6 = v_6.new
						v_6 = Object_upvr.assign
						v_6 = v_6({}, any_toConfig_result1_2, {
							fields = Map_upvr.new();
						})
						i_6 = i_6(v_6)
						Map_upvr.new():set(unpacked_value_1_7, i_6)
					elseif Boolean_upvr.toJSBoolean(isInterfaceType_upvr(any_get_result1_3)) then
						v_6 = GraphQLInterfaceType_upvr
						i_6 = v_6.new
						v_6 = Object_upvr.assign
						local tbl_7 = {}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_7.fields = Map_upvr.new()
						v_6 = v_6({}, any_toConfig_result1_2, tbl_7)
						i_6 = i_6(v_6)
						Map_upvr.new():set(unpacked_value_1_7, i_6)
					else
						v_6 = GraphQLInputObjectType_upvr
						i_6 = v_6.new
						v_6 = Object_upvr.assign
						local tbl = {}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl.fields = Map_upvr.new()
						v_6 = v_6({}, any_toConfig_result1_2, tbl)
						i_6 = i_6(v_6)
						Map_upvr.new():set(unpacked_value_1_7, i_6)
					end
				end
			end
		end
	end
	return Map_upvr.new()
end
local getDirectiveMapper_upvw
function mapDirectives_upvw(arg1, arg2, arg3) -- Line 884, Named "mapDirectives"
	--[[ Upvalues[3]:
		[1]: getDirectiveMapper_upvw (read and write)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local getDirectiveMapper_upvw_result1 = getDirectiveMapper_upvw(arg3)
	if getDirectiveMapper_upvw_result1 == nil or getDirectiveMapper_upvw_result1 == Object_upvr.None then
		return Array_upvr.slice(arg1)
	end
	for _, v_8 in arg1 do
		local var142_result1 = getDirectiveMapper_upvw_result1(v_8, arg2)
		if var142_result1 == nil then
			table.insert({}, v_8)
		elseif var142_result1 ~= Object_upvr.None then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, var142_result1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local isUnionType_upvr = GraphQL.isUnionType
local isScalarType_upvr = GraphQL.isScalarType
local function getTypeSpecifiers_upvr(arg1, arg2) -- Line 916, Named "getTypeSpecifiers"
	--[[ Upvalues[9]:
		[1]: MapperKind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: isObjectType_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: isInputObjectType_upvr (readonly)
		[6]: isInterfaceType_upvr (readonly)
		[7]: isUnionType_upvr (readonly)
		[8]: isEnumType_upvr (readonly)
		[9]: isScalarType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var147
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 40 start (CF ANALYSIS FAILED)
	var147 = Array_upvr.concat
	var147 = var147({MapperKind_upvr.TYPE}, {MapperKind_upvr.COMPOSITE_TYPE, MapperKind_upvr.OBJECT_TYPE})
	if typeof(arg1:getQueryType()) == "table" then
		var147 = arg1:getQueryType().name
	else
		var147 = nil
	end
	if arg2 == var147 then
		local module = {MapperKind_upvr.ROOT_OBJECT, MapperKind_upvr.QUERY}
		return Array_upvr.concat(var147, module)
	end
	if typeof(arg1:getMutationType()) == "table" then
	else
	end
	if arg2 == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Array_upvr.concat(Array_upvr.concat(var147, module), {MapperKind_upvr.ROOT_OBJECT, MapperKind_upvr.MUTATION})
	end
	if typeof(arg1:getSubscriptionType()) == "table" then
	else
	end
	-- KONSTANTERROR: [19] 15. Error Block 40 end (CF ANALYSIS FAILED)
end
function getTypeMapper_upvw(arg1, arg2, arg3) -- Line 996, Named "getTypeMapper"
	--[[ Upvalues[3]:
		[1]: getTypeSpecifiers_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	local any_concat_result1 = Array_upvr.concat({}, getTypeSpecifiers_upvr(arg1, arg3))
	local var152
	while not Boolean_upvr.toJSBoolean(var152) and 0 < #any_concat_result1 do
		var152 = arg2[tostring(table.remove(any_concat_result1))]
	end
	if var152 ~= nil then
		return var152
	end
	return nil
end
local function getFieldSpecifiers_upvr(arg1, arg2) -- Line 1023, Named "getFieldSpecifiers"
	--[[ Upvalues[6]:
		[1]: MapperKind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: isObjectType_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: isInterfaceType_upvr (readonly)
		[6]: isInputObjectType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var154
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 30 start (CF ANALYSIS FAILED)
	var154 = Array_upvr.concat
	var154 = var154({MapperKind_upvr.FIELD}, {MapperKind_upvr.COMPOSITE_FIELD, MapperKind_upvr.OBJECT_FIELD})
	if typeof(arg1:getQueryType()) == "table" then
		var154 = arg1:getQueryType().name
	else
		var154 = nil
	end
	if arg2 == var154 then
		local module_2 = {MapperKind_upvr.ROOT_FIELD, MapperKind_upvr.QUERY_ROOT_FIELD}
		return Array_upvr.concat(var154, module_2)
	end
	if typeof(arg1:getMutationType()) == "table" then
	else
	end
	if arg2 == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Array_upvr.concat(Array_upvr.concat(var154, module_2), {MapperKind_upvr.ROOT_FIELD, MapperKind_upvr.MUTATION_ROOT_FIELD})
	end
	if typeof(arg1:getSubscriptionType()) == "table" then
	else
	end
	-- KONSTANTERROR: [19] 15. Error Block 30 end (CF ANALYSIS FAILED)
end
function getFieldMapper_upvw(arg1, arg2, arg3) -- Line 1102, Named "getFieldMapper"
	--[[ Upvalues[3]:
		[1]: getFieldSpecifiers_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	local any_concat_result1_2 = Array_upvr.concat({}, table.unpack(getFieldSpecifiers_upvr(arg1, arg3)))
	local var159
	while not Boolean_upvr.toJSBoolean(var159) and 0 < #any_concat_result1_2 do
		var159 = arg2[tostring(table.remove(any_concat_result1_2))]
	end
	if var159 ~= nil then
		return var159
	end
	return nil
end
function getArgumentMapper_upvw(arg1) -- Line 1129, Named "getArgumentMapper"
	--[[ Upvalues[1]:
		[1]: MapperKind_upvr (readonly)
	]]
	local var160 = arg1[tostring(MapperKind_upvr.ARGUMENT)]
	if var160 ~= nil then
		return var160
	end
	return nil
end
function getDirectiveMapper_upvw(arg1) -- Line 1140, Named "getDirectiveMapper"
	--[[ Upvalues[1]:
		[1]: MapperKind_upvr (readonly)
	]]
	local var161 = arg1[tostring(MapperKind_upvr.DIRECTIVE)]
	if var161 ~= nil then
		return var161
	end
	return nil
end
function getEnumValueMapper_upvw(arg1) -- Line 1151, Named "getEnumValueMapper"
	--[[ Upvalues[1]:
		[1]: MapperKind_upvr (readonly)
	]]
	local var162 = arg1[tostring(MapperKind_upvr.ENUM_VALUE)]
	if var162 ~= nil then
		return var162
	end
	return nil
end
local Kind_upvr = GraphQL.Kind
function correctASTNodes_upvw(arg1) -- Line 1175, Named "correctASTNodes"
	--[[ Upvalues[12]:
		[1]: Boolean_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Kind_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: GraphQLObjectType_upvr (readonly)
		[7]: isInterfaceType_upvr (readonly)
		[8]: GraphQLInterfaceType_upvr (readonly)
		[9]: isInputObjectType_upvr (readonly)
		[10]: GraphQLInputObjectType_upvr (readonly)
		[11]: isEnumType_upvr (readonly)
		[12]: GraphQLEnumType_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(isObjectType_upvr(arg1)) then
		local any_toConfig_result1_4 = arg1:toConfig()
		if any_toConfig_result1_4.astNode ~= nil then
			for _, v_9 in any_toConfig_result1_4.fields do
				local any_get_result1_7 = any_toConfig_result1_4.fields:get(table.unpack(v_9))
				if any_get_result1_7.astNode ~= nil then
					table.insert({}, any_get_result1_7.astNode)
				end
			end
			local tbl_6 = {
				kind = Kind_upvr.OBJECT_TYPE_DEFINITION;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_6.fields = {}
			any_toConfig_result1_4.astNode = Object_upvr.assign({}, any_toConfig_result1_4.astNode, tbl_6)
		end
		if any_toConfig_result1_4.extensionASTNodes ~= nil then
			any_toConfig_result1_4.extensionASTNodes = Array_upvr.map(any_toConfig_result1_4.extensionASTNodes, function(arg1_8) -- Line 1206
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: Kind_upvr (copied, readonly)
				]]
				return Object_upvr.assign({}, arg1_8, {
					kind = Kind_upvr.OBJECT_TYPE_EXTENSION;
					fields = Object_upvr.None;
				})
			end)
		end
		return GraphQLObjectType_upvr.new(any_toConfig_result1_4)
	end
	if Boolean_upvr.toJSBoolean(isInterfaceType_upvr(arg1)) then
		local any_toConfig_result1_7 = arg1:toConfig()
		if any_toConfig_result1_7.astNode ~= nil then
			for _, v_10 in any_toConfig_result1_7.fields do
				local any_get_result1_6 = any_toConfig_result1_7.fields:get(table.unpack(v_10))
				if any_get_result1_6.astNode ~= nil then
					table.insert({}, any_get_result1_6.astNode)
				end
			end
			local tbl_5 = {
				kind = Kind_upvr.INTERFACE_TYPE_DEFINITION;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.fields = {}
			any_toConfig_result1_7.astNode = Object_upvr.assign({}, any_toConfig_result1_7.astNode, tbl_5)
		end
		if any_toConfig_result1_7.extensionASTNodes ~= nil then
			any_toConfig_result1_7.extensionASTNodes = Array_upvr.map(any_toConfig_result1_7.extensionASTNodes, function(arg1_9) -- Line 1239
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: Kind_upvr (copied, readonly)
				]]
				return Object_upvr.assign({}, arg1_9, {
					kind = Kind_upvr.INTERFACE_TYPE_EXTENSION;
					fields = Object_upvr.None;
				})
			end)
		end
		return GraphQLInterfaceType_upvr.new(any_toConfig_result1_7)
	end
	if Boolean_upvr.toJSBoolean(isInputObjectType_upvr(arg1)) then
		local any_toConfig_result1_5 = arg1:toConfig()
		if any_toConfig_result1_5.astNode ~= nil then
			for _, v_11 in any_toConfig_result1_5.fields do
				local any_get_result1_8 = any_toConfig_result1_5.fields:get(table.unpack(v_11))
				if any_get_result1_8.astNode ~= nil then
					table.insert({}, any_get_result1_8.astNode)
				end
			end
			local tbl_4 = {
				kind = Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_4.fields = {}
			any_toConfig_result1_5.astNode = Object_upvr.assign({}, any_toConfig_result1_5.astNode, tbl_4)
		end
		if any_toConfig_result1_5.extensionASTNodes ~= nil then
			any_toConfig_result1_5.extensionASTNodes = Array_upvr.map(any_toConfig_result1_5.extensionASTNodes, function(arg1_10) -- Line 1275
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: Kind_upvr (copied, readonly)
				]]
				return Object_upvr.assign({}, arg1_10, {
					kind = Kind_upvr.INPUT_OBJECT_TYPE_EXTENSION;
					fields = Object_upvr.None;
				})
			end)
		end
		return GraphQLInputObjectType_upvr.new(any_toConfig_result1_5)
	end
	if Boolean_upvr.toJSBoolean(isEnumType_upvr(arg1)) then
		local any_toConfig_result1 = arg1:toConfig()
		if any_toConfig_result1.astNode ~= nil then
			for _, v_12 in any_toConfig_result1.values do
				local any_get_result1_4 = any_toConfig_result1.values:get(table.unpack(v_12))
				if any_get_result1_4.astNode ~= nil then
					table.insert({}, any_get_result1_4.astNode)
				end
			end
			local tbl_3 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_3.values = {}
			any_toConfig_result1.astNode = Object_upvr.assign({}, any_toConfig_result1.astNode, tbl_3)
		end
		if any_toConfig_result1.extensionASTNodes ~= nil then
			any_toConfig_result1.extensionASTNodes = Array_upvr.map(any_toConfig_result1.extensionASTNodes, function(arg1_11) -- Line 1307
				--[[ Upvalues[1]:
					[1]: Object_upvr (copied, readonly)
				]]
				return Object_upvr.assign({}, arg1_11, {
					values = Object_upvr.None;
				})
			end)
		end
		return GraphQLEnumType_upvr.new(any_toConfig_result1)
	end
	return arg1
end
module_3.correctASTNodes = correctASTNodes_upvw
return module_3