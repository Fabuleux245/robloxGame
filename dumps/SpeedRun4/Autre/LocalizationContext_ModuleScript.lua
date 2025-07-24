-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:16
-- Luau version 6, Types version 3
-- Time taken: 0.002816 seconds

local function _(arg1) -- Line 43, Named "getBaseLanguage"
	return arg1:match("^(%w+)[-_]")
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module._translations = arg1
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.addTranslations(arg1, arg2) -- Line 64
	arg1._translations = arg2
end
function module_2_upvr.getRelevantLanguages(arg1) -- Line 74
	local module_3 = {}
	table.insert(module_3, arg1)
	local any_match_result1 = arg1:match("^(%w+)[-_]")
	if any_match_result1 then
		table.insert(module_3, any_match_result1)
	end
	table.insert(module_3, "en-us")
	return module_3
end
function module_2_upvr._getSourceString(arg1, arg2, arg3) -- Line 91
	local var5 = arg1._translations[arg2]
	if not var5 then
		return nil
	end
	return var5[arg3]
end
function module_2_upvr.getString(arg1, arg2, arg3, arg4) -- Line 106
	local any_match_result1_3 = arg2:match("^(%w+)[-_]")
	local var10
	if any_match_result1_3 then
		var10 = arg1:_getSourceString(any_match_result1_3, arg3)
	end
	local any__getSourceString_result1 = arg1:_getSourceString(arg2, arg3)
	if not any__getSourceString_result1 then
		any__getSourceString_result1 = var10
		if not any__getSourceString_result1 then
			any__getSourceString_result1 = arg1:_getSourceString("en-us", arg3)
		end
	end
	if not any__getSourceString_result1 then
		error("Couldn't find value for translation key %q!\n".."Tried these languages: %s, %s, %s":format(arg3, arg2, any_match_result1_3, "en-us"), 2)
	end
	if arg4 then
		return any__getSourceString_result1:gsub("{(.-)}", arg4)
	end
	return any__getSourceString_result1
end
return module_2_upvr