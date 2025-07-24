-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:20
-- Luau version 6, Types version 3
-- Time taken: 0.003625 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module = {}
local GraphQL = require(Parent.GraphQL)
local GraphQLObjectType_upvr = GraphQL.GraphQLObjectType
local mapSchema_upvr = require(script.Parent.mapSchema).mapSchema
local MapperKind_upvr = require(script.Parent.Interfaces).MapperKind
local filterRootFields_upvw
local filterElementFields_upvw
local GraphQLInterfaceType_upvr = GraphQL.GraphQLInterfaceType
local GraphQLInputObjectType_upvr = GraphQL.GraphQLInputObjectType
function module.filterSchema(arg1) -- Line 64
	--[[ Upvalues[9]:
		[1]: mapSchema_upvr (readonly)
		[2]: MapperKind_upvr (readonly)
		[3]: filterRootFields_upvw (read and write)
		[4]: Boolean_upvr (readonly)
		[5]: filterElementFields_upvw (read and write)
		[6]: GraphQLObjectType_upvr (readonly)
		[7]: Object_upvr (readonly)
		[8]: GraphQLInterfaceType_upvr (readonly)
		[9]: GraphQLInputObjectType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	if arg1.typeFilter == nil then
		local function _(...) -- Line 82
			return true
		end
	else
	end
	if arg1.fieldFilter == nil then
		-- KONSTANTWARNING: GOTO [18] #12
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 11. Error Block 50 start (CF ANALYSIS FAILED)
	if arg1.rootFieldFilter == nil then
		-- KONSTANTWARNING: GOTO [26] #17
	end
	-- KONSTANTERROR: [16] 11. Error Block 50 end (CF ANALYSIS FAILED)
end
function filterRootFields_upvw(arg1, arg2, arg3, arg4) -- Line 199, Named "filterRootFields"
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: GraphQLObjectType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local var15
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var15 = arg3
		return var15
	end
	if not Boolean_upvr.toJSBoolean(arg3) or not INLINED() then
		var15 = arg4
	end
	local any_toJSBoolean_result1 = Boolean_upvr.toJSBoolean(var15)
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [102] 81. Error Block 23 start (CF ANALYSIS FAILED)
	var15 = GraphQLObjectType_upvr.new(any_toJSBoolean_result1)
	do
		return var15
	end
	-- KONSTANTERROR: [102] 81. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [108] 86. Error Block 24 start (CF ANALYSIS FAILED)
	do
		return arg1
	end
	-- KONSTANTERROR: [108] 86. Error Block 24 end (CF ANALYSIS FAILED)
end
local Array_upvr = LuauPolyfill.Array
function filterElementFields_upvw(arg1, arg2, arg3, arg4) -- Line 273, Named "filterElementFields"
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var34
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var34 = arg3
		return var34
	end
	if not Boolean_upvr.toJSBoolean(arg3) or not INLINED_2() then
		var34 = arg4
	end
	if Boolean_upvr.toJSBoolean(var34) then
		local any_toConfig_result1 = arg2:toConfig()
		var34 = any_toConfig_result1.fields
		for _, v in var34 do
			local unpacked_value_1_2 = table.unpack(v)
			local any_get_result1 = any_toConfig_result1.fields:get(unpacked_value_1_2)
			local var38 = Boolean_upvr
			if arg3 then
				var38 = not arg3(arg2.name, unpacked_value_1_2, any_toConfig_result1.fields:get(unpacked_value_1_2))
			else
				var38 = arg3
			end
			if var38.toJSBoolean(var38) then
				any_toConfig_result1.fields:delete(unpacked_value_1_2)
			else
				var38 = Boolean_upvr
				local var39 = var38
				if Boolean_upvr.toJSBoolean(arg4) then
					if Array_upvr.indexOf(Object_upvr.keys(any_get_result1), "args") == -1 then
					else
					end
				else
				end
				if var39.toJSBoolean(arg4) then
					for _, v_2 in any_get_result1.args do
						local unpacked_value_1 = table.unpack(v_2)
						if not Boolean_upvr.toJSBoolean(arg4(arg2.name, unpacked_value_1_2, unpacked_value_1, any_get_result1.args:get(unpacked_value_1))) then
							any_get_result1.args:delete(unpacked_value_1)
						end
					end
				end
			end
		end
		var34 = arg1.new(any_toConfig_result1)
		return var34
	end
	return nil
end
return module