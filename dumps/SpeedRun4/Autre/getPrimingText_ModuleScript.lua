-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:45
-- Luau version 6, Types version 3
-- Time taken: 0.000430 seconds

local any_FormatByKey_result1_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator):FormatByKey("Feature.SettingsHub.Prompt.RestartOnMicAccessChange")
return function(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: any_FormatByKey_result1_upvr (readonly)
	]]
	if arg1:GetPlatform() == Enum.Platform.Android then
		return "<b>"..any_FormatByKey_result1_upvr.."</b>"
	end
	return nil
end