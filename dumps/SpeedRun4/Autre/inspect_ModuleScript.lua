-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:31
-- Luau version 6, Types version 3
-- Time taken: 0.005510 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local instanceof_upvr = LuauPolyfill.instanceof
local module_2 = {}
local GraphQLError_upvr = require(Parent.GraphQL).GraphQLError
local formatValue_upvw
function module_2.inspect(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: formatValue_upvw (read and write)
	]]
	return formatValue_upvw(arg1, {})
end
function formatValue_upvw(arg1, arg2) -- Line 46, Named "formatValue"
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: formatObjectValue_upvw (read and write)
	]]
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "string" then
		return '"'..arg1..'"'
	end
	if typeof_result1 == "function" then
		local func_name = debug.info(arg1, 'n')
		if Boolean_upvr.toJSBoolean(func_name) then
			return "[function %s]":format(func_name)
		end
		return "[function]"
	end
	if typeof_result1 == "table" then
		return formatObjectValue_upvw(arg1, arg2)
	end
	return tostring(arg1)
end
local formatObjectValue_upvw
local var9_upvw = formatValue_upvw
local function formatError_upvr(arg1) -- Line 75, Named "formatError"
	--[[ Upvalues[2]:
		[1]: instanceof_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
	]]
	if instanceof_upvr(arg1, GraphQLError_upvr) then
		return tostring(arg1)
	end
	return "%s: %s;\n %s":format(tostring(arg1.name), tostring(arg1.message), tostring(arg1.stack))
end
local Error_upvr = LuauPolyfill.Error
local isAggregateError_upvr = require(script.Parent.AggregateError).isAggregateError
local formatArray_upvw
local isJSONable_upvw
local formatObject_upvw
function formatObjectValue_upvw(arg1, arg2) -- Line 83, Named "formatObjectValue"
	--[[ Upvalues[11]:
		[1]: instanceof_upvr (readonly)
		[2]: Error_upvr (readonly)
		[3]: isAggregateError_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
		[5]: formatArray_upvw (read and write)
		[6]: formatError_upvr (readonly)
		[7]: Boolean_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: isJSONable_upvw (read and write)
		[10]: var9_upvw (read and write)
		[11]: formatObject_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	if arg1 == nil then
		return "null"
	end
	if instanceof_upvr(arg1, Error_upvr) then
		local var18 = arg1
		if isAggregateError_upvr(var18) then
			if instanceof_upvr(arg1, GraphQLError_upvr) then
				var18 = tostring(arg1)
			else
				var18 = "%s: %s;\n %s":format(tostring(arg1.name), tostring(arg1.message), tostring(arg1.stack))
			end
			return var18..'\n'..formatArray_upvw(arg1.errors, arg2)
		end
		return formatError_upvr(arg1)
	end
	if Boolean_upvr.toJSBoolean(Array_upvr.includes(arg2, arg1)) then
		return "[Circular]"
	end
	local module_3 = {}
	module_3[1] = arg1
	if Boolean_upvr.toJSBoolean(isJSONable_upvw(arg1)) then
		local any_toJSON_result1 = arg1:toJSON()
		if any_toJSON_result1 ~= arg1 then
			if typeof(any_toJSON_result1) == "string" then
				return any_toJSON_result1
			end
			do
				return var9_upvw(any_toJSON_result1, Array_upvr.concat({}, arg2, module_3))
			end
			-- KONSTANTWARNING: GOTO [128] #106
		end
	elseif Boolean_upvr.toJSBoolean(Array_upvr.isArray(arg1)) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return formatArray_upvw(arg1, Array_upvr.concat({}, arg2, module_3))
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [128] 106. Error Block 21 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return formatObject_upvw(arg1, Array_upvr.concat({}, arg2, module_3))
	end
	-- KONSTANTERROR: [128] 106. Error Block 21 end (CF ANALYSIS FAILED)
end
function isJSONable_upvw(arg1) -- Line 139, Named "isJSONable"
	local var21
	if typeof(arg1.toJSON) ~= "function" then
		var21 = false
	else
		var21 = true
	end
	return var21
end
local Object_upvr = LuauPolyfill.Object
local getObjectTag_upvw
function formatObject_upvw(arg1, arg2) -- Line 147, Named "formatObject"
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: getObjectTag_upvw (read and write)
		[3]: Array_upvr (readonly)
		[4]: var9_upvw (read and write)
	]]
	local any_entries_result1 = Object_upvr.entries(arg1)
	if #any_entries_result1 == 0 then
		return "{}"
	end
	if 3 < #arg2 then
		return '['..tostring(getObjectTag_upvw(arg1))..']'
	end
	return "{ "..tostring(Array_upvr.join(Array_upvr.map(any_entries_result1, function(arg1_2) -- Line 165
		--[[ Upvalues[2]:
			[1]: var9_upvw (copied, read and write)
			[2]: arg2 (readonly)
		]]
		local unpacked_value_1, unpacked_value_2 = table.unpack(arg1_2, 1, 2)
		return tostring(unpacked_value_1)..": "..tostring(var9_upvw(unpacked_value_2, arg2))
	end), ", ")).." }"
end
function formatArray_upvw(arg1, arg2) -- Line 175, Named "formatArray"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: Array_upvr (readonly)
	]]
	if #arg1 == 0 then
		return "[]"
	end
	if 3 < #arg2 then
		return "[Array]"
	end
	local len = #arg1
	local module = {}
	local const_number = 1
	while const_number <= #arg1 do
		table.insert(module, var9_upvw(arg1[const_number], arg2))
	end
	if len == 1 then
		table.insert(module, "... 1 more item")
	elseif 1 < len then
		table.insert(module, "... %s more items":format(tostring(len)))
	end
	return '['..tostring(Array_upvr.join(module, ", "))..']'
end
function getObjectTag_upvw(arg1) -- Line 230, Named "getObjectTag"
	return "Object"
end
return module_2