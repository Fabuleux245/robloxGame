-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:11
-- Luau version 6, Types version 3
-- Time taken: 0.006462 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local definition = require(Parent.type.definition)
local sortBy_upvw
local isListType_upvr = definition.isListType
local GraphQLList_upvr = definition.GraphQLList
local isNonNullType_upvr = definition.isNonNullType
local GraphQLNonNull_upvr = definition.GraphQLNonNull
local GraphQLDirective_upvr = require(Parent.type.directives).GraphQLDirective
local Object_upvr = LuauPolyfill.Object
local sortObjMap_upvw
local sortByName_upvw
local isScalarType_upvr = definition.isScalarType
local isIntrospectionType_upvr = require(Parent.type.introspection).isIntrospectionType
local isObjectType_upvr = definition.isObjectType
local GraphQLObjectType_upvr = definition.GraphQLObjectType
local isInterfaceType_upvr = definition.isInterfaceType
local GraphQLInterfaceType_upvr = definition.GraphQLInterfaceType
local isUnionType_upvr = definition.isUnionType
local GraphQLUnionType_upvr = definition.GraphQLUnionType
local isEnumType_upvr = definition.isEnumType
local GraphQLEnumType_upvr = definition.GraphQLEnumType
local isInputObjectType_upvr = definition.isInputObjectType
local GraphQLInputObjectType_upvr = definition.GraphQLInputObjectType
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local keyValMap_upvr = require(Parent.jsutils.keyValMap).keyValMap
local GraphQLSchema_upvr = require(Parent.type.schema).GraphQLSchema
local Map_upvr = LuauPolyfill.Map
function sortObjMap_upvw(arg1, arg2) -- Line 235, Named "sortObjMap"
	--[[ Upvalues[2]:
		[1]: Map_upvr (readonly)
		[2]: sortBy_upvw (read and write)
	]]
	local any_new_result1 = Map_upvr.new()
	for _, v in ipairs(sortBy_upvw(arg1:keys(), function(arg1_17) -- Line 238
		return arg1_17
	end)) do
		any_new_result1[v] = arg2(arg1[v])
	end
	return any_new_result1
end
function sortByName_upvw(arg1) -- Line 249, Named "sortByName"
	--[[ Upvalues[1]:
		[1]: sortBy_upvw (read and write)
	]]
	return sortBy_upvw(arg1, function(arg1_18) -- Line 250
		return arg1_18.name
	end)
end
local naturalCompare_upvr = require(Parent.jsutils.naturalCompare).naturalCompare
function sortBy_upvw(arg1, arg2) -- Line 256, Named "sortBy"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: naturalCompare_upvr (readonly)
	]]
	return Array_upvr.sort(Array_upvr.slice(arg1), function(arg1_19, arg2_2) -- Line 257
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: naturalCompare_upvr (copied, readonly)
		]]
		return naturalCompare_upvr(arg2(arg1_19), arg2(arg2_2))
	end)
end
return {
	lexicographicSortSchema = function(arg1) -- Line 78, Named "lexicographicSortSchema"
		--[[ Upvalues[26]:
			[1]: isListType_upvr (readonly)
			[2]: GraphQLList_upvr (readonly)
			[3]: isNonNullType_upvr (readonly)
			[4]: GraphQLNonNull_upvr (readonly)
			[5]: GraphQLDirective_upvr (readonly)
			[6]: Object_upvr (readonly)
			[7]: sortBy_upvw (read and write)
			[8]: sortObjMap_upvw (read and write)
			[9]: Array_upvr (readonly)
			[10]: sortByName_upvw (read and write)
			[11]: isScalarType_upvr (readonly)
			[12]: isIntrospectionType_upvr (readonly)
			[13]: isObjectType_upvr (readonly)
			[14]: GraphQLObjectType_upvr (readonly)
			[15]: isInterfaceType_upvr (readonly)
			[16]: GraphQLInterfaceType_upvr (readonly)
			[17]: isUnionType_upvr (readonly)
			[18]: GraphQLUnionType_upvr (readonly)
			[19]: isEnumType_upvr (readonly)
			[20]: GraphQLEnumType_upvr (readonly)
			[21]: isInputObjectType_upvr (readonly)
			[22]: GraphQLInputObjectType_upvr (readonly)
			[23]: invariant_upvr (readonly)
			[24]: inspect_upvr (readonly)
			[25]: keyValMap_upvr (readonly)
			[26]: GraphQLSchema_upvr (readonly)
		]]
		local any_toConfig_result1_2 = arg1:toConfig()
		local replaceNamedType_upvw
		local function replaceType_upvr(arg1_2) -- Line 86, Named "replaceType"
			--[[ Upvalues[6]:
				[1]: isListType_upvr (copied, readonly)
				[2]: GraphQLList_upvr (copied, readonly)
				[3]: replaceType_upvr (readonly)
				[4]: isNonNullType_upvr (copied, readonly)
				[5]: GraphQLNonNull_upvr (copied, readonly)
				[6]: replaceNamedType_upvw (read and write)
			]]
			if isListType_upvr(arg1_2) then
				return GraphQLList_upvr.new(replaceType_upvr(arg1_2.ofType))
			end
			if isNonNullType_upvr(arg1_2) then
				return GraphQLNonNull_upvr.new(replaceType_upvr(arg1_2.ofType))
			end
			return replaceNamedType_upvw(arg1_2)
		end
		function replaceNamedType_upvw(arg1_3) -- Line 102, Named "replaceNamedType"
			--[[ Upvalues[1]:
				[1]: var33_upvw (read and write)
			]]
			return var33_upvw[arg1_3.name]
		end
		local var33_upvw
		local var32_upvw = replaceNamedType_upvw
		local function replaceMaybeType(arg1_4) -- Line 108
			--[[ Upvalues[1]:
				[1]: var32_upvw (read and write)
			]]
			if arg1_4 then
				return var32_upvw(arg1_4)
			end
			return nil
		end
		local sortArgs_upvw
		function sortArgs_upvw(arg1_7) -- Line 123, Named "sortArgs"
			--[[ Upvalues[3]:
				[1]: sortObjMap_upvw (copied, read and write)
				[2]: Object_upvr (copied, readonly)
				[3]: replaceType_upvr (readonly)
			]]
			return sortObjMap_upvw(arg1_7, function(arg1_8) -- Line 124
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: replaceType_upvr (copied, readonly)
				]]
				return Object_upvr.assign({}, arg1_8, {
					type = replaceType_upvr(arg1_8.type);
				})
			end)
		end
		local function sortFields_upvw(arg1_9) -- Line 131, Named "sortFields"
			--[[ Upvalues[4]:
				[1]: sortObjMap_upvw (copied, read and write)
				[2]: Object_upvr (copied, readonly)
				[3]: replaceType_upvr (readonly)
				[4]: sortArgs_upvw (read and write)
			]]
			return sortObjMap_upvw(arg1_9, function(arg1_10) -- Line 132
				--[[ Upvalues[3]:
					[1]: Object_upvr (copied, readonly)
					[2]: replaceType_upvr (copied, readonly)
					[3]: sortArgs_upvw (copied, read and write)
				]]
				local module_3 = {}
				local replaceType_upvr_result1 = replaceType_upvr(arg1_10.type)
				module_3.type = replaceType_upvr_result1
				if arg1_10.args then
					replaceType_upvr_result1 = sortArgs_upvw(arg1_10.args)
				else
					replaceType_upvr_result1 = nil
				end
				module_3.args = replaceType_upvr_result1
				return Object_upvr.assign({}, arg1_10, module_3)
			end)
		end
		local function sortInputFields_upvw(arg1_11) -- Line 140, Named "sortInputFields"
			--[[ Upvalues[3]:
				[1]: sortObjMap_upvw (copied, read and write)
				[2]: Object_upvr (copied, readonly)
				[3]: replaceType_upvr (readonly)
			]]
			return sortObjMap_upvw(arg1_11, function(arg1_12) -- Line 141
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: replaceType_upvr (copied, readonly)
				]]
				return Object_upvr.assign({}, arg1_12, {
					type = replaceType_upvr(arg1_12.type);
				})
			end)
		end
		local function sortTypes_upvw(arg1_13) -- Line 148, Named "sortTypes"
			--[[ Upvalues[3]:
				[1]: Array_upvr (copied, readonly)
				[2]: sortByName_upvw (copied, read and write)
				[3]: var32_upvw (read and write)
			]]
			return Array_upvr.map(sortByName_upvw(arg1_13), var32_upvw)
		end
		var33_upvw = keyValMap_upvr(sortByName_upvw(any_toConfig_result1_2.types), function(arg1_16) -- Line 220
			return arg1_16.name
		end, function(arg1_14) -- Line 152, Named "sortNamedType"
			--[[ Upvalues[19]:
				[1]: isScalarType_upvr (copied, readonly)
				[2]: isIntrospectionType_upvr (copied, readonly)
				[3]: isObjectType_upvr (copied, readonly)
				[4]: GraphQLObjectType_upvr (copied, readonly)
				[5]: Object_upvr (copied, readonly)
				[6]: sortTypes_upvw (read and write)
				[7]: sortFields_upvw (read and write)
				[8]: isInterfaceType_upvr (copied, readonly)
				[9]: GraphQLInterfaceType_upvr (copied, readonly)
				[10]: isUnionType_upvr (copied, readonly)
				[11]: GraphQLUnionType_upvr (copied, readonly)
				[12]: isEnumType_upvr (copied, readonly)
				[13]: GraphQLEnumType_upvr (copied, readonly)
				[14]: sortObjMap_upvw (copied, read and write)
				[15]: isInputObjectType_upvr (copied, readonly)
				[16]: GraphQLInputObjectType_upvr (copied, readonly)
				[17]: sortInputFields_upvw (read and write)
				[18]: invariant_upvr (copied, readonly)
				[19]: inspect_upvr (copied, readonly)
			]]
			if isScalarType_upvr(arg1_14) or isIntrospectionType_upvr(arg1_14) then
				return arg1_14
			end
			if isObjectType_upvr(arg1_14) then
				local any_toConfig_result1_3_upvr = arg1_14:toConfig()
				local module_2 = {}
				local function interfaces() -- Line 161
					--[[ Upvalues[2]:
						[1]: sortTypes_upvw (copied, read and write)
						[2]: any_toConfig_result1_3_upvr (readonly)
					]]
					return sortTypes_upvw(any_toConfig_result1_3_upvr.interfaces)
				end
				module_2.interfaces = interfaces
				local function fields() -- Line 164
					--[[ Upvalues[2]:
						[1]: sortFields_upvw (copied, read and write)
						[2]: any_toConfig_result1_3_upvr (readonly)
					]]
					return sortFields_upvw(any_toConfig_result1_3_upvr.fields)
				end
				module_2.fields = fields
				return GraphQLObjectType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_3_upvr, module_2))
			end
			any_toConfig_result1_3_upvr = isInterfaceType_upvr(arg1_14)
			if any_toConfig_result1_3_upvr then
				any_toConfig_result1_3_upvr = arg1_14:toConfig()
				local var47_upvr = any_toConfig_result1_3_upvr
				local module = {
					interfaces = function() -- Line 174, Named "interfaces"
						--[[ Upvalues[2]:
							[1]: sortTypes_upvw (copied, read and write)
							[2]: var47_upvr (readonly)
						]]
						return sortTypes_upvw(var47_upvr.interfaces)
					end;
				}
				local function fields() -- Line 177
					--[[ Upvalues[2]:
						[1]: sortFields_upvw (copied, read and write)
						[2]: var47_upvr (readonly)
					]]
					return sortFields_upvw(var47_upvr.fields)
				end
				module.fields = fields
				return GraphQLInterfaceType_upvr.new(Object_upvr.assign({}, var47_upvr, module))
			end
			var47_upvr = isUnionType_upvr(arg1_14)
			if var47_upvr then
				var47_upvr = arg1_14:toConfig()
				local var49_upvr = var47_upvr
				return GraphQLUnionType_upvr.new(Object_upvr.assign({}, var49_upvr, {
					types = function() -- Line 187, Named "types"
						--[[ Upvalues[2]:
							[1]: sortTypes_upvw (copied, read and write)
							[2]: var49_upvr (readonly)
						]]
						return sortTypes_upvw(var49_upvr.types)
					end;
				}))
			end
			var49_upvr = isEnumType_upvr(arg1_14)
			if var49_upvr then
				var49_upvr = arg1_14:toConfig()
				local var51 = var49_upvr
				return GraphQLEnumType_upvr.new(Object_upvr.assign({}, var51, {
					values = sortObjMap_upvw(var51.values, function(arg1_15) -- Line 197
						return arg1_15
					end);
				}))
			end
			var51 = isInputObjectType_upvr(arg1_14)
			if var51 then
				var51 = arg1_14:toConfig()
				local var54_upvr = var51
				return GraphQLInputObjectType_upvr.new(Object_upvr.assign({}, var54_upvr, {
					fields = function() -- Line 208, Named "fields"
						--[[ Upvalues[2]:
							[1]: sortInputFields_upvw (copied, read and write)
							[2]: var54_upvr (readonly)
						]]
						return sortInputFields_upvw(var54_upvr.fields)
					end;
				}))
			end
			var54_upvr = invariant_upvr
			var54_upvr(false, "Unexpected type: "..inspect_upvr(arg1_14))
			var54_upvr = error
			var54_upvr("Unexpected type: "..inspect_upvr(arg1_14))
		end)
		return GraphQLSchema_upvr.new(Object_upvr.assign({}, any_toConfig_result1_2, {
			types = var33_upvw:values();
			directives = Array_upvr.map(sortByName_upvw(any_toConfig_result1_2.directives), function(arg1_5) -- Line 112, Named "sortDirective"
				--[[ Upvalues[4]:
					[1]: GraphQLDirective_upvr (copied, readonly)
					[2]: Object_upvr (copied, readonly)
					[3]: sortBy_upvw (copied, read and write)
					[4]: sortArgs_upvw (read and write)
				]]
				local any_toConfig_result1 = arg1_5:toConfig()
				return GraphQLDirective_upvr.new(Object_upvr.assign({}, any_toConfig_result1, {
					locations = sortBy_upvw(any_toConfig_result1.locations, function(arg1_6) -- Line 116
						return arg1_6
					end);
					args = sortArgs_upvw(any_toConfig_result1.args);
				}))
			end);
			query = replaceMaybeType(any_toConfig_result1_2.query);
			mutation = replaceMaybeType(any_toConfig_result1_2.mutation);
			subscription = replaceMaybeType(any_toConfig_result1_2.subscription);
		}))
	end;
}