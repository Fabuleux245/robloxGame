-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:36
-- Luau version 6, Types version 3
-- Time taken: 0.003034 seconds

local Parent = script.Parent.Parent.Parent
local utilities = Parent.utilities
local module_2 = {}
local typeFromAST_upvr = require(utilities.typeFromAST).typeFromAST
local allowedVariableUsage_upvw
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module_2.VariablesInAllowedPositionRule(arg1) -- Line 27
	--[[ Upvalues[4]:
		[1]: typeFromAST_upvr (readonly)
		[2]: allowedVariableUsage_upvw (read and write)
		[3]: inspect_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
	]]
	local tbl_upvw = {}
	local module = {
		OperationDefinition = {
			enter = function() -- Line 32, Named "enter"
				--[[ Upvalues[1]:
					[1]: tbl_upvw (read and write)
				]]
				tbl_upvw = {}
			end;
			leave = function(arg1_2, arg2) -- Line 35, Named "leave"
				--[[ Upvalues[6]:
					[1]: arg1 (readonly)
					[2]: tbl_upvw (read and write)
					[3]: typeFromAST_upvr (copied, readonly)
					[4]: allowedVariableUsage_upvw (copied, read and write)
					[5]: inspect_upvr (copied, readonly)
					[6]: GraphQLError_upvr (copied, readonly)
				]]
				for _, v in ipairs(arg1:getRecursiveVariableUsages(arg2)) do
					local node_2 = v.node
					local type_2 = v.type
					local value = node_2.name.value
					local var34 = tbl_upvw[value]
					if var34 and type_2 then
						local any_getSchema_result1 = arg1:getSchema()
						local var5_result1 = typeFromAST_upvr(any_getSchema_result1, var34.type)
						if var5_result1 and not allowedVariableUsage_upvw(any_getSchema_result1, var5_result1, var34.defaultValue, type_2, v.defaultValue) then
							arg1:reportError(GraphQLError_upvr.new("Variable \"$%s\" of type \"%s\" used in position expecting type \"%s\".":format(value, inspect_upvr(var5_result1), inspect_upvr(type_2)), {var34, node_2}))
						end
					end
				end
			end;
		};
	}
	function module.VariableDefinition(arg1_3, arg2) -- Line 79
		--[[ Upvalues[1]:
			[1]: tbl_upvw (read and write)
		]]
		tbl_upvw[arg2.variable.name.value] = arg2
	end
	return module
end
local isNonNullType_upvr = require(Parent.type.definition).isNonNullType
local Kind_upvr = require(Parent.language.kinds).Kind
local isTypeSubTypeOf_upvr = require(utilities.typeComparators).isTypeSubTypeOf
function allowedVariableUsage_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 90, Named "allowedVariableUsage"
	--[[ Upvalues[3]:
		[1]: isNonNullType_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: isTypeSubTypeOf_upvr (readonly)
	]]
	if isNonNullType_upvr(arg4) then
		local var43
		if not isNonNullType_upvr(arg2) then
			local var44 = false
			if arg3 ~= nil then
				var43 = arg3.kind
				if var43 == Kind_upvr.NULL then
					var44 = false
				else
					var44 = true
				end
			end
			if arg5 == nil then
				var43 = false
			else
				var43 = true
			end
			if not var44 and not var43 then
				return false
			end
			return isTypeSubTypeOf_upvr(arg1, arg2, arg4.ofType)
		end
	end
	return isTypeSubTypeOf_upvr(arg1, arg2, arg4)
end
return module_2