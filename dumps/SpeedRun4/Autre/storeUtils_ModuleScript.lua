-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:17
-- Luau version 6, Types version 3
-- Time taken: 0.007463 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local module_3 = {}
local stringify_upvw
local isNonNullObject_upvr = require(script.Parent.Parent.common.objects).isNonNullObject
function module_3.makeReference(arg1) -- Line 59
	return {
		__ref = tostring(arg1);
	}
end
function module_3.isReference(arg1) -- Line 64
	local var10 = false
	if type(arg1) == "table" then
		if type(arg1.__ref) ~= "string" then
			var10 = false
		else
			var10 = true
		end
	end
	return var10
end
function module_3.isDocumentNode(arg1) -- Line 74
	--[[ Upvalues[2]:
		[1]: isNonNullObject_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	local var8_result1 = isNonNullObject_upvr(arg1)
	if var8_result1 then
		var8_result1 = false
		if arg1.kind == "Document" then
			var8_result1 = Array_upvr.isArray(arg1.definitions)
		end
	end
	return var8_result1
end
local function _(arg1) -- Line 81, Named "isStringValue"
	local var13
	if arg1.kind ~= "StringValue" then
		var13 = false
	else
		var13 = true
	end
	return var13
end
local function _(arg1) -- Line 85, Named "isBooleanValue"
	local var14
	if arg1.kind ~= "BooleanValue" then
		var14 = false
	else
		var14 = true
	end
	return var14
end
local function _(arg1) -- Line 89, Named "isIntValue"
	local var15
	if arg1.kind ~= "IntValue" then
		var15 = false
	else
		var15 = true
	end
	return var15
end
local function _(arg1) -- Line 93, Named "isFloatValue"
	local var16
	if arg1.kind ~= "FloatValue" then
		var16 = false
	else
		var16 = true
	end
	return var16
end
local function _(arg1) -- Line 97, Named "isVariable"
	local var17
	if arg1.kind ~= "Variable" then
		var17 = false
	else
		var17 = true
	end
	return var17
end
local function _(arg1) -- Line 101, Named "isObjectValue"
	local var18
	if arg1.kind ~= "ObjectValue" then
		var18 = false
	else
		var18 = true
	end
	return var18
end
local function _(arg1) -- Line 105, Named "isListValue"
	local var19
	if arg1.kind ~= "ListValue" then
		var19 = false
	else
		var19 = true
	end
	return var19
end
local function _(arg1) -- Line 109, Named "isEnumValue"
	local var20
	if arg1.kind ~= "EnumValue" then
		var20 = false
	else
		var20 = true
	end
	return var20
end
local function _(arg1) -- Line 113, Named "isNullValue"
	local var21
	if arg1.kind ~= "NullValue" then
		var21 = false
	else
		var21 = true
	end
	return var21
end
local InvariantError_upvr = require(Parent.jsutils.invariant).InvariantError
local function valueToObjectRepresentation_upvr(arg1, arg2, arg3, arg4) -- Line 117, Named "valueToObjectRepresentation"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: valueToObjectRepresentation_upvr (readonly)
		[3]: InvariantError_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 70 start (CF ANALYSIS FAILED)
	local var23
	if arg3.kind ~= "IntValue" then
		var23 = false
	else
		var23 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 70 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 71 start (CF ANALYSIS FAILED)
	if arg3.kind ~= "FloatValue" then
		var23 = false
	else
		var23 = true
	end
	if var23 then
		-- KONSTANTERROR: [14] 11. Error Block 54 start (CF ANALYSIS FAILED)
		var23 = arg2.value
		arg1[var23] = tonumber(arg3.value)
		do
			return
		end
		-- KONSTANTERROR: [14] 11. Error Block 54 end (CF ANALYSIS FAILED)
	end
	if arg3.kind ~= "BooleanValue" then
		var23 = false
	else
		var23 = true
	end
	-- KONSTANTERROR: [7] 6. Error Block 71 end (CF ANALYSIS FAILED)
end
module_3.valueToObjectRepresentation = valueToObjectRepresentation_upvr
local var24_upvw
function module_3.storeKeyNameFromField(arg1, arg2) -- Line 158
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: valueToObjectRepresentation_upvr (readonly)
		[3]: var24_upvw (read and write)
	]]
	local var25_upvw
	if arg1.directives then
		var25_upvw = {}
		Array_upvr.forEach(arg1.directives, function(arg1_2) -- Line 162
			--[[ Upvalues[4]:
				[1]: var25_upvw (read and write)
				[2]: Array_upvr (copied, readonly)
				[3]: valueToObjectRepresentation_upvr (copied, readonly)
				[4]: arg2 (readonly)
			]]
			var25_upvw[arg1_2.name.value] = {}
			if arg1_2.arguments then
				Array_upvr.forEach(arg1_2.arguments, function(arg1_3) -- Line 166
					--[[ Upvalues[4]:
						[1]: valueToObjectRepresentation_upvr (copied, readonly)
						[2]: var25_upvw (copied, read and write)
						[3]: arg1_2 (readonly)
						[4]: arg2 (copied, readonly)
					]]
					valueToObjectRepresentation_upvr(var25_upvw[arg1_2.name.value], arg1_3.name, arg1_3.value, arg2)
				end)
			end
		end)
	end
	local var28_upvw
	if arg1.arguments and 0 < #arg1.arguments then
		var28_upvw = {}
		Array_upvr.forEach(arg1.arguments, function(arg1_4) -- Line 177
			--[[ Upvalues[3]:
				[1]: valueToObjectRepresentation_upvr (copied, readonly)
				[2]: var28_upvw (read and write)
				[3]: arg2 (readonly)
			]]
			valueToObjectRepresentation_upvr(var28_upvw, arg1_4.name, arg1_4.value, arg2)
		end)
	end
	return var24_upvw(arg1.name.value, var28_upvw, var25_upvw)
end
local tbl_2_upvr = {"connection", "include", "skip", "client", "rest", "export"}
local tbl = {}
local objectKeysForEach_upvr = require(Parent.luaUtils.objectKeysForEach)
function tbl.__call(arg1, arg2, arg3, arg4) -- Line 201
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: stringify_upvw (read and write)
		[3]: objectKeysForEach_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
	]]
	if arg3 and arg4 and arg4.connection then
		if arg4.connection.key then
			if arg4.connection.filter and 0 < #arg4.connection.filter then
				local var33
				if arg4.connection.filter then
					var33 = arg4.connection.filter
				else
					var33 = {}
				end
				Array_upvr.sort(var33, nil)
				local tbl_upvr = {}
				Array_upvr.forEach(var33, function(arg1_5) -- Line 227
					--[[ Upvalues[2]:
						[1]: tbl_upvr (readonly)
						[2]: arg3 (readonly)
					]]
					tbl_upvr[arg1_5] = arg3[arg1_5]
				end)
				return "%s(%s)":format(arg4.connection.key, stringify_upvw(tbl_upvr))
			end
			tbl_upvr = arg4.connection
			return tbl_upvr.key
		end
	end
	local var36_upvw = arg2
	if arg3 then
		tbl_upvr = stringify_upvw(arg3)
		var36_upvw = var36_upvw.."(%s)":format(tbl_upvr)
	end
	if arg4 then
		tbl_upvr = objectKeysForEach_upvr
		tbl_upvr(arg4, function(arg1_6) -- Line 254
			--[[ Upvalues[5]:
				[1]: Array_upvr (copied, readonly)
				[2]: tbl_2_upvr (copied, readonly)
				[3]: arg4 (readonly)
				[4]: var36_upvw (read and write)
				[5]: stringify_upvw (copied, read and write)
			]]
			if Array_upvr.indexOf(tbl_2_upvr, arg1_6) ~= -1 then
			else
				if arg4[arg1_6] and next(arg4[arg1_6]) ~= nil then
					var36_upvw = var36_upvw.."@%s(%s)":format(arg1_6, stringify_upvw(arg4[arg1_6]))
					return
				end
				var36_upvw = var36_upvw.."@%s":format(arg1_6)
			end
		end)
	end
	return var36_upvw
end
var24_upvw = Object_upvr.assign(setmetatable({}, tbl), {
	setStringify = function(arg1, arg2) -- Line 273, Named "setStringify"
		--[[ Upvalues[1]:
			[1]: stringify_upvw (read and write)
		]]
		stringify_upvw = arg2
		return stringify_upvw
	end;
})
module_3.getStoreKeyName = var24_upvw
local HttpService_upvr = game:GetService("HttpService")
function stringify_upvw(arg1) -- Line 284, Named "stringify"
	--[[ Upvalues[5]:
		[1]: isNonNullObject_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: stringify_upvw (read and write)
	]]
	if not isNonNullObject_upvr(arg1) then
		return HttpService_upvr:JSONEncode(arg1)
	end
	local any_map_result1 = Array_upvr.map(Array_upvr.sort(Object_upvr.keys(arg1), nil), function(arg1_7) -- Line 295
		--[[ Upvalues[2]:
			[1]: stringify_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		local module = {}
		module[1] = arg1_7
		module[2] = stringify_upvw(arg1[arg1_7])
		return module
	end)
	if Array_upvr.isArray(arg1) then
		return "[%s]":format(Array_upvr.join(Array_upvr.map(any_map_result1, function(arg1_8) -- Line 301
			return arg1_8[2]
		end), ','))
	end
	return "{%s}":format(Array_upvr.join(Array_upvr.map(any_map_result1, function(arg1_9) -- Line 308
		return "\"%s\":%s":format(arg1_9[1], arg1_9[2])
	end), ','))
end
function module_3.argumentsObjectFromField(arg1, arg2) -- Line 329
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: valueToObjectRepresentation_upvr (readonly)
	]]
	if arg1.arguments and 0 < #arg1.arguments then
		local module_2_upvr = {}
		Array_upvr.forEach(arg1.arguments, function(arg1_10) -- Line 334
			--[[ Upvalues[3]:
				[1]: valueToObjectRepresentation_upvr (copied, readonly)
				[2]: module_2_upvr (readonly)
				[3]: arg2 (readonly)
			]]
			valueToObjectRepresentation_upvr(module_2_upvr, arg1_10.name, arg1_10.value, arg2)
		end)
		return module_2_upvr
	end
	module_2_upvr = nil
	return module_2_upvr
end
function module_3.resultKeyNameFromField(arg1) -- Line 344
	if arg1.alias then
		return arg1.alias.value
	end
	return arg1.name.value
end
local isField_upvw
local getFragmentFromSelection_upvr = require(script.Parent.fragments).getFragmentFromSelection
local function getTypenameFromResult_upvr(arg1, arg2, arg3) -- Line 355, Named "getTypenameFromResult"
	--[[ Upvalues[3]:
		[1]: isField_upvw (read and write)
		[2]: getTypenameFromResult_upvr (readonly)
		[3]: getFragmentFromSelection_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	if typeof(arg1.__typename) == "string" then
		return arg1.__typename
	end
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg2.selections)
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 45. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 45. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 12. Error Block 26 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.8]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == "__typename" then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.10]
			if nil then
			else
			end
			-- KONSTANTWARNING: GOTO [61] #45
		end
	else
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.9]
		if nil == "string" then
		end
	end
	-- KONSTANTERROR: [17] 12. Error Block 26 end (CF ANALYSIS FAILED)
end
module_3.getTypenameFromResult = getTypenameFromResult_upvr
function isField_upvw(arg1) -- Line 385, Named "isField"
	local var52
	if arg1.kind ~= "Field" then
		var52 = false
	else
		var52 = true
	end
	return var52
end
module_3.isField = isField_upvw
function module_3.isInlineFragment(arg1) -- Line 390
	local var53
	if arg1.kind ~= "InlineFragment" then
		var53 = false
	else
		var53 = true
	end
	return var53
end
return module_3