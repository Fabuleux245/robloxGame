-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:44
-- Luau version 6, Types version 3
-- Time taken: 0.000932 seconds

local RobloxTranslator = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator)
local any_FormatByKey_result1_upvr_2 = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.AndroidWithDeeplink")
local any_FormatByKey_result1_upvr = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.AndroidWithoutDeeplink")
local any_FormatByKey_result1_upvr_4 = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.WindowsWithDeeplink")
local any_FormatByKey_result1_upvr_3 = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.WindowsWithoutDeeplink")
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[4]:
		[1]: any_FormatByKey_result1_upvr_2 (readonly)
		[2]: any_FormatByKey_result1_upvr (readonly)
		[3]: any_FormatByKey_result1_upvr_4 (readonly)
		[4]: any_FormatByKey_result1_upvr_3 (readonly)
	]]
	local any_GetPlatform_result1 = arg2:GetPlatform()
	if any_GetPlatform_result1 == Enum.Platform.Android then
		if arg1 then
			return any_FormatByKey_result1_upvr_2
		end
		return any_FormatByKey_result1_upvr
	end
	if any_GetPlatform_result1 == Enum.Platform.Windows then
		if arg1 then
			return any_FormatByKey_result1_upvr_4
		end
		return any_FormatByKey_result1_upvr_3
	end
	return nil
end