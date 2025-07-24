-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:16
-- Luau version 6, Types version 3
-- Time taken: 0.004761 seconds

local longstring1 = "Expecting a parsed GraphQL document. Perhaps you need to wrap the query string in a \"gql\" tag? http://docs.apollostack.com/apollo-client/core.html#gql"
local module = {}
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local invariant = require(Parent.jsutils.invariant)
local invariant_upvr = invariant.invariant
local InvariantError_upvr = invariant.InvariantError
local function checkDocument_upvr(arg1) -- Line 29, Named "checkDocument"
	--[[ Upvalues[3]:
		[1]: invariant_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: InvariantError_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10 = arg1
	if var10 then
		if arg1.kind ~= "Document" then
			var10 = false
		else
			var10 = true
		end
	end
	invariant_upvr(var10, longstring1)
	local any_map_result1 = Array_upvr.map(Array_upvr.filter(arg1.definitions, function(arg1_2) -- Line 36
		local var12
		if arg1_2.kind == "FragmentDefinition" then
			var12 = false
		else
			var12 = true
		end
		return var12
	end), function(arg1_3) -- Line 39
		--[[ Upvalues[1]:
			[1]: InvariantError_upvr (copied, readonly)
		]]
		if arg1_3.kind ~= "OperationDefinition" then
			error(InvariantError_upvr.new("Schema type definitions not allowed in queries. Found: \"%s\"":format(arg1_3.kind)))
		end
		return arg1_3
	end)
	if #any_map_result1 > 1 then
	else
	end
	invariant_upvr(true, "Ambiguous GraphQL document: contains %s operations":format(tostring(#any_map_result1)))
	return arg1
end
module.checkDocument = checkDocument_upvr
function module.getOperationDefinition(arg1) -- Line 57
	--[[ Upvalues[2]:
		[1]: checkDocument_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	checkDocument_upvr(arg1)
	return Array_upvr.filter(arg1.definitions, function(arg1_4) -- Line 59
		local var16
		if arg1_4.kind ~= "OperationDefinition" then
			var16 = false
		else
			var16 = true
		end
		return var16
	end)[1]
end
function module.getOperationName(arg1) -- Line 65
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local any_map_result1_2 = Array_upvr.map(Array_upvr.filter(arg1.definitions, function(arg1_5) -- Line 67
		--[[ Upvalues[1]:
			[1]: Boolean_upvr (copied, readonly)
		]]
		local var18 = Boolean_upvr
		local var19
		if arg1_5.kind ~= "OperationDefinition" then
			var18 = false
		else
			var18 = true
		end
		var19 = var19(var18)
		if var19 then
			var19 = arg1_5.name
			return var19
		end
		if arg1_5.kind ~= "OperationDefinition" then
			var19 = false
		else
			var19 = true
		end
		return var19
	end), function(arg1_6) -- Line 74
		--[[ Upvalues[1]:
			[1]: Boolean_upvr (copied, readonly)
		]]
		local var21
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var21 = arg1_6.name.value
			return var21
		end
		if not Boolean_upvr.toJSBoolean(arg1_6) or not Boolean_upvr.toJSBoolean(arg1_6.name) or not INLINED() then
			var21 = nil
		end
		return var21
	end)
	local var23
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var23 = any_map_result1_2[1]
		return var23
	end
	if not Boolean_upvr.toJSBoolean(any_map_result1_2[1]) or not INLINED_2() then
		var23 = nil
	end
	return var23
end
function module.getFragmentDefinitions(arg1) -- Line 84
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return Array_upvr.filter(arg1.definitions, function(arg1_7) -- Line 85
		local var25
		if arg1_7.kind ~= "FragmentDefinition" then
			var25 = false
		else
			var25 = true
		end
		return var25
	end)
end
function module.getQueryDefinition(arg1) -- Line 91
	--[[ Upvalues[4]:
		[1]: checkDocument_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: Boolean_upvr (readonly)
	]]
	checkDocument_upvr(arg1)
	local _1 = Array_upvr.filter(arg1.definitions, function(arg1_8) -- Line 59
		local var27
		if arg1_8.kind ~= "OperationDefinition" then
			var27 = false
		else
			var27 = true
		end
		return var27
	end)[1]
	local any_toJSBoolean_result1 = Boolean_upvr.toJSBoolean(_1)
	if any_toJSBoolean_result1 then
		if _1.operation ~= "query" then
			any_toJSBoolean_result1 = false
		else
			any_toJSBoolean_result1 = true
		end
	end
	invariant_upvr(any_toJSBoolean_result1, "Must contain a query definition.")
	return _1
end
function module.getFragmentDefinition(arg1) -- Line 99
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var30
	if arg1.kind ~= "Document" then
		var30 = false
	else
		var30 = true
	end
	invariant_upvr(var30, longstring1)
	if #arg1.definitions > 1 then
		var30 = false
		-- KONSTANTWARNING: GOTO [18] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 22 start (CF ANALYSIS FAILED)
	var30 = true
	local const_string = "Fragment must have exactly one definition."
	invariant_upvr(var30, const_string)
	var30 = arg1.definitions
	local _1_2 = var30[1]
	var30 = invariant_upvr
	if _1_2.kind ~= "FragmentDefinition" then
	else
	end
	var30(true, "Must be a fragment definition.")
	do
		return _1_2
	end
	-- KONSTANTERROR: [17] 14. Error Block 22 end (CF ANALYSIS FAILED)
end
function module.getMainDefinition(arg1) -- Line 120
	--[[ Upvalues[3]:
		[1]: checkDocument_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: InvariantError_upvr (readonly)
	]]
	checkDocument_upvr(arg1)
	local var40
	for _, v in ipairs(arg1.definitions) do
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			local operation = v.operation
			return operation == "query"
		end
		if v.kind == "OperationDefinition" and (INLINED_3() or operation == "mutation" or operation == "subscription") then
			return v
		end
		if v.kind == "FragmentDefinition" and not Boolean_upvr.toJSBoolean(var40) then
			var40 = v
		end
	end
	if Boolean_upvr.toJSBoolean(var40) then
		return var40
	end
	error(InvariantError_upvr.new("Expected a parsed GraphQL query with a query, mutation, subscription, or a fragment."))
end
local valueToObjectRepresentation_upvr = require(script.Parent.storeUtils).valueToObjectRepresentation
function module.getDefaultValues(arg1) -- Line 148
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: valueToObjectRepresentation_upvr (readonly)
	]]
	local module_2_upvr = {}
	local var44
	if arg1 ~= nil then
		var44 = arg1.variableDefinitions
	else
		var44 = nil
	end
	if var44 ~= nil and 0 < #var44 then
		Array_upvr.forEach(var44, function(arg1_9) -- Line 157
			--[[ Upvalues[3]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: valueToObjectRepresentation_upvr (copied, readonly)
				[3]: module_2_upvr (readonly)
			]]
			if Boolean_upvr.toJSBoolean(arg1_9.defaultValue) then
				valueToObjectRepresentation_upvr(module_2_upvr, arg1_9.variable.name, arg1_9.defaultValue)
			end
		end)
	end
	return module_2_upvr
end
return module