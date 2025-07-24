-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:24
-- Luau version 6, Types version 3
-- Time taken: 0.002160 seconds

local module_upvr = {
	["zh-cn"] = "zh-cn";
	zh_cn = "zh-cn";
	["zh-cjv"] = "zh-cn";
	zh_cjv = "zh-cn";
	["zh-hans"] = "zh-cn";
	zh_hans = "zh-cn";
	["zh-tw"] = "zh-tw";
	zh_tw = "zh-tw";
	["zh-hant"] = "zh-tw";
	zh_hant = "zh-tw";
	["en-us"] = "en-us";
	en_us = "en-us";
	en = "en-us";
	["en-gb"] = "en-gb";
	en_gb = "en-gb";
	["fr-ca"] = "fr-ca";
	fr_ca = "fr-ca";
	nb = "no";
	["nb-no"] = "no";
	nb_no = "no";
}
local function var2_upvr(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if module_upvr[arg1] then
		return module_upvr[arg1]
	end
	for i in arg1:gmatch("([^%-_]+)") do
		table.insert({}, i)
		local var11
	end
	if var11[1] then
		return var11[1]
	end
	return "en-us"
end
local function _(arg1) -- Line 42
	local var13 = arg1
	if var13 then
		if string.match(arg1, "^[%w%-_]+$") == nil then
			var13 = false
		else
			var13 = true
		end
	end
	return var13
end
local function _(arg1) -- Line 47
	local var15 = arg1
	if var15 then
		if string.match(arg1, "^[a-zA-Z0-9]+$") == nil then
			var15 = false
		else
			var15 = true
		end
	end
	return var15
end
return function(arg1, arg2, arg3) -- Line 52, Named "getZendeskUrl"
	--[[ Upvalues[1]:
		[1]: var2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16 = arg2
	if var16 then
		if string.match(arg2, "^[%w%-_]+$") == nil then
			var16 = false
		else
			var16 = true
		end
	end
	if var16 then
	else
	end
	if arg3 then
		if string.match(arg3, "^[a-zA-Z0-9]+$") == nil then
		else
		end
	end
	if true then
	else
	end
	return `{arg1 or "https://en.help.roblox.com/hc"}/{"en-us"}/{""}`
end