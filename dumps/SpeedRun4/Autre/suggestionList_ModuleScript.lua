-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:35
-- Luau version 6, Types version 3
-- Time taken: 0.006123 seconds

local tbl_upvr_2 = {}
local Object_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Object
local naturalCompare_upvr = require(script.Parent.naturalCompare).naturalCompare
local stringToArray_upvw
tbl_upvr_2.__index = tbl_upvr_2
function tbl_upvr_2.new(arg1) -- Line 78
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: stringToArray_upvw (read and write)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr_2)
	setmetatable_result1._input = arg1
	setmetatable_result1._inputLowerCase = arg1:lower()
	setmetatable_result1._inputArray = stringToArray_upvw(setmetatable_result1._inputLowerCase)
	local any_len_result1 = arg1:len()
	setmetatable_result1._rows = {table.create(any_len_result1 + 1, 0), table.create(any_len_result1 + 1, 0), table.create(any_len_result1 + 1, 0)}
	return setmetatable_result1
end
function tbl_upvr_2.measure(arg1, arg2, arg3) -- Line 93
	--[[ Upvalues[1]:
		[1]: stringToArray_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var28
	if arg1._input == arg2 then
		return 0
	end
	local any_lower_result1 = arg2:lower()
	var28 = arg1._inputLowerCase
	if var28 == any_lower_result1 then
		var28 = 1
		return var28
	end
	var28 = stringToArray_upvw(any_lower_result1)
	local _inputArray = arg1._inputArray
	if #var28 < #_inputArray then
		var28 = _inputArray
		_inputArray = var28
	end
	local len = #var28
	local len_2 = #_inputArray
	if arg3 < len - len_2 then
		return nil
	end
	for i_2 = 0, len_2 do
		arg1._rows[1][i_2 + 1] = i_2
		local var34
	end
	for i_3 = 1, len do
		local var35 = var34[(i_3 - 1) % 3 + 1]
		local var36 = var34[i_3 % 3 + 1]
		var36[1] = i_3
		local var37
		for i_4 = 1, len_2 do
			local var38
			if var28[i_3] == _inputArray[i_4] then
				var38 = 0
			else
				var38 = 1
			end
			local minimum = math.min(var35[i_4 + 1] + 1, var36[i_4] + 1, var35[i_4] + var38)
			if 1 < i_3 and 1 < i_4 and var28[i_3] == _inputArray[i_4 - 1] and var28[i_3 - 1] == _inputArray[i_4] then
				minimum = math.min(minimum, var34[(i_3 - 2) % 3 + 1][i_4 - 1] + 1)
			end
			if minimum < var37 then
				var37 = minimum
			end
			var36[i_4 + 1] = minimum
		end
		if arg3 < var37 then
			return nil
		end
	end
	local var40 = var34[len % 3 + 1][len_2 + 1]
	if var40 <= arg3 then
		return var40
	end
	return nil
end
function stringToArray_upvw(arg1) -- Line 168, Named "stringToArray"
	local module = {}
	for i_5 = 1, arg1:len() do
		module[i_5] = arg1:byte(i_5)
	end
	return module
end
return {
	suggestionList = function(arg1, arg2) -- Line 34, Named "suggestionList"
		--[[ Upvalues[3]:
			[1]: tbl_upvr_2 (readonly)
			[2]: Object_upvr (readonly)
			[3]: naturalCompare_upvr (readonly)
		]]
		local tbl_upvr = {}
		for i = 1, #arg2 do
			local var6 = arg2[i]
			local any_measure_result1 = tbl_upvr_2.new(arg1):measure(var6, math.floor(arg1:len() * 0.4) + 1)
			if any_measure_result1 ~= nil then
				tbl_upvr[var6] = any_measure_result1
			end
		end
		local any_keys_result1 = Object_upvr.keys(tbl_upvr)
		table.sort(any_keys_result1, function(arg1_2, arg2_2) -- Line 49
			--[[ Upvalues[2]:
				[1]: tbl_upvr (readonly)
				[2]: naturalCompare_upvr (copied, readonly)
			]]
			local var10 = tbl_upvr[arg1_2]
			local var11 = var10 - tbl_upvr[arg2_2]
			if var11 ~= 0 then
				if var11 >= 0 then
					var10 = false
				else
					var10 = true
				end
				return var10
			end
			if naturalCompare_upvr(arg1_2, arg2_2) >= 0 then
				var10 = false
			else
				var10 = true
			end
			return var10
		end)
		return any_keys_result1
	end;
}