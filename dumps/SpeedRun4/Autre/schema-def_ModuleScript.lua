-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:18
-- Luau version 6, Types version 3
-- Time taken: 0.004236 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local module = {}
local tbl_upvr = {
	query = "Query";
	mutation = "Mutation";
	subscription = "Subscription";
}
module.DEFAULT_OPERATION_TYPE_NAME_MAP = tbl_upvr
local Array_upvr = LuauPolyfill.Array
local function mergeOperationTypes_upvr(arg1, arg2) -- Line 37, Named "mergeOperationTypes"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	if arg1 ~= nil then
	else
	end
	if arg2 ~= nil then
	else
	end
	for _, v_upvr in tbl_upvr do
		local any_find_result1 = Array_upvr.find({}, function(arg1_2) -- Line 50
			--[[ Upvalues[1]:
				[1]: v_upvr (readonly)
			]]
			local var12
			if arg1_2.operation ~= v_upvr then
				var12 = false
			else
				var12 = true
			end
			return var12
		end)
		local var14
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var14 = any_find_result1
			return var14
		end
		if not Boolean_upvr.toJSBoolean(any_find_result1) or not INLINED() then
			var14 = Array_upvr.find
			var14 = var14({}, function(arg1_3) -- Line 54
				--[[ Upvalues[1]:
					[1]: v_upvr (readonly)
				]]
				local var16
				if arg1_3.operation ~= v_upvr then
					var16 = false
				else
					var16 = true
				end
				return var16
			end)
		end
		if var14 then
			table.insert({}, var14)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local Kind_upvr = require(Parent.GraphQL).Kind
local mergeDirectives_upvr = require(script.Parent.directives).mergeDirectives
local Object_upvr = LuauPolyfill.Object
function module.mergeSchemaDefs(arg1, arg2, arg3) -- Line 66
	--[[ Upvalues[5]:
		[1]: Boolean_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: mergeDirectives_upvr (readonly)
		[4]: mergeOperationTypes_upvr (readonly)
		[5]: Object_upvr (readonly)
	]]
	local var23 = arg2
	if Boolean_upvr.toJSBoolean(var23) then
		local module_4 = {}
		if arg1.kind == Kind_upvr.SCHEMA_DEFINITION or arg2.kind == Kind_upvr.SCHEMA_DEFINITION then
			var23 = Kind_upvr.SCHEMA_DEFINITION
		else
			var23 = Kind_upvr.SCHEMA_EXTENSION
		end
		module_4.kind = var23
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var23 = arg1.description
			return var23
		end
		if not Boolean_upvr.toJSBoolean(arg1.description) or not INLINED_3() then
			var23 = arg2.description
		end
		module_4.description = var23
		var23 = mergeDirectives_upvr(arg1.directives, arg2.directives, arg3)
		module_4.directives = var23
		var23 = mergeOperationTypes_upvr(arg1.operationTypes, arg2.operationTypes)
		module_4.operationTypes = var23
		return module_4
	end
	if arg3 then
		var23 = Boolean_upvr.toJSBoolean(arg3.convertExtensions)
		if var23 then
			var23 = Object_upvr
			var23 = {}
			return var23.assign(var23, arg1, {
				kind = Kind_upvr.SCHEMA_DEFINITION;
			})
		end
	end
	return arg1
end
return module