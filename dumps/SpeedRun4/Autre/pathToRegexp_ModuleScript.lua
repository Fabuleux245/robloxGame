-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:59
-- Luau version 6, Types version 3
-- Time taken: 0.015052 seconds

local Parent = script.Parent.Parent.Parent
local Array_upvr = require(Parent.LuauPolyfill).Array
local RegExp_upvr = require(Parent.RegExp)
local function _(arg1) -- Line 35, Named "TypeError"
	return arg1
end
local module_2_upvr = {}
local function lexer_upvr(arg1) -- Line 65, Named "lexer"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var5_upvw = 1
	local function preIncrement_i(arg1_2) -- Line 72
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		var5_upvw += 1
		return arg1_2
	end
	local function _(arg1_3) -- Line 77, Named "getChar"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return string.sub(arg1, arg1_3, arg1_3)
	end
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [428] 323. Error Block 57 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [428] 323. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [428.723170]
	-- KONSTANTERROR: [12] 11. Error Block 2 end (CF ANALYSIS FAILED)
end
local escapeString_upvw
function module_2_upvr.parse(arg1, arg2) -- Line 252
	--[[ Upvalues[2]:
		[1]: lexer_upvr (readonly)
		[2]: escapeString_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 99 start (CF ANALYSIS FAILED)
	local var7
	if not var7 then
		var7 = {}
	end
	local lexer_upvr_result1_upvr = lexer_upvr(arg1)
	if var7.prefixes ~= nil and var7.prefixes ~= "" then
	end
	local var9_upvw = 1
	local function _(arg1_4) -- Line 269, Named "preIncrement_i"
		--[[ Upvalues[1]:
			[1]: var9_upvw (read and write)
		]]
		var9_upvw += 1
		return arg1_4
	end
	local var10_upvw = 0
	local function _(arg1_5) -- Line 277, Named "preIncrement_key"
		--[[ Upvalues[1]:
			[1]: var10_upvw (read and write)
		]]
		var10_upvw += 1
		return arg1_5
	end
	local function _(arg1_6) -- Line 282, Named "tryConsume"
		--[[ Upvalues[2]:
			[1]: var9_upvw (read and write)
			[2]: lexer_upvr_result1_upvr (readonly)
		]]
		if var9_upvw <= #lexer_upvr_result1_upvr and lexer_upvr_result1_upvr[var9_upvw].type == arg1_6 then
			var9_upvw += 1
			return lexer_upvr_result1_upvr[var9_upvw].value
		end
		return nil
	end
	local function _(arg1_7) -- Line 290, Named "mustConsume"
		--[[ Upvalues[2]:
			[1]: var9_upvw (read and write)
			[2]: lexer_upvr_result1_upvr (readonly)
		]]
		local var11
		if var9_upvw <= #lexer_upvr_result1_upvr and lexer_upvr_result1_upvr[var9_upvw].type == arg1_7 then
			var9_upvw += 1
			var11 = lexer_upvr_result1_upvr[var9_upvw].value
		else
			var11 = nil
		end
		if var11 ~= nil then
			return var11
		end
		local var12 = lexer_upvr_result1_upvr[var9_upvw]
		if var12 == nil then
			error("Expected token %s, got nil":format(arg1_7))
		end
		error("Unexpected %s at %d, expected %s":format(var12.type, var12.index, arg1_7))
	end
	local function _() -- Line 304, Named "consumeText"
		--[[ Upvalues[2]:
			[1]: var9_upvw (read and write)
			[2]: lexer_upvr_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var13
		if var9_upvw <= #lexer_upvr_result1_upvr and lexer_upvr_result1_upvr[var9_upvw].type == "CHAR" then
			var9_upvw += 1
			var13 = lexer_upvr_result1_upvr[var9_upvw].value
		else
			var13 = nil
		end
		if not var13 then
			if var9_upvw <= #lexer_upvr_result1_upvr and lexer_upvr_result1_upvr[var9_upvw].type == "ESCAPED_CHAR" then
				var9_upvw += 1
				var13 = lexer_upvr_result1_upvr[var9_upvw].value
			else
				var13 = nil
				local var14
			end
		end
		while var13 and var13 ~= "" do
			var14 = ""
			if var9_upvw <= #lexer_upvr_result1_upvr and lexer_upvr_result1_upvr[var9_upvw].type == "CHAR" then
				var9_upvw += 1
				var14 = lexer_upvr_result1_upvr[var9_upvw].value
			else
				var14 = nil
			end
			if not var14 then
				if var9_upvw <= #lexer_upvr_result1_upvr and lexer_upvr_result1_upvr[var9_upvw].type == "ESCAPED_CHAR" then
					var9_upvw += 1
					var14 = lexer_upvr_result1_upvr[var9_upvw].value
				else
					var14 = nil
				end
			end
			var13 = var14
		end
		return var14..var13
	end
	-- KONSTANTERROR: [0] 1. Error Block 99 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [335] 253. Error Block 91 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [335] 253. Error Block 91 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 37. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [335.1985]
	-- KONSTANTERROR: [45] 37. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_2_upvr.compile(arg1, arg2) -- Line 416
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.tokensToFunction(module_2_upvr.parse(arg1, arg2), arg2)
end
local flags_upvw
function module_2_upvr.tokensToFunction(arg1, arg2) -- Line 425
	--[[ Upvalues[3]:
		[1]: flags_upvw (read and write)
		[2]: Array_upvr (readonly)
		[3]: RegExp_upvr (readonly)
	]]
	if arg2 == nil then
	end
	local tbl = {}
	local encode_upvr = tbl.encode
	if not encode_upvr then
		function encode_upvr(arg1_8) -- Line 431
			return arg1_8
		end
	end
	local validate_upvw = tbl.validate
	if validate_upvw == nil then
		validate_upvw = true
	end
	local flags_result1_upvr = flags_upvw(tbl)
	local any_map_result1_upvr = Array_upvr.map(arg1, function(arg1_9) -- Line 440
		--[[ Upvalues[2]:
			[1]: RegExp_upvr (copied, readonly)
			[2]: flags_result1_upvr (readonly)
		]]
		if type(arg1_9) == "table" then
			return RegExp_upvr("^(?:%s)$":format(arg1_9.pattern), flags_result1_upvr)
		end
		return nil
	end)
	return function(arg1_10) -- Line 447
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: encode_upvr (readonly)
			[4]: validate_upvw (read and write)
			[5]: any_map_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [186] 144. Error Block 44 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [186] 144. Error Block 44 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 63 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [186.7]
		if nil == "string" then
			-- KONSTANTWARNING: GOTO [186] #144
		end
		-- KONSTANTERROR: [5] 6. Error Block 63 end (CF ANALYSIS FAILED)
	end
end
function module_2_upvr.match(arg1, arg2) -- Line 554
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module_3 = {}
	return module_2_upvr.regexpToFunction(module_2_upvr.pathToRegexp(arg1, module_3, arg2), module_3, arg2)
end
function module_2_upvr.regexpToFunction(arg1, arg2, arg3) -- Line 563
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if arg3 == nil then
	end
	local decode_upvr = ({}).decode
	if not decode_upvr then
		function decode_upvr(arg1_11) -- Line 567
			return arg1_11
		end
	end
	return function(arg1_12) -- Line 571
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: decode_upvr (readonly)
		]]
		local any_exec_result1 = arg1:exec(arg1_12)
		if not any_exec_result1 then
			return false
		end
		for i = 2, any_exec_result1.n do
			if any_exec_result1[i] ~= nil then
				local var30_upvr = arg2[i - 1]
				if var30_upvr.modifier == '*' or var30_upvr.modifier == '+' then
					({})[var30_upvr.name] = Array_upvr.map(string.split(any_exec_result1[i], var30_upvr.prefix..var30_upvr.suffix), function(arg1_13) -- Line 592
						--[[ Upvalues[2]:
							[1]: decode_upvr (copied, readonly)
							[2]: var30_upvr (readonly)
						]]
						return decode_upvr(arg1_13, var30_upvr)
					end)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					;({})[var30_upvr.name] = decode_upvr(any_exec_result1[i], var30_upvr)
				end
			end
		end
		local module_4 = {
			path = any_exec_result1[1];
			index = any_exec_result1.index or 0;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_4.params = {}
		return module_4
	end
end
function escapeString_upvw(arg1) -- Line 611, Named "escapeString"
	return string.gsub(arg1, "[%.%+%*%?=%^!:${}%(%)%[%]|/\\]", function(arg1_14) -- Line 612
		return '\\'..arg1_14
	end)
end
function flags_upvw(arg1) -- Line 620, Named "flags"
	if arg1 and arg1.sensitive then
		return ""
	end
	return 'i'
end
local var34_upvw = flags_upvw
local function arrayToRegexp_upvr(arg1, arg2, arg3) -- Line 686, Named "arrayToRegexp"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: RegExp_upvr (readonly)
		[4]: var34_upvw (read and write)
	]]
	return RegExp_upvr("(?:%s)":format(table.concat(Array_upvr.map(arg1, function(arg1_15) -- Line 691
		--[[ Upvalues[3]:
			[1]: module_2_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		return module_2_upvr.pathToRegexp(arg1_15, arg2, arg3).source
	end), '|')), var34_upvw(arg3))
end
local function stringToRegexp_upvr(arg1, arg2, arg3) -- Line 701, Named "stringToRegexp"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.tokensToRegexp(module_2_upvr.parse(arg1, arg3), arg2, arg3)
end
function module_2_upvr.tokensToRegexp(arg1, arg2, arg3) -- Line 739
	--[[ Upvalues[3]:
		[1]: escapeString_upvw (read and write)
		[2]: RegExp_upvr (readonly)
		[3]: var34_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	if arg3 ~= nil then
		module = arg3
	end
	if module.strict == nil then
	end
	local start = module.start
	if start == nil then
		start = true
	end
	local end_ = module.end_
	if end_ == nil then
		end_ = true
	end
	if not module.encode then
		local function var47(arg1_16) -- Line 756
			return arg1_16
		end
	end
	if module.endsWith then
		local _ = "[%s]|$":format(escapeString_upvw(module.endsWith or ""))
	else
	end
	local formatted = "[%s]":format(escapeString_upvw(module.delimiter or "/#?"))
	if start then
	else
	end
	for i_2, v in arg1 do
		local var50
		if type(v) == "string" then
			var50 = var50..escapeString_upvw(var47(v))
		else
			local escapeString_upvw_result1 = escapeString_upvw(var47(v.prefix))
			local escapeString_upvw_result1_2 = escapeString_upvw(var47(v.suffix))
			if v.pattern and v.pattern ~= "" then
				if arg2 then
					table.insert(arg2, v)
				end
				if escapeString_upvw_result1 and escapeString_upvw_result1 ~= "" or escapeString_upvw_result1_2 and escapeString_upvw_result1_2 ~= "" then
					local var53
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var53 = v.modifier
						return var53 == '*'
					end
					if var53 == '+' or INLINED() then
						if v.modifier == '*' then
							var53 = '?'
						else
							var53 = ""
						end
						var50 = var50.."(?:%s((?:%s)(?:%s%s(?:%s))*)%s)%s":format(escapeString_upvw_result1, v.pattern, escapeString_upvw_result1_2, escapeString_upvw_result1, v.pattern, escapeString_upvw_result1_2, var53)
					else
						var53 = var50
						var50 = var53.."(?:%s(%s)%s)%s":format(escapeString_upvw_result1, v.pattern, escapeString_upvw_result1_2, v.modifier)
					end
				else
					var53 = var50
					var50 = var53.."(%s)%s":format(v.pattern, v.modifier)
				end
			else
				var53 = var50
				var50 = var53.."(?:%s%s)%s":format(escapeString_upvw_result1, escapeString_upvw_result1_2, v.modifier)
			end
		end
	end
	if end_ then
		if not false then
			i_2 = formatted
			var50 = var50.."%s?":format(i_2)
		end
		if module.endsWith and module.endsWith ~= "" then
			i_2 = '$'
			var50 = var50.."(?=%s)":format(i_2)
		else
			var50 = var50..'$'
		end
	else
		local len = #arg1
		local var55 = arg1[len]
		if var55 ~= nil then
		else
		end
		i_2 = var55
		if type(i_2) == "string" then
			i_2 = formatted
			v = var55:sub(-1)
			if string.find(i_2, v) == nil then
			else
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not false then
			i_2 = string.format
			v = "(?:%s(?=%s))?"
			i_2 = i_2(v, formatted, '$')
			var50 = var50..i_2
		end
		if not true then
			i_2 = string.format
			v = "(?=%s|%s)"
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i_2 = i_2(v, formatted, '$')
			var50 = var50..i_2
		end
	end
	return RegExp_upvr(var50, var34_upvw(module))
end
function module_2_upvr.pathToRegexp(arg1, arg2, arg3) -- Line 841
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: arrayToRegexp_upvr (readonly)
		[3]: stringToRegexp_upvr (readonly)
	]]
	if Array_upvr.isArray(arg1) then
		return arrayToRegexp_upvr(arg1, arg2, arg3)
	end
	return stringToRegexp_upvr(arg1, arg2, arg3)
end
return module_2_upvr