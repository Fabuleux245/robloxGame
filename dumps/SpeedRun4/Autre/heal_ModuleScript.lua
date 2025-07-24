-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:29
-- Luau version 6, Types version 3
-- Time taken: 0.009891 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local GraphQL = require(Parent.GraphQL)
local healTypes_upvw
function module.healSchema(arg1) -- Line 96
	--[[ Upvalues[1]:
		[1]: healTypes_upvw (read and write)
	]]
	healTypes_upvw(arg1:getTypeMap(), arg1:getDirectives())
	return arg1
end
local Boolean_upvr = LuauPolyfill.Boolean
local isObjectType_upvr = GraphQL.isObjectType
local isInterfaceType_upvr = GraphQL.isInterfaceType
local isUnionType_upvr = GraphQL.isUnionType
local isInputObjectType_upvr = GraphQL.isInputObjectType
local isLeafType_upvr = GraphQL.isLeafType
local Error_upvr = LuauPolyfill.Error
local Array_upvr = LuauPolyfill.Array
local isListType_upvr = GraphQL.isListType
local GraphQLList_upvr = GraphQL.GraphQLList
local isNonNullType_upvr = GraphQL.isNonNullType
local GraphQLNonNull_upvr = GraphQL.GraphQLNonNull
local isNamedType_upvr = GraphQL.isNamedType
local Map_upvr = LuauPolyfill.Map
local String_upvr = LuauPolyfill.String
local console_upvr = LuauPolyfill.console
function healTypes_upvw(arg1, arg2) -- Line 106, Named "healTypes"
	--[[ Upvalues[16]:
		[1]: Boolean_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
		[3]: isInterfaceType_upvr (readonly)
		[4]: isUnionType_upvr (readonly)
		[5]: isInputObjectType_upvr (readonly)
		[6]: isLeafType_upvr (readonly)
		[7]: Error_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: isListType_upvr (readonly)
		[10]: GraphQLList_upvr (readonly)
		[11]: isNonNullType_upvr (readonly)
		[12]: GraphQLNonNull_upvr (readonly)
		[13]: isNamedType_upvr (readonly)
		[14]: Map_upvr (readonly)
		[15]: String_upvr (readonly)
		[16]: console_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local healType_upvw
	local healFields_upvw
	local healInterfaces_upvw
	local healUnderlyingTypes_upvw
	local healInputFields_upvw
	function healFields_upvw(arg1_13) -- Line 234, Named "healFields"
		--[[ Upvalues[3]:
			[1]: Array_upvr (copied, readonly)
			[2]: healType_upvw (read and write)
			[3]: Boolean_upvr (copied, readonly)
		]]
		local any_getFields_result1_3 = arg1_13:getFields()
		for _, v in any_getFields_result1_3:entries() do
			local _2_3 = v[2]
			Array_upvr.filter(Array_upvr.map(_2_3.args, function(arg1_14) -- Line 250
				--[[ Upvalues[1]:
					[1]: healType_upvw (copied, read and write)
				]]
				arg1_14.type = healType_upvw(arg1_14.type)
				if arg1_14.type == nil then
					return nil
				end
				return arg1_14
			end), Boolean_upvr.toJSBoolean)
			_2_3.type = healType_upvw(_2_3.type)
			if _2_3.type == nil then
				any_getFields_result1_3[tostring(v[1])] = nil
			end
		end
	end
	function healInterfaces_upvw(arg1_15) -- Line 267, Named "healInterfaces"
		--[[ Upvalues[3]:
			[1]: Array_upvr (copied, readonly)
			[2]: healType_upvw (read and write)
			[3]: Boolean_upvr (copied, readonly)
		]]
		if arg1_15.getInterfaces ~= nil then
			local _ = arg1_15:getInterfaces()
			local function _(arg1_16) -- Line 285
				--[[ Upvalues[1]:
					[1]: healType_upvw (copied, read and write)
				]]
				return healType_upvw(arg1_16)
			end
		end
	end
	function healInputFields_upvw(arg1_17) -- Line 296, Named "healInputFields"
		--[[ Upvalues[1]:
			[1]: healType_upvw (read and write)
		]]
		local any_getFields_result1_4 = arg1_17:getFields()
		for _, v_2 in any_getFields_result1_4:entries() do
			local _2_2 = v_2[2]
			_2_2.type = healType_upvw(_2_2.type)
			if _2_2.type == nil then
				any_getFields_result1_4[tostring(v_2[1])] = nil
			end
		end
	end
	function healUnderlyingTypes_upvw(arg1_18) -- Line 316, Named "healUnderlyingTypes"
		--[[ Upvalues[3]:
			[1]: Array_upvr (copied, readonly)
			[2]: healType_upvw (read and write)
			[3]: Boolean_upvr (copied, readonly)
		]]
		local _ = arg1_18:getTypes()
		local function _(arg1_19) -- Line 327
			--[[ Upvalues[1]:
				[1]: healType_upvw (copied, read and write)
			]]
			return healType_upvw(arg1_19)
		end
	end
	function healType_upvw(arg1_20) -- Line 337, Named "healType"
		--[[ Upvalues[8]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: isListType_upvr (copied, readonly)
			[3]: var164_upvw (read and write)
			[4]: GraphQLList_upvr (copied, readonly)
			[5]: isNonNullType_upvr (copied, readonly)
			[6]: GraphQLNonNull_upvr (copied, readonly)
			[7]: isNamedType_upvr (copied, readonly)
			[8]: arg1 (readonly)
		]]
		if Boolean_upvr.toJSBoolean(isListType_upvr(arg1_20)) then
			local var164_result1 = var164_upvw(arg1_20.ofType)
			if var164_result1 ~= nil then
				return GraphQLList_upvr.new(var164_result1)
			end
			return nil
		end
		if Boolean_upvr.toJSBoolean(isNonNullType_upvr(arg1_20)) then
			local var164_result1_3 = var164_upvw(arg1_20.ofType)
			if var164_result1_3 ~= nil then
				return GraphQLNonNull_upvr.new(var164_result1_3)
			end
			return nil
		end
		if Boolean_upvr.toJSBoolean(isNamedType_upvr(arg1_20)) then
			local any_get_result1_2 = arg1:get(arg1_20.name)
			local var168 = Boolean_upvr
			if Boolean_upvr.toJSBoolean(any_get_result1_2) then
				if arg1_20 == any_get_result1_2 then
					var168 = false
				else
					var168 = true
				end
			else
				var168 = any_get_result1_2
			end
			if var168.toJSBoolean(var168) then
				return any_get_result1_2
			end
		end
		return arg1_20
	end
	local var164_upvw = healType_upvw
	local any_new_result1 = Map_upvr.new()
	for _, v_3 in arg1 do
		local unpacked_value_1_4 = table.unpack(v_3)
		local any_get_result1 = arg1:get(unpacked_value_1_4)
		if any_get_result1 ~= nil then
			if not String_upvr.startsWith(unpacked_value_1_4, "__") then
				local name = any_get_result1.name
				if not String_upvr.startsWith(name, "__") then
					if any_new_result1:get(name) ~= nil then
						console_upvr.warn("Duplicate schema type name %s found; keeping the existing one found in the schema":format(name))
					else
						any_new_result1:set(name, any_get_result1)
					end
				end
			end
		end
	end
	for _, v_4 in any_new_result1 do
		local unpacked_value_1_6 = table.unpack(v_4)
		arg1:set(unpacked_value_1_6, any_new_result1:get(unpacked_value_1_6))
	end
	for _, v_5 in arg2 do
		v_5.args = Array_upvr.filter(v_5.args, function(arg1_21) -- Line 422
			--[[ Upvalues[1]:
				[1]: var164_upvw (read and write)
			]]
			local var164_result1_2 = var164_upvw(arg1_21.type)
			arg1_21.type = var164_result1_2
			if arg1_21.type == nil then
				var164_result1_2 = false
			else
				var164_result1_2 = true
			end
			return var164_result1_2
		end)
	end
	for _, v_6 in arg1 do
		local unpacked_value_1_3 = table.unpack(v_6)
		if not String_upvr.startsWith(unpacked_value_1_3, "__") and Array_upvr.indexOf(any_new_result1:keys(), unpacked_value_1_3) ~= -1 and arg1:get(unpacked_value_1_3) ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;(function(arg1_12) -- Line 187, Named "healNamedType"
				--[[ Upvalues[11]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: isObjectType_upvr (copied, readonly)
					[3]: healFields_upvw (read and write)
					[4]: healInterfaces_upvw (read and write)
					[5]: isInterfaceType_upvr (copied, readonly)
					[6]: isUnionType_upvr (copied, readonly)
					[7]: healUnderlyingTypes_upvw (read and write)
					[8]: isInputObjectType_upvr (copied, readonly)
					[9]: healInputFields_upvw (read and write)
					[10]: isLeafType_upvr (copied, readonly)
					[11]: Error_upvr (copied, readonly)
				]]
				if Boolean_upvr.toJSBoolean(isObjectType_upvr(arg1_12)) then
					healFields_upvw(arg1_12)
					healInterfaces_upvw(arg1_12)
				else
					if Boolean_upvr.toJSBoolean(isInterfaceType_upvr(arg1_12)) then
						healFields_upvw(arg1_12)
						if arg1_12.getInterfaces ~= nil then
							healInterfaces_upvw(arg1_12)
						end
						return
					end
					if Boolean_upvr.toJSBoolean(isUnionType_upvr(arg1_12)) then
						healUnderlyingTypes_upvw(arg1_12)
						return
					end
					if Boolean_upvr.toJSBoolean(isInputObjectType_upvr(arg1_12)) then
						healInputFields_upvw(arg1_12)
						return
					end
					if Boolean_upvr.toJSBoolean(isLeafType_upvr(arg1_12)) then return end
					error(Error_upvr.new("Unexpected schema type: %s":format(tostring(arg1_12))))
				end
			end)(arg1:get(unpacked_value_1_3))
		end
	end
	for _, v_7 in arg1 do
		local unpacked_value_1_7 = table.unpack(v_7)
		if not String_upvr.startsWith(unpacked_value_1_7, "__") and Array_upvr.indexOf(any_new_result1:keys(), unpacked_value_1_7) == -1 then
			arg1:set(unpacked_value_1_7, nil)
		end
	end
end
module.healTypes = healTypes_upvw
return module