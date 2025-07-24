-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:51
-- Luau version 6, Types version 3
-- Time taken: 0.004029 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local DateTime_upvr = require(Parent.Time).DateTime
local module_upvr = {}
local tbl_upvr = {}
module_upvr[tbl_upvr] = true
local ArgCheck_upvr = require(Parent.ArgCheck)
function module_upvr.new(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		Month = 1;
		Day = 1;
		Year = 1970;
	}
	if arg1 then
		local Month = arg1.Month
		if not Month then
			Month = module.Month
		end
		module.Month = Month
		Month = arg1.Day
		local var8 = Month
		if not var8 then
			var8 = module.Day
		end
		module.Day = var8
		var8 = arg1.Year
		local var9 = var8
		if not var9 then
			var9 = module.Year
		end
		module.Year = var9
		ArgCheck_upvr.isNonNegativeNumber(module.Month, "month in Birthday constructor")
		ArgCheck_upvr.isNonNegativeNumber(module.Day, "day in Birthday constructor")
		ArgCheck_upvr.isNonNegativeNumber(module.Year, "year in Birthday constructor")
	end
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.IsUnder13(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: DateTime_upvr (readonly)
	]]
	local any_new_result1_3 = module_upvr.new(DateTime_upvr.now():GetValues())
	if any_new_result1_3.Year - 13 < arg1.Year then
		return true
	end
	if arg1.Year < any_new_result1_3.Year - 13 then
		return false
	end
	local var13 = true
	if any_new_result1_3.Month >= arg1.Month then
		var13 = false
		if any_new_result1_3.Month == arg1.Month then
			if any_new_result1_3.Day >= arg1.Day then
				var13 = false
			else
				var13 = true
			end
		end
	end
	return var13
end
function module_upvr.GetAgeInYears(arg1, arg2) -- Line 52
	--[[ Upvalues[2]:
		[1]: DateTime_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg2 then
		local _ = arg2
	else
	end
	local any_new_result1_2 = module_upvr.new(DateTime_upvr.now():GetValues())
	if any_new_result1_2.Month < arg1.Month or any_new_result1_2.Month == arg1.Month and any_new_result1_2.Day < arg1.Day then
		return any_new_result1_2.Year - arg1.Year - 1
	end
	return any_new_result1_2.Year - arg1.Year
end
function module_upvr.FormatForEndpoint(arg1) -- Line 63
	return arg1.Year..'-'..arg1.Month..'-'..arg1.Day.."T12:00:00.000Z"
end
function module_upvr.ToString(arg1, arg2) -- Line 67
	local var16 = arg2 or ' '
	return arg1.Month..var16..arg1.Day..var16..arg1.Year
end
function module_upvr.is(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var17
	if var17 ~= "table" then
		var17 = false
		return var17
	end
	if arg1[tbl_upvr] ~= true then
		var17 = false
	else
		var17 = true
	end
	return var17
end
module_upvr.__index = module_upvr
return module_upvr