-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:58
-- Luau version 6, Types version 3
-- Time taken: 0.005946 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local module = {}
local invariant_upvr = require(Parent.jsUtils.invariant)
local tbl_3_upvr = {}
tbl_3_upvr.__index = tbl_3_upvr
function tbl_3_upvr.new(arg1) -- Line 36
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: invariant_upvr (readonly)
	]]
	local var7 = tbl_3_upvr
	local setmetatable_result1 = setmetatable({}, var7)
	if 0 > arg1 then
		var7 = false
	else
		var7 = true
	end
	invariant_upvr(var7, "CellRenderMask must contain a non-negative number os cells")
	setmetatable_result1._numCells = arg1
	if arg1 == 0 then
		setmetatable_result1._regions = {}
		return setmetatable_result1
	end
	setmetatable_result1._regions = {{
		first = 0;
		last = arg1 - 1;
		isSpacer = true;
	}}
	return setmetatable_result1
end
function tbl_3_upvr.enumerateRegions(arg1) -- Line 47
	return arg1._regions
end
local Object_upvr = LuauPolyfill.Object
function tbl_3_upvr.addCells(arg1, arg2) -- Line 50
	--[[ Upvalues[3]:
		[1]: invariant_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local var32
	if 0 <= arg2.first then
		var32 = false
		if arg2.first < arg1._numCells then
			var32 = false
			if 0 <= arg2.last then
				var32 = false
				if arg2.last < arg1._numCells then
					if arg2.first > arg2.last then
						var32 = false
					else
						var32 = true
					end
				end
			end
		end
	end
	invariant_upvr(var32, "CellRenderMask.addCells called with invalid cell range")
	local any__findRegion_result1, any__findRegion_result2_2 = arg1:_findRegion(arg2.first)
	local any__findRegion_result1_2, any__findRegion_result2_5 = arg1:_findRegion(arg2.last)
	if any__findRegion_result2_2 == any__findRegion_result2_5 and not any__findRegion_result1.isSpacer then
	else
		local any_assign_result1_2 = Object_upvr.assign({}, arg2, {
			isSpacer = false;
		})
		if any__findRegion_result1.first < any_assign_result1_2.first then
			if any__findRegion_result1.isSpacer then
				table.insert({}, {
					first = any__findRegion_result1.first;
					last = any_assign_result1_2.first - 1;
					isSpacer = true;
				})
			else
				any_assign_result1_2.first = any__findRegion_result1.first
			end
		end
		if any_assign_result1_2.last < any__findRegion_result1_2.last then
			if any__findRegion_result1_2.isSpacer then
				table.insert({}, {
					first = any_assign_result1_2.last + 1;
					last = any__findRegion_result1_2.last;
					isSpacer = true;
				})
			else
				any_assign_result1_2.last = any__findRegion_result1_2.last
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		Array_upvr.splice(arg1._regions, any__findRegion_result2_2, any__findRegion_result2_5 - any__findRegion_result2_2 + 1, table.unpack(Array_upvr.concat({}, {any_assign_result1_2}, {})))
	end
end
function tbl_3_upvr.equals(arg1, arg2) -- Line 95
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local var46 = false
	if arg1._numCells == arg2._numCells then
		var46 = false
		if #arg1._regions == #arg2._regions then
			var46 = Array_upvr.every
			var46 = var46(arg1._regions, function(arg1_3, arg2_3) -- Line 98
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				local var48 = false
				if arg1_3.first == arg2._regions[arg2_3].first then
					var48 = false
					if arg1_3.last == arg2._regions[arg2_3].last then
						if arg1_3.isSpacer ~= arg2._regions[arg2_3].isSpacer then
							var48 = false
						else
							var48 = true
						end
					end
				end
				return var48
			end)
		end
	end
	return var46
end
function tbl_3_upvr._findRegion(arg1, arg2) -- Line 105
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	local const_number = 1
	local len = #arg1._regions
	while const_number <= len do
		local floored = math.floor((const_number + len) / 2)
		local var52 = arg1._regions[floored]
		if var52.first <= arg2 then
			if arg2 <= var52.last then
				return var52, floored
			end
		end
		if arg2 < var52.first then
		elseif var52.last < arg2 then
		end
	end
	invariant_upvr(false, string.format("A region was not found containing cellIdx %s", tostring(arg2)))
	return nil, nil
end
module.CellRenderMask = tbl_3_upvr
return module