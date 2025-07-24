-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:03
-- Luau version 6, Types version 3
-- Time taken: 0.001998 seconds

local function _(arg1) -- Line 4, Named "getLanguageCode"
	local string_find_result1_2 = string.find(arg1, '-')
	if string_find_result1_2 then
		return string.sub(arg1, 1, string_find_result1_2 - 1)
	end
	return arg1
end
local module = {}
local LocaleId = game:GetService("Players").LocalPlayer.LocaleId
local string_find_result1 = string.find(LocaleId, '-')
local var17
if string_find_result1 then
	var17 = string.sub(LocaleId, 1, string_find_result1 - 1)
else
	var17 = LocaleId
end
local string_upper_result1_upvr = string.upper(var17)
var17 = require(script:WaitForChild("RawTranslations"))
local tbl_upvr = {}
for _, v in pairs(var17) do
	if v.Key then
		tbl_upvr[v.Key] = v
	end
end
for _, v_2 in pairs(var17) do
	for i_3, v_3 in pairs(v_2) do
		if string.find(v_3, "{b}") then
			v_2[i_3] = v_3:gsub("{b}", "<font transparency=\"0\">"):gsub("{/b}", "</font>")
		end
	end
	function replaceFontTags(arg1) -- Line 34
	end
end
local function _(arg1) -- Line 39, Named "getTranslation"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: string_upper_result1_upvr (readonly)
	]]
	local var29 = tbl_upvr[arg1]
	local var30
	if not var29 then
		var30 = ""
		return var30
	end
	var30 = var29[string_upper_result1_upvr]
	if not var30 then
		var30 = var29.EN
	end
	if not var30 then
	end
	return ""
end
function module.translateUI(arg1) -- Line 57
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: string_upper_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for i_4, v_4 in pairs(arg1) do
		local var43 = tbl_upvr[i_4]
		local var44
		if not var43 then
		else
			var44 = var43[string_upper_result1_upvr]
			if not var44 then
				var44 = var43.EN
			end
			if not var44 then
			end
		end
		v_4.Text = ""
	end
end
return module