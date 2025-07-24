-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:55
-- Luau version 6, Types version 3
-- Time taken: 0.018795 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local Collections = require(Parent_2.Collections)
local Array_upvr = Collections.Array
local Object_upvr = Collections.Object
local Boolean_upvr = require(Parent_2.Boolean)
local String_upvr = require(Parent_2.String)
local inspect_upvr = Collections.inspect
local Error_upvr = require(Parent.Error)
local tbl_upvr = {
	stderr = {
		isTTY = false;
		columns = 0;
		hasColors = function(...) -- Line 48, Named "hasColors"
			return true
		end;
	};
}
function ErrorCaptureStackTrace(arg1, ...) -- Line 55
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	Error_upvr.captureStackTrace(arg1, ...)
end
local function _(arg1) -- Line 60, Named "removeColors"
	return arg1
end
local var12_upvw = ""
local var13_upvw = ""
local var14_upvw = ""
local var15_upvw = ""
local tbl_4_upvr = {
	deepStrictEqual = "Expected values to be strictly deep-equal:";
	strictEqual = "Expected values to be strictly equal:";
	strictEqualObject = "Expected \"actual\" to be reference-equal to \"expected\":";
	deepEqual = "Expected values to be loosely deep-equal:";
	notDeepStrictEqual = "Expected \"actual\" not to be strictly deep-equal to:";
	notStrictEqual = "Expected \"actual\" to be strictly unequal to:";
	notStrictEqualObject = "Expected \"actual\" not to be reference-equal to \"expected\":";
	notDeepEqual = "Expected \"actual\" not to be loosely deep-equal to:";
	notIdentical = "Values have same structure but are not reference-equal:";
	notDeepEqualUnequal = "Expected values not to be loosely deep-equal:";
}
local function _(arg1) -- Line 88, Named "copyError"
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local module = {}
	for _, v in Object_upvr.keys(arg1), nil do
		module[v] = arg1[v]
	end
	module.message = arg1.message
	return module
end
local function _(arg1) -- Line 99, Named "inspectValue"
	--[[ Upvalues[1]:
		[1]: inspect_upvr (readonly)
	]]
	return inspect_upvr(arg1, {
		compact = false;
		customInspect = false;
		depth = 1000;
		maxArrayLength = math.huge;
		showHidden = false;
		showProxy = false;
		sorted = true;
		getters = true;
	})
end
local function createErrDiff_upvr(arg1, arg2, arg3) -- Line 114, Named "createErrDiff"
	--[[ Upvalues[10]:
		[1]: inspect_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: var12_upvw (read and write)
		[7]: var15_upvw (read and write)
		[8]: Array_upvr (readonly)
		[9]: var13_upvw (read and write)
		[10]: var14_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local inspect_upvr_result1 = inspect_upvr(arg1, {
		compact = false;
		customInspect = false;
		depth = 1000;
		maxArrayLength = math.huge;
		showHidden = false;
		showProxy = false;
		sorted = true;
		getters = true;
	})
	local any_split_result1_3 = String_upvr.split(inspect_upvr_result1, '\n')
	local any_split_result1_2 = String_upvr.split(inspect_upvr(arg2, {
		compact = false;
		customInspect = false;
		depth = 1000;
		maxArrayLength = math.huge;
		showHidden = false;
		showProxy = false;
		sorted = true;
		getters = true;
	}), '\n')
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [93] 69. Error Block 136 start (CF ANALYSIS FAILED)
	local var43
	if typeof(arg1) == "function" and typeof(arg2) == "function" then
		-- KONSTANTERROR: [107] 79. Error Block 9 start (CF ANALYSIS FAILED)
		var43 = "strictEqualObject"
		-- KONSTANTERROR: [107] 79. Error Block 9 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [93] 69. Error Block 136 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [108] 80. Error Block 200 start (CF ANALYSIS FAILED)
	local var44
	if #any_split_result1_3 == 1 and #any_split_result1_2 == 1 then
		local _1_3 = any_split_result1_2[1]
		if any_split_result1_3[1] ~= _1_3 then
			local _1_2 = any_split_result1_3[1]
			if Boolean_upvr.toJSBoolean(false) then
				_1_3 = any_split_result1_2[1]
			else
				_1_3 = any_split_result1_2[1]
			end
			local var47 = string.len(_1_2) + string.len(_1_3)
			if var47 <= 12 then
				if typeof(arg1) ~= "table" or arg1 == nil or typeof(arg2) ~= "table" or arg2 == nil or arg1 ~= 0 or arg2 ~= 0 then
					do
						return "%s\n\n":format(tbl_4_upvr[var43]).."%s !== %s\n":format(any_split_result1_3[1], any_split_result1_2[1])
					end
					local var48
					-- KONSTANTWARNING: GOTO [232] #173
				end
			elseif var43 ~= "strictEqualObject" then
				if tbl_upvr.stderr.isTTY then
					var48 = tbl_upvr.stderr.columns
				else
					var48 = 80
				end
				if var47 < var48 then
					while string.sub(_1_2, var44 + 1, var44 + 1) == string.sub(_1_3, var44 + 1, var44 + 1) do
						var44 += 1
					end
					if 2 < var44 then
						var44 = 0
					end
				end
			end
		end
	end
	local var49 = any_split_result1_3[#any_split_result1_3]
	repeat
		if var49 ~= any_split_result1_2[#any_split_result1_2] then break end
		if var44 < 3 then
		else
		end
		table.remove(any_split_result1_3)
		table.remove(any_split_result1_2)
	until #any_split_result1_3 == 0 and #any_split_result1_2 == 0
	local maximum = math.max(#any_split_result1_3, #any_split_result1_2)
	if maximum == 0 then
		local any_split_result1_6 = String_upvr.split(inspect_upvr_result1, '\n')
		if 50 < #any_split_result1_6 then
			any_split_result1_6[47] = "%s...%s":format(var12_upvw, var15_upvw)
			while 47 < #any_split_result1_6 do
				table.remove(any_split_result1_6)
			end
		end
		return "%s\n\n":format(tbl_4_upvr.notIdentical).."%s\n":format(Array_upvr.join(any_split_result1_6, '\n'))
	end
	if 5 <= var44 + 1 then
	end
	if var49 ~= "" then
	end
	if #any_split_result1_3 < maximum then
	end
	-- KONSTANTERROR: [108] 80. Error Block 200 end (CF ANALYSIS FAILED)
end
local setmetatable_result1_upvr = setmetatable({}, {
	__index = Error_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.__tostring(arg1) -- Line 394
	return arg1:toString()
end
local InstanceOf_upvr = require(Parent_2.InstanceOf)
function setmetatable_result1_upvr.new(arg1) -- Line 407
	--[[ Upvalues[15]:
		[1]: Error_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: var12_upvw (read and write)
		[5]: var13_upvw (read and write)
		[6]: var15_upvw (read and write)
		[7]: var14_upvw (read and write)
		[8]: Array_upvr (readonly)
		[9]: Object_upvr (readonly)
		[10]: InstanceOf_upvr (readonly)
		[11]: createErrDiff_upvr (readonly)
		[12]: tbl_4_upvr (readonly)
		[13]: String_upvr (readonly)
		[14]: inspect_upvr (readonly)
		[15]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var73
	local message = arg1.message
	local operator = arg1.operator
	local actual = arg1.actual
	local expected = arg1.expected
	if message ~= nil then
		var73 = setmetatable(Error_upvr.new(tostring(message)), setmetatable_result1_upvr)
	else
		if tbl_upvr.stderr.isTTY then
			if tbl_upvr.stderr:hasColors() then
				var12_upvw = "\x1B[34m"
				var13_upvw = "\x1B[32m"
				var15_upvw = "\x1B[39m"
				var14_upvw = "\x1B[31m"
			else
				var12_upvw = ""
				var13_upvw = ""
				var15_upvw = ""
				var14_upvw = ""
			end
		end
		if typeof(actual) == "table" and actual ~= nil and typeof(expected) == "table" and expected ~= nil and Array_upvr.indexOf(Object_upvr.keys(actual), "stack") ~= -1 and InstanceOf_upvr(actual, Error_upvr) and Array_upvr.indexOf(Object_upvr.keys(expected), "stack") ~= -1 and InstanceOf_upvr(expected, Error_upvr) then
			local var78 = actual
			local tbl_2 = {}
			for _, v_2 in Object_upvr.keys(var78), nil do
				tbl_2[v_2] = var78[v_2]
				local var80
			end
			tbl_2.message = var80.message
			actual = tbl_2
			local var81 = expected
			local tbl_5 = {}
			for _, v_3 in Object_upvr.keys(var81), nil do
				tbl_5[v_3] = var81[v_3]
				local var83
			end
			tbl_5.message = var83.message
			expected = tbl_5
		end
		if operator == "deepStrictEqual" or operator == "strictEqual" then
			var73 = setmetatable(Error_upvr.new(createErrDiff_upvr(actual, expected, operator)), setmetatable_result1_upvr)
			local var84
			-- KONSTANTWARNING: GOTO [526] #405
		end
		if operator == "notDeepStrictEqual" or operator == "notStrictEqual" then
			var84 = tbl_4_upvr[operator]
			local any_split_result1 = String_upvr.split(inspect_upvr(actual, {
				compact = false;
				customInspect = false;
				depth = 1000;
				maxArrayLength = math.huge;
				showHidden = false;
				showProxy = false;
				sorted = true;
				getters = true;
			}), '\n')
			if operator == "notStrictEqual" then
				if typeof(actual) == "table" and actual ~= nil or typeof(actual) == "function" then
					var84 = tbl_4_upvr.notStrictEqualObject
				end
			end
			if 50 < #any_split_result1 then
				any_split_result1[47] = "%s...%s":format(var12_upvw, var15_upvw)
				while 47 < #any_split_result1 do
					table.remove(any_split_result1)
				end
			end
			local var87
			if #any_split_result1 == 1 then
				if 5 < string.len(any_split_result1[1]) then
					var87 = "\n\n"
				else
					var87 = ' '
				end
				var73 = setmetatable(Error_upvr.new("%s%s%s":format(var84, var87, any_split_result1[1])), setmetatable_result1_upvr)
			else
				var87 = Array_upvr.join(any_split_result1, '\n')
				var73 = setmetatable(Error_upvr.new("%s\n\n%s\n":format(var84, var87)), setmetatable_result1_upvr)
			end
		else
			var84 = inspect_upvr(actual, {
				compact = false;
				customInspect = false;
				depth = 1000;
				maxArrayLength = math.huge;
				showHidden = false;
				showProxy = false;
				sorted = true;
				getters = true;
			})
			local _ = {
				compact = false;
				customInspect = false;
				depth = 1000;
				maxArrayLength = math.huge;
				showHidden = false;
				showProxy = false;
				sorted = true;
				getters = true;
			}
			local var90
			if operator == "notDeepEqual" and var84 == var90 then
				var84 = "%s\n\n%s":format(tbl_4_upvr[tostring(operator)], var84)
				if 1024 < string.len(var84) then
					var87 = 0
					var84 = "%s...":format(String_upvr.slice(var84, var87, 1021))
				end
				var73 = setmetatable(Error_upvr.new(var84), setmetatable_result1_upvr)
			else
				if 512 < string.len(var84) then
					var87 = 0
				end
				if 512 < string.len(var90) then
					var87 = 0
					var90 = "%s...":format(String_upvr.slice(var90, var87, 509))
				end
				if operator == "deepEqual" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				else
					var87 = tostring(operator)
					local var91 = tbl_4_upvr["%sUnequal":format(var87)]
					if Boolean_upvr.toJSBoolean(var91) then
						var87 = "%s\n\n%s\n\nshould loosely deep-equal\n\n":format(tbl_4_upvr[tostring(operator)], "%s...":format(String_upvr.slice(var84, var87, 509)))
					else
						var87 = operator
						var87 = var90
						var90 = " %s %s":format(tostring(var87), var87)
					end
				end
				var87 = "%s\n\n%s\n\nshould not loosely deep-equal\n\n":format(var91, var87)
				var73 = setmetatable(Error_upvr.new("%s%s":format(var87, var90)), setmetatable_result1_upvr)
			end
		end
	end
	var90 = Boolean_upvr.toJSBoolean(message)
	var73.generatedMessage = not var90
	var73.name = "AssertionError [ERR_ASSERTION]"
	var73.code = "ERR_ASSERTION"
	var73.actual = actual
	var73.expected = expected
	var73.operator = operator
	var90 = var73
	local stackStartFn = arg1.stackStartFn
	if not stackStartFn then
		stackStartFn = setmetatable_result1_upvr.new
	end
	ErrorCaptureStackTrace(var90, stackStartFn)
	var73.name = "AssertionError"
	return var73
end
function setmetatable_result1_upvr.toString(arg1) -- Line 576
	return "%s [%s]: %s":format(arg1.name, arg1.code, arg1.message)
end
setmetatable_result1_upvr.name = "AssertionError"
return {
	AssertionError = setmetatable_result1_upvr;
}