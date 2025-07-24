-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:05
-- Luau version 6, Types version 3
-- Time taken: 0.015700 seconds

local Parent = script.Parent.Parent
local HttpService_upvr = game:GetService("HttpService")
local module = {}
local invariant_upvr = require(Parent.jsUtils.invariant)
local function elementsThatOverlapOffsets_upvr(arg1, arg2, arg3) -- Line 26, Named "elementsThatOverlapOffsets"
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local module_3 = {}
	for i = 1, arg2 do
		local arg3_result1_2 = arg3(i)
		for i_2 = 1, #arg1 do
			if module_3[i_2] == nil and arg1[i_2] <= arg3_result1_2.offset + arg3_result1_2.length then
				module_3[i_2] = i
				local var19 = 0 + 1
				if i_2 == #arg1 then
					local var20
					if var19 ~= #arg1 then
						if var19 ~= #arg1 then
							var20 = false
						else
							var20 = true
						end
						invariant_upvr(var20, "bad offsets input, should be in increasing order: %s", HttpService_upvr:JSONEncode(arg1))
					end
					return module_3
				end
			end
		end
	end
	return module_3
end
module.elementsThatOverlapOffsets = elementsThatOverlapOffsets_upvr
function module.newRangeCount(arg1, arg2) -- Line 65
	return arg2.last - arg2.first + 1 - math.max(0, math.min(arg2.last, arg1.last) + 1 - math.max(arg2.first, arg1.first))
end
local Error_upvr = require(Parent.Parent.LuauPolyfill).Error
function module.computeWindowedRenderLimits(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 82
	--[[ Upvalues[3]:
		[1]: elementsThatOverlapOffsets_upvr (readonly)
		[2]: Error_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local arg2_result1_2 = arg2(arg1)
	local var68
	if arg2_result1_2 == 0 then
		return arg5
	end
	local velocity_2 = arg7.velocity
	local visibleLength_2 = arg7.visibleLength
	local maximum_6 = math.max(0, arg7.offset)
	if 1 < velocity_2 then
	elseif velocity_2 < -1 then
	else
	end
	var68 = 0.5 * (arg4 - 1) * visibleLength_2
	local maximum_5 = math.max(0, maximum_6 - var68)
	var68 = maximum_6 + visibleLength_2 + 0.5 * (arg4 - 1) * visibleLength_2
	var68 = arg6(arg2_result1_2)
	if var68.offset < maximum_5 then
		var68 = {}
		var68.first = math.max(1, arg2_result1_2 - arg3)
		var68.last = arg2_result1_2
		return var68
	end
	local tbl_9 = {maximum_5, maximum_6, maximum_6 + visibleLength_2, math.max(0, var68)}
	var68 = table.unpack(elementsThatOverlapOffsets_upvr(tbl_9, arg2_result1_2, arg6), 1, 4)
	local unpacked_value_1_2, unpacked_value_2_2, unpacked_value_3_3, unpacked_value_4 = table.unpack(elementsThatOverlapOffsets_upvr(tbl_9, arg2_result1_2, arg6), 1, 4)
	if unpacked_value_1_2 == nil then
		unpacked_value_1_2 = 1
	end
	if unpacked_value_2_2 == nil then
	end
	if unpacked_value_4 == nil then
	end
	if unpacked_value_3_3 == nil then
	end
	local tbl_3 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.first = math.max(1, unpacked_value_1_2)
	tbl_3.last = math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1)
	local var81
	while true do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		if math.max(1, unpacked_value_1_2) > unpacked_value_1_2 or arg2_result1_2 <= math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) then break end
		if arg3 > tbl_3.last - tbl_3.first + 1 - math.max(0, math.min(tbl_3.last, arg5.last) + 1 - math.max(tbl_3.first, arg5.first)) then
			var81 = false
		else
			var81 = true
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if math.max(1, unpacked_value_1_2) > arg5.first then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if arg5.last >= math.max(1, unpacked_value_1_2) then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
		end
		local var83 = false
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if unpacked_value_1_2 < math.max(1, unpacked_value_1_2) then
			var83 = not var81
			if not var83 then
				var83 = not true
			end
		end
		local var84 = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg5.last > math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) >= arg5.first then
				var84 = false
			else
				var84 = true
			end
		end
		local var85 = false
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) < arg2_result1_2 then
			var85 = not var81
			if not var85 then
				var85 = not var84
			end
		end
		local function INLINED_19() -- Internal function, doesn't exist in bytecode
			local var86
			return var85
		end
		if not var81 or var83 or not INLINED_19() then break end
		if var83 and ("none" ~= "after" or not var85 or not var84) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				var86 += 1
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		local function INLINED_20() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return "none" ~= "before"
		end
		local function INLINED_21() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return true
		end
		if var85 and (INLINED_20() or not var83 or not INLINED_21()) then
			if var84 then
				var86 += 1
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
	local function INLINED_22() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var81 = 1
		return var81 > math.max(1, unpacked_value_1_2) - 1
	end
	local function INLINED_23() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) + 1 > arg2_result1_2
	end
	local function INLINED_24() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return unpacked_value_1_2 > math.max(1, unpacked_value_1_2) - 1
	end
	local function INLINED_25() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		return math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) + 1 > arg2_result1_2
	end
	local function INLINED_26() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var81 = tbl_3.first
		return math.max(1, unpacked_value_1_2) - 1 > var81
	end
	local function INLINED_27() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var81 = tbl_3.last
		return var81 > math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) + 1
	end
	if math.max(1, unpacked_value_1_2) - 1 > math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) + 1 or INLINED_22() or INLINED_23() or INLINED_24() or INLINED_25() or INLINED_26() or INLINED_27() then
		var81 = error
		local tbl_5 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.first = math.max(1, unpacked_value_1_2) - 1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.last = math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) + 1
		tbl_5.itemCount = arg2_result1_2
		tbl_5.overscanFirst = unpacked_value_1_2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.overscanLast = arg2_result1_2
		tbl_5.visible = tbl_3
		var81(Error_upvr.new("Bad window calculation "..HttpService_upvr:JSONEncode(tbl_5)))
	end
	var81 = {}
	local var88 = var81
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var88.first = math.max(1, unpacked_value_1_2) - 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var88.last = math.min(arg2_result1_2, math.max(1, unpacked_value_1_2) + arg3 - 1) + 1
	return var88
end
function module.keyExtractor(arg1, arg2) -- Line 204
	if typeof(arg1) == "table" and arg1.key ~= nil then
		return arg1.key
	end
	if typeof(arg1) == "table" and arg1.id ~= nil then
		return arg1.id
	end
	return tostring(arg2)
end
return module