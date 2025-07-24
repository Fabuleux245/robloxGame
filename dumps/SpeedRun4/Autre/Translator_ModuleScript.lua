-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:36
-- Luau version 6, Types version 3
-- Time taken: 0.002031 seconds

local LocalizationService_upvr = game:GetService("LocalizationService")
local GuiService_upvr = game:GetService("GuiService")
local Parent = script.Parent
local Constants_upvr = require(Parent.Constants)
local GeneratedTranslations_upvr = require(Parent.GeneratedTranslations)
local function _(arg1) -- Line 9, Named "createUIBloxLocalizationTable"
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: GeneratedTranslations_upvr (readonly)
	]]
	if GuiService_upvr:FindFirstChild(Constants_upvr.LOCALIZATION_TABLE_NAME) then
	else
		local LocalizationTable = Instance.new("LocalizationTable")
		LocalizationTable.Name = Constants_upvr.LOCALIZATION_TABLE_NAME
		LocalizationTable.Archivable = false
		LocalizationTable.SourceLocaleId = "en-us"
		LocalizationTable:SetEntries(GeneratedTranslations_upvr)
		LocalizationTable.Parent = arg1
	end
end
if GuiService_upvr:FindFirstChild(Constants_upvr.LOCALIZATION_TABLE_NAME) then
else
	local LocalizationTable_2 = Instance.new("LocalizationTable")
	LocalizationTable_2.Name = Constants_upvr.LOCALIZATION_TABLE_NAME
	LocalizationTable_2.Archivable = false
	LocalizationTable_2.SourceLocaleId = "en-us"
	LocalizationTable_2:SetEntries(GeneratedTranslations_upvr)
	LocalizationTable_2.Parent = GuiService_upvr
end
local tbl_upvr = {}
local function _(arg1) -- Line 28, Named "getTranslatorForLocale"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local var9 = tbl_upvr[arg1]
	if var9 then
		return var9
	end
	local any_GetTranslator_result1_4 = GuiService_upvr.UIBloxLocalization:GetTranslator(arg1)
	tbl_upvr[arg1] = any_GetTranslator_result1_4
	return any_GetTranslator_result1_4
end
local function _() -- Line 40, Named "getTranslator"
	--[[ Upvalues[3]:
		[1]: LocalizationService_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	local RobloxLocaleId_2 = LocalizationService_upvr.RobloxLocaleId
	local var12 = tbl_upvr[RobloxLocaleId_2]
	if var12 then
		return var12
	end
	local any_GetTranslator_result1_2 = GuiService_upvr.UIBloxLocalization:GetTranslator(RobloxLocaleId_2)
	tbl_upvr[RobloxLocaleId_2] = any_GetTranslator_result1_2
	return any_GetTranslator_result1_2
end
local any_GetTranslator_result1_upvr = GuiService_upvr.UIBloxLocalization:GetTranslator("en-us")
local function formatByKeyWithFallback_upvr(arg1, arg2, arg3) -- Line 44, Named "formatByKeyWithFallback"
	--[[ Upvalues[1]:
		[1]: any_GetTranslator_result1_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 45
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return arg3:FormatByKey(arg1, arg2)
	end)
	if pcall_result1 then
		return pcall_result2
	end
	if arg3.LocaleId == "zh-cjv" then
		return ""
	end
	return any_GetTranslator_result1_upvr:FormatByKey(arg1, arg2)
end
return {
	FormatByKey = function(arg1, arg2, arg3) -- Line 60, Named "FormatByKey"
		--[[ Upvalues[4]:
			[1]: formatByKeyWithFallback_upvr (readonly)
			[2]: LocalizationService_upvr (readonly)
			[3]: tbl_upvr (readonly)
			[4]: GuiService_upvr (readonly)
		]]
		local RobloxLocaleId = LocalizationService_upvr.RobloxLocaleId
		local var20
		if tbl_upvr[RobloxLocaleId] then
			var20 = tbl_upvr[RobloxLocaleId]
		else
			local any_GetTranslator_result1_3 = GuiService_upvr.UIBloxLocalization:GetTranslator(RobloxLocaleId)
			tbl_upvr[RobloxLocaleId] = any_GetTranslator_result1_3
			var20 = any_GetTranslator_result1_3
		end
		return formatByKeyWithFallback_upvr(arg2, arg3, var20)
	end;
	FormatByKeyForLocale = function(arg1, arg2, arg3, arg4) -- Line 64, Named "FormatByKeyForLocale"
		--[[ Upvalues[3]:
			[1]: formatByKeyWithFallback_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: GuiService_upvr (readonly)
		]]
		local var22
		if tbl_upvr[arg3] then
			var22 = tbl_upvr[arg3]
		else
			local any_GetTranslator_result1 = GuiService_upvr.UIBloxLocalization:GetTranslator(arg3)
			tbl_upvr[arg3] = any_GetTranslator_result1
			var22 = any_GetTranslator_result1
		end
		return formatByKeyWithFallback_upvr(arg2, arg4, var22)
	end;
}