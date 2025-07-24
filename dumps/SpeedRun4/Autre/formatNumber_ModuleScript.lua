-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:20
-- Luau version 6, Types version 3
-- Time taken: 0.000737 seconds

local module_upvr = {
	["en-us"] = ',';
	["en-gb"] = ',';
	["es-mx"] = ',';
	["es-es"] = '.';
	["fr-fr"] = ' ';
	["de-de"] = ' ';
	["pt-br"] = '.';
	["zh-cn"] = ',';
	["zh-cjv"] = ',';
	["zh-tw"] = ',';
	["ko-kr"] = ',';
	["ja-jp"] = ',';
	["it-it"] = ' ';
	["ru-ru"] = '.';
	["id-id"] = '.';
	["vi-vn"] = '.';
	["th-th"] = ',';
	["tr-tr"] = '.';
}
local function addGroupDelimiters_upvr(arg1, arg2) -- Line 35, Named "addGroupDelimiters"
	local var2
	repeat
		local string_gsub_result1, string_gsub_result2 = string.gsub(var2, "^(-?%d+)(%d%d%d)", string.format("%%1%s%%2", arg2))
		var2 = string_gsub_result1
	until string_gsub_result2 == 0
	return var2
end
return function(arg1, arg2) -- Line 47
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: addGroupDelimiters_upvr (readonly)
	]]
	return addGroupDelimiters_upvr(arg2, module_upvr[arg1] or ',')
end