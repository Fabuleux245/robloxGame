-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:11
-- Luau version 6, Types version 3
-- Time taken: 0.008624 seconds

local module_upvr = {}
local function _(arg1) -- Line 8, Named "makeKeyString"
	if type(arg1) == "string" then
		return string.format("%s", arg1)
	end
	return string.format("[%s]", tostring(arg1))
end
local function makeValueString_upvr(arg1) -- Line 16, Named "makeValueString"
	local type_result1 = type(arg1)
	if type_result1 == "string" then
		return string.format("%q", arg1)
	end
	if type_result1 == "function" or type_result1 == "table" then
		return string.format("<%s>", tostring(arg1))
	end
	return string.format("%s", tostring(arg1))
end
local function printKeypair_upvr(arg1, arg2, arg3, arg4) -- Line 27, Named "printKeypair"
	--[[ Upvalues[1]:
		[1]: makeValueString_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3
	if type(arg1) == "string" then
		var3 = string.format("%s", arg1)
	else
		var3 = string.format("[%s]", tostring(arg1))
	end
	if arg4 then
	else
	end
	print(string.format("%s%s = %s,%s", arg3, var3, makeValueString_upvr(arg2), ""))
end
local tbl_upvr = {}
function module_upvr.ShallowEqual(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not arg1 or not arg2 then
		return false
	end
	if arg1 == arg2 then
		return true
	end
	if not arg3 then
	end
	for i, v in arg1 do
		if arg2[i] ~= v and not tbl_upvr[i] then
			return false
		end
	end
	for i_2, v_2 in arg2 do
		if arg1[i_2] ~= v_2 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not tbl_upvr[i_2] then
				return false
			end
		end
	end
	return true
end
local function formatDeepEqualMessage_upvr(arg1, arg2) -- Line 64, Named "formatDeepEqualMessage"
	if arg2 ~= 0 then
		return arg1
	end
	return arg1:gsub("{1}", "first"):gsub("{2}", "second")
end
function module_upvr.DeepEqual(arg1, arg2, arg3) -- Line 75
	--[[ Upvalues[2]:
		[1]: formatDeepEqualMessage_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var35 = arg3 or 0
	if arg1 == arg2 then
		return true
	end
	if typeof(arg1) ~= typeof(arg2) then
		return false, formatDeepEqualMessage_upvr("{1} is of type %s, but {2} is of type %s":format(typeof(arg1), typeof(arg2)), var35)
	end
	if typeof(arg1) == "table" then
		local tbl_3 = {}
		for i_3, v_3 in arg1 do
			tbl_3[i_3] = true
			local any_DeepEqual_result1_3, any_DeepEqual_result2_2 = module_upvr.DeepEqual(v_3, arg2[i_3], var35 + 1)
			if not any_DeepEqual_result1_3 then
				return false, formatDeepEqualMessage_upvr(any_DeepEqual_result2_2:gsub("{1}", "{1}[%s]":format(tostring(i_3))):gsub("{2}", "{2}[%s]":format(tostring(i_3))), var35)
			end
		end
		for i_4, v_4 in arg2 do
			if not tbl_3[i_4] then
				local any_DeepEqual_result1_4, any_DeepEqual_result2_3 = module_upvr.DeepEqual(arg1[i_4], v_4, var35 + 1)
				if not any_DeepEqual_result1_4 then
					return false, formatDeepEqualMessage_upvr(any_DeepEqual_result2_3:gsub("{1}", "{1}[%s]":format(tostring(i_4))):gsub("{2}", "{2}[%s]":format(tostring(i_4))), var35)
				end
			end
		end
		return true
	end
	return false, formatDeepEqualMessage_upvr("{1} ~= {2}", var35)
end
function module_upvr.EqualKey(arg1, arg2, arg3) -- Line 127
	if arg1 and arg2 and arg3 and arg3 ~= "" and arg1[arg3] and arg2[arg3] and arg1[arg3] == arg2[arg3] then
		return true
	end
	return false
end
function module_upvr.TableDifference(arg1, arg2) -- Line 138
	for i_5, v_5 in arg1 do
		if arg2[i_5] ~= arg1[i_5] then
			({})[i_5] = v_5
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function _(arg1) -- Line 155, Named "membershipTable"
	local module_2 = {}
	for i_6 = 1, #arg1 do
		module_2[arg1[i_6]] = true
	end
	return module_2
end
local function _(arg1) -- Line 166, Named "listOfKeys"
	local module = {}
	for i_7, _ in arg1 do
		table.insert(module, i_7)
	end
	return module
end
function module_upvr.ListDifference(arg1, arg2) -- Line 178
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	for i_8 = 1, #arg1 do
		tbl[arg1[i_8]] = true
	end
	for i_9 = 1, #arg2 do
		({})[arg2[i_9]] = true
		local var69
	end
	for i_10, _ in module_upvr.TableDifference(tbl, var69), nil do
		table.insert({}, i_10)
		local var71
	end
	return var71
end
function module_upvr.CheckListConsistency(arg1) -- Line 188
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var73
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 16. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [18.8]
	if type(nil) == "number" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if 1 ~= nil then
		end
	else
		return false
	end
	if false and nil then
		return false
	end
	-- KONSTANTERROR: [17] 16. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 9. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if false == "string" then
		-- KONSTANTWARNING: GOTO [31] #27
	end
	-- KONSTANTERROR: [8] 9. Error Block 27 end (CF ANALYSIS FAILED)
end
function module_upvr.RecursiveToString(arg1, arg2) -- Line 223
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var78 = arg2 or ""
	local var79
	if var79 == "table" then
		var79 = ""
		if not module_upvr.CheckListConsistency(arg1) then
			var79 = var79.."-- WARNING: this table fails the list consistency test\n"
		end
		for i_11, v_8 in arg1 do
			if type(i_11) == "string" then
			end
			if type(i_11) == "number" then
			end
		end
		return var79.."{\n".."  "..var78..tostring(i_11).." = "..module_upvr.RecursiveToString(v_8, "  "..var78)..";\n".."  "..var78..module_upvr.RecursiveToString(v_8, "  "..var78)..",\n"..var78..'}'
	end
	return tostring(arg1)
end
function module_upvr.Print(arg1, arg2) -- Line 257
	--[[ Upvalues[2]:
		[1]: makeValueString_upvr (readonly)
		[2]: printKeypair_upvr (readonly)
	]]
	if type(arg1) ~= "table" then
		error("TableUtilities.Print must be passed a table", 2)
	end
	local tbl_upvr_2 = {}
	local var81_upvw = arg2 or "  "
	local function recurse_upvr(arg1_2, arg2_2, arg3) -- Line 267, Named "recurse"
		--[[ Upvalues[5]:
			[1]: tbl_upvr_2 (readonly)
			[2]: var81_upvw (read and write)
			[3]: makeValueString_upvr (copied, readonly)
			[4]: printKeypair_upvr (copied, readonly)
			[5]: recurse_upvr (readonly)
		]]
		tbl_upvr_2[arg1_2] = true
		local var86
		if arg2_2 then
			if type(arg2_2) == "string" then
				var86 = string.format("%s", arg2_2)
			else
				var86 = string.format("[%s]", tostring(arg2_2))
			end
			print(string.format("%s%s = %s {", string.rep(var81_upvw, arg3), var86, makeValueString_upvr(arg1_2)))
		else
			var86 = makeValueString_upvr(arg1_2)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			print(string.format("%s%s {", string.rep(var81_upvw, arg3), var86))
		end
		for i_12, v_9 in arg1_2 do
			if type(v_9) == "table" then
				if tbl_upvr_2[v_9] then
					printKeypair_upvr(i_12, v_9, string.rep(var81_upvw, arg3 + 1), "Possible cycle")
				else
					recurse_upvr(v_9, i_12, arg3 + 1)
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				printKeypair_upvr(i_12, v_9, string.rep(var81_upvw, arg3 + 1))
			end
		end
		if 0 < arg3 then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		print(string.format("%s}%s", string.rep(var81_upvw, arg3), ""))
	end
	recurse_upvr(arg1, nil, 0)
end
function module_upvr.FieldCount(arg1) -- Line 301
	local var89 = 0
	for _ in arg1 do
		var89 += 1
	end
	return var89
end
return module_upvr