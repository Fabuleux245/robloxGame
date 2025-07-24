-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:54
-- Luau version 6, Types version 3
-- Time taken: 0.079976 seconds

local tbl_3_upvr = {{1, 0, 0, 0, 0, 0, 0, 0}, {0, 1, 0, 0, 0, 0, 0, 0}, {1, 1, 0, 0, 0, 0, 0, 0}, {0, 0, 1, 0, 0, 0, 0, 0}, {1, 0, 1, 0, 0, 0, 0, 0}, {0, 1, 1, 0, 0, 0, 0, 0}, {1, 1, 1, 0, 0, 0, 0, 0}, {0, 0, 0, 1, 0, 0, 0, 0}, {1, 0, 0, 1, 0, 0, 0, 0}, {0, 1, 0, 1, 0, 0, 0, 0}, {1, 1, 0, 1, 0, 0, 0, 0}, {0, 0, 1, 1, 0, 0, 0, 0}, {1, 0, 1, 1, 0, 0, 0, 0}, {0, 1, 1, 1, 0, 0, 0, 0}, {1, 1, 1, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 1, 0, 0, 0}, {0, 1, 0, 0, 1, 0, 0, 0}, {1, 1, 0, 0, 1, 0, 0, 0}, {0, 0, 1, 0, 1, 0, 0, 0}, {1, 0, 1, 0, 1, 0, 0, 0}, {0, 1, 1, 0, 1, 0, 0, 0}, {1, 1, 1, 0, 1, 0, 0, 0}, {0, 0, 0, 1, 1, 0, 0, 0}, {1, 0, 0, 1, 1, 0, 0, 0}, {0, 1, 0, 1, 1, 0, 0, 0}, {1, 1, 0, 1, 1, 0, 0, 0}, {0, 0, 1, 1, 1, 0, 0, 0}, {1, 0, 1, 1, 1, 0, 0, 0}, {0, 1, 1, 1, 1, 0, 0, 0}, {1, 1, 1, 1, 1, 0, 0, 0}, {0, 0, 0, 0, 0, 1, 0, 0}, {1, 0, 0, 0, 0, 1, 0, 0}, {0, 1, 0, 0, 0, 1, 0, 0}, {1, 1, 0, 0, 0, 1, 0, 0}, {0, 0, 1, 0, 0, 1, 0, 0}, {1, 0, 1, 0, 0, 1, 0, 0}, {0, 1, 1, 0, 0, 1, 0, 0}, {1, 1, 1, 0, 0, 1, 0, 0}, {0, 0, 0, 1, 0, 1, 0, 0}, {1, 0, 0, 1, 0, 1, 0, 0}, {0, 1, 0, 1, 0, 1, 0, 0}, {1, 1, 0, 1, 0, 1, 0, 0}, {0, 0, 1, 1, 0, 1, 0, 0}, {1, 0, 1, 1, 0, 1, 0, 0}, {0, 1, 1, 1, 0, 1, 0, 0}, {1, 1, 1, 1, 0, 1, 0, 0}, {0, 0, 0, 0, 1, 1, 0, 0}, {1, 0, 0, 0, 1, 1, 0, 0}, {0, 1, 0, 0, 1, 1, 0, 0}, {1, 1, 0, 0, 1, 1, 0, 0}, {0, 0, 1, 0, 1, 1, 0, 0}, {1, 0, 1, 0, 1, 1, 0, 0}, {0, 1, 1, 0, 1, 1, 0, 0}, {1, 1, 1, 0, 1, 1, 0, 0}, {0, 0, 0, 1, 1, 1, 0, 0}, {1, 0, 0, 1, 1, 1, 0, 0}, {0, 1, 0, 1, 1, 1, 0, 0}, {1, 1, 0, 1, 1, 1, 0, 0}, {0, 0, 1, 1, 1, 1, 0, 0}, {1, 0, 1, 1, 1, 1, 0, 0}, {0, 1, 1, 1, 1, 1, 0, 0}, {1, 1, 1, 1, 1, 1, 0, 0}, {0, 0, 0, 0, 0, 0, 1, 0}, {1, 0, 0, 0, 0, 0, 1, 0}, {0, 1, 0, 0, 0, 0, 1, 0}, {1, 1, 0, 0, 0, 0, 1, 0}, {0, 0, 1, 0, 0, 0, 1, 0}, {1, 0, 1, 0, 0, 0, 1, 0}, {0, 1, 1, 0, 0, 0, 1, 0}, {1, 1, 1, 0, 0, 0, 1, 0}, {0, 0, 0, 1, 0, 0, 1, 0}, {1, 0, 0, 1, 0, 0, 1, 0}, {0, 1, 0, 1, 0, 0, 1, 0}, {1, 1, 0, 1, 0, 0, 1, 0}, {0, 0, 1, 1, 0, 0, 1, 0}, {1, 0, 1, 1, 0, 0, 1, 0}, {0, 1, 1, 1, 0, 0, 1, 0}, {1, 1, 1, 1, 0, 0, 1, 0}, {0, 0, 0, 0, 1, 0, 1, 0}, {1, 0, 0, 0, 1, 0, 1, 0}, {0, 1, 0, 0, 1, 0, 1, 0}, {1, 1, 0, 0, 1, 0, 1, 0}, {0, 0, 1, 0, 1, 0, 1, 0}, {1, 0, 1, 0, 1, 0, 1, 0}, {0, 1, 1, 0, 1, 0, 1, 0}, {1, 1, 1, 0, 1, 0, 1, 0}, {0, 0, 0, 1, 1, 0, 1, 0}, {1, 0, 0, 1, 1, 0, 1, 0}, {0, 1, 0, 1, 1, 0, 1, 0}, {1, 1, 0, 1, 1, 0, 1, 0}, {0, 0, 1, 1, 1, 0, 1, 0}, {1, 0, 1, 1, 1, 0, 1, 0}, {0, 1, 1, 1, 1, 0, 1, 0}, {1, 1, 1, 1, 1, 0, 1, 0}, {0, 0, 0, 0, 0, 1, 1, 0}, {1, 0, 0, 0, 0, 1, 1, 0}, {0, 1, 0, 0, 0, 1, 1, 0}, {1, 1, 0, 0, 0, 1, 1, 0}, {0, 0, 1, 0, 0, 1, 1, 0}, {1, 0, 1, 0, 0, 1, 1, 0}, {0, 1, 1, 0, 0, 1, 1, 0}, {1, 1, 1, 0, 0, 1, 1, 0}, {0, 0, 0, 1, 0, 1, 1, 0}, {1, 0, 0, 1, 0, 1, 1, 0}, {0, 1, 0, 1, 0, 1, 1, 0}, {1, 1, 0, 1, 0, 1, 1, 0}, {0, 0, 1, 1, 0, 1, 1, 0}, {1, 0, 1, 1, 0, 1, 1, 0}, {0, 1, 1, 1, 0, 1, 1, 0}, {1, 1, 1, 1, 0, 1, 1, 0}, {0, 0, 0, 0, 1, 1, 1, 0}, {1, 0, 0, 0, 1, 1, 1, 0}, {0, 1, 0, 0, 1, 1, 1, 0}, {1, 1, 0, 0, 1, 1, 1, 0}, {0, 0, 1, 0, 1, 1, 1, 0}, {1, 0, 1, 0, 1, 1, 1, 0}, {0, 1, 1, 0, 1, 1, 1, 0}, {1, 1, 1, 0, 1, 1, 1, 0}, {0, 0, 0, 1, 1, 1, 1, 0}, {1, 0, 0, 1, 1, 1, 1, 0}, {0, 1, 0, 1, 1, 1, 1, 0}, {1, 1, 0, 1, 1, 1, 1, 0}, {0, 0, 1, 1, 1, 1, 1, 0}, {1, 0, 1, 1, 1, 1, 1, 0}, {0, 1, 1, 1, 1, 1, 1, 0}, {1, 1, 1, 1, 1, 1, 1, 0}, {0, 0, 0, 0, 0, 0, 0, 1}, {1, 0, 0, 0, 0, 0, 0, 1}, {0, 1, 0, 0, 0, 0, 0, 1}, {1, 1, 0, 0, 0, 0, 0, 1}, {0, 0, 1, 0, 0, 0, 0, 1}, {1, 0, 1, 0, 0, 0, 0, 1}, {0, 1, 1, 0, 0, 0, 0, 1}, {1, 1, 1, 0, 0, 0, 0, 1}, {0, 0, 0, 1, 0, 0, 0, 1}, {1, 0, 0, 1, 0, 0, 0, 1}, {0, 1, 0, 1, 0, 0, 0, 1}, {1, 1, 0, 1, 0, 0, 0, 1}, {0, 0, 1, 1, 0, 0, 0, 1}, {1, 0, 1, 1, 0, 0, 0, 1}, {0, 1, 1, 1, 0, 0, 0, 1}, {1, 1, 1, 1, 0, 0, 0, 1}, {0, 0, 0, 0, 1, 0, 0, 1}, {1, 0, 0, 0, 1, 0, 0, 1}, {0, 1, 0, 0, 1, 0, 0, 1}, {1, 1, 0, 0, 1, 0, 0, 1}, {0, 0, 1, 0, 1, 0, 0, 1}, {1, 0, 1, 0, 1, 0, 0, 1}, {0, 1, 1, 0, 1, 0, 0, 1}, {1, 1, 1, 0, 1, 0, 0, 1}, {0, 0, 0, 1, 1, 0, 0, 1}, {1, 0, 0, 1, 1, 0, 0, 1}, {0, 1, 0, 1, 1, 0, 0, 1}, {1, 1, 0, 1, 1, 0, 0, 1}, {0, 0, 1, 1, 1, 0, 0, 1}, {1, 0, 1, 1, 1, 0, 0, 1}, {0, 1, 1, 1, 1, 0, 0, 1}, {1, 1, 1, 1, 1, 0, 0, 1}, {0, 0, 0, 0, 0, 1, 0, 1}, {1, 0, 0, 0, 0, 1, 0, 1}, {0, 1, 0, 0, 0, 1, 0, 1}, {1, 1, 0, 0, 0, 1, 0, 1}, {0, 0, 1, 0, 0, 1, 0, 1}, {1, 0, 1, 0, 0, 1, 0, 1}, {0, 1, 1, 0, 0, 1, 0, 1}, {1, 1, 1, 0, 0, 1, 0, 1}, {0, 0, 0, 1, 0, 1, 0, 1}, {1, 0, 0, 1, 0, 1, 0, 1}, {0, 1, 0, 1, 0, 1, 0, 1}, {1, 1, 0, 1, 0, 1, 0, 1}, {0, 0, 1, 1, 0, 1, 0, 1}, {1, 0, 1, 1, 0, 1, 0, 1}, {0, 1, 1, 1, 0, 1, 0, 1}, {1, 1, 1, 1, 0, 1, 0, 1}, {0, 0, 0, 0, 1, 1, 0, 1}, {1, 0, 0, 0, 1, 1, 0, 1}, {0, 1, 0, 0, 1, 1, 0, 1}, {1, 1, 0, 0, 1, 1, 0, 1}, {0, 0, 1, 0, 1, 1, 0, 1}, {1, 0, 1, 0, 1, 1, 0, 1}, {0, 1, 1, 0, 1, 1, 0, 1}, {1, 1, 1, 0, 1, 1, 0, 1}, {0, 0, 0, 1, 1, 1, 0, 1}, {1, 0, 0, 1, 1, 1, 0, 1}, {0, 1, 0, 1, 1, 1, 0, 1}, {1, 1, 0, 1, 1, 1, 0, 1}, {0, 0, 1, 1, 1, 1, 0, 1}, {1, 0, 1, 1, 1, 1, 0, 1}, {0, 1, 1, 1, 1, 1, 0, 1}, {1, 1, 1, 1, 1, 1, 0, 1}, {0, 0, 0, 0, 0, 0, 1, 1}, {1, 0, 0, 0, 0, 0, 1, 1}, {0, 1, 0, 0, 0, 0, 1, 1}, {1, 1, 0, 0, 0, 0, 1, 1}, {0, 0, 1, 0, 0, 0, 1, 1}, {1, 0, 1, 0, 0, 0, 1, 1}, {0, 1, 1, 0, 0, 0, 1, 1}, {1, 1, 1, 0, 0, 0, 1, 1}, {0, 0, 0, 1, 0, 0, 1, 1}, {1, 0, 0, 1, 0, 0, 1, 1}, {0, 1, 0, 1, 0, 0, 1, 1}, {1, 1, 0, 1, 0, 0, 1, 1}, {0, 0, 1, 1, 0, 0, 1, 1}, {1, 0, 1, 1, 0, 0, 1, 1}, {0, 1, 1, 1, 0, 0, 1, 1}, {1, 1, 1, 1, 0, 0, 1, 1}, {0, 0, 0, 0, 1, 0, 1, 1}, {1, 0, 0, 0, 1, 0, 1, 1}, {0, 1, 0, 0, 1, 0, 1, 1}, {1, 1, 0, 0, 1, 0, 1, 1}, {0, 0, 1, 0, 1, 0, 1, 1}, {1, 0, 1, 0, 1, 0, 1, 1}, {0, 1, 1, 0, 1, 0, 1, 1}, {1, 1, 1, 0, 1, 0, 1, 1}, {0, 0, 0, 1, 1, 0, 1, 1}, {1, 0, 0, 1, 1, 0, 1, 1}, {0, 1, 0, 1, 1, 0, 1, 1}, {1, 1, 0, 1, 1, 0, 1, 1}, {0, 0, 1, 1, 1, 0, 1, 1}, {1, 0, 1, 1, 1, 0, 1, 1}, {0, 1, 1, 1, 1, 0, 1, 1}, {1, 1, 1, 1, 1, 0, 1, 1}, {0, 0, 0, 0, 0, 1, 1, 1}, {1, 0, 0, 0, 0, 1, 1, 1}, {0, 1, 0, 0, 0, 1, 1, 1}, {1, 1, 0, 0, 0, 1, 1, 1}, {0, 0, 1, 0, 0, 1, 1, 1}, {1, 0, 1, 0, 0, 1, 1, 1}, {0, 1, 1, 0, 0, 1, 1, 1}, {1, 1, 1, 0, 0, 1, 1, 1}, {0, 0, 0, 1, 0, 1, 1, 1}, {1, 0, 0, 1, 0, 1, 1, 1}, {0, 1, 0, 1, 0, 1, 1, 1}, {1, 1, 0, 1, 0, 1, 1, 1}, {0, 0, 1, 1, 0, 1, 1, 1}, {1, 0, 1, 1, 0, 1, 1, 1}, {0, 1, 1, 1, 0, 1, 1, 1}, {1, 1, 1, 1, 0, 1, 1, 1}, {0, 0, 0, 0, 1, 1, 1, 1}, {1, 0, 0, 0, 1, 1, 1, 1}, {0, 1, 0, 0, 1, 1, 1, 1}, {1, 1, 0, 0, 1, 1, 1, 1}, {0, 0, 1, 0, 1, 1, 1, 1}, {1, 0, 1, 0, 1, 1, 1, 1}, {0, 1, 1, 0, 1, 1, 1, 1}, {1, 1, 1, 0, 1, 1, 1, 1}, {0, 0, 0, 1, 1, 1, 1, 1}, {1, 0, 0, 1, 1, 1, 1, 1}, {0, 1, 0, 1, 1, 1, 1, 1}, {1, 1, 0, 1, 1, 1, 1, 1}, {0, 0, 1, 1, 1, 1, 1, 1}, {1, 0, 1, 1, 1, 1, 1, 1}, {0, 1, 1, 1, 1, 1, 1, 1}, {1, 1, 1, 1, 1, 1, 1, 1}}
local function _(arg1) -- Line 116, Named "tbl_to_number"
	local var260 = 0
	local var261 = 1
	for i = 1, #arg1 do
		var260 += arg1[i] * var261
		var261 *= 2
	end
	return var260
end
local function bit_xor_upvr(arg1, arg2) -- Line 128, Named "bit_xor"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_6 = {}
	local var271
	for i_2 = var271, 8 do
		if tbl_3_upvr[arg1][i_2] ~= tbl_3_upvr[arg2][i_2] then
			module_6[i_2] = 1
		else
			module_6[i_2] = 0
		end
	end
	for i_3 = 1, #module_6 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var272
	end
	return 0 + module_6[i_3] * 1
end
local function binary_upvr(arg1, arg2) -- Line 143, Named "binary"
	local module_3_upvr = {
		['0'] = "000";
		['1'] = "001";
		['2'] = "010";
		['3'] = "011";
		['4'] = "100";
		['5'] = "101";
		['6'] = "110";
		['7'] = "111";
	}
	return string.gsub(string.format(string.format("%%%ds", arg2), string.gsub(string.gsub(string.format("%o", arg1), "(.)", function(arg1_2) -- Line 147
		--[[ Upvalues[1]:
			[1]: module_3_upvr (readonly)
		]]
		return module_3_upvr[arg1_2]
	end), "^0*(.*)$", "%1")), ' ', '0')
end
local function _(arg1, arg2, arg3, arg4) -- Line 158, Named "fill_matrix_position"
	if arg2 == '1' then
		arg1[arg3][arg4] = 2
	else
		arg1[arg3][arg4] = -2
	end
end
local tbl_21_upvr = {{19, 16, 13, 9}, {34, 28, 22, 16}, {55, 44, 34, 26}, {80, 64, 48, 36}, {108, 86, 62, 46}, {136, 108, 76, 60}, {156, 124, 88, 66}, {194, 154, 110, 86}, {232, 182, 132, 100}, {274, 216, 154, 122}, {324, 254, 180, 140}, {370, 290, 206, 158}, {428, 334, 244, 180}, {461, 365, 261, 197}, {523, 415, 295, 223}, {589, 453, 325, 253}, {647, 507, 367, 283}, {721, 563, 397, 313}, {795, 627, 445, 341}, {861, 669, 485, 385}, {932, 714, 512, 406}, {1006, 782, 568, 442}, {1094, 860, 614, 464}, {1174, 914, 664, 514}, {1276, 1000, 718, 538}, {1370, 1062, 754, 596}, {1468, 1128, 808, 628}, {1531, 1193, 871, 661}, {1631, 1267, 911, 701}, {1735, 1373, 985, 745}, {1843, 1455, 1033, 793}, {1955, 1541, 1115, 845}, {2071, 1631, 1171, 901}, {2191, 1725, 1231, 961}, {2306, 1812, 1286, 986}, {2434, 1914, 1354, 1054}, {2566, 1992, 1426, 1096}, {2702, 2102, 1502, 1142}, {2812, 2216, 1582, 1222}, {2956, 2334, 1666, 1276}}
local function get_version_eclevel_upvr(arg1, arg2, arg3) -- Line 224, Named "get_version_eclevel"
	--[[ Upvalues[1]:
		[1]: tbl_21_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local var316 = arg2
	if arg2 == 4 then
		var316 = 3
	elseif arg2 == 8 then
		var316 = 4
	end
	if var316 > 4 then
	else
	end
	assert(true)
	local tbl_20 = {}
	local tbl_15 = {14, 13, 16, 12}
	tbl_20[1] = {10, 9, 8, 8}
	tbl_20[2] = {12, 11, 16, 10}
	tbl_20[3] = tbl_15
	tbl_15 = 1
	local var321 = tbl_15
	local var322 = 4
	if arg3 and 1 <= arg3 and arg3 <= 4 then
		var321 = arg3
		var322 = arg3
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [140] 115. Error Block 35 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [140] 115. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [67] 54. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [67] 54. Error Block 14 end (CF ANALYSIS FAILED)
end
local function get_length_upvr(arg1, arg2, arg3) -- Line 277, Named "get_length"
	--[[ Upvalues[1]:
		[1]: binary_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var323 = arg3
	if arg3 == 4 then
		var323 = 3
	elseif arg3 == 8 then
		var323 = 4
	end
	if var323 > 4 then
	else
	end
	assert(true)
	if arg2 < 10 then
	elseif arg2 < 27 then
	elseif arg2 <= 40 then
	else
		assert(false, "get_length, version > 40 not supported")
	end
	return binary_upvr(#arg1, ({{10, 9, 8, 8}, {12, 11, 16, 10}, {14, 13, 16, 12}})[3][var323])
end
local tbl_14_upvr = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1}
local function encode_string_binary_upvr(arg1) -- Line 378, Named "encode_string_binary"
	--[[ Upvalues[1]:
		[1]: binary_upvr (readonly)
	]]
	local module_upvr = {}
	string.gsub(arg1, '.', function(arg1_5) -- Line 380
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: binary_upvr (copied, readonly)
		]]
		module_upvr[#module_upvr + 1] = binary_upvr(string.byte(arg1_5), 8)
	end)
	return table.concat(module_upvr)
end
local function _(arg1, arg2) -- Line 387, Named "encode_data"
	--[[ Upvalues[3]:
		[1]: binary_upvr (readonly)
		[2]: tbl_14_upvr (readonly)
		[3]: encode_string_binary_upvr (readonly)
	]]
	if arg2 == 1 then
		local var339_upvw = ""
		local var341_upvw
		string.gsub(arg1, "..?.?", function(arg1_6) -- Line 342
			--[[ Upvalues[3]:
				[1]: var341_upvw (read and write)
				[2]: var339_upvw (read and write)
				[3]: binary_upvr (copied, readonly)
			]]
			var341_upvw = tonumber(arg1_6)
			if #arg1_6 == 3 then
				var339_upvw = var339_upvw..binary_upvr(var341_upvw, 10)
			else
				if #arg1_6 == 2 then
					var339_upvw = var339_upvw..binary_upvr(var341_upvw, 7)
					return
				end
				var339_upvw = var339_upvw..binary_upvr(var341_upvw, 4)
			end
		end)
		return var339_upvw
	end
	if arg2 == 2 then
		local var342_upvw = ""
		local var344_upvw
		local var345_upvw
		local var346_upvw
		string.gsub(arg1, "..?", function(arg1_7) -- Line 361
			--[[ Upvalues[6]:
				[1]: var344_upvw (read and write)
				[2]: tbl_14_upvr (copied, readonly)
				[3]: var345_upvw (read and write)
				[4]: var346_upvw (read and write)
				[5]: var342_upvw (read and write)
				[6]: binary_upvr (copied, readonly)
			]]
			if #arg1_7 == 2 then
				var344_upvw = tbl_14_upvr[string.byte(string.sub(arg1_7, 1, 1))]
				var345_upvw = tbl_14_upvr[string.byte(string.sub(arg1_7, 2, 2))]
				var346_upvw = var344_upvw * 45 + var345_upvw
				var342_upvw = var342_upvw..binary_upvr(var346_upvw, 11)
			else
				var346_upvw = tbl_14_upvr[string.byte(arg1_7)]
				var342_upvw = var342_upvw..binary_upvr(var346_upvw, 6)
			end
		end)
		return var342_upvw
	end
	if arg2 == 4 then
		return encode_string_binary_upvr(arg1)
	end
	assert(false, "not implemented yet")
end
local function add_pad_data_upvr(arg1, arg2, arg3) -- Line 401, Named "add_pad_data"
	--[[ Upvalues[1]:
		[1]: tbl_21_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var347 = tbl_21_upvr[arg1][arg2] * 8
	local minimum = math.min(4, var347 - #arg3)
	local var349
	if 0 < minimum then
		var349 = var349..string.rep('0', minimum)
	end
	if math.fmod(#var349, 8) ~= 0 then
		var349 = var349..string.rep('0', 8 - math.fmod(#var349, 8))
	end
	if math.fmod(#var349, 8) ~= 0 then
	else
	end
	assert(true)
	while #var349 < var347 do
		var349 = var349.."11101100"
		if #var349 < var347 then
			var349 = var349.."00010001"
		end
	end
	return var349
end
local tbl_22_upvr = {2, 4, 8, 16, 32, 64, 128, 29, 58, 116, 232, 205, 135, 19, 38, 76, 152, 45, 90, 180, 117, 234, 201, 143, 3, 6, 12, 24, 48, 96, 192, 157, 39, 78, 156, 37, 74, 148, 53, 106, 212, 181, 119, 238, 193, 159, 35, 70, 140, 5, 10, 20, 40, 80, 160, 93, 186, 105, 210, 185, 111, 222, 161, 95, 190, 97, 194, 153, 47, 94, 188, 101, 202, 137, 15, 30, 60, 120, 240, 253, 231, 211, 187, 107, 214, 177, 127, 254, 225, 223, 163, 91, 182, 113, 226, 217, 175, 67, 134, 17, 34, 68, 136, 13, 26, 52, 104, 208, 189, 103, 206, 129, 31, 62, 124, 248, 237, 199, 147, 59, 118, 236, 197, 151, 51, 102, 204, 133, 23, 46, 92, 184, 109, 218, 169, 79, 158, 33, 66, 132, 21, 42, 84, 168, 77, 154, 41, 82, 164, 85, 170, 73, 146, 57, 114, 228, 213, 183, 115, 230, 209, 191, 99, 198, 145, 63, 126, 252, 229, 215, 179, 123, 246, 241, 255, 227, 219, 171, 75, 150, 49, 98, 196, 149, 55, 110, 220, 165, 87, 174, 65, 130, 25, 50, 100, 200, 141, 7, 14, 28, 56, 112, 224, 221, 167, 83, 166, 81, 162, 89, 178, 121, 242, 249, 239, 195, 155, 43, 86, 172, 69, 138, 9, 18, 36, 72, 144, 61, 122, 244, 245, 247, 243, 251, 235, 203, 139, 11, 22, 44, 88, 176, 125, 250, 233, 207, 131, 27, 54, 108, 216, 173, 71, 142, 0, 0}
local tbl_19_upvr = {0, 1, 25, 2, 50, 26, 198, 3, 223, 51, 238, 27, 104, 199, 75, 4, 100, 224, 14, 52, 141, 239, 129, 28, 193, 105, 248, 200, 8, 76, 113, 5, 138, 101, 47, 225, 36, 15, 33, 53, 147, 142, 218, 240, 18, 130, 69, 29, 181, 194, 125, 106, 39, 249, 185, 201, 154, 9, 120, 77, 228, 114, 166, 6, 191, 139, 98, 102, 221, 48, 253, 226, 152, 37, 179, 16, 145, 34, 136, 54, 208, 148, 206, 143, 150, 219, 189, 241, 210, 19, 92, 131, 56, 70, 64, 30, 66, 182, 163, 195, 72, 126, 110, 107, 58, 40, 84, 250, 133, 186, 61, 202, 94, 155, 159, 10, 21, 121, 43, 78, 212, 229, 172, 115, 243, 167, 87, 7, 112, 192, 247, 140, 128, 99, 13, 103, 74, 222, 237, 49, 197, 254, 24, 227, 165, 153, 119, 38, 184, 180, 124, 17, 68, 146, 217, 35, 32, 137, 46, 55, 63, 209, 91, 149, 188, 207, 205, 144, 135, 151, 178, 220, 252, 190, 97, 242, 86, 211, 171, 20, 42, 93, 158, 132, 60, 57, 83, 71, 109, 65, 162, 31, 45, 67, 216, 183, 123, 164, 118, 196, 23, 73, 236, 127, 12, 111, 246, 108, 161, 59, 82, 41, 157, 85, 170, 251, 96, 134, 177, 187, 204, 62, 90, 203, 89, 95, 176, 156, 169, 160, 81, 11, 245, 22, 235, 122, 117, 44, 215, 79, 174, 213, 233, 230, 231, 173, 232, 116, 214, 244, 234, 168, 80, 88, 175}
local tbl_10_upvr = {-- : First try: K:0: attempt to index nil with 't'

local function get_generator_polynominal_adjusted_upvr(arg1, arg2) -- Line 506, Named "get_generator_polynominal_adjusted"
	--[[ Upvalues[1]:
		[1]: tbl_10_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	for i_4 = 0, arg2 - arg1 - 1 do
		module[i_4] = 0
	end
	for i_5 = 1, arg1 + 1 do
		module[arg2 - arg1 + i_5 - 1] = tbl_10_upvr[arg1][i_5]
		local _
	end
	return module
end
local function _(arg1) -- Line 521, Named "convert_to_alpha"
	--[[ Upvalues[1]:
		[1]: tbl_19_upvr (readonly)
	]]
	local module_5 = {}
	for i_6 = 0, #arg1 do
		module_5[i_6] = tbl_19_upvr[arg1[i_6]]
	end
	return module_5
end
local function _(arg1, arg2) -- Line 530, Named "convert_to_int"
	--[[ Upvalues[1]:
		[1]: tbl_22_upvr (readonly)
	]]
	local module_7 = {}
	for i_7 = 0, #arg1 do
		module_7[i_7] = tbl_22_upvr[arg1[i_7]]
	end
	return module_7
end
local function calculate_error_correction_upvr(arg1, arg2) -- Line 539, Named "calculate_error_correction"
	--[[ Upvalues[4]:
		[1]: tbl_19_upvr (readonly)
		[2]: get_generator_polynominal_adjusted_upvr (readonly)
		[3]: tbl_22_upvr (readonly)
		[4]: bit_xor_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 79 start (CF ANALYSIS FAILED)
	local var396
	if type(arg1) == "string" then
		local tbl_4_upvr = {}
		local function _(arg1_9) -- Line 498
			--[[ Upvalues[1]:
				[1]: tbl_4_upvr (readonly)
			]]
			tbl_4_upvr[#tbl_4_upvr + 1] = tonumber(arg1_9, 2)
		end
		var396 = tbl_4_upvr
		-- KONSTANTWARNING: GOTO [39] #32
	end
	-- KONSTANTERROR: [0] 1. Error Block 79 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 80 start (CF ANALYSIS FAILED)
	tbl_4_upvr = type(arg1)
	if tbl_4_upvr == "table" then
		var396 = arg1
	else
		tbl_4_upvr = assert
		tbl_4_upvr(false, "Unknown type for data: %s", type(arg1))
	end
	tbl_4_upvr = #var396
	local var399 = tbl_4_upvr
	local tbl_7 = {}
	for i_8 = 1, var399 do
		tbl_7[var399 + arg2 - 1 - i_8 + 1] = var396[i_8]
		local var402
	end
	for i_9 = 1, var402 - var399 do
		tbl_7[i_9] = 0
		local var403
	end
	var403[0] = 0
	local var404 = var403
	for i_10 = 0, #var404 do
		({})[i_10] = tbl_19_upvr[var404[i_10]]
		local _
	end
	-- KONSTANTERROR: [19] 16. Error Block 80 end (CF ANALYSIS FAILED)
end
local tbl_6_upvr = {{{1, {26, 19, 2}}, {1, {26, 16, 4}}, {1, {26, 13, 6}}, {1, {26, 9, 8}}}, {{1, {44, 34, 4}}, {1, {44, 28, 8}}, {1, {44, 22, 11}}, {1, {44, 16, 14}}}, {{1, {70, 55, 7}}, {1, {70, 44, 13}}, {2, {35, 17, 9}}, {2, {35, 13, 11}}}, {{1, {100, 80, 10}}, {2, {50, 32, 9}}, {2, {50, 24, 13}}, {4, {25, 9, 8}}}, {{1, {134, 108, 13}}, {2, {67, 43, 12}}, {2, {33, 15, 9}, 2, {34, 16, 9}}, {2, {33, 11, 11}, 2, {34, 12, 11}}}, {{2, {86, 68, 9}}, {4, {43, 27, 8}}, {4, {43, 19, 12}}, {4, {43, 15, 14}}}, {{2, {98, 78, 10}}, {4, {49, 31, 9}}, {2, {32, 14, 9}, 4, {33, 15, 9}}, {4, {39, 13, 13}, 1, {40, 14, 13}}}, {{2, {121, 97, 12}}, {2, {60, 38, 11}, 2, {61, 39, 11}}, {4, {40, 18, 11}, 2, {41, 19, 11}}, {4, {40, 14, 13}, 2, {41, 15, 13}}}, {{2, {146, 116, 15}}, {3, {58, 36, 11}, 2, {59, 37, 11}}, {4, {36, 16, 10}, 4, {37, 17, 10}}, {4, {36, 12, 12}, 4, {37, 13, 12}}}, {{2, {86, 68, 9}, 2, {87, 69, 9}}, {4, {69, 43, 13}, 1, {70, 44, 13}}, {6, {43, 19, 12}, 2, {44, 20, 12}}, {6, {43, 15, 14}, 2, {44, 16, 14}}}, {{4, {101, 81, 10}}, {1, {80, 50, 15}, 4, {81, 51, 15}}, {4, {50, 22, 14}, 4, {51, 23, 14}}, {3, {36, 12, 12}, 8, {37, 13, 12}}}, {{2, {116, 92, 12}, 2, {117, 93, 12}}, {6, {58, 36, 11}, 2, {59, 37, 11}}, {4, {46, 20, 13}, 6, {47, 21, 13}}, {7, {42, 14, 14}, 4, {43, 15, 14}}}, {{4, {133, 107, 13}}, {8, {59, 37, 11}, 1, {60, 38, 11}}, {8, {44, 20, 12}, 4, {45, 21, 12}}, {12, {33, 11, 11}, 4, {34, 12, 11}}}, {{3, {145, 115, 15}, 1, {146, 116, 15}}, {4, {64, 40, 12}, 5, {65, 41, 12}}, {11, {36, 16, 10}, 5, {37, 17, 10}}, {11, {36, 12, 12}, 5, {37, 13, 12}}}, {{5, {109, 87, 11}, 1, {110, 88, 11}}, {5, {65, 41, 12}, 5, {66, 42, 12}}, {5, {54, 24, 15}, 7, {55, 25, 15}}, {11, {36, 12, 12}, 7, {37, 13, 12}}}, {{5, {122, 98, 12}, 1, {123, 99, 12}}, {7, {73, 45, 14}, 3, {74, 46, 14}}, {15, {43, 19, 12}, 2, {44, 20, 12}}, {3, {45, 15, 15}, 13, {46, 16, 15}}}, {{1, {135, 107, 14}, 5, {136, 108, 14}}, {10, {74, 46, 14}, 1, {75, 47, 14}}, {1, {50, 22, 14}, 15, {51, 23, 14}}, {2, {42, 14, 14}, 17, {43, 15, 14}}}, {{5, {150, 120, 15}, 1, {151, 121, 15}}, {9, {69, 43, 13}, 4, {70, 44, 13}}, {17, {50, 22, 14}, 1, {51, 23, 14}}, {2, {42, 14, 14}, 19, {43, 15, 14}}}, {{3, {141, 113, 14}, 4, {142, 114, 14}}, {3, {70, 44, 13}, 11, {71, 45, 13}}, {17, {47, 21, 13}, 4, {48, 22, 13}}, {9, {39, 13, 13}, 16, {40, 14, 13}}}, {{3, {135, 107, 14}, 5, {136, 108, 14}}, {3, {67, 41, 13}, 13, {68, 42, 13}}, {15, {54, 24, 15}, 5, {55, 25, 15}}, {15, {43, 15, 14}, 10, {44, 16, 14}}}, {{4, {144, 116, 14}, 4, {145, 117, 14}}, {17, {68, 42, 13}}, {17, {50, 22, 14}, 6, {51, 23, 14}}, {19, {46, 16, 15}, 6, {47, 17, 15}}}, {{2, {139, 111, 14}, 7, {140, 112, 14}}, {17, {74, 46, 14}}, {7, {54, 24, 15}, 16, {55, 25, 15}}, {34, {37, 13, 12}}}, {{4, {151, 121, 15}, 5, {152, 122, 15}}, {4, {75, 47, 14}, 14, {76, 48, 14}}, {11, {54, 24, 15}, 14, {55, 25, 15}}, {16, {45, 15, 15}, 14, {46, 16, 15}}}, {{6, {147, 117, 15}, 4, {148, 118, 15}}, {6, {73, 45, 14}, 14, {74, 46, 14}}, {11, {54, 24, 15}, 16, {55, 25, 15}}, {30, {46, 16, 15}, 2, {47, 17, 15}}}, {{8, {132, 106, 13}, 4, {133, 107, 13}}, {8, {75, 47, 14}, 13, {76, 48, 14}}, {7, {54, 24, 15}, 22, {55, 25, 15}}, {22, {45, 15, 15}, 13, {46, 16, 15}}}, {{10, {142, 114, 14}, 2, {143, 115, 14}}, {19, {74, 46, 14}, 4, {75, 47, 14}}, {28, {50, 22, 14}, 6, {51, 23, 14}}, {33, {46, 16, 15}, 4, {47, 17, 15}}}, {{8, {152, 122, 15}, 4, {153, 123, 15}}, {22, {73, 45, 14}, 3, {74, 46, 14}}, {8, {53, 23, 15}, 26, {54, 24, 15}}, {12, {45, 15, 15}, 28, {46, 16, 15}}}, {{3, {147, 117, 15}, 10, {148, 118, 15}}, {3, {73, 45, 14}, 23, {74, 46, 14}}, {4, {54, 24, 15}, 31, {55, 25, 15}}, {11, {45, 15, 15}, 31, {46, 16, 15}}}, {{7, {146, 116, 15}, 7, {147, 117, 15}}, {21, {73, 45, 14}, 7, {74, 46, 14}}, {1, {53, 23, 15}, 37, {54, 24, 15}}, {19, {45, 15, 15}, 26, {46, 16, 15}}}, {{5, {145, 115, 15}, 10, {146, 116, 15}}, {19, {75, 47, 14}, 10, {76, 48, 14}}, {15, {54, 24, 15}, 25, {55, 25, 15}}, {23, {45, 15, 15}, 25, {46, 16, 15}}}, {{13, {145, 115, 15}, 3, {146, 116, 15}}, {2, {74, 46, 14}, 29, {75, 47, 14}}, {42, {54, 24, 15}, 1, {55, 25, 15}}, {23, {45, 15, 15}, 28, {46, 16, 15}}}, {{17, {145, 115, 15}}, {10, {74, 46, 14}, 23, {75, 47, 14}}, {10, {54, 24, 15}, 35, {55, 25, 15}}, {19, {45, 15, 15}, 35, {46, 16, 15}}}, {{17, {145, 115, 15}, 1, {146, 116, 15}}, {14, {74, 46, 14}, 21, {75, 47, 14}}, {29, {54, 24, 15}, 19, {55, 25, 15}}, {11, {45, 15, 15}, 46, {46, 16, 15}}}, {{13, {145, 115, 15}, 6, {146, 116, 15}}, {14, {74, 46, 14}, 23, {75, 47, 14}}, {44, {54, 24, 15}, 7, {55, 25, 15}}, {59, {46, 16, 15}, 1, {47, 17, 15}}}, {{12, {151, 121, 15}, 7, {152, 122, 15}}, {12, {75, 47, 14}, 26, {76, 48, 14}}, {39, {54, 24, 15}, 14, {55, 25, 15}}, {22, {45, 15, 15}, 41, {46, 16, 15}}}, {{6, {151, 121, 15}, 14, {152, 122, 15}}, {6, {75, 47, 14}, 34, {76, 48, 14}}, {46, {54, 24, 15}, 10, {55, 25, 15}}, {2, {45, 15, 15}, 64, {46, 16, 15}}}, {{17, {152, 122, 15}, 4, {153, 123, 15}}, {29, {74, 46, 14}, 14, {75, 47, 14}}, {49, {54, 24, 15}, 10, {55, 25, 15}}, {24, {45, 15, 15}, 46, {46, 16, 15}}}, {{4, {152, 122, 15}, 18, {153, 123, 15}}, {13, {74, 46, 14}, 32, {75, 47, 14}}, {48, {54, 24, 15}, 14, {55, 25, 15}}, {42, {45, 15, 15}, 32, {46, 16, 15}}}, {{20, {147, 117, 15}, 4, {148, 118, 15}}, {40, {75, 47, 14}, 7, {76, 48, 14}}, {43, {54, 24, 15}, 22, {55, 25, 15}}, {10, {45, 15, 15}, 67, {46, 16, 15}}}, {{19, {148, 118, 15}, 6, {149, 119, 15}}, {18, {75, 47, 14}, 31, {76, 48, 14}}, {34, {54, 24, 15}, 34, {55, 25, 15}}, {20, {45, 15, 15}, 61, {46, 16, 15}}}}
local tbl_17_upvr = {0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0}
local function arrange_codewords_and_calculate_ec_upvr(arg1, arg2, arg3) -- Line 710, Named "arrange_codewords_and_calculate_ec"
	--[[ Upvalues[3]:
		[1]: binary_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: calculate_error_correction_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var921
	if var921 == "table" then
		var921 = ""
		for i_11 = 1, #arg3 do
			var921 = var921..binary_upvr(arg3[i_11], 8)
		end
	end
	local var922 = tbl_6_upvr[arg1][arg2]
	local tbl_5 = {}
	local tbl_16 = {}
	local var925 = 0
	for i_12 = 1, #var922 / 2 do
		for i_13 = 1, var922[2 * i_12 - 1] do
			local var927 = var922[2 * i_12][1] - var922[2 * i_12][2]
			tbl_5[#tbl_5 + 1] = string.sub(var921, var925 * 8 + 1, (var925 + var922[2 * i_12][2]) * 8)
			tmp_tab = calculate_error_correction_upvr(tbl_5[#tbl_5], var927) -- Setting global
			tmp_str = "" -- Setting global
			for i_14 = 1, #tmp_tab do
				tmp_str ..= binary_upvr(tmp_tab[i_14], 8) -- Setting global
			end
			tbl_16[#tbl_16 + 1] = tmp_str
		end
	end
	local const_number_4 = 1
	repeat
		i_12 = 1
		local var929
		for i_15 = 1, #tbl_5, i_12 do
			i_13 = tbl_5[i_15]
			if const_number_4 < #i_13 then
				i_14 = const_number_4 + 7
				i_13 = string.sub(tbl_5[i_15], const_number_4, i_14)
				var929 = var929..i_13
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		i_12 = #var921
	until #var929 == i_12
	local const_number_3 = 1
	repeat
		i_12 = #tbl_16
		local var931
		for i_16 = 1, i_12 do
			i_13 = #tbl_16[i_16]
			if const_number_3 < i_13 then
				i_13 = var931
				i_14 = const_number_3
				var931 = i_13..string.sub(tbl_16[i_16], i_14, const_number_3 + 7)
				local var932 = var931
			end
		end
		i_12 = #var932
	until i_12 == 0 + var927 * 8
	return var929..var932
end
local function add_position_detection_patterns_upvr(arg1) -- Line 786, Named "add_position_detection_patterns"
	local len = #arg1
	for i_17 = 1, 8 do
		for i_18 = 1, 8 do
			arg1[i_17][i_18] = -2
			arg1[len - 8 + i_17][i_18] = -2
			arg1[i_17][len - 8 + i_18] = -2
		end
	end
	for i_19 = 1, 7 do
		arg1[1][i_19] = 2
		arg1[7][i_19] = 2
		arg1[i_19][1] = 2
		arg1[i_19][7] = 2
		arg1[len][i_19] = 2
		arg1[len - 6][i_19] = 2
		arg1[len - i_19 + 1][1] = 2
		arg1[len - i_19 + 1][7] = 2
		arg1[1][len - i_19 + 1] = 2
		arg1[7][len - i_19 + 1] = 2
		arg1[i_19][len - 6] = 2
		arg1[i_19][len] = 2
	end
	for i_20 = 1, 3 do
		for i_21 = 1, 3 do
			arg1[2 + i_21][i_20 + 2] = 2
			arg1[len - i_21 - 1][i_20 + 2] = 2
			arg1[2 + i_21][len - i_20 - 1] = 2
		end
	end
end
local function add_timing_pattern_upvr(arg1) -- Line 831, Named "add_timing_pattern"
	local const_number = 9
	for i_22 = const_number, #arg1 - 8 do
		if math.fmod(i_22, 2) == 1 then
			arg1[i_22][7] = 2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1[i_22][7] = -2
		end
	end
	for i_23 = const_number, #arg1 - 8 do
		if math.fmod(i_23, 2) == 1 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1[7][i_23] = 2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1[7][i_23] = -2
		end
	end
end
local tbl_18_upvr = {{}, {6, 18}, {6, 22}, {6, 26}, {6, 30}, {6, 34}, {6, 22, 38}, {6, 24, 42}, {6, 26, 46}, {6, 28, 50}, {6, 30, 54}, {6, 32, 58}, {6, 34, 62}, {6, 26, 46, 66}, {6, 26, 48, 70}, {6, 26, 50, 74}, {6, 30, 54, 78}, {6, 30, 56, 82}, {6, 30, 58, 86}, {6, 34, 62, 90}, {6, 28, 50, 72, 94}, {6, 26, 50, 74, 98}, {6, 30, 54, 78, 102}, {6, 28, 54, 80, 106}, {6, 32, 58, 84, 110}, {6, 30, 58, 86, 114}, {6, 34, 62, 90, 118}, {6, 26, 50, 74, 98, 122}, {6, 30, 54, 78, 102, 126}, {6, 26, 52, 78, 104, 130}, {6, 30, 56, 82, 108, 134}, {6, 34, 60, 86, 112, 138}, {6, 30, 58, 86, 114, 142}, {6, 34, 62, 90, 118, 146}, {6, 30, 54, 78, 102, 126, 150}, {6, 24, 50, 76, 102, 128, 154}, {6, 28, 54, 80, 106, 132, 158}, {6, 32, 58, 84, 110, 136, 162}, {6, 26, 54, 82, 110, 138, 166}, {6, 30, 58, 86, 114, 142, 170}}
local function add_alignment_pattern_upvr(arg1) -- Line 873, Named "add_alignment_pattern"
	--[[ Upvalues[1]:
		[1]: tbl_18_upvr (readonly)
	]]
	local var989 = tbl_18_upvr[(#arg1 - 17) / 4]
	for i_24 = 1, #var989 do
		for i_25 = 1, #var989 do
			if i_24 ~= 1 or i_25 ~= 1 or i_24 ~= #var989 or i_25 ~= 1 or i_24 ~= 1 or i_25 ~= #var989 then
				local var990 = var989[i_24] + 1
				local var991 = var989[i_25] + 1
				arg1[var990][var991] = 2
				arg1[var990 + 1][var991] = -2
				arg1[var990 - 1][var991] = -2
				arg1[var990 + 2][var991] = 2
				arg1[var990 - 2][var991] = 2
				arg1[var990][var991 - 2] = 2
				arg1[var990 + 1][var991 - 2] = 2
				arg1[var990 - 1][var991 - 2] = 2
				arg1[var990 + 2][var991 - 2] = 2
				arg1[var990 - 2][var991 - 2] = 2
				arg1[var990][var991 + 2] = 2
				arg1[var990 + 1][var991 + 2] = 2
				arg1[var990 - 1][var991 + 2] = 2
				arg1[var990 + 2][var991 + 2] = 2
				arg1[var990 - 2][var991 + 2] = 2
				arg1[var990][var991 - 1] = -2
				arg1[var990 + 1][var991 - 1] = -2
				arg1[var990 - 1][var991 - 1] = -2
				arg1[var990 + 2][var991 - 1] = 2
				arg1[var990 - 2][var991 - 1] = 2
				arg1[var990][var991 + 1] = -2
				arg1[var990 + 1][var991 + 1] = -2
				arg1[var990 - 1][var991 + 1] = -2
				arg1[var990 + 2][var991 + 1] = 2
				arg1[var990 - 2][var991 + 1] = 2
			end
		end
	end
end
local tbl_13_upvr = {{"111001011110011", "111110110101010", "111100010011101", "110011000101111", "110001100011000", "110110001000001", "110100101110110"}, {"101000100100101", "101111001111100", "101101101001011", "100010111111001", "100000011001110", "100111110010111", "100101010100000"}, {"011000001101000", "011111100110001", "011101000000110", "010010010110100", "010000110000011", "010111011011010", "010101111101101"}, {"001001110111110", "001110011100111", "001100111010000", "000011101100010", "000001001010101", "000110100001100", "000100000111011"}}
local function add_typeinfo_to_matrix_upvr(arg1, arg2, arg3) -- Line 929, Named "add_typeinfo_to_matrix"
	--[[ Upvalues[1]:
		[1]: tbl_13_upvr (readonly)
	]]
	local var1001 = tbl_13_upvr[arg2][arg3]
	for i_26 = 1, 7 do
		if string.sub(var1001, i_26, i_26) == '1' then
			arg1[9][#arg1 - i_26 + 1] = 2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1[9][#arg1 - i_26 + 1] = -2
		end
	end
	if string.sub(var1001, 8, 8) == '1' then
		arg1[9][9] = 2
	else
		arg1[9][9] = -2
	end
	if string.sub(var1001, 9, 9) == '1' then
		arg1[9][8] = 2
	else
		arg1[9][8] = -2
	end
	for i_27 = 10, 15 do
		if string.sub(var1001, i_27, i_27) == '1' then
			arg1[9][16 - i_27] = 2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1[9][16 - i_27] = -2
		end
	end
	for i_28 = 1, 6 do
		if string.sub(var1001, i_28, i_28) == '1' then
			arg1[i_28][9] = 2
		else
			arg1[i_28][9] = -2
		end
	end
	if string.sub(var1001, 7, 7) == '1' then
		arg1[8][9] = 2
	else
		arg1[8][9] = -2
	end
	for i_29 = 8, 15 do
		if string.sub(var1001, i_29, i_29) == '1' then
			arg1[#arg1 - 15 + i_29][9] = 2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1[#arg1 - 15 + i_29][9] = -2
		end
	end
end
local tbl_9_upvr = {"001010010011111000", "001111011010000100", "100110010101100100", "110010110010010100", "011011111101110100", "010001101110001100", "111000100001101100", "101100000110011100", "000101001001111100", "000111101101000010", "101110100010100010", "111010000101010010", "010011001010110010", "011001011001001010", "110000010110101010", "100100110001011010", "001101111110111010", "001000110111000110", "100001111000100110", "110101011111010110", "011100010000110110", "010110000011001110", "111111001100101110", "101011101011011110", "000010100100111110", "101010111001000001", "000011110110100001", "010111010001010001", "111110011110110001", "110100001101001001", "011101000010101001", "001001100101011001", "100000101010111001", "100101100011000101"}
local function add_version_information_upvr(arg1, arg2) -- Line 970, Named "add_version_information"
	--[[ Upvalues[1]:
		[1]: tbl_9_upvr (readonly)
	]]
	if arg2 < 7 then
	else
		local var1005 = tbl_9_upvr[arg2 - 6]
		for i_37 = 1, #var1005 do
			if string.sub(var1005, i_37, i_37) == '1' then
				arg1[#arg1 - 10 + math.fmod(i_37 - 1, 3)][1 + math.floor((i_37 - 1) / 3)] = 2
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				arg1[#arg1 - 10 + math.fmod(i_37 - 1, 3)][1 + math.floor((i_37 - 1) / 3)] = -2
			end
		end
		for i_38 = 1, #var1005 do
			if string.sub(var1005, i_38, i_38) == '1' then
				arg1[1 + math.floor((i_38 - 1) / 3)][#arg1 - 10 + math.fmod(i_38 - 1, 3)] = 2
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				arg1[1 + math.floor((i_38 - 1) / 3)][#arg1 - 10 + math.fmod(i_38 - 1, 3)] = -2
			end
		end
	end
end
local function prepare_matrix_with_mask_upvr(arg1, arg2, arg3) -- Line 998, Named "prepare_matrix_with_mask"
	--[[ Upvalues[5]:
		[1]: add_position_detection_patterns_upvr (readonly)
		[2]: add_timing_pattern_upvr (readonly)
		[3]: add_version_information_upvr (readonly)
		[4]: add_alignment_pattern_upvr (readonly)
		[5]: add_typeinfo_to_matrix_upvr (readonly)
	]]
	local module_4 = {}
	local var1011 = arg1 * 4 + 17
	for i_30 = 1, var1011 do
		module_4[i_30] = {}
		for i_31 = 1, var1011 do
			module_4[i_30][i_31] = 0
		end
	end
	add_position_detection_patterns_upvr(module_4)
	add_timing_pattern_upvr(module_4)
	add_version_information_upvr(module_4, arg1)
	module_4[9][var1011 - 7] = 2
	add_alignment_pattern_upvr(module_4)
	add_typeinfo_to_matrix_upvr(module_4, arg2, arg3)
	return module_4
end
local function get_pixel_with_mask_upvr(arg1, arg2, arg3, arg4) -- Line 1035, Named "get_pixel_with_mask"
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	if arg1 == -1 then
		-- KONSTANTWARNING: GOTO [163] #117
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 50 start (CF ANALYSIS FAILED)
	if arg1 == 0 then
		if math.fmod((arg2 - 1) + (arg3 - 1), 2) == 0 then
			-- KONSTANTWARNING: GOTO [163] #117
		end
		-- KONSTANTWARNING: GOTO [163] #117
	end
	-- KONSTANTERROR: [6] 6. Error Block 50 end (CF ANALYSIS FAILED)
end
local function get_next_free_positions_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 1074, Named "get_next_free_positions"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl = {}
	local var1019
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 52 start (CF ANALYSIS FAILED)
	if var1019 == "left" then
		if arg1[arg2 - 1][arg3] == 0 then
			local tbl_11 = {arg2 - 1}
			tbl_11[2] = arg3
			tbl[#tbl + 1] = tbl_11
			var1019 = "right"
			if arg4 == "up" then
			else
				local var1021
			end
			-- KONSTANTWARNING: GOTO [77] #61
		end
	end
	if var1019 == "right" and arg1[arg2 - 1][var1021] == 0 then
		tbl[#tbl + 1] = {arg2 - 1, var1021}
		if arg4 == "up" then
			var1021 -= 1
		else
			var1021 += 1
		end
	elseif arg4 == "up" then
		var1021 -= 1
	else
		var1021 += 1
	end
	if var1021 < 1 or #arg1 < var1021 then
		if arg2 - 2 == 7 then
		end
		if arg4 == "up" then
		else
		end
	end
	-- KONSTANTERROR: [25] 20. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [94.329810]
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2, arg3) -- Line 1124, Named "add_data_to_matrix"
	--[[ Upvalues[2]:
		[1]: get_next_free_positions_upvr (readonly)
		[2]: get_pixel_with_mask_upvr (readonly)
	]]
	size = #arg1 -- Setting global
	local var1024_upvw = 0
	local var1025_upvw
	local size_3_upvw = size
	local size_8_upvw = size
	local var1028_upvw = "up"
	local var1029_upvw
	local var1030_upvw
	local var1031_upvw
	string.gsub(arg2, ".?.?.?.?.?.?.?.?", function(arg1_10) -- Line 1131
		--[[ Upvalues[12]:
			[1]: var1024_upvw (read and write)
			[2]: var1025_upvw (read and write)
			[3]: size_3_upvw (read and write)
			[4]: size_8_upvw (read and write)
			[5]: var1028_upvw (read and write)
			[6]: get_next_free_positions_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: arg3 (readonly)
			[9]: var1029_upvw (read and write)
			[10]: var1030_upvw (read and write)
			[11]: var1031_upvw (read and write)
			[12]: get_pixel_with_mask_upvr (copied, readonly)
		]]
		var1024_upvw += 1
		local get_next_free_positions_result1, get_next_free_positions_upvr_result2_2, get_next_free_positions_result3_2, get_next_free_positions_result4_2 = get_next_free_positions_upvr(arg1, size_3_upvw, size_8_upvw, var1028_upvw, arg1_10, arg3)
		var1025_upvw = get_next_free_positions_result1
		size_3_upvw = get_next_free_positions_upvr_result2_2
		size_8_upvw = get_next_free_positions_result3_2
		var1028_upvw = get_next_free_positions_result4_2
		for i_32 = 1, #arg1_10 do
			var1029_upvw = var1025_upvw[i_32][1]
			var1030_upvw = var1025_upvw[i_32][2]
			var1031_upvw = get_pixel_with_mask_upvr(arg3, var1029_upvw, var1030_upvw, string.sub(arg1_10, i_32, i_32))
			if debugging then
				arg1[var1029_upvw][var1030_upvw] = var1031_upvw * (i_32 + 10)
			else
				arg1[var1029_upvw][var1030_upvw] = var1031_upvw
			end
		end
	end)
end
local function calculate_penalty_upvr(arg1) -- Line 1158, Named "calculate_penalty"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var1038
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 44. Error Block 102 start (CF ANALYSIS FAILED)
	if 5 <= var1038 then
	end
	-- KONSTANTERROR: [47] 44. Error Block 102 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 14. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 14. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2, arg3, arg4) -- Line 1280, Named "get_matrix_and_penalty"
	--[[ Upvalues[4]:
		[1]: prepare_matrix_with_mask_upvr (readonly)
		[2]: get_next_free_positions_upvr (readonly)
		[3]: get_pixel_with_mask_upvr (readonly)
		[4]: calculate_penalty_upvr (readonly)
	]]
	local prepare_matrix_with_mask_result1_upvr = prepare_matrix_with_mask_upvr(arg1, arg2, arg4)
	size = #prepare_matrix_with_mask_result1_upvr -- Setting global
	local var1041_upvw = 0
	local var1042_upvw
	local size_7_upvw = size
	local size_9_upvw = size
	local var1045_upvw = "up"
	local var1046_upvw
	local var1047_upvw
	local var1048_upvw
	string.gsub(arg3, ".?.?.?.?.?.?.?.?", function(arg1_11) -- Line 1131
		--[[ Upvalues[12]:
			[1]: var1041_upvw (read and write)
			[2]: var1042_upvw (read and write)
			[3]: size_7_upvw (read and write)
			[4]: size_9_upvw (read and write)
			[5]: var1045_upvw (read and write)
			[6]: get_next_free_positions_upvr (copied, readonly)
			[7]: prepare_matrix_with_mask_result1_upvr (readonly)
			[8]: arg4 (readonly)
			[9]: var1046_upvw (read and write)
			[10]: var1047_upvw (read and write)
			[11]: var1048_upvw (read and write)
			[12]: get_pixel_with_mask_upvr (copied, readonly)
		]]
		var1041_upvw += 1
		local get_next_free_positions_result1_3, get_next_free_positions_upvr_result2, get_next_free_positions_result3_4, get_next_free_positions_result4_4 = get_next_free_positions_upvr(prepare_matrix_with_mask_result1_upvr, size_7_upvw, size_9_upvw, var1045_upvw, arg1_11, arg4)
		var1042_upvw = get_next_free_positions_result1_3
		size_7_upvw = get_next_free_positions_upvr_result2
		size_9_upvw = get_next_free_positions_result3_4
		var1045_upvw = get_next_free_positions_result4_4
		for i_33 = 1, #arg1_11 do
			var1046_upvw = var1042_upvw[i_33][1]
			var1047_upvw = var1042_upvw[i_33][2]
			var1048_upvw = get_pixel_with_mask_upvr(arg4, var1046_upvw, var1047_upvw, string.sub(arg1_11, i_33, i_33))
			if debugging then
				prepare_matrix_with_mask_result1_upvr[var1046_upvw][var1047_upvw] = var1048_upvw * (i_33 + 10)
			else
				prepare_matrix_with_mask_result1_upvr[var1046_upvw][var1047_upvw] = var1048_upvw
			end
		end
	end)
	return prepare_matrix_with_mask_result1_upvr, calculate_penalty_upvr(prepare_matrix_with_mask_result1_upvr)
end
local function get_matrix_with_lowest_penalty_upvr(arg1, arg2, arg3) -- Line 1290, Named "get_matrix_with_lowest_penalty"
	--[[ Upvalues[4]:
		[1]: prepare_matrix_with_mask_upvr (readonly)
		[2]: get_next_free_positions_upvr (readonly)
		[3]: get_pixel_with_mask_upvr (readonly)
		[4]: calculate_penalty_upvr (readonly)
	]]
	local prepare_matrix_with_mask_result1_upvr_3 = prepare_matrix_with_mask_upvr(arg1, arg2, 0)
	size = #prepare_matrix_with_mask_result1_upvr_3 -- Setting global
	local var1058_upvw = 0
	local var1059_upvw
	local size_2_upvw = size
	local size_5_upvw = size
	local var1062_upvw = "up"
	local const_number_2_upvr = 0
	local var1064_upvw
	local var1065_upvw
	local var1066_upvw
	string.gsub(arg3, ".?.?.?.?.?.?.?.?", function(arg1_12) -- Line 1131
		--[[ Upvalues[12]:
			[1]: var1058_upvw (read and write)
			[2]: var1059_upvw (read and write)
			[3]: size_2_upvw (read and write)
			[4]: size_5_upvw (read and write)
			[5]: var1062_upvw (read and write)
			[6]: get_next_free_positions_upvr (copied, readonly)
			[7]: prepare_matrix_with_mask_result1_upvr_3 (readonly)
			[8]: const_number_2_upvr (readonly)
			[9]: var1064_upvw (read and write)
			[10]: var1065_upvw (read and write)
			[11]: var1066_upvw (read and write)
			[12]: get_pixel_with_mask_upvr (copied, readonly)
		]]
		var1058_upvw += 1
		local get_next_free_positions_result1_2, get_next_free_positions_result2, get_next_free_positions_result3, get_next_free_positions_result4_3 = get_next_free_positions_upvr(prepare_matrix_with_mask_result1_upvr_3, size_2_upvw, size_5_upvw, var1062_upvw, arg1_12, const_number_2_upvr)
		var1059_upvw = get_next_free_positions_result1_2
		size_2_upvw = get_next_free_positions_result2
		size_5_upvw = get_next_free_positions_result3
		var1062_upvw = get_next_free_positions_result4_3
		for i_34 = 1, #arg1_12 do
			var1064_upvw = var1059_upvw[i_34][1]
			var1065_upvw = var1059_upvw[i_34][2]
			var1066_upvw = get_pixel_with_mask_upvr(const_number_2_upvr, var1064_upvw, var1065_upvw, string.sub(arg1_12, i_34, i_34))
			if debugging then
				prepare_matrix_with_mask_result1_upvr_3[var1064_upvw][var1065_upvw] = var1066_upvw * (i_34 + 10)
			else
				prepare_matrix_with_mask_result1_upvr_3[var1064_upvw][var1065_upvw] = var1066_upvw
			end
		end
	end)
	prepare_matrix_with_mask_result1_upvr_3 = 1
	local var1072
	for i_35_upvr = prepare_matrix_with_mask_result1_upvr_3, 7 do
		local prepare_matrix_with_mask_result1_upvr_2 = prepare_matrix_with_mask_upvr(arg1, arg2, i_35_upvr)
		size = #prepare_matrix_with_mask_result1_upvr_2 -- Setting global
		local var1075_upvw = 0
		local var1076_upvw
		local size_6_upvw = size
		local size_4_upvw = size
		local var1079_upvw = "up"
		local var1080_upvw
		local var1081_upvw
		local var1082_upvw
		string.gsub(arg3, ".?.?.?.?.?.?.?.?", function(arg1_13) -- Line 1131
			--[[ Upvalues[12]:
				[1]: var1075_upvw (read and write)
				[2]: var1076_upvw (read and write)
				[3]: size_6_upvw (read and write)
				[4]: size_4_upvw (read and write)
				[5]: var1079_upvw (read and write)
				[6]: get_next_free_positions_upvr (copied, readonly)
				[7]: prepare_matrix_with_mask_result1_upvr_2 (readonly)
				[8]: i_35_upvr (readonly)
				[9]: var1080_upvw (read and write)
				[10]: var1081_upvw (read and write)
				[11]: var1082_upvw (read and write)
				[12]: get_pixel_with_mask_upvr (copied, readonly)
			]]
			var1075_upvw += 1
			local get_next_free_positions_result1_4, get_next_free_positions_result2_2, get_next_free_positions_result3_3, get_next_free_positions_result4 = get_next_free_positions_upvr(prepare_matrix_with_mask_result1_upvr_2, size_6_upvw, size_4_upvw, var1079_upvw, arg1_13, i_35_upvr)
			var1076_upvw = get_next_free_positions_result1_4
			size_6_upvw = get_next_free_positions_result2_2
			size_4_upvw = get_next_free_positions_result3_3
			var1079_upvw = get_next_free_positions_result4
			for i_36 = 1, #arg1_13 do
				var1080_upvw = var1076_upvw[i_36][1]
				var1081_upvw = var1076_upvw[i_36][2]
				var1082_upvw = get_pixel_with_mask_upvr(i_35_upvr, var1080_upvw, var1081_upvw, string.sub(arg1_13, i_36, i_36))
				if debugging then
					prepare_matrix_with_mask_result1_upvr_2[var1080_upvw][var1081_upvw] = var1082_upvw * (i_36 + 10)
				else
					prepare_matrix_with_mask_result1_upvr_2[var1080_upvw][var1081_upvw] = var1082_upvw
				end
			end
		end)
		if calculate_penalty_upvr(prepare_matrix_with_mask_result1_upvr_2) < calculate_penalty_upvr(prepare_matrix_with_mask_result1_upvr_3) then
		end
	end
	return nil
end
return {
	encode_string_numeric = function(arg1) -- Line 339, Named "encode_string_numeric"
		--[[ Upvalues[1]:
			[1]: binary_upvr (readonly)
		]]
		local var329_upvw = ""
		local var331_upvw
		string.gsub(arg1, "..?.?", function(arg1_3) -- Line 342
			--[[ Upvalues[3]:
				[1]: var331_upvw (read and write)
				[2]: var329_upvw (read and write)
				[3]: binary_upvr (copied, readonly)
			]]
			var331_upvw = tonumber(arg1_3)
			if #arg1_3 == 3 then
				var329_upvw = var329_upvw..binary_upvr(var331_upvw, 10)
			else
				if #arg1_3 == 2 then
					var329_upvw = var329_upvw..binary_upvr(var331_upvw, 7)
					return
				end
				var329_upvw = var329_upvw..binary_upvr(var331_upvw, 4)
			end
		end)
		return var329_upvw
	end;
	encode_string_ascii = function(arg1) -- Line 357, Named "encode_string_ascii"
		--[[ Upvalues[2]:
			[1]: tbl_14_upvr (readonly)
			[2]: binary_upvr (readonly)
		]]
		local var332_upvw = ""
		local var334_upvw
		local var335_upvw
		local var336_upvw
		string.gsub(arg1, "..?", function(arg1_4) -- Line 361
			--[[ Upvalues[6]:
				[1]: var334_upvw (read and write)
				[2]: tbl_14_upvr (copied, readonly)
				[3]: var335_upvw (read and write)
				[4]: var336_upvw (read and write)
				[5]: var332_upvw (read and write)
				[6]: binary_upvr (copied, readonly)
			]]
			if #arg1_4 == 2 then
				var334_upvw = tbl_14_upvr[string.byte(string.sub(arg1_4, 1, 1))]
				var335_upvw = tbl_14_upvr[string.byte(string.sub(arg1_4, 2, 2))]
				var336_upvw = var334_upvw * 45 + var335_upvw
				var332_upvw = var332_upvw..binary_upvr(var336_upvw, 11)
			else
				var336_upvw = tbl_14_upvr[string.byte(arg1_4)]
				var332_upvw = var332_upvw..binary_upvr(var336_upvw, 6)
			end
		end)
		return var332_upvw
	end;
	qrcode = function(arg1, arg2, arg3) -- Line 1314, Named "qrcode"
		--[[ Upvalues[9]:
			[1]: get_version_eclevel_upvr (readonly)
			[2]: get_length_upvr (readonly)
			[3]: binary_upvr (readonly)
			[4]: tbl_14_upvr (readonly)
			[5]: encode_string_binary_upvr (readonly)
			[6]: add_pad_data_upvr (readonly)
			[7]: arrange_codewords_and_calculate_ec_upvr (readonly)
			[8]: tbl_17_upvr (readonly)
			[9]: get_matrix_with_lowest_penalty_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
		if string.match(arg1, "^[0-9]+$") then
			-- KONSTANTWARNING: GOTO [33] #30
		end
		-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 15. Error Block 25 start (CF ANALYSIS FAILED)
		if string.match(arg1, "^[0-9A-Z $%%*./:+-]+$") then
			-- KONSTANTWARNING: GOTO [33] #30
		end
		-- KONSTANTERROR: [15] 15. Error Block 25 end (CF ANALYSIS FAILED)
	end;
	binary = binary_upvr;
	get_mode = function(arg1) -- Line 177, Named "get_mode"
		if string.match(arg1, "^[0-9]+$") then
			return 1
		end
		if string.match(arg1, "^[0-9A-Z $%%*./:+-]+$") then
			return 2
		end
		do
			return 4
		end
		assert(false, "never reached")
		return nil
	end;
	get_length = get_length_upvr;
	add_pad_data = add_pad_data_upvr;
	get_generator_polynominal_adjusted = get_generator_polynominal_adjusted_upvr;
	get_pixel_with_mask = get_pixel_with_mask_upvr;
	get_version_eclevel_mode_bistringlength = function(arg1, arg2, arg3) -- Line 303, Named "get_version_eclevel_mode_bistringlength"
		--[[ Upvalues[3]:
			[1]: get_version_eclevel_upvr (readonly)
			[2]: get_length_upvr (readonly)
			[3]: binary_upvr (readonly)
		]]
		-- KONSTANTERROR: Failed to generate AST for function `get_version_eclevel_mode_bistringlength`:
K:0: attempt to index nil with 'reads'
Traceback:
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K
K

	end;
	remainder = tbl_17_upvr;
	arrange_codewords_and_calculate_ec = arrange_codewords_and_calculate_ec_upvr;
	calculate_error_correction = calculate_error_correction_upvr;
	convert_bitstring_to_bytes = function(arg1) -- Line 496, Named "convert_bitstring_to_bytes"
		local module_2_upvr = {}
		local function _(arg1_8) -- Line 498
			--[[ Upvalues[1]:
				[1]: module_2_upvr (readonly)
			]]
			module_2_upvr[#module_2_upvr + 1] = tonumber(arg1_8, 2)
		end
		return module_2_upvr
	end;
	bit_xor = bit_xor_upvr;
}