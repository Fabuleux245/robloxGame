-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:20
-- Luau version 6, Types version 3
-- Time taken: 0.004483 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module_2 = {}
local GraphQLObjectType_upvr = require(Parent.GraphQL).GraphQLObjectType
local MapperKind_upvr = require(script.Parent.Interfaces).MapperKind
local mapSchema = require(script.Parent.mapSchema)
local mapSchema_upvr = mapSchema.mapSchema
local correctASTNodes_upvr = mapSchema.correctASTNodes
local Map_upvr = LuauPolyfill.Map
local addTypes_upvr = require(script.Parent.addTypes).addTypes
function module_2.appendObjectFields(arg1, arg2, arg3) -- Line 41
	--[[ Upvalues[7]:
		[1]: addTypes_upvr (readonly)
		[2]: GraphQLObjectType_upvr (readonly)
		[3]: mapSchema_upvr (readonly)
		[4]: MapperKind_upvr (readonly)
		[5]: Map_upvr (readonly)
		[6]: correctASTNodes_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	if arg1:getType(arg2) == nil then
		local module = {}
		local tbl = {}
		tbl.name = arg2
		tbl.fields = arg3
		module[1] = GraphQLObjectType_upvr.new(tbl)
		return addTypes_upvr(arg1, module)
	end
	return mapSchema_upvr(arg1, {
		[MapperKind_upvr.OBJECT_TYPE] = function(arg1_2) -- Line 54
			--[[ Upvalues[6]:
				[1]: arg2 (readonly)
				[2]: Map_upvr (copied, readonly)
				[3]: arg3 (readonly)
				[4]: correctASTNodes_upvr (copied, readonly)
				[5]: GraphQLObjectType_upvr (copied, readonly)
				[6]: Object_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			if arg1_2.name == arg2 then
				local any_toConfig_result1_3 = arg1_2:toConfig()
				local fields_2 = any_toConfig_result1_3.fields
				local any_new_result1 = Map_upvr.new()
				for _, v in fields_2 do
					local _1_5 = v[1]
					any_new_result1:set(_1_5, fields_2:get(_1_5))
					local _
				end
				for _, v_2 in arg3 do
					local _1_3 = v_2[1]
					any_new_result1:set(_1_3, arg3:get(_1_3))
					local var39
				end
				return correctASTNodes_upvr(GraphQLObjectType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_3, {
					fields = var39;
				})))
			end
			return nil
		end;
	})
end
function module_2.removeObjectFields(arg1, arg2, arg3) -- Line 100
	--[[ Upvalues[7]:
		[1]: Map_upvr (readonly)
		[2]: mapSchema_upvr (readonly)
		[3]: MapperKind_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: correctASTNodes_upvr (readonly)
		[6]: GraphQLObjectType_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	local any_new_result1_5_upvr = Map_upvr.new()
	return {mapSchema_upvr(arg1, {
		[MapperKind_upvr.OBJECT_TYPE] = function(arg1_3) -- Line 112
			--[[ Upvalues[8]:
				[1]: arg2 (readonly)
				[2]: Map_upvr (copied, readonly)
				[3]: Boolean_upvr (copied, readonly)
				[4]: arg3 (readonly)
				[5]: any_new_result1_5_upvr (readonly)
				[6]: correctASTNodes_upvr (copied, readonly)
				[7]: GraphQLObjectType_upvr (copied, readonly)
				[8]: Object_upvr (copied, readonly)
			]]
			if arg1_3.name == arg2 then
				local any_toConfig_result1_2 = arg1_3:toConfig()
				local fields = any_toConfig_result1_2.fields
				for _, v_3 in fields do
					local unpacked_value_1 = table.unpack(v_3)
					local any_get_result1 = fields:get(unpacked_value_1)
					if Boolean_upvr.toJSBoolean(arg3(unpacked_value_1, any_get_result1)) then
						any_new_result1_5_upvr:set(unpacked_value_1, any_get_result1)
					else
						Map_upvr.new():set(unpacked_value_1, any_get_result1)
					end
				end
				return correctASTNodes_upvr(GraphQLObjectType_upvr.new(Object_upvr.assign({}, any_toConfig_result1_2, {
					fields = Map_upvr.new();
				})))
			end
			return nil
		end;
	}), any_new_result1_5_upvr}
end
function module_2.selectObjectFields(arg1, arg2, arg3) -- Line 160
	--[[ Upvalues[4]:
		[1]: Map_upvr (readonly)
		[2]: mapSchema_upvr (readonly)
		[3]: MapperKind_upvr (readonly)
		[4]: Boolean_upvr (readonly)
	]]
	local any_new_result1_4_upvr = Map_upvr.new()
	mapSchema_upvr(arg1, {
		[tostring(MapperKind_upvr.OBJECT_TYPE)] = function(arg1_4) -- Line 170
			--[[ Upvalues[4]:
				[1]: arg2 (readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: arg3 (readonly)
				[4]: any_new_result1_4_upvr (readonly)
			]]
			if arg1_4.name == arg2 then
				local fields_4 = arg1_4:toConfig().fields
				for _, v_4 in fields_4 do
					local _1 = v_4[1]
					local any_get_result1_2 = fields_4:get(_1)
					if Boolean_upvr.toJSBoolean(arg3(_1, any_get_result1_2)) then
						any_new_result1_4_upvr:set(_1, any_get_result1_2)
					end
				end
			end
			return nil
		end;
	})
	return any_new_result1_4_upvr
end
function module_2.modifyObjectFields(arg1, arg2, arg3, arg4) -- Line 200
	--[[ Upvalues[7]:
		[1]: Map_upvr (readonly)
		[2]: mapSchema_upvr (readonly)
		[3]: MapperKind_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: correctASTNodes_upvr (readonly)
		[6]: GraphQLObjectType_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	local any_new_result1_2_upvr = Map_upvr.new()
	return {mapSchema_upvr(arg1, {
		[MapperKind_upvr.OBJECT_TYPE] = function(arg1_5) -- Line 213
			--[[ Upvalues[9]:
				[1]: arg2 (readonly)
				[2]: Map_upvr (copied, readonly)
				[3]: Boolean_upvr (copied, readonly)
				[4]: arg3 (readonly)
				[5]: any_new_result1_2_upvr (readonly)
				[6]: arg4 (readonly)
				[7]: correctASTNodes_upvr (copied, readonly)
				[8]: GraphQLObjectType_upvr (copied, readonly)
				[9]: Object_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			if arg1_5.name == arg2 then
				local any_toConfig_result1 = arg1_5:toConfig()
				local fields_3 = any_toConfig_result1.fields
				local any_new_result1_3 = Map_upvr.new()
				for _, v_5 in fields_3 do
					local _1_4 = v_5[1]
					local any_get_result1_3 = fields_3:get(_1_4)
					if Boolean_upvr.toJSBoolean(arg3(_1_4, any_get_result1_3)) then
						any_new_result1_2_upvr:set(_1_4, any_get_result1_3)
					else
						any_new_result1_3:set(_1_4, any_get_result1_3)
					end
				end
				for _, v_6 in arg4 do
					local _1_2 = v_6[1]
					any_new_result1_3:set(_1_2, arg4:get(_1_2))
					local var85
				end
				return correctASTNodes_upvr(GraphQLObjectType_upvr.new(Object_upvr.assign({}, any_toConfig_result1, {
					fields = var85;
				})))
			end
			return nil
		end;
	}), any_new_result1_2_upvr}
end
return module_2