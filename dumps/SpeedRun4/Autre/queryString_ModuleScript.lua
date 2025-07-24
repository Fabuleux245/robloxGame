-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:00
-- Luau version 6, Types version 3
-- Time taken: 0.012791 seconds

local HttpService_upvr = game:GetService("HttpService")
local Parent = script.Parent
local Parent_2 = Parent.Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local String_upvr = LuauPolyfill.String
local function _(arg1) -- Line 28, Named "TypeError"
	return arg1
end
local function encodeURIComponent_upvr(arg1) -- Line 32, Named "encodeURIComponent"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:UrlEncode(arg1)
end
local function strictUriEncode_upvr(arg1) -- Line 36, Named "strictUriEncode"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:UrlEncode(arg1):gsub("[!'%(%)%*]", function(arg1_2) -- Line 37
		return "%%%x":format(arg1_2:byte()):upper()
	end)
end
local module_upvr = {}
local function _(arg1) -- Line 51, Named "newNumber"
	return tonumber(arg1) or tonumber("nan")
end
local encode_upvw
local function encoderForArrayFormat_upvr(arg1) -- Line 55, Named "encoderForArrayFormat"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: encode_upvw (read and write)
	]]
	local arrayFormat = arg1.arrayFormat
	if arrayFormat == "index" then
		return function(arg1_3) -- Line 58
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: encode_upvw (copied, read and write)
			]]
			return function(arg1_4, arg2) -- Line 59
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: Array_upvr (copied, readonly)
					[3]: encode_upvw (copied, read and write)
					[4]: arg1_3 (readonly)
				]]
				local len = #arg1_4
				if arg1.skipNull and arg2 == nil then
					return arg1_4
				end
				if arg2 == nil then
					return Array_upvr.concat(arg1_4, {table.concat({encode_upvw(arg1_3, arg1), '[', len, ']'}, "")})
				end
				return Array_upvr.concat(arg1_4, {table.concat({encode_upvw(arg1_3, arg1), '[', encode_upvw(len, arg1), "]=", encode_upvw(arg2, arg1)}, "")})
			end
		end
	end
	if arrayFormat == "bracket" then
		return function(arg1_5) -- Line 88
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: encode_upvw (copied, read and write)
			]]
			return function(arg1_6, arg2) -- Line 89
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: Array_upvr (copied, readonly)
					[3]: encode_upvw (copied, read and write)
					[4]: arg1_5 (readonly)
				]]
				if arg1.skipNull and arg2 == nil then
					return arg1_6
				end
				if arg2 == nil then
					return Array_upvr.concat(arg1_6, {table.concat({encode_upvw(arg1_5, arg1), "[]"}, "")})
				end
				return Array_upvr.concat(arg1_6, {table.concat({encode_upvw(arg1_5, arg1), "[]=", encode_upvw(arg2, arg1)}, "")})
			end
		end
	end
	if arrayFormat == "comma" or arrayFormat == "separator" then
		return function(arg1_7) -- Line 106
			--[[ Upvalues[2]:
				[1]: encode_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			return function(arg1_8, arg2) -- Line 107
				--[[ Upvalues[3]:
					[1]: encode_upvw (copied, read and write)
					[2]: arg1_7 (readonly)
					[3]: arg1 (copied, readonly)
				]]
				if arg2 == nil or #arg2 == 0 then
					return arg1_8
				end
				if #arg1_8 == 0 then
					return {table.concat({encode_upvw(arg1_7, arg1), '=', encode_upvw(arg1_7, arg1)}, "")}
				end
				local module_2 = {}
				local tbl_3 = {}
				tbl_3[1] = arg1_8
				tbl_3[2] = encode_upvw(arg1_7, arg1)
				module_2[1] = table.concat(tbl_3, arg1.arrayFormatSeparator)
				return module_2
			end
		end
	end
	return function(arg1_9) -- Line 124
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: encode_upvw (copied, read and write)
		]]
		return function(arg1_10, arg2) -- Line 125
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: encode_upvw (copied, read and write)
				[4]: arg1_9 (readonly)
			]]
			if arg1.skipNull and arg2 == nil then
				return arg1_10
			end
			if arg2 == nil then
				return Array_upvr.concat(arg1_10, {encode_upvw(arg1_9, arg1)})
			end
			return Array_upvr.concat(arg1_10, {table.concat({encode_upvw(arg1_9, arg1), '=', encode_upvw(arg2, arg1)}, "")})
		end
	end
end
local RegExp_upvr = require(Parent_2.RegExp)
local decode_upvw
local function parserForArrayFormat_upvr(arg1) -- Line 142, Named "parserForArrayFormat"
	--[[ Upvalues[3]:
		[1]: RegExp_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: decode_upvw (read and write)
	]]
	local var38_upvw
	local arrayFormat_2 = arg1.arrayFormat
	if arrayFormat_2 == "index" then
		return function(arg1_11, arg2, arg3) -- Line 146
			--[[ Upvalues[2]:
				[1]: var38_upvw (read and write)
				[2]: RegExp_upvr (copied, readonly)
			]]
			var38_upvw = RegExp_upvr("\\[(\\d*)\\]$"):exec(arg1_11)
			local any_gsub_result1 = arg1_11:gsub("%[%d*%]$", "")
			if not var38_upvw then
				arg3[any_gsub_result1] = arg2
			else
				if arg3[any_gsub_result1] == nil then
					arg3[any_gsub_result1] = {}
				end
				arg3[any_gsub_result1][var38_upvw[2]] = arg2
			end
		end
	end
	if arrayFormat_2 == "bracket" then
		return function(arg1_12, arg2, arg3) -- Line 163
			--[[ Upvalues[3]:
				[1]: var38_upvw (read and write)
				[2]: RegExp_upvr (copied, readonly)
				[3]: Array_upvr (copied, readonly)
			]]
			var38_upvw = RegExp_upvr("(\\[\\])$"):exec(arg1_12)
			local any_gsub_result1_2 = arg1_12:gsub("%[%]$", "")
			if not var38_upvw then
				arg3[any_gsub_result1_2] = arg2
			else
				if arg3[any_gsub_result1_2] == nil then
					local tbl = {}
					tbl[1] = arg2
					arg3[any_gsub_result1_2] = tbl
					return
				end
				arg3[any_gsub_result1_2] = Array_upvr.concat({}, arg3[any_gsub_result1_2], arg2)
			end
		end
	end
	if arrayFormat_2 == "comma" or arrayFormat_2 == "separator" then
		return function(arg1_13, arg2, arg3) -- Line 180
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: decode_upvw (copied, read and write)
			]]
			local var46 = false
			if type(arg2) == "string" then
				if string.find(arg2, arg1.arrayFormatSeparator, 1, true) == nil then
					var46 = false
				else
					var46 = true
				end
			end
			local var47
			if var46 then
				var47 = Array_upvr.map(arg2:split(arg1.arrayFormatSeparator), function(arg1_14) -- Line 185
					--[[ Upvalues[2]:
						[1]: decode_upvw (copied, read and write)
						[2]: arg1 (copied, readonly)
					]]
					return decode_upvw(arg1_14, arg1)
				end)
			elseif arg2 ~= nil then
				var47 = decode_upvw(arg2, arg1)
			end
			arg3[arg1_13] = var47
		end
	end
	return function(arg1_15, arg2, arg3) -- Line 196
		--[[ Upvalues[1]:
			[1]: Array_upvr (copied, readonly)
		]]
		if arg3[arg1_15] == nil then
			arg3[arg1_15] = arg2
		else
			arg3[arg1_15] = Array_upvr.concat({}, arg3[arg1_15], arg2)
		end
	end
end
local function _(arg1) -- Line 207, Named "validateArrayFormatSeparator"
	if type(arg1) ~= "string" or #arg1 ~= 1 then
		error("arrayFormatSeparator must be single character string")
	end
end
function encode_upvw(arg1, arg2) -- Line 213, Named "encode"
	--[[ Upvalues[2]:
		[1]: strictUriEncode_upvr (readonly)
		[2]: encodeURIComponent_upvr (readonly)
	]]
	if arg2.encode then
		if arg2.strict then
			return strictUriEncode_upvr(arg1)
		end
		return encodeURIComponent_upvr(arg1)
	end
	return arg1
end
local decodeURIComponent_upvr = require(Parent.decodeURIComponent)
function decode_upvw(arg1, arg2) -- Line 225, Named "decode"
	--[[ Upvalues[1]:
		[1]: decodeURIComponent_upvr (readonly)
	]]
	if arg2.decode then
		return decodeURIComponent_upvr(arg1)
	end
	return arg1
end
local function keysSorter_upvr(arg1) -- Line 233, Named "keysSorter"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: keysSorter_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	if Array_upvr.isArray(arg1) then
		return Array_upvr.sort(arg1)
	end
	if type(arg1) == "table" then
		return Array_upvr.map(Array_upvr.sort(keysSorter_upvr(Object_upvr.keys(arg1)), function(arg1_16, arg2) -- Line 239
			return (tonumber(arg1_16) or tonumber("nan")) - (tonumber(arg2) or tonumber("nan"))
		end), function(arg1_17) -- Line 242
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1[arg1_17]
		end)
	end
	return arg1
end
local function _(arg1) -- Line 251, Named "removeHash"
	local any_find_result1_2 = arg1:find('#')
	local var54
	if any_find_result1_2 ~= nil then
		var54 = var54:sub(1, any_find_result1_2 - 1)
	end
	return var54
end
local function _(arg1) -- Line 260, Named "getHash"
	local var55 = ""
	local any_find_result1_3 = arg1:find('#')
	if any_find_result1_3 ~= nil then
		var55 = arg1:sub(any_find_result1_3)
	end
	return var55
end
local Number_upvr = LuauPolyfill.Number
local function parseValue_upvr(arg1, arg2) -- Line 280, Named "parseValue"
	--[[ Upvalues[2]:
		[1]: Number_upvr (readonly)
		[2]: String_upvr (readonly)
	]]
	local var63
	if arg2.parseNumbers then
		if not Number_upvr.isNaN(tonumber(var63) or tonumber("nan")) and type(var63) == "string" and String_upvr.trim(var63) ~= "" then
			var63 = tonumber(var63) or tonumber("nan")
			return var63
		end
	end
	if arg2.parseBooleans and var63 ~= nil and (string.lower(var63) == "true" or string.lower(var63) == "false") then
		if string.lower(var63) ~= "true" then
			var63 = false
		else
			var63 = true
		end
	end
	return var63
end
local splitOnFirst_upvr = require(Parent.splitOnFirst)
local Boolean_upvr = LuauPolyfill.Boolean
local function parse_upvr(arg1, arg2) -- Line 299, Named "parse"
	--[[ Upvalues[9]:
		[1]: Object_upvr (readonly)
		[2]: parserForArrayFormat_upvr (readonly)
		[3]: String_upvr (readonly)
		[4]: splitOnFirst_upvr (readonly)
		[5]: decode_upvw (read and write)
		[6]: parseValue_upvr (readonly)
		[7]: Array_upvr (readonly)
		[8]: Boolean_upvr (readonly)
		[9]: keysSorter_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg2 = Object_upvr.assign({
		decode = true;
		sort = true;
		arrayFormat = "none";
		arrayFormatSeparator = ',';
		parseNumbers = false;
		parseBooleans = false;
	}, arg2)
	local var83 = arg2
	local arrayFormatSeparator = var83.arrayFormatSeparator
	if type(arrayFormatSeparator) ~= "string" or #arrayFormatSeparator ~= 1 then
		error("arrayFormatSeparator must be single character string")
	end
	local tbl_2_upvr = {}
	if type(arg1) ~= "string" then
		return tbl_2_upvr
	end
	local string_gsub_result1 = string.gsub(String_upvr.trim(arg1), "^[%?#&]", "")
	if string_gsub_result1 == "" then
		return tbl_2_upvr
	end
	for _, v in string_gsub_result1:split('&') do
		local var90
		if var83.decode then
			var90 = string.gsub(v, "%+", ' ')
		else
			var90 = v
		end
		local splitOnFirst_upvr_result1 = splitOnFirst_upvr(var90, '=')
		var90 = splitOnFirst_upvr_result1[1]
		local var92
		if var92 ~= nil and var83.arrayFormat ~= "comma" then
			var92 = decode_upvw(var92, var83)
		end
		parserForArrayFormat_upvr(var83)(decode_upvw(var90, var83), var92, tbl_2_upvr)
	end
	for i_2 in tbl_2_upvr do
		splitOnFirst_upvr_result1 = tbl_2_upvr[i_2]
		local var93 = splitOnFirst_upvr_result1
		var90 = type(var93)
		if var90 == "table" then
			var90 = var93
			for i_3 in var90 do
				var93[i_3] = parseValue_upvr(var93[i_3], var83)
			end
		else
			var90 = parseValue_upvr(var93, var83)
			tbl_2_upvr[i_2] = var90
		end
	end
	if var83.sort == false then
		return tbl_2_upvr
	end
	local var94
	if var83.sort == true then
		i_2 = Object_upvr
		i_2 = tbl_2_upvr
		var94 = Array_upvr.sort(i_2.keys(i_2))
	else
		i_2 = Object_upvr
		i_2 = tbl_2_upvr
		i_2 = var83.sort
		var94 = Array_upvr.sort(i_2.keys(i_2), i_2)
	end
	local function _(arg1_18, arg2_2) -- Line 363
		--[[ Upvalues[4]:
			[1]: tbl_2_upvr (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: keysSorter_upvr (copied, readonly)
		]]
		local var96 = tbl_2_upvr[arg2_2]
		if Boolean_upvr.toJSBoolean(var96) and type(var96) == "table" and not Array_upvr.isArray(var96) then
			arg1_18[arg2_2] = keysSorter_upvr(var96)
			return arg1_18
		end
		arg1_18[arg2_2] = var96
		return arg1_18
	end
	return Array_upvr.reduce(var94, function(arg1_18, arg2_2) -- Line 363
		--[[ Upvalues[4]:
			[1]: tbl_2_upvr (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: keysSorter_upvr (copied, readonly)
		]]
		local var96 = tbl_2_upvr[arg2_2]
		if Boolean_upvr.toJSBoolean(var96) and type(var96) == "table" and not Array_upvr.isArray(var96) then
			arg1_18[arg2_2] = keysSorter_upvr(var96)
			return arg1_18
		end
		arg1_18[arg2_2] = var96
		return arg1_18
	end, {})
end
function module_upvr.extract(arg1) -- Line 270
	local var57 = arg1
	local any_find_result1_4 = var57:find('#')
	if any_find_result1_4 ~= nil then
		var57 = var57:sub(1, any_find_result1_4 - 1)
	end
	local var59 = var57
	local any_find_result1 = var59:find('?', 1, true)
	if any_find_result1 == nil then
		return ""
	end
	return var59:sub(any_find_result1 + 1)
end
module_upvr.parse = parse_upvr
function module_upvr.stringify(arg1, arg2) -- Line 380
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: encoderForArrayFormat_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: encode_upvw (read and write)
	]]
	if not arg1 then
		return ""
	end
	local any_assign_result1_upvw = Object_upvr.assign({
		encode = true;
		strict = true;
		arrayFormat = "none";
		arrayFormatSeparator = ',';
	}, arg2)
	local arrayFormatSeparator_2 = any_assign_result1_upvw.arrayFormatSeparator
	if type(arrayFormatSeparator_2) ~= "string" or #arrayFormatSeparator_2 ~= 1 then
		error("arrayFormatSeparator must be single character string")
	end
	local any_keys_result1 = Object_upvr.keys(table.clone(arg1))
	if any_assign_result1_upvw.sort ~= false then
		Array_upvr.sort(any_keys_result1, any_assign_result1_upvw.sort)
	end
	local encoderForArrayFormat_result1_upvr = encoderForArrayFormat_upvr(any_assign_result1_upvw)
	return table.concat(Array_upvr.filter(Array_upvr.map(any_keys_result1, function(arg1_19) -- Line 414
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: encode_upvw (copied, read and write)
			[3]: any_assign_result1_upvw (read and write)
			[4]: Array_upvr (copied, readonly)
			[5]: encoderForArrayFormat_result1_upvr (readonly)
		]]
		local var103 = arg1[arg1_19]
		if var103 == nil then
			return encode_upvw(arg1_19, any_assign_result1_upvw)
		end
		if Array_upvr.isArray(var103) then
			return table.concat(Array_upvr.reduce(var103, encoderForArrayFormat_result1_upvr(arg1_19), {}), '&')
		end
		return encode_upvw(arg1_19, any_assign_result1_upvw) + '=' + encode_upvw(var103, any_assign_result1_upvw)
	end), function(arg1_20) -- Line 430
		local var105
		if 0 >= arg1_20.length then
			var105 = false
		else
			var105 = true
		end
		return var105
	end), '&')
end
function module_upvr.parseUrl(arg1, arg2) -- Line 438
	--[[ Upvalues[1]:
		[1]: parse_upvr (readonly)
	]]
	local module = {}
	local var107 = arg1
	local any_find_result1_8 = var107:find('#')
	local var109
	if any_find_result1_8 ~= nil then
		var107 = var107:sub(1, any_find_result1_8 - 1)
	end
	var109 = var107:split('?')[1]
	module.url = var109 or ""
	var107 = arg1
	local var110 = var107
	local any_find_result1_9 = var110:find('#')
	if any_find_result1_9 ~= nil then
		var110 = var110:sub(1, any_find_result1_9 - 1)
	end
	local var112 = var110
	local any_find_result1_7 = var112:find('?', 1, true)
	if any_find_result1_7 == nil then
		var109 = ""
	else
		var109 = var112:sub(any_find_result1_7 + 1)
	end
	module.query = parse_upvr(var109, arg2)
	return module
end
function module_upvr.stringifyUrl(arg1, arg2) -- Line 445
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local url_2 = arg1.url
	local any_find_result1_6 = url_2:find('#')
	if any_find_result1_6 ~= nil then
		url_2 = url_2:sub(1, any_find_result1_6 - 1)
	end
	local url = arg1.url
	local var117 = ""
	local any_find_result1_5 = url:find('#')
	if any_find_result1_5 ~= nil then
		var117 = url:sub(any_find_result1_5)
	end
	local any_stringify_result1 = module_upvr.stringify(Object_upvr.assign(module_upvr.parse(module_upvr.extract(arg1.url)), arg1.query), arg2)
	if any_stringify_result1 then
		any_stringify_result1 = "?%s":format(any_stringify_result1)
	end
	return "%s%s%s":format(url_2:split('?')[1] or "", any_stringify_result1, var117)
end
return module_upvr