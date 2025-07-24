-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:16
-- Luau version 6, Types version 3
-- Time taken: 0.003998 seconds

local Parent = script.Parent.Parent
local KeyMappings_upvr = require(script.Parent.KeyMappings)
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
local any_named_result1_upvr = require(Parent.Symbols.Symbol).named("FormattedParam")
local function _(arg1) -- Line 44, Named "isFormattedParam"
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local var5 = false
	if typeof(arg1) == "table" then
		if arg1[any_named_result1_upvr] ~= true then
			var5 = false
		else
			var5 = true
		end
	end
	return var5
end
local function _(arg1) -- Line 48, Named "createFormattedParam"
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	local module = {
		[any_named_result1_upvr] = true;
	}
	module.format = arg1
	return module
end
local function _(arg1, arg2) -- Line 58, Named "getLocalizedString"
	local translations_3 = arg1.translations
	local fallbackTranslations = arg1.fallbackTranslations
	if fallbackTranslations ~= nil and translations_3[arg2] == nil then
		return fallbackTranslations[arg2]
	end
	return translations_3[arg2]
end
local function addGroupDelimiters_upvr(arg1, arg2) -- Line 81, Named "addGroupDelimiters"
	local var9
	repeat
		local string_gsub_result1, string_gsub_result2 = string.gsub(var9, "^(-?%d+)(%d%d%d)", string.format("%%1%s%%2", arg2))
		var9 = string_gsub_result1
	until string_gsub_result2 == 0
	return var9
end
local module_2_upvr = {
	formatNumber = function(arg1, arg2) -- Line 95, Named "formatNumber"
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: addGroupDelimiters_upvr (readonly)
		]]
		return addGroupDelimiters_upvr(arg2, module_upvr[arg1.locale] or ',')
	end;
}
function module_2_upvr.numberParam(arg1) -- Line 103
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: any_named_result1_upvr (readonly)
	]]
	return {
		[any_named_result1_upvr] = true;
		format = function(arg1_2) -- Line 104
			--[[ Upvalues[2]:
				[1]: module_2_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return module_2_upvr.formatNumber(arg1_2, arg1)
		end;
	}
end
function module_2_upvr.nestedKeyParam(arg1) -- Line 113
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	return {
		[any_named_result1_upvr] = true;
		format = function(arg1_3) -- Line 114
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var16 = arg1
			local translations = arg1_3.translations
			local fallbackTranslations_2 = arg1_3.fallbackTranslations
			if fallbackTranslations_2 ~= nil and translations[var16] == nil then
				return fallbackTranslations_2[var16]
			end
			return translations[var16]
		end;
	}
end
local ItemType_upvr = require(Parent.Enums.ItemType)
function module_2_upvr.getKeyFromItemType(arg1) -- Line 122
	--[[ Upvalues[2]:
		[1]: ItemType_upvr (readonly)
		[2]: KeyMappings_upvr (readonly)
	]]
	local any_isMember_result1 = ItemType_upvr.isMember(arg1)
	if not any_isMember_result1 then
		any_isMember_result1 = true
		if typeof(arg1) ~= "number" then
			if typeof(arg1) ~= "string" then
				any_isMember_result1 = false
			else
				any_isMember_result1 = true
			end
		end
	end
	assert(any_isMember_result1, "provided item type "..tostring(arg1).." must be a number, string, or ItemType enum")
	if arg1 == ItemType_upvr.Bundle then
		return "CoreScripts.PurchasePrompt.ItemType.Bundle"
	end
	return KeyMappings_upvr.AssetTypeById[tostring(arg1)]
end
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
function module_2_upvr.getErrorKey(arg1) -- Line 144
	--[[ Upvalues[2]:
		[1]: PurchaseError_upvr (readonly)
		[2]: KeyMappings_upvr (readonly)
	]]
	assert(PurchaseError_upvr.isMember(arg1), "provided value "..tostring(arg1).." is not a member of PurchaseError enum")
	return KeyMappings_upvr.PurchaseErrorKey[arg1]
end
function module_2_upvr.getString(arg1, arg2, arg3) -- Line 157
	--[[ Upvalues[1]:
		[1]: any_named_result1_upvr (readonly)
	]]
	if arg1 == nil then
	else
	end
	assert(true, "Must provide valid localization context")
	local translations_2 = arg1.translations
	if arg1.fallbackTranslations ~= nil and translations_2[arg2] == nil then
	else
	end
	if arg3 ~= nil then
		for i, v in pairs(arg3) do
			local var33 = false
			local var34_upvw
			if typeof(v) == "table" then
				if v[any_named_result1_upvr] ~= true then
					var33 = false
				else
					var33 = true
				end
			end
			if var33 then
				var34_upvw = v.format(arg1)
			end
		end
	end
	return string.gsub(translations_2[arg2], "{%s}":format(i), function() -- Line 171
		--[[ Upvalues[1]:
			[1]: var34_upvw (read and write)
		]]
		return var34_upvw
	end)
end
return module_2_upvr