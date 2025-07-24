-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:01
-- Luau version 6, Types version 3
-- Time taken: 0.005536 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Players_upvr = game:GetService("Players")
local Url_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local HttpService_upvr = game:GetService("HttpService")
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixChatLanguageSwitcherLabel", false)
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local GameSettings_upvr = UserSettings().GameSettings
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local TextChatService_upvr = game:GetService("TextChatService")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TextChatServiceSettingsSaved")
local GetFStringChatTranslationEnabledLocales_upvr = require(RobloxGui.Modules.Flags.GetFStringChatTranslationEnabledLocales)
return function(arg1, arg2, arg3) -- Line 26
	--[[ Upvalues[11]:
		[1]: Url_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: Utility_upvr (readonly)
		[7]: GameSettings_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: TextChatService_upvr (readonly)
		[10]: game_GetEngineFeature_result1_upvr (readonly)
		[11]: GetFStringChatTranslationEnabledLocales_upvr (readonly)
	]]
	local tbl_upvr_3 = {"en_us"}
	local tbl_upvr = {
		en_us = 1;
	}
	local tbl_upvr_2 = {"English"}
	local var18_upvr = Url_upvr.LOCALE_URL..string.format("v1/locales?displayValueLocale=%s", Players_upvr.LocalPlayer.LocaleId:gsub('-', '_'))
	local function localeCodeToLanguageCodeMappingCallback_upvr(arg1_2, arg2_2) -- Line 50, Named "localeCodeToLanguageCodeMappingCallback"
		--[[ Upvalues[12]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Utility_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: GameSettings_upvr (copied, readonly)
			[7]: tbl_upvr_3 (readonly)
			[8]: LocalPlayer_upvr (copied, readonly)
			[9]: TextChatService_upvr (copied, readonly)
			[10]: tbl_upvr_2 (readonly)
			[11]: arg3 (readonly)
			[12]: game_GetEngineFeature_result1_upvr (copied, readonly)
		]]
		if not arg1_2 then
			if arg2_2 == nil then
			end
			any_new_result1_upvr:warning("GameSettings chat language selector initialization failed to get all required information; defaulting to unavailable for the remainder of this session. Error message: ".."Locales call did not set error message to non-nil value")
			if game_DefineFastFlag_result1_upvr then
				local any_AddNewRow_result1_2, any_AddNewRow_result2_6, any_AddNewRow_result3_4 = Utility_upvr:AddNewRow(arg1, "Chat Translation Language", "DropDown", {"Unavailable"}, 1)
				arg1.ChatLanguageSelectorFrame = any_AddNewRow_result1_2
				arg1.ChatLanguageSelectorLabel = any_AddNewRow_result2_6
				arg1.ChatLanguageSelectorMode = any_AddNewRow_result3_4
			else
				local any_AddNewRow_result1_3, any_AddNewRow_result2, any_AddNewRow_result3_3 = Utility_upvr:AddNewRow(arg1, "Chat Language", "DropDown", {"Unavailable"}, 1)
				arg1.ChatLanguageSelectorFrame = any_AddNewRow_result1_3
				arg1.ChatLanguageSelectorLabel = any_AddNewRow_result2
				arg1.ChatLanguageSelectorMode = any_AddNewRow_result3_3
			end
			arg1.ChatLanguageSelectorFrame.LayoutOrder = arg2.ChatLanguageSelectorFrame
		end
		local var36
		local ChatTranslationLocale = GameSettings_upvr.ChatTranslationLocale
		if ChatTranslationLocale ~= "" then
			for i, v in tbl_upvr_3 do
				if v == ChatTranslationLocale then
					var36 = i
				end
			end
		end
		if ChatTranslationLocale == "" or var36 == nil then
			for i_2, v_2 in tbl_upvr_3 do
				if v_2 == LocalPlayer_upvr.LocaleId:gsub('-', '_') then
					TextChatService_upvr.ChatTranslationEnabled = true
				end
			end
		end
		if i_2 == nil then
			TextChatService_upvr.ChatTranslationEnabled = false
		else
			GameSettings_upvr.ChatTranslationLocale = tbl_upvr_3[1]
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		LocalPlayer_upvr:SetChatTranslationSettingsLocaleId(tbl_upvr_3[1])
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local _1_upvw = tbl_upvr_3[1]
		if game_DefineFastFlag_result1_upvr then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local any_AddNewRow_result1_6, any_AddNewRow_result2_3, any_AddNewRow_result3_5 = Utility_upvr:AddNewRow(arg1, "Chat Translation Language", "DropDown", tbl_upvr_2, 1)
			arg1.ChatLanguageSelectorFrame = any_AddNewRow_result1_6
			arg1.ChatLanguageSelectorLabel = any_AddNewRow_result2_3
			arg1.ChatLanguageSelectorMode = any_AddNewRow_result3_5
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local any_AddNewRow_result1_5, any_AddNewRow_result2_4, any_AddNewRow_result3_6 = Utility_upvr:AddNewRow(arg1, "Chat Language", "DropDown", tbl_upvr_2, 1)
			arg1.ChatLanguageSelectorFrame = any_AddNewRow_result1_5
			arg1.ChatLanguageSelectorLabel = any_AddNewRow_result2_4
			arg1.ChatLanguageSelectorMode = any_AddNewRow_result3_6
		end
		arg1.ChatLanguageSelectorFrame.LayoutOrder = arg2.ChatLanguageSelectorFrame
		arg1.ChatLanguageSelectorMode.IndexChanged:connect(function(arg1_3) -- Line 125, Named "onChatSelectionIndexUpdated"
			--[[ Upvalues[5]:
				[1]: GameSettings_upvr (copied, readonly)
				[2]: tbl_upvr_3 (copied, readonly)
				[3]: LocalPlayer_upvr (copied, readonly)
				[4]: _1_upvw (read and write)
				[5]: arg3 (copied, readonly)
			]]
			local var45 = tbl_upvr_3[arg1_3]
			GameSettings_upvr.ChatTranslationLocale = var45
			LocalPlayer_upvr:SetChatTranslationSettingsLocaleId(var45)
			_1_upvw = var45
			arg3("chat_translation_locale", GameSettings_upvr.ChatTranslationLocale, var45)
		end)
		if TextChatService_upvr.ChatTranslationToggleEnabled then
		else
		end
		local any_AddNewRow_result1, any_AddNewRow_result2_2, any_AddNewRow_result3_2 = Utility_upvr:AddNewRow(arg1, "Option to View Untranslated Message", "Selector", {"On", "Off"}, 2)
		arg1.ChatTranslationToggleFrame = any_AddNewRow_result1
		arg1.ChatTranslationToggleLabel = any_AddNewRow_result2_2
		arg1.ChatTranslationToggleEnabler = any_AddNewRow_result3_2
		arg1.ChatTranslationToggleFrame.LayoutOrder = arg2.ChatTranslationToggleFrame
		arg1.ChatTranslationToggleEnabler.IndexChanged:connect(function(arg1_4) -- Line 146
			--[[ Upvalues[5]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[3]: GameSettings_upvr (copied, readonly)
				[4]: arg3 (copied, readonly)
				[5]: _1_upvw (read and write)
			]]
			if arg1_4 == 1 then
				local _ = true
			else
			end
			local ChatTranslationToggleEnabled = TextChatService_upvr.ChatTranslationToggleEnabled
			if false ~= ChatTranslationToggleEnabled then
				if game_GetEngineFeature_result1_upvr then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					GameSettings_upvr.ChatTranslationToggleEnabled = false
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					TextChatService_upvr.ChatTranslationToggleEnabled = false
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg3("chat_translation_toggle", ChatTranslationToggleEnabled, false, {
					locale_id = _1_upvw;
				})
			end
		end)
		if TextChatService_upvr.ChatTranslationEnabled then
			local const_number = 1
		else
		end
		if 2 == 2 then
			arg1.ChatLanguageSelectorFrame.Visible = false
			arg1.ChatTranslationToggleFrame.Visible = false
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local any_AddNewRow_result1_4, any_AddNewRow_result2_5, any_AddNewRow_result3 = Utility_upvr:AddNewRow(arg1, "Automatic Chat Translation", "Selector", {"On", "Off"}, 2)
		arg1.ChatTranslationFrame = any_AddNewRow_result1_4
		arg1.ChatTranslationLabel = any_AddNewRow_result2_5
		arg1.ChatTranslationEnabler = any_AddNewRow_result3
		arg1.ChatTranslationFrame.LayoutOrder = arg2.ChatTranslationFrame
		arg1.ChatTranslationEnabler.IndexChanged:connect(function(arg1_5) -- Line 177
			--[[ Upvalues[6]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[3]: GameSettings_upvr (copied, readonly)
				[4]: arg3 (copied, readonly)
				[5]: LocalPlayer_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
			]]
			if arg1_5 == 1 then
				local _ = true
			else
			end
			if game_GetEngineFeature_result1_upvr then
				GameSettings_upvr.ChatTranslationEnabled = false
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				TextChatService_upvr.ChatTranslationEnabled = false
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg3("chat_translation", TextChatService_upvr.ChatTranslationEnabled, false, {
				locale_id = LocalPlayer_upvr.LocaleId;
			})
			if arg1_5 == 1 then
				arg1.ChatLanguageSelectorFrame.Visible = true
				arg1.ChatTranslationToggleFrame.Visible = true
			else
				arg1.ChatLanguageSelectorFrame.Visible = false
				arg1.ChatTranslationToggleFrame.Visible = false
			end
		end)
	end
	HttpService_upvr:RequestInternal({
		Url = var18_upvr;
		Method = "GET";
	}):Start(function(arg1_6, arg2_3) -- Line 202
		--[[ Upvalues[8]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: GetFStringChatTranslationEnabledLocales_upvr (copied, readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: tbl_upvr_3 (readonly)
			[5]: tbl_upvr (readonly)
			[6]: any_new_result1_upvr (copied, readonly)
			[7]: var18_upvr (readonly)
			[8]: localeCodeToLanguageCodeMappingCallback_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		local var63
		if not arg1_6 then
			-- KONSTANTWARNING: GOTO [38] #31
		end
		-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 25 start (CF ANALYSIS FAILED)
		if arg2_3.StatusCode == 401 then
			local _ = "Locale Code to Language Code Mapping Request: Unauthorized"
		elseif arg2_3.StatusCode < 200 or 400 <= arg2_3.StatusCode then
		else
			local pcall_result1, pcall_result2 = pcall(function() -- Line 213
				--[[ Upvalues[6]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: arg2_3 (readonly)
					[3]: GetFStringChatTranslationEnabledLocales_upvr (copied, readonly)
					[4]: tbl_upvr_2 (copied, readonly)
					[5]: tbl_upvr_3 (copied, readonly)
					[6]: tbl_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
				local tbl_upvr_4 = {}
				local var69
				for i_3 in GetFStringChatTranslationEnabledLocales_upvr():gmatch("([^,]+)"), nil do
					table.insert(nil, i_3)
				end
				local function _(arg1_7) -- Line 223, Named "shouldAddLocaleAsChatTranslationOption"
					--[[ Upvalues[1]:
						[1]: tbl_upvr_4 (readonly)
					]]
					for _, v_3 in tbl_upvr_4 do
						if v_3 == arg1_7 then
							return true
						end
					end
					return false
				end
				local pairs_result1, pairs_result2, pairs_result3 = pairs(HttpService_upvr:JSONDecode(arg2_3.Body).data)
				-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [76] 58. Error Block 14 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [76] 58. Error Block 14 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [37] 29. Error Block 22 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if i_3 == "en_us" then
					-- KONSTANTWARNING: GOTO [76] #58
				end
				-- KONSTANTERROR: [37] 29. Error Block 22 end (CF ANALYSIS FAILED)
			end)
			var63 = pcall_result1
		end
		if not var63 then
			any_new_result1_upvr:warning("GameSettings chat language selector initialization: Failed to get response from Localization API for "..var18_upvr.." with error message: "..pcall_result2)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		localeCodeToLanguageCodeMappingCallback_upvr(var63, pcall_result2)
		-- KONSTANTERROR: [5] 6. Error Block 25 end (CF ANALYSIS FAILED)
	end)
end