-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:18
-- Luau version 6, Types version 3
-- Time taken: 0.011227 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module_6_upvr = {}
local PRINT_DEBUG_STATEMENTS_upvr = require(script.Parent.InternalConfig).PRINT_DEBUG_STATEMENTS
local function _() -- Line 13, Named "getRemotesFolder"
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	return ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes")
end
function module_6_upvr.pprint(...) -- Line 17
	--[[ Upvalues[1]:
		[1]: PRINT_DEBUG_STATEMENTS_upvr (readonly)
	]]
	if PRINT_DEBUG_STATEMENTS_upvr then
		print(...)
	end
end
function module_6_upvr.debug_warn(...) -- Line 23
	--[[ Upvalues[1]:
		[1]: PRINT_DEBUG_STATEMENTS_upvr (readonly)
	]]
	if PRINT_DEBUG_STATEMENTS_upvr then
		warn(...)
	end
end
function module_6_upvr.startsWith(arg1, arg2) -- Line 29
	local var4
	if arg1:sub(1, #arg2) ~= arg2 then
		var4 = false
	else
		var4 = true
	end
	return var4
end
function module_6_upvr.endsWith(arg1, arg2) -- Line 33
	local var5
	if arg1:sub(#arg1 - #arg2 + 1) ~= arg2 then
		var5 = false
	else
		var5 = true
	end
	return var5
end
function module_6_upvr.toLocaleNumber(arg1) -- Line 39
	return string.format("%0.0f", arg1):gsub("(%d)(%d%d%d)$", function(arg1_2, arg2) -- Line 41
		return arg1_2..','..arg2
	end)
end
function module_6_upvr.reverse(arg1) -- Line 46
	local module_4 = {}
	for i = #arg1, 1, -1 do
		module_4[#module_4 + 1] = arg1[i]
	end
	return module_4
end
function module_6_upvr.search(arg1, arg2) -- Line 55
	for _, v in ipairs(arg1) do
		if arg2(v) then
			return v
		end
	end
	return nil
end
function module_6_upvr.values(arg1, arg2) -- Line 65
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_8, pairs_result2_7, pairs_result3_4 = pairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 23. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 23. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 11 start (CF ANALYSIS FAILED)
	if arg2 then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.8]
		if nil then
			-- KONSTANTWARNING: GOTO [28] #23
		end
	else
	end
	-- KONSTANTERROR: [7] 6. Error Block 11 end (CF ANALYSIS FAILED)
end
function module_6_upvr.find(arg1, arg2) -- Line 80
	for i_3, v_2 in ipairs(arg1) do
		if arg2(v_2) then
			return i_3
		end
	end
	return nil
end
function module_6_upvr.tableFilter(arg1, arg2) -- Line 90
	for i_4, v_3 in pairs(arg1) do
		if arg2(v_3) then
			({})[i_4] = v_3
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_6_upvr.sortByKey(arg1, arg2) -- Line 102
	local var29_upvw
	if type(arg2) == "string" then
		function var29_upvw(arg1_3) -- Line 105
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			return arg1_3[arg2]
		end
	else
		var29_upvw = arg2
	end
	table.sort(arg1, function(arg1_4, arg2_2) -- Line 112
		--[[ Upvalues[1]:
			[1]: var29_upvw (read and write)
		]]
		local var31 = arg2_2
		if var29_upvw(arg1_4) >= var29_upvw(var31) then
			var31 = false
		else
			var31 = true
		end
		return var31
	end)
	return arg1
end
module_6_upvr.sort = module_6_upvr.sortByKey
function module_6_upvr.filter(arg1, arg2) -- Line 124
	for _, v_4 in ipairs(arg1) do
		if arg2(v_4) then
			table.insert({}, v_4)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_6_upvr.findFirstAncestorOfClass(arg1, arg2) -- Line 136
	local var37
	while not var37:IsA(arg2) do
		var37 = var37.Parent
		if var37 == game then
			return nil
		end
	end
	return var37
end
function module_6_upvr.getTextColor(arg1) -- Line 150
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var38
	if type(arg1) == "string" then
		var38 = Color3.fromHex(var38)
	end
	local R = var38.R
	local G = var38.G
	local B = var38.B
	if R <= 0.04045 then
		R /= 12.92
	else
		R = ((R + 0.055) / 1.055) ^ 2.4
	end
	if G <= 0.04045 then
	else
	end
	if B <= 0.04045 then
	else
	end
	if 0.25 < 0.2126 * R + 0.7152 * ((G / 12.92 + 0.055) / 1.055) ^ 2.4 + 0.0722 * ((B / 12.92 + 0.055) / 1.055) ^ 2.4 then
		return Color3.new(0, 0, 0)
	end
	return Color3.new(1, 1, 1)
end
local Promise_upvr = require(script.Promise)
function module_6_upvr.asyncFilter(arg1, arg2) -- Line 171
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_5, arg2_3) -- Line 172
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		local tbl = {}
		for _, v_5_upvr in ipairs(arg1) do
			table.insert(tbl, Promise_upvr.try(function() -- Line 176
				--[[ Upvalues[2]:
					[1]: arg2 (copied, readonly)
					[2]: v_5_upvr (readonly)
				]]
				return arg2(v_5_upvr)
			end))
		end
		Promise_upvr.all(tbl):andThen(function(arg1_6) -- Line 182
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_5 (readonly)
			]]
			for i_7, v_6 in ipairs(arg1) do
				if arg1_6[i_7] then
					table.insert({}, v_6)
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1_5({})
		end):catch(arg2_3)
	end)
end
function module_6_upvr.strip(arg1, arg2) -- Line 197
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if module_6_upvr.endsWith(arg1, arg2) then
		return string.sub(arg1, 1, #arg1 - #arg2)
	end
	return arg1
end
function module_6_upvr.count(arg1, arg2) -- Line 205
	if not arg1 then
		return 0
	end
	for _, v_7 in pairs(arg1) do
		if arg2(v_7) then
		end
	end
	return 0 + 1
end
function module_6_upvr.sum(arg1, arg2) -- Line 221
	if not arg1 then
		return 0
	end
	for _, _ in pairs(arg1) do
		local var74
	end
	return var74
end
function module_6_upvr.map(arg1, arg2) -- Line 235
	local module_7 = {}
	for i_10, v_9 in pairs(arg1) do
		module_7[i_10] = arg2(v_9, i_10, arg1)
	end
	return module_7
end
function module_6_upvr.callWithRetry(arg1, arg2) -- Line 246
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local const_number = 1
	local var84
	while not false and const_number < arg2 do
		local pcall_result1, pcall_result2 = pcall(arg1)
		local var87 = pcall_result1
		var84 = pcall_result2
		if not var87 then
			print("[SuperBiz] Retrying failed function call: "..tostring(var84))
			module_6_upvr.pprint(debug.traceback())
			task.wait(const_number * 2)
		end
	end
	return var84, var87
end
function module_6_upvr.merge(arg1, arg2) -- Line 266
	for i_11, v_10 in pairs(arg2) do
		arg1[i_11] = v_10
	end
	return arg1
end
function module_6_upvr.copyTable(arg1) -- Line 274
	local module_5 = {}
	for i_12, v_11 in arg1 do
		module_5[i_12] = v_11
	end
	return module_5
end
function module_6_upvr.deepCopy(arg1) -- Line 282
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local module_2 = {}
	for i_13, v_12 in pairs(arg1) do
		if type(v_12) == "table" then
			v_12 = module_6_upvr.deepCopy(v_12)
		end
		module_2[i_13] = v_12
	end
	return module_2
end
function module_6_upvr.hasSameKeys(arg1, arg2) -- Line 293
	for i_14, _ in pairs(arg1) do
		if not arg2[i_14] then
			return false
		end
	end
	for i_15, _ in pairs(arg2) do
		if not arg1[i_15] then
			return false
		end
	end
	return true
end
function module_6_upvr.getTableType(arg1) -- Line 309
	if next(arg1) == nil then return end
	for i_16, _ in pairs(arg1) do
		if typeof(i_16) ~= "number" or typeof(i_16) == "number" and (i_16 % 1 ~= 0 or i_16 < 0) then
			return "Dictionary"
		end
	end
	return "Array"
end
function module_6_upvr.getArraySize(arg1) -- Line 322
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local any_getTableType_result1 = module_6_upvr.getTableType(arg1)
	if any_getTableType_result1 == "Array" then
		do
			return #arg1
		end
		local var122
	end
	if any_getTableType_result1 == "Dictionary" then
		var122 = 0
		for _ in pairs(arg1) do
			var122 += 1
		end
		return var122
	end
	return 0
end
function module_6_upvr.concat(...) -- Line 337
	local module_9 = {}
	for _, v_16 in ipairs({...}) do
		for _, v_17 in ipairs(v_16) do
			table.insert(module_9, v_17)
		end
	end
	return module_9
end
function module_6_upvr.defaultdict(arg1, arg2) -- Line 350
	local module_8 = {}
	setmetatable(module_8, {
		__index = function(arg1_7, arg2_4) -- Line 353, Named "__index"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not rawget(arg1_7, arg2_4) then
				rawset(arg1_7, arg2_4, arg1())
			end
			return rawget(arg1_7, arg2_4)
		end;
	})
	if arg2 then
		for i_20, v_18 in pairs(arg2) do
			module_8[i_20] = v_18
		end
	end
	return module_8
end
function module_6_upvr.chunk(arg1, arg2) -- Line 371
	local module_3 = {}
	for i_21, v_19 in ipairs(arg1) do
		local ceiled = math.ceil(i_21 / arg2)
		if not module_3[ceiled] then
			table.insert(module_3, {})
		end
		table.insert(module_3[ceiled], v_19)
	end
	return module_3
end
function module_6_upvr.isVisible(arg1, arg2) -- Line 387
	local var158 = false
	if arg1.AbsolutePosition.Y < arg2.AbsolutePosition.Y + arg2.AbsoluteSize.Y then
		if arg2.AbsolutePosition.Y >= arg1.AbsolutePosition.Y + arg1.AbsoluteSize.Y then
			var158 = false
		else
			var158 = true
		end
	end
	return var158
end
function module_6_upvr.getAncestor(arg1, arg2) -- Line 396
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	if arg2 == 1 then
		if not arg1 or not arg1.Parent then
		end
		return nil
	end
	if not arg1.Parent or not module_6_upvr.getAncestor(arg1.Parent, arg2 - 1) then
	end
	return nil
end
local tbl_2_upvr = {}
local var160_upvr = require(script.Parent.ConfigReader):read("RaycastFilterList")()
function module_6_upvr.appendToRaycastFilterList(arg1) -- Line 406
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: var160_upvr (readonly)
	]]
	table.insert(tbl_2_upvr, arg1)
	require(game.ReplicatedStorage.BloxbizConfig).RaycastFilterList = function() -- Line 410
		--[[ Upvalues[2]:
			[1]: var160_upvr (copied, readonly)
			[2]: tbl_2_upvr (copied, readonly)
		]]
		local module = {}
		for _, v_20 in pairs(var160_upvr) do
			table.insert(module, v_20)
		end
		for _, v_21 in pairs(tbl_2_upvr) do
			table.insert(module, v_21)
		end
		return module
	end
end
local RunService_upvr = game:GetService("RunService")
function module_6_upvr.getAdUsingBloxbizAdId(arg1) -- Line 425
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	local tonumber_result1 = tonumber(arg1)
	local var183 = false
	if tonumber_result1 ~= nil then
		if 0 >= tonumber_result1 then
			var183 = false
		else
			var183 = true
		end
	end
	if not var183 then
	else
		local var184
		if RunService_upvr:IsClient() then
			var184 = ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes").getAdStorage:InvokeServer()
		else
			var184 = require(script.Parent.AdFilter):GetAllEnabledAds()
		end
		for _, v_22 in pairs(var184) do
			if tonumber(arg1) == tonumber(v_22.bloxbiz_ad_id) then
				return v_22
			end
		end
	end
end
return module_6_upvr