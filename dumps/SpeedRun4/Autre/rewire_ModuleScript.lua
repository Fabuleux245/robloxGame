-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:41
-- Luau version 6, Types version 3
-- Time taken: 0.012036 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_4 = {}
local GraphQL = require(Parent.GraphQL)
local stub = require(script.Parent.stub)
local isSpecifiedDirective_upvr = GraphQL.isSpecifiedDirective
local GraphQLDirective_upvr = GraphQL.GraphQLDirective
local Map_upvr = LuauPolyfill.Map
local isObjectType_upvr = GraphQL.isObjectType
local Object_upvr = LuauPolyfill.Object
local GraphQLObjectType_upvr = GraphQL.GraphQLObjectType
local isInterfaceType_upvr = GraphQL.isInterfaceType
local Array_upvr = LuauPolyfill.Array
local GraphQLInterfaceType_upvr = GraphQL.GraphQLInterfaceType
local isUnionType_upvr = GraphQL.isUnionType
local GraphQLUnionType_upvr = GraphQL.GraphQLUnionType
local isInputObjectType_upvr = GraphQL.isInputObjectType
local GraphQLInputObjectType_upvr = GraphQL.GraphQLInputObjectType
local isEnumType_upvr = GraphQL.isEnumType
local GraphQLEnumType_upvr = GraphQL.GraphQLEnumType
local isScalarType_upvr = GraphQL.isScalarType
local isSpecifiedScalarType_upvr = GraphQL.isSpecifiedScalarType
local GraphQLScalarType_upvr = GraphQL.GraphQLScalarType
local Error_upvr = LuauPolyfill.Error
local isListType_upvr = GraphQL.isListType
local GraphQLList_upvr = GraphQL.GraphQLList
local isNonNullType_upvr = GraphQL.isNonNullType
local GraphQLNonNull_upvr = GraphQL.GraphQLNonNull
local isNamedType_upvr = GraphQL.isNamedType
local isNamedStub_upvr = stub.isNamedStub
local getBuiltInForStub_upvr = stub.getBuiltInForStub
local String_upvr = LuauPolyfill.String
local console_upvr = LuauPolyfill.console
function module_4.rewireTypes(arg1, arg2) -- Line 92
	--[[ Upvalues[28]:
		[1]: isSpecifiedDirective_upvr (readonly)
		[2]: GraphQLDirective_upvr (readonly)
		[3]: Map_upvr (readonly)
		[4]: isObjectType_upvr (readonly)
		[5]: Object_upvr (readonly)
		[6]: GraphQLObjectType_upvr (readonly)
		[7]: isInterfaceType_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: GraphQLInterfaceType_upvr (readonly)
		[10]: isUnionType_upvr (readonly)
		[11]: GraphQLUnionType_upvr (readonly)
		[12]: isInputObjectType_upvr (readonly)
		[13]: GraphQLInputObjectType_upvr (readonly)
		[14]: isEnumType_upvr (readonly)
		[15]: GraphQLEnumType_upvr (readonly)
		[16]: isScalarType_upvr (readonly)
		[17]: isSpecifiedScalarType_upvr (readonly)
		[18]: GraphQLScalarType_upvr (readonly)
		[19]: Error_upvr (readonly)
		[20]: isListType_upvr (readonly)
		[21]: GraphQLList_upvr (readonly)
		[22]: isNonNullType_upvr (readonly)
		[23]: GraphQLNonNull_upvr (readonly)
		[24]: isNamedType_upvr (readonly)
		[25]: isNamedStub_upvr (readonly)
		[26]: getBuiltInForStub_upvr (readonly)
		[27]: String_upvr (readonly)
		[28]: console_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local rewireType_upvw
	local rewireArgs_upvw
	local function rewireDirective_upvw(arg1_11) -- Line 114, Named "rewireDirective"
		--[[ Upvalues[3]:
			[1]: isSpecifiedDirective_upvr (copied, readonly)
			[2]: rewireArgs_upvw (read and write)
			[3]: GraphQLDirective_upvr (copied, readonly)
		]]
		if isSpecifiedDirective_upvr(arg1_11) then
			return arg1_11
		end
		local any_toConfig_result1_2 = arg1_11:toConfig()
		any_toConfig_result1_2.args = rewireArgs_upvw(any_toConfig_result1_2.args)
		return GraphQLDirective_upvr.new(any_toConfig_result1_2)
	end
	function rewireArgs_upvw(arg1_12) -- Line 123, Named "rewireArgs"
		--[[ Upvalues[2]:
			[1]: Map_upvr (copied, readonly)
			[2]: rewireType_upvw (read and write)
		]]
		for _, v in arg1_12 do
			local _1_5 = v[1]
			local any_get_result1_7 = arg1_12:get(_1_5)
			local rewireType_result1_4 = rewireType_upvw(any_get_result1_7.type)
			if rewireType_result1_4 ~= nil then
				any_get_result1_7.type = rewireType_result1_4
				Map_upvr.new():set(_1_5, any_get_result1_7)
			end
		end
		return Map_upvr.new()
	end
	local rewireFields_upvw
	local rewireNamedTypes_upvw
	local rewireInputFields_upvw
	local function rewireNamedType_upvw(arg1_13) -- Line 138, Named "rewireNamedType"
		--[[ Upvalues[19]:
			[1]: isObjectType_upvr (copied, readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: rewireFields_upvw (read and write)
			[4]: rewireNamedTypes_upvw (read and write)
			[5]: GraphQLObjectType_upvr (copied, readonly)
			[6]: isInterfaceType_upvr (copied, readonly)
			[7]: Array_upvr (copied, readonly)
			[8]: GraphQLInterfaceType_upvr (copied, readonly)
			[9]: isUnionType_upvr (copied, readonly)
			[10]: GraphQLUnionType_upvr (copied, readonly)
			[11]: isInputObjectType_upvr (copied, readonly)
			[12]: rewireInputFields_upvw (read and write)
			[13]: GraphQLInputObjectType_upvr (copied, readonly)
			[14]: isEnumType_upvr (copied, readonly)
			[15]: GraphQLEnumType_upvr (copied, readonly)
			[16]: isScalarType_upvr (copied, readonly)
			[17]: isSpecifiedScalarType_upvr (copied, readonly)
			[18]: GraphQLScalarType_upvr (copied, readonly)
			[19]: Error_upvr (copied, readonly)
		]]
		if isObjectType_upvr(arg1_13) then
			local any_toConfig_result1_3_upvr = arg1_13:toConfig()
			local module_2 = {}
			local function fields() -- Line 143
				--[[ Upvalues[2]:
					[1]: rewireFields_upvw (copied, read and write)
					[2]: any_toConfig_result1_3_upvr (readonly)
				]]
				return rewireFields_upvw(any_toConfig_result1_3_upvr.fields)
			end
			module_2.fields = fields
			function module_2.interfaces() -- Line 146
				--[[ Upvalues[2]:
					[1]: rewireNamedTypes_upvw (copied, read and write)
					[2]: any_toConfig_result1_3_upvr (readonly)
				]]
				return rewireNamedTypes_upvw(any_toConfig_result1_3_upvr.interfaces)
			end
			return GraphQLObjectType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_3_upvr, module_2))
		end
		any_toConfig_result1_3_upvr = isInterfaceType_upvr(arg1_13)
		if any_toConfig_result1_3_upvr then
			any_toConfig_result1_3_upvr = arg1_13:toConfig()
			local var151_upvr = any_toConfig_result1_3_upvr
			local tbl_2 = {}
			local function fields() -- Line 154
				--[[ Upvalues[2]:
					[1]: rewireFields_upvw (copied, read and write)
					[2]: var151_upvr (readonly)
				]]
				return rewireFields_upvw(var151_upvr.fields)
			end
			tbl_2.fields = fields
			local any_assign_result1_2 = Object_upvr.assign({}, var151_upvr, tbl_2)
			if Array_upvr.indexOf(Object_upvr.keys(any_assign_result1_2), "interfaces") ~= -1 then
				function any_assign_result1_2.interfaces(arg1_14) -- Line 159
					--[[ Upvalues[2]:
						[1]: rewireNamedTypes_upvw (copied, read and write)
						[2]: var151_upvr (readonly)
					]]
					return rewireNamedTypes_upvw(var151_upvr.interfaces)
				end
			end
			return GraphQLInterfaceType_upvr.new(any_assign_result1_2)
		end
		var151_upvr = isUnionType_upvr(arg1_13)
		if var151_upvr then
			var151_upvr = arg1_13:toConfig()
			local var155_upvr = var151_upvr
			return GraphQLUnionType_upvr.new(Object_upvr.assign({}, var155_upvr, {
				types = function() -- Line 169, Named "types"
					--[[ Upvalues[2]:
						[1]: rewireNamedTypes_upvw (copied, read and write)
						[2]: var155_upvr (readonly)
					]]
					return rewireNamedTypes_upvw(var155_upvr.types)
				end;
			}))
		end
		var155_upvr = isInputObjectType_upvr(arg1_13)
		if var155_upvr then
			var155_upvr = arg1_13:toConfig()
			local var157_upvr = var155_upvr
			return GraphQLInputObjectType_upvr.new(Object_upvr.assign({}, var157_upvr, {
				fields = function() -- Line 177, Named "fields"
					--[[ Upvalues[2]:
						[1]: rewireInputFields_upvw (copied, read and write)
						[2]: var157_upvr (readonly)
					]]
					return rewireInputFields_upvw(var157_upvr.fields)
				end;
			}))
		end
		var157_upvr = isEnumType_upvr(arg1_13)
		if var157_upvr then
			var157_upvr = arg1_13:toConfig()
			return GraphQLEnumType_upvr.new(var157_upvr)
		end
		var157_upvr = isScalarType_upvr(arg1_13)
		if var157_upvr then
			var157_upvr = isSpecifiedScalarType_upvr(arg1_13)
			if var157_upvr then
				return arg1_13
			end
			var157_upvr = arg1_13:toConfig()
			local var159_upvr = var157_upvr
			local serialize_2_upvr = var159_upvr.serialize
			local parseValue_2_upvr = var159_upvr.parseValue
			local parseLiteral_3_upvr = var159_upvr.parseLiteral
			if serialize_2_upvr then
				function var159_upvr.serialize(...) -- Line 196
					--[[ Upvalues[2]:
						[1]: serialize_2_upvr (readonly)
						[2]: var159_upvr (readonly)
					]]
					return serialize_2_upvr(var159_upvr, ...)
				end
			end
			if parseValue_2_upvr then
				function var159_upvr.parseValue(...) -- Line 202
					--[[ Upvalues[2]:
						[1]: parseValue_2_upvr (readonly)
						[2]: var159_upvr (readonly)
					]]
					return parseValue_2_upvr(var159_upvr, ...)
				end
			end
			if parseLiteral_3_upvr then
				function var159_upvr.parseLiteral(...) -- Line 208
					--[[ Upvalues[2]:
						[1]: parseLiteral_3_upvr (readonly)
						[2]: var159_upvr (readonly)
					]]
					return parseLiteral_3_upvr(var159_upvr, ...)
				end
			end
			return GraphQLScalarType_upvr.new(var159_upvr)
		end
		var159_upvr = error
		parseValue_2_upvr = Error_upvr
		serialize_2_upvr = parseValue_2_upvr.new
		parseValue_2_upvr = "Unexpected schema type: %s":format(tostring(arg1_13))
		serialize_2_upvr = serialize_2_upvr(parseValue_2_upvr)
		var159_upvr(serialize_2_upvr)
	end
	function rewireFields_upvw(arg1_15) -- Line 220, Named "rewireFields"
		--[[ Upvalues[3]:
			[1]: Map_upvr (copied, readonly)
			[2]: rewireType_upvw (read and write)
			[3]: rewireArgs_upvw (read and write)
		]]
		for _, v_2 in arg1_15 do
			local _1_8 = v_2[1]
			local any_get_result1_2 = arg1_15:get(_1_8)
			local rewireType_result1_5 = rewireType_upvw(any_get_result1_2.type)
			if rewireType_result1_5 ~= nil and any_get_result1_2.args then
				any_get_result1_2.type = rewireType_result1_5
				any_get_result1_2.args = rewireArgs_upvw(any_get_result1_2.args)
				Map_upvr.new():set(_1_8, any_get_result1_2)
			end
		end
		return Map_upvr.new()
	end
	function rewireInputFields_upvw(arg1_16) -- Line 235, Named "rewireInputFields"
		--[[ Upvalues[2]:
			[1]: Map_upvr (copied, readonly)
			[2]: rewireType_upvw (read and write)
		]]
		for _, v_3 in arg1_16 do
			local _1_10 = v_3[1]
			local any_get_result1_5 = arg1_16:get(_1_10)
			local rewireType_result1_3 = rewireType_upvw(any_get_result1_5.type)
			if rewireType_result1_3 ~= nil then
				any_get_result1_5.type = rewireType_result1_3
				Map_upvr.new():set(_1_10, any_get_result1_5)
			end
		end
		return Map_upvr.new()
	end
	function rewireNamedTypes_upvw(arg1_17) -- Line 249, Named "rewireNamedTypes"
		--[[ Upvalues[2]:
			[1]: rewireType_upvw (read and write)
			[2]: Object_upvr (copied, readonly)
		]]
		for _, v_4 in arg1_17 do
			local rewireType_result1_2 = rewireType_upvw(v_4)
			if rewireType_result1_2 ~= nil and rewireType_result1_2 ~= Object_upvr.None then
				table.insert({}, rewireType_result1_2)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	local var179_upvw
	local var180_upvw
	function rewireType_upvw(arg1_18) -- Line 260, Named "rewireType"
		--[[ Upvalues[12]:
			[1]: isListType_upvr (copied, readonly)
			[2]: rewireType_upvw (read and write)
			[3]: Object_upvr (copied, readonly)
			[4]: GraphQLList_upvr (copied, readonly)
			[5]: isNonNullType_upvr (copied, readonly)
			[6]: GraphQLNonNull_upvr (copied, readonly)
			[7]: isNamedType_upvr (copied, readonly)
			[8]: var179_upvw (read and write)
			[9]: isNamedStub_upvr (copied, readonly)
			[10]: getBuiltInForStub_upvr (copied, readonly)
			[11]: rewireNamedType_upvw (read and write)
			[12]: var180_upvw (read and write)
		]]
		if isListType_upvr(arg1_18) then
			local rewireType_result1 = rewireType_upvw(arg1_18.ofType)
			if rewireType_result1 ~= nil and rewireType_result1 ~= Object_upvr.None then
				return GraphQLList_upvr.new(rewireType_result1)
			end
			return nil
		end
		if isNonNullType_upvr(arg1_18) then
			local rewireType_upvw_result1 = rewireType_upvw(arg1_18.ofType)
			if rewireType_upvw_result1 ~= nil and rewireType_upvw_result1 ~= Object_upvr.None then
				return GraphQLNonNull_upvr.new(rewireType_upvw_result1)
			end
			return nil
		end
		local var183
		if var183 then
			var183 = var179_upvw:get(arg1_18.name)
			if var183 == nil then
				if isNamedStub_upvr(arg1_18) then
					var183 = getBuiltInForStub_upvr(arg1_18)
				else
					var183 = rewireNamedType_upvw(arg1_18)
				end
				var179_upvw:set(arg1_18.name, var183)
				var180_upvw:set(var183.name, var179_upvw:get(arg1_18.name))
			end
			if var183 ~= nil and var183 ~= Object_upvr.None then
				return var180_upvw:get(var183.name)
			end
			return nil
		end
		return nil
	end
	var179_upvw = Map_upvr.new()
	local var184 = var179_upvw
	for _, v_5 in arg1 do
		local _1_4 = v_5[1]
		var184:set(_1_4, arg1:get(_1_4))
	end
	var180_upvw = Map_upvr.new()
	local var186 = var180_upvw
	for _, v_6 in var184 do
		local _1 = v_6[1]
		local any_get_result1_4 = var184:get(_1)
		if any_get_result1_4 ~= nil and any_get_result1_4 ~= Object_upvr.None and not String_upvr.startsWith(_1, "__") then
			local name = any_get_result1_4.name
			if not String_upvr.startsWith(name, "__") then
				if var186:get(name) ~= nil then
					console_upvr.warn("Duplicate schema type name %s found; keeping the existing one found in the schema":format(tostring(name)))
				else
					var186:set(name, any_get_result1_4)
				end
			end
		end
	end
	for _, v_7 in var186 do
		local _1_2 = v_7[1]
		var186:set(_1_2, rewireNamedType_upvw(var186:get(_1_2)))
		local var191
	end
	return {
		typeMap = var191;
		directives = Array_upvr.map(arg2, function(arg1_19) -- Line 360
			--[[ Upvalues[1]:
				[1]: rewireDirective_upvw (read and write)
			]]
			return rewireDirective_upvw(arg1_19)
		end);
	}
end
return module_4