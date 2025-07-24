-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:43
-- Luau version 6, Types version 3
-- Time taken: 0.003629 seconds

local Parent = script.Parent
local LuauPolyfill = require(Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local printSourceLocation_upvw
local getLocation_upvr = require(Parent.location).getLocation
local whitespace_upvw
local String_upvr = LuauPolyfill.String
local printPrefixedLines_upvw
function printSourceLocation_upvw(arg1, arg2) -- Line 34, Named "printSourceLocation"
	--[[ Upvalues[4]:
		[1]: whitespace_upvw (read and write)
		[2]: String_upvr (readonly)
		[3]: printPrefixedLines_upvw (read and write)
		[4]: Array_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13 = arg1.locationOffset.column - 1
	local var14 = arg2.line - 1 + 1
	local var15 = (arg2.line) + (arg1.locationOffset.line - 1)
	local var16
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var16 = var13
		return var16
	end
	if arg2.line ~= 1 or not INLINED() then
		var16 = 0
	end
	local var17 = arg2.column + var16
	local var18 = arg1.name..':'..var15..':'..var17..'\n'
	local any_split_result1 = String_upvr.split(whitespace_upvw(var13)..arg1.body, {"\r\n", '\n', '\r'})
	local var21 = any_split_result1[var14]
	if 120 < string.len(var21) then
		local var22 = math.floor(var17 / 80) + 1
		for i = 1, string.len(var21), 80 do
			table.insert({}, String_upvr.slice(var21, i, i + 80))
			local var24
		end
		return var18..printPrefixedLines_upvw(Array_upvr.concat({{tostring(var15), var24[1]}}, Array_upvr.map(Array_upvr.slice(var24, 2, var22 + 1), function(arg1_2) -- Line 61
			local module = {""}
			module[2] = arg1_2
			return module
		end), {{' ', whitespace_upvw(var17 % 80 - 1)..'^'}}, {{"", var24[var22 + 1]}}))
	end
	return var18..printPrefixedLines_upvw({{var15 - 1, any_split_result1[var14 - 1]}, {var15, var21}, {"", whitespace_upvw(var17 - 1)..'^'}, {var15 + 1, any_split_result1[var14 + 1]}})
end
local leftPad_upvw
function printPrefixedLines_upvw(arg1) -- Line 83, Named "printPrefixedLines"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: leftPad_upvw (read and write)
	]]
	local any_filter_result1 = Array_upvr.filter(arg1, function(arg1_3) -- Line 84
		local var40
		if arg1_3[2] == nil then
			var40 = false
		else
			var40 = true
		end
		return var40
	end)
	local maximum_upvr = math.max(table.unpack(Array_upvr.map(any_filter_result1, function(arg1_4) -- Line 89
		return string.len(arg1_4[1])
	end)))
	return Array_upvr.join(Array_upvr.map(any_filter_result1, function(arg1_5) -- Line 94
		--[[ Upvalues[2]:
			[1]: leftPad_upvw (copied, read and write)
			[2]: maximum_upvr (readonly)
		]]
		local _2 = arg1_5[2]
		local var46
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var46 = " | ".._2
			return var46
		end
		if not _2 or _2 == "" or not INLINED_2() then
			var46 = " |"
		end
		return leftPad_upvw(maximum_upvr, arg1_5[1])..var46
	end), '\n')
end
function whitespace_upvw(arg1) -- Line 103, Named "whitespace"
	return string.rep(' ', arg1)
end
function leftPad_upvw(arg1, arg2) -- Line 107, Named "leftPad"
	--[[ Upvalues[1]:
		[1]: whitespace_upvw (read and write)
	]]
	return whitespace_upvw(arg1 - string.len(arg2))..arg2
end
return {
	printSourceLocation = printSourceLocation_upvw;
	printLocation = function(arg1) -- Line 27, Named "printLocation"
		--[[ Upvalues[2]:
			[1]: printSourceLocation_upvw (read and write)
			[2]: getLocation_upvr (readonly)
		]]
		return printSourceLocation_upvw(arg1.source, getLocation_upvr(arg1.source, arg1.start))
	end;
}