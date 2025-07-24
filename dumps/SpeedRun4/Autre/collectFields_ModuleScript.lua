-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:16
-- Luau version 6, Types version 3
-- Time taken: 0.004369 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local module = {}
local GraphQL = require(Parent.GraphQL)
local Kind_upvr = GraphQL.Kind
local shouldIncludeNode_upvw
local getFieldEntryKey_upvw
local doesFragmentConditionMatch_upvw
local function collectFields_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 52, Named "collectFields"
	--[[ Upvalues[6]:
		[1]: Kind_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: shouldIncludeNode_upvw (read and write)
		[4]: getFieldEntryKey_upvw (read and write)
		[5]: doesFragmentConditionMatch_upvw (read and write)
		[6]: collectFields_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [131] 107. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [131] 107. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 32 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [131.12]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [131.13]
	if nil == nil then
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [131.14]
			if nil ~= nil then
			else
			end
			-- KONSTANTWARNING: GOTO [131] #107
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil and nil then
				-- KONSTANTWARNING: GOTO [131] #107
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
			if nil == nil and not nil and nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [131.15]
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil then
					end
				end
			end
		end
	end
	-- KONSTANTERROR: [5] 5. Error Block 32 end (CF ANALYSIS FAILED)
end
module.collectFields = collectFields_upvr
local getDirectiveValues_upvr = GraphQL.getDirectiveValues
local GraphQLSkipDirective_upvr = GraphQL.GraphQLSkipDirective
local GraphQLIncludeDirective_upvr = GraphQL.GraphQLIncludeDirective
function shouldIncludeNode_upvw(arg1, arg2) -- Line 164, Named "shouldIncludeNode"
	--[[ Upvalues[3]:
		[1]: getDirectiveValues_upvr (readonly)
		[2]: GraphQLSkipDirective_upvr (readonly)
		[3]: GraphQLIncludeDirective_upvr (readonly)
	]]
	local var13 = GraphQLSkipDirective_upvr
	local var10_result1_2 = getDirectiveValues_upvr(var13, arg2, arg1)
	if typeof(var10_result1_2) == "table" then
		var13 = var10_result1_2["if"]
	else
		var13 = nil
	end
	if var13 == true then
		return false
	end
	local var15 = GraphQLIncludeDirective_upvr
	local var10_result1 = getDirectiveValues_upvr(var15, arg2, arg1)
	if typeof(var10_result1) == "table" then
		var15 = var10_result1["if"]
	else
		var15 = nil
	end
	if var15 == false then
		return false
	end
	return true
end
local typeFromAST_upvr = GraphQL.typeFromAST
local isAbstractType_upvr = GraphQL.isAbstractType
local Array_upvr = LuauPolyfill.Array
function doesFragmentConditionMatch_upvw(arg1, arg2, arg3) -- Line 184, Named "doesFragmentConditionMatch"
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: typeFromAST_upvr (readonly)
		[3]: isAbstractType_upvr (readonly)
		[4]: Array_upvr (readonly)
	]]
	local typeCondition = arg2.typeCondition
	if not Boolean_upvr.toJSBoolean(typeCondition) then
		return true
	end
	local typeFromAST_upvr_result1 = typeFromAST_upvr(arg1, typeCondition)
	if typeFromAST_upvr_result1 == arg3 then
		return true
	end
	if Boolean_upvr.toJSBoolean(isAbstractType_upvr(typeFromAST_upvr_result1)) then
		return Array_upvr.includes(arg1:getPossibleTypes(typeFromAST_upvr_result1), arg3)
	end
	return false
end
function getFieldEntryKey_upvw(arg1) -- Line 218, Named "getFieldEntryKey"
	if arg1.alias then
		return arg1.alias.value
	end
	return arg1.name.value
end
local Map_upvr = LuauPolyfill.Map
local Set_upvr = LuauPolyfill.Set
module.collectSubFields = require(script.Parent.memoize).memoize5(function(arg1, arg2, arg3, arg4, arg5) -- Line 226
	--[[ Upvalues[3]:
		[1]: Map_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: collectFields_upvr (readonly)
	]]
	for _, v in arg5 do
		if v.selectionSet then
			collectFields_upvr(arg1, arg2, arg3, arg4, v.selectionSet, Map_upvr.new(), Set_upvr.new())
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Map_upvr.new()
end)
return module