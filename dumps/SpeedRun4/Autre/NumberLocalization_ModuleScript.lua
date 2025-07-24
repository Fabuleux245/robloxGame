-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:15
-- Luau version 6, Types version 3
-- Time taken: 0.010098 seconds

local RoundingBehaviour_upvr = require(script.Parent.RoundingBehaviour)
local Logger_upvr = require(script.Parent.Logger)
game:DefineFastFlag("AllowNumberLocalizationSigFigParam", false)
local GetFFlagFixThaiNumberFormatting = require(script:FindFirstAncestor("Localization").Parent.SharedFlags).GetFFlagFixThaiNumberFormatting
local tbl_upvr = {
	["en-us"] = {
		decimalSeparator = '.';
		groupDelimiter = ',';
		
		{1, ""}, {1000, 'K'}, {1000000, 'M'}, {1000000000, 'B'}
	};
	["es-es"] = {
		decimalSeparator = ',';
		groupDelimiter = '.';
		
		{1, ""}, {1000, " mil"}, {1000000, " M"}
	};
	["fr-fr"] = {
		decimalSeparator = ',';
		groupDelimiter = ' ';
		
		{1, ""}, {1000, " k"}, {1000000, " M"}, {1000000000, " Md"}
	};
	["de-de"] = {
		decimalSeparator = ',';
		groupDelimiter = ' ';
		
		{1, ""}, {1000, " Tsd."}, {1000000, " Mio."}, {1000000000, " Mrd."}
	};
	["pt-br"] = {
		decimalSeparator = ',';
		groupDelimiter = '.';
		
		{1, ""}, {1000, " mil"}, {1000000, " mi"}, {1000000000, " bi"}
	};
	["zh-cn"] = {
		decimalSeparator = '.';
		groupDelimiter = ',';
		
		{1, ""}, {1000, "千"}, {10000, "万"}, {100000000, "亿"}
	};
	["zh-cjv"] = {
		decimalSeparator = '.';
		groupDelimiter = ',';
		
		{1, ""}, {1000, "千"}, {10000, "万"}, {100000000, "亿"}
	};
	["zh-tw"] = {
		decimalSeparator = '.';
		groupDelimiter = ',';
		
		{1, ""}, {1000, "千"}, {10000, "萬"}, {100000000, "億"}
	};
	["ko-kr"] = {
		decimalSeparator = '.';
		groupDelimiter = ',';
		
		{1, ""}, {1000, "천"}, {10000, "만"}, {100000000, "억"}
	};
	["ja-jp"] = {
		decimalSeparator = '.';
		groupDelimiter = ',';
		
		{1, ""}, {1000, "千"}, {10000, "万"}, {100000000, "億"}
	};
	["it-it"] = {
		decimalSeparator = ',';
		groupDelimiter = ' ';
		
		{1, ""}, {1000, " mila"}, {1000000, " Mln"}, {1000000000, " Mld"}
	};
	["ru-ru"] = {
		decimalSeparator = ',';
		groupDelimiter = '.';
		
		{1, ""}, {1000, " тыс"}, {1000000, " млн"}, {1000000000, " млрд"}
	};
	["id-id"] = {
		decimalSeparator = ',';
		groupDelimiter = '.';
		
		{1, ""}, {1000, " rb"}, {1000000, " jt"}, {1000000000, " M"}
	};
	["vi-vn"] = {
		decimalSeparator = '.';
		groupDelimiter = ' ';
		
		{1, ""}, {1000, " N"}, {1000000, " Tr"}, {1000000000, " T"}
	};
}
if not GetFFlagFixThaiNumberFormatting() then
	tbl_upvr["th-th"] = {
		decimalSeparator = '.';
		groupDelimiter = ',';
		
		{1, ""}, {1000, " พ"}, {10000, " ม"}, {100000, " ส"}, {1000000, " ล"}
	}
end
tbl_upvr["tr-tr"] = {
	decimalSeparator = ',';
	groupDelimiter = '.';
	
	{1, ""}, {1000, " B"}, {1000000, " Mn"}, {1000000000, " Mr"}
}
tbl_upvr["en-gb"] = tbl_upvr["en-us"]
tbl_upvr["es-mx"] = tbl_upvr["es-es"]
if GetFFlagFixThaiNumberFormatting() then
	tbl_upvr["th-th"] = tbl_upvr["en-us"]
end
local function _(arg1) -- Line 191, Named "findDecimalPointIndex"
	local string_find_result1_2 = string.find(arg1, "%.")
	if not string_find_result1_2 then
		string_find_result1_2 = #arg1 + 1
	end
	return string_find_result1_2
end
local function _(arg1) -- Line 196, Named "findDecimalOffset"
	if arg1 == 0 then
		return 0
	end
	return -(math.floor(math.log10(math.abs(arg1))) + 1)
end
local function _(arg1, arg2, arg3) -- Line 205, Named "roundToSignificantDigits"
	--[[ Upvalues[1]:
		[1]: RoundingBehaviour_upvr (readonly)
	]]
	if arg1 == 0 then
	else
	end
	local var86 = 10 ^ (arg2 + -(math.floor(math.log10(math.abs(arg1))) + 1))
	local var87
	if arg3 == RoundingBehaviour_upvr.Truncate then
		var87 = math.modf(arg1 * var86)
	else
		var87 = math.floor(arg1 * var86 + 0.5)
	end
	return var87 / var86
end
local function addGroupDelimiters_upvr(arg1, arg2) -- Line 217, Named "addGroupDelimiters"
	local var88
	repeat
		local string_gsub_result1, string_gsub_result2 = string.gsub(var88, "^(-?%d+)(%d%d%d)", string.format("%%1%s%%2", arg2))
		var88 = string_gsub_result1
	until string_gsub_result2 == 0
	return var88
end
local function findDenominationEntry_upvr(arg1, arg2, arg3) -- Line 230, Named "findDenominationEntry"
	--[[ Upvalues[1]:
		[1]: RoundingBehaviour_upvr (readonly)
	]]
	local var93
	for i = #arg1, 2, -1 do
		local var94 = arg1[i]
		local var95
		if arg3 == RoundingBehaviour_upvr.Truncate then
			var95 = var94[1]
		else
			var95 = var94[1] - arg1[i - 1][1] / 2
		end
		if var95 <= math.abs(arg2) then
			var93 = var94
			return var93
		end
	end
	return var93
end
return {
	localize = function(arg1, arg2) -- Line 251, Named "localize"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: Logger_upvr (readonly)
			[3]: addGroupDelimiters_upvr (readonly)
		]]
		if arg1 == 0 then
			return '0'
		end
		local var97 = tbl_upvr[arg2]
		if not var97 then
			var97 = tbl_upvr["en-us"]
			Logger_upvr:warning(string.format("Warning: Locale not found: '%s', reverting to '%s' instead.", tostring(arg2), "en-us"))
		end
		if var97.groupDelimiter then
			return addGroupDelimiters_upvr(arg1, var97.groupDelimiter)
		end
		return arg1
	end;
	abbreviate = function(arg1, arg2, arg3, arg4) -- Line 276, Named "abbreviate"
		--[[ Upvalues[5]:
			[1]: RoundingBehaviour_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: Logger_upvr (readonly)
			[4]: findDenominationEntry_upvr (readonly)
			[5]: addGroupDelimiters_upvr (readonly)
		]]
		if arg1 == 0 then
			return '0'
		end
		if arg3 == nil then
			local RoundToClosest = RoundingBehaviour_upvr.RoundToClosest
		end
		if game:GetFastFlag("AllowNumberLocalizationSigFigParam") then
			if arg4 == nil then
				-- KONSTANTWARNING: GOTO [21] #16
			end
		else
		end
		if not tbl_upvr[arg2] then
			local en_us = tbl_upvr["en-us"]
			Logger_upvr:warning(string.format("Warning: Locale not found: '%s', reverting to '%s' instead.", tostring(arg2), "en-us"))
		end
		local findDenominationEntry_result1 = findDenominationEntry_upvr(en_us, arg1, RoundToClosest)
		local _2 = findDenominationEntry_result1[2]
		local var102 = arg1 / findDenominationEntry_result1[1]
		if var102 == 0 then
		else
		end
		local var103 = 10 ^ (3 + -(math.floor(math.log10(math.abs(var102))) + 1))
		local var104
		if RoundToClosest == RoundingBehaviour_upvr.Truncate then
			var104 = math.modf(var102 * var103)
		else
			var104 = math.floor(var102 * var103 + 0.5)
		end
		var102 = nil
		local var105 = var102
		if RoundToClosest == RoundingBehaviour_upvr.Truncate then
			var105 = math.modf(var104 / var103 * 10) / 10
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var105 = math.floor(var104 / var103 * 10 + 0.5) / 10
		end
		local tostring_result1 = tostring(var105)
		local string_find_result1 = string.find(tostring_result1, "%.")
		if not string_find_result1 then
			string_find_result1 = #tostring_result1 + 1
		end
		local string_sub_result1 = string.sub(tostring_result1, 1, string_find_result1 - 1)
		local string_sub_result1_2 = string.sub(tostring_result1, string_find_result1 + 1, #tostring_result1)
		if en_us.groupDelimiter then
			string_sub_result1 = addGroupDelimiters_upvr(string_sub_result1, en_us.groupDelimiter)
		end
		if 0 < #string_sub_result1_2 then
			return string_sub_result1..en_us.decimalSeparator..string_sub_result1_2.._2
		end
		return string_sub_result1.._2
	end;
	logger = Logger_upvr;
}