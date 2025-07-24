-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:36
-- Luau version 6, Types version 3
-- Time taken: 0.010270 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("Time").Parent.ArgCheck)
local TimeUnit_upvr = require(script.Parent.TimeUnit)
local DateTime_upvr = require(script.Parent.DateTime)
local module = {
	ReasonDateInvalid = {
		IsFutureDate = "IsFutureDate";
		IsInvalidDayOfMonth = "IsInvalidDayOfMonth";
	};
	MonthsLocalizationKeys = {"CommonUI.Controls.Label.January", "CommonUI.Controls.Label.February", "CommonUI.Controls.Label.March", "CommonUI.Controls.Label.April", "CommonUI.Controls.Label.May", "CommonUI.Controls.Label.June", "CommonUI.Controls.Label.July", "CommonUI.Controls.Label.August", "CommonUI.Controls.Label.September", "CommonUI.Controls.Label.October", "CommonUI.Controls.Label.November", "CommonUI.Controls.Label.December"};
}
local tbl_4 = {}
local function __index(arg1, arg2) -- Line 115
	--[[ Upvalues[1]:
		[1]: TimeUnit_upvr (readonly)
	]]
	return {
		[TimeUnit_upvr.Years] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Days] = 3;
	}
end
tbl_4.__index = __index
module.DateTypeOrder = setmetatable({
	["en-us"] = {
		[TimeUnit_upvr.Months] = 1;
		[TimeUnit_upvr.Days] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["es-es"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["fr-fr"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["de-de"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["pt-br"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["zh-cn"] = {
		[TimeUnit_upvr.Years] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Days] = 3;
	};
	["zh-cjv"] = {
		[TimeUnit_upvr.Years] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Days] = 3;
	};
	["zh-tw"] = {
		[TimeUnit_upvr.Years] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Days] = 3;
	};
	["ko-kr"] = {
		[TimeUnit_upvr.Years] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Days] = 3;
	};
	["ja-jp"] = {
		[TimeUnit_upvr.Years] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Days] = 3;
	};
	["it-it"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["ru-ru"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["id-id"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["vi-vn"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["th-th"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
	["tr-tr"] = {
		[TimeUnit_upvr.Days] = 1;
		[TimeUnit_upvr.Months] = 2;
		[TimeUnit_upvr.Years] = 3;
	};
}, tbl_4)
local tbl_2_upvr = {
	Prefix = "Prefix";
	Suffix = "Suffix";
	None = "None";
}
module.DayAffixLocalizationKey = "CommonUI.Controls.Label.Day"
local tbl = {}
local function __index(arg1, arg2) -- Line 137
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	return tbl_2_upvr.None
end
tbl.__index = __index
module.DayAffixType = setmetatable({
	["zh-cn"] = tbl_2_upvr.Suffix;
	["zh-tw"] = tbl_2_upvr.Suffix;
	["ko-kr"] = tbl_2_upvr.Suffix;
	["ja-jp"] = tbl_2_upvr.Suffix;
}, tbl)
module.YearAffixLocalizationKey = "CommonUI.Controls.Label.Year"
module.YearAffixType = setmetatable({
	["zh-cn"] = tbl_2_upvr.Suffix;
	["zh-tw"] = tbl_2_upvr.Suffix;
	["ko-kr"] = tbl_2_upvr.Suffix;
	["ja-jp"] = tbl_2_upvr.Suffix;
}, {
	__index = function(arg1, arg2) -- Line 149, Named "__index"
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		return tbl_2_upvr.None
	end;
})
function module.GetFormattedDayString(arg1, arg2, arg3, arg4) -- Line 154
	--[[ Upvalues[1]:
		[1]: TimeUnit_upvr (readonly)
	]]
	return arg1:GetFormattedString(TimeUnit_upvr.Days, arg2, arg3, arg4)
end
function module.GetFormattedYearString(arg1, arg2, arg3, arg4) -- Line 158
	--[[ Upvalues[1]:
		[1]: TimeUnit_upvr (readonly)
	]]
	return arg1:GetFormattedString(TimeUnit_upvr.Years, arg2, arg3, arg4)
end
function module.GetFormattedString(arg1, arg2, arg3, arg4, arg5) -- Line 162
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: TimeUnit_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	ArgCheck_upvr.isNotNil(arg2, "timeUnit passed into DateHelper:GetFormattedString")
	ArgCheck_upvr.isNotNil(arg4, "affix passed into DateHelper:GetFormattedString")
	local any_isType_result1 = ArgCheck_upvr.isType(tostring(arg3), "string", "dateValue passed into DateHelper:GetFormattedString")
	local var32
	if arg2 == TimeUnit_upvr.Days then
		var32 = arg1.DayAffixType[arg5]
	elseif arg2 == TimeUnit_upvr.Years then
		var32 = arg1.YearAffixType[arg5]
	end
	if var32 == tbl_2_upvr.Prefix then
		return arg4..any_isType_result1
	end
	if var32 == tbl_2_upvr.Suffix then
		return any_isType_result1..arg4
	end
	return any_isType_result1
end
function module.GetFormattedFullString(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 183
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: TimeUnit_upvr (readonly)
	]]
	local any_isType_result1_2 = ArgCheck_upvr.isType(arg8, "string", "localeKey passed into DateHelper:GetFormattedFullString")
	local var38 = arg1.DateTypeOrder[any_isType_result1_2]
	local tbl_5 = {
		[var38[TimeUnit_upvr.Months]] = ArgCheck_upvr.isType(arg2, "string", "localizedMonthString passed into DateHelper:GetFormattedFullString");
		[var38[TimeUnit_upvr.Days]] = arg1:GetFormattedDayString(arg3, arg4, any_isType_result1_2);
		[var38[TimeUnit_upvr.Years]] = arg1:GetFormattedYearString(arg5, arg6, any_isType_result1_2);
	}
	local var43
	for i, v in ipairs(tbl_5) do
		var43 = var43..v
		if i < #tbl_5 then
			var43 = var43..ArgCheck_upvr.isType(arg7, "string", "divider passed into DateHelper:GetFormattedFullString")
		end
	end
	return var43
end
local function getCurrentDate() -- Line 214
	--[[ Upvalues[3]:
		[1]: DateTime_upvr (readonly)
		[2]: TimeUnit_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	local any_GetValues_result1_2 = DateTime_upvr.now():GetValues()
	return {
		[TimeUnit_upvr.Months] = ArgCheck_upvr.isNonNegativeNumber(any_GetValues_result1_2.Month, "current month in BirthdayPicker");
		[TimeUnit_upvr.Days] = ArgCheck_upvr.isNonNegativeNumber(any_GetValues_result1_2.Day, "current day in BirthdayPicker");
		[TimeUnit_upvr.Years] = ArgCheck_upvr.isNonNegativeNumber(any_GetValues_result1_2.Year, "current year in BirthdayPicker");
	}
end
function module.getCurrentDate(arg1) -- Line 224
	--[[ Upvalues[1]:
		[1]: getCurrentDate (readonly)
	]]
	return getCurrentDate()
end
local function getCurrentDateWithOffset_upvr(arg1) -- Line 228, Named "getCurrentDateWithOffset"
	--[[ Upvalues[3]:
		[1]: DateTime_upvr (readonly)
		[2]: TimeUnit_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	local any_GetValues_result1 = DateTime_upvr.fromUnixTimestamp(DateTime_upvr.now():GetUnixTimestamp() + arg1):GetValues()
	return {
		[TimeUnit_upvr.Months] = ArgCheck_upvr.isNonNegativeNumber(any_GetValues_result1.Month, "current month in BirthdayPicker");
		[TimeUnit_upvr.Days] = ArgCheck_upvr.isNonNegativeNumber(any_GetValues_result1.Day, "current day in BirthdayPicker");
		[TimeUnit_upvr.Years] = ArgCheck_upvr.isNonNegativeNumber(any_GetValues_result1.Year, "current year in BirthdayPicker");
	}
end
function module.isLeapYear(arg1, arg2) -- Line 239
	local var49 = false
	if arg2 % 4 == 0 then
		var49 = true
		if arg2 % 100 == 0 then
			if arg2 % 400 ~= 0 then
				var49 = false
			else
				var49 = true
			end
		end
	end
	return var49
end
function module._isFutureDate(arg1, arg2, arg3, arg4, arg5) -- Line 245
	--[[ Upvalues[1]:
		[1]: TimeUnit_upvr (readonly)
	]]
	if arg2[TimeUnit_upvr.Years] < arg5 then
		return true
	end
	if arg5 == arg2[TimeUnit_upvr.Years] and arg2[TimeUnit_upvr.Months] < arg3 then
		return true
	end
	if arg5 == arg2[TimeUnit_upvr.Years] and arg3 == arg2[TimeUnit_upvr.Months] and arg2[TimeUnit_upvr.Days] < arg4 then
		return true
	end
	return false
end
function module.isFutureDate(arg1, arg2, arg3, arg4) -- Line 261
	--[[ Upvalues[1]:
		[1]: getCurrentDate (readonly)
	]]
	return arg1:_isFutureDate(getCurrentDate(), arg2, arg3, arg4)
end
function module.isRecentOrFutureDate(arg1, arg2, arg3, arg4) -- Line 267
	--[[ Upvalues[1]:
		[1]: getCurrentDateWithOffset_upvr (readonly)
	]]
	return arg1:_isFutureDate(getCurrentDateWithOffset_upvr(-172800), arg2, arg3, arg4)
end
local tbl_3_upvr = {}
function module.getLastDayOfTheMonthInYear(arg1, arg2, arg3) -- Line 272
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if tbl_3_upvr[arg2] then
		if tbl_3_upvr[arg2][arg3] then
			return tbl_3_upvr[arg2][arg3]
		end
	end
	local var51
	if arg2 == 2 then
		if arg1:isLeapYear(arg3) then
			var51 = 29
		else
			var51 = 28
		end
		local _ = var51
	else
		var51 = arg2 % 2
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var51 = 7
			return arg2 < var51
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var51 = arg2 % 2
			return var51 == 1
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var51 = 7
			return var51 < arg2
		end
		if var51 == 0 and INLINED() or INLINED_2() and INLINED_3() then
		else
		end
	end
	if not tbl_3_upvr[arg2] then
		tbl_3_upvr[arg2] = {}
	end
	tbl_3_upvr[arg2][arg3] = 31
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return 31
end
function module.isInvalidDayOfTheMonth(arg1, arg2, arg3, arg4) -- Line 294
	local var53
	if arg1:getLastDayOfTheMonthInYear(arg2, arg4) >= arg3 then
		var53 = false
	else
		var53 = true
	end
	return var53
end
function module.isValidDate(arg1, arg2, arg3, arg4) -- Line 306
	if arg1:isRecentOrFutureDate(arg2, arg3, arg4) then
		return false, arg1.ReasonDateInvalid.IsFutureDate
	end
	if arg1:isInvalidDayOfTheMonth(arg2, arg3, arg4) then
		return false, arg1.ReasonDateInvalid.IsInvalidDayOfMonth
	end
	return true, nil
end
return module