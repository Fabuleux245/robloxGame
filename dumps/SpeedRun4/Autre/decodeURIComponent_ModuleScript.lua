-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:57
-- Luau version 6, Types version 3
-- Time taken: 0.005656 seconds

local Parent = script.Parent.Parent.Parent
local RegExp = require(Parent.RegExp)
local function stringMatch_upvr(arg1, arg2) -- Line 11, Named "stringMatch"
	local any_exec_result1_2 = arg2:exec(arg1)
	local module = {}
	while any_exec_result1_2 do
		table.insert(module, any_exec_result1_2[1])
	end
	return module
end
local function _(arg1) -- Line 25, Named "TypeError"
	return arg1
end
local var2_result1_upvr = RegExp("(%[a-fA-F0-9]{2})+", 'i')
local function decodeURIComponent_upvr(arg1) -- Line 33, Named "decodeURIComponent"
	--[[ Upvalues[1]:
		[1]: var2_result1_upvr (readonly)
	]]
	local any_exec_result1 = var2_result1_upvr:exec(arg1)
	local var10 = arg1
	if any_exec_result1 then
		local tbl = {}
		for i in any_exec_result1[1]:gmatch("%%(%x%x)") do
			local tonumber_result1 = tonumber(i, 16)
			if 128 <= tonumber_result1 then
				error("malformed URI sequence")
			end
			table.insert(tbl, tonumber_result1)
		end
		var10 = utf8.char(unpack(tbl))
	end
	return var10
end
local Array_upvr = require(Parent.LuauPolyfill).Array
local function decodeComponents_upvr(arg1, arg2) -- Line 61, Named "decodeComponents"
	--[[ Upvalues[3]:
		[1]: decodeURIComponent_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: decodeComponents_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(decodeURIComponent_upvr, table.concat(arg1, ""))
	if pcall_result1 then
		return pcall_result2
	end
	if #arg1 == 1 then
		return arg1
	end
	local var19 = arg2 or 1
	return Array_upvr.concat(decodeComponents_upvr(Array_upvr.slice(arg1, 1, var19 + 1)), decodeComponents_upvr(Array_upvr.slice(arg1, var19 + 1)))
end
local RegExp_result1_upvr = RegExp("%[a-fA-F0-9]{2}", 'i')
local function decode_upvr(arg1) -- Line 83, Named "decode"
	--[[ Upvalues[4]:
		[1]: decodeURIComponent_upvr (readonly)
		[2]: stringMatch_upvr (readonly)
		[3]: RegExp_result1_upvr (readonly)
		[4]: decodeComponents_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2_2 = pcall(decodeURIComponent_upvr, arg1)
	local var23
	if pcall_result1_2 then
		return pcall_result2_2
	end
	local stringMatch_upvr_result1 = stringMatch_upvr(var23, RegExp_result1_upvr)
	local const_number = 2
	while stringMatch_upvr_result1[const_number] do
		var23 = table.concat(decodeComponents_upvr(stringMatch_upvr_result1, const_number), "")
	end
	return var23
end
local function _(arg1) -- Line 107, Named "escapePercent"
	return arg1:gsub("%%", "%%%%")
end
local RegExp_result1_upvr_2 = RegExp('('.."%[a-fA-F0-9]{2}"..")+", 'i')
local function customDecodeURIComponent_upvr(arg1) -- Line 112, Named "customDecodeURIComponent"
	--[[ Upvalues[3]:
		[1]: RegExp_result1_upvr_2 (readonly)
		[2]: decodeURIComponent_upvr (readonly)
		[3]: decode_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local utf8_char_result1 = utf8.char(65533)
	local tbl_3_upvr = {
		["%FE%FF"] = utf8_char_result1..utf8_char_result1;
		["%FF%FE"] = utf8_char_result1..utf8_char_result1;
	}
	local tbl_2_upvr = {"%FE%FF", "%FF%FE"}
	local any_exec_result1_3 = RegExp_result1_upvr_2:exec(arg1)
	local var39
	while any_exec_result1_3 do
		local _1_upvr = any_exec_result1_3[1]
		local xpcall_result1, xpcall_result2 = xpcall(decodeURIComponent_upvr, function(arg1_2) -- Line 130
			--[[ Upvalues[4]:
				[1]: decode_upvr (copied, readonly)
				[2]: _1_upvr (readonly)
				[3]: tbl_3_upvr (readonly)
				[4]: tbl_2_upvr (readonly)
			]]
			local decode_result1 = decode_upvr(_1_upvr)
			if decode_result1 ~= _1_upvr then
				if tbl_3_upvr[_1_upvr] == nil then
					table.insert(tbl_2_upvr, _1_upvr)
				end
				tbl_3_upvr[_1_upvr] = decode_result1
			end
		end, _1_upvr)
		if xpcall_result1 then
			if tbl_3_upvr[_1_upvr] == nil then
				table.insert(tbl_2_upvr, _1_upvr)
			end
			tbl_3_upvr[_1_upvr] = xpcall_result2
		end
	end
	tbl_3_upvr["%C2"] = utf8_char_result1
	_1_upvr = table.insert
	_1_upvr(tbl_2_upvr, "%C2")
	_1_upvr = tbl_2_upvr
	for _, v in _1_upvr do
		var39 = string.gsub(var39, v:gsub("%%", "%%%%"), tbl_3_upvr[v]:gsub("%%", "%%%%"))
	end
	return var39
end
return function(arg1) -- Line 172, Named "decodeComponent"
	--[[ Upvalues[1]:
		[1]: customDecodeURIComponent_upvr (readonly)
	]]
	if type(arg1) ~= "string" then
		error("Expected `encodedURI` to be of type `string`, got `"..typeof(arg1)..'`')
	end
	return customDecodeURIComponent_upvr(arg1:gsub("%+", ' '))
end