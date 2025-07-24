-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:31
-- Luau version 6, Types version 3
-- Time taken: 0.002988 seconds

local tbl_upvr_2 = {
	System = "InGame.Chat.Label.SystemMessagePrefix";
	Team = "InGame.Chat.Label.TeamMessagePrefix";
}
local tbl_upvr = {
	["From(%s.+)"] = {
		English = "From";
		LocalizationKey = "InGame.Chat.Label.From";
	};
	["To(%s.+)"] = {
		English = "To";
		LocalizationKey = "InGame.Chat.Label.To";
	};
}
local module = {
	_hasFetchedLocalization = false;
}
local Chat_upvr = game:GetService("Chat")
local LocalizationService_upvr = game:GetService("LocalizationService")
function module._getTranslator(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: Chat_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
	]]
	if not arg1._translator and not arg1._hasFetchedLocalization then
		arg1._hasFetchedLocalization = true
		local ChatLocalization = Chat_upvr:WaitForChild("ChatLocalization", 4)
		if ChatLocalization then
			arg1._translator = ChatLocalization:GetTranslator(LocalizationService_upvr.RobloxLocaleId)
			LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function() -- Line 35
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1._hasFetchedLocalization = false
				arg1._translator = nil
			end)
		else
			warn("Missing ChatLocalization. Chat interface will not be localized.")
		end
	end
	return arg1._translator
end
function module.Get(arg1, arg2, arg3, arg4) -- Line 47
	local var10_upvw = arg3
	pcall(function() -- Line 49
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var10_upvw (read and write)
			[3]: arg2 (readonly)
			[4]: arg4 (readonly)
		]]
		local any__getTranslator_result1 = arg1:_getTranslator()
		if any__getTranslator_result1 then
			var10_upvw = any__getTranslator_result1:FormatByKey(arg2, arg4)
		else
			warn("Missing Translator. Used default for", arg2)
		end
	end)
	return var10_upvw
end
function module.LocalizeFormattedMessage(arg1, arg2) -- Line 60
	local string_find_result1_2, string_find_result2 = string.find(arg2, "{RBX_LOCALIZATION_KEY}")
	if not string_find_result1_2 then
		return arg2
	end
	local string_find_result1_3, string_find_result2_3 = string.find(arg2, "{RBX_LOCALIZATION_DEFAULT}")
	if not string_find_result1_3 then
		return arg2
	end
	local string_find_result1_4, string_find_result2_2 = string.find(arg2, "{RBX_LOCALIZATION_PARAMS}")
	if not string_find_result1_4 then
		return arg1:Get(string.sub(arg2, string_find_result2 + 1, string_find_result1_3 - 1), string.sub(arg2, string_find_result2_3 + 1))
	end
	for i, v in string.gmatch(string.sub(arg2, string_find_result2_2 + 1), "([^%s]+)=([^%s]+)") do
		({})[i] = v
		local var27
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return arg1:Get(string.sub(arg2, string_find_result2 + 1, string_find_result1_3 - 1), string.sub(arg2, string_find_result2_3 + 1, string_find_result1_4 - 1), var27)
end
function module.FormatMessageToSend(arg1, arg2, arg3, arg4, arg5) -- Line 89
	if arg4 and arg5 then
		return "{RBX_LOCALIZATION_KEY}"..arg2.."{RBX_LOCALIZATION_DEFAULT}"..arg3.."{RBX_LOCALIZATION_PARAMS}"..arg4..'='..arg5
	end
	return "{RBX_LOCALIZATION_KEY}"..arg2.."{RBX_LOCALIZATION_DEFAULT}"..arg3
end
function module.tryLocalize(arg1, arg2) -- Line 100
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if tbl_upvr_2[arg2] then
		return arg1:Get(tbl_upvr_2[arg2], arg2)
	end
	for i_2, v_2 in pairs(tbl_upvr_2) do
		if string.find(arg2, i_2) then
			return string.gsub(arg2, i_2, arg1:Get(v_2, i_2), 1)
		end
	end
	for i_3, v_3 in pairs(tbl_upvr) do
		local string_find_result1 = string.find(arg2, i_3)
		local var43
		if string_find_result1 and string.match(arg2, i_3) then
			if 1 < string_find_result1 then
				var43 = arg2:sub(1, string_find_result1 - 1)
			else
				var43 = ""
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return var43..arg1:Get(v_3.LocalizationKey, v_3.English)..string.match(arg2, i_3)
		end
	end
	return arg2
end
return module