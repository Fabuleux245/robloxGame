-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:55
-- Luau version 6, Types version 3
-- Time taken: 0.001599 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local GetFFlagTranslatorUseInAbuseMethods_upvr = require(AbuseReportMenu.Flags.GetFFlagTranslatorUseInAbuseMethods)
local RobloxTranslator_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
function getAvailableMethodsOfAbuse(arg1, arg2) -- Line 9
	--[[ Upvalues[3]:
		[1]: GetFFlagTranslatorUseInAbuseMethods_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if GetFFlagTranslatorUseInAbuseMethods_upvr() then
		local module = {{
			label = RobloxTranslator_upvr:FormatByKey(Constants_upvr.localizationKeys[Constants_upvr.AbuseMethods.TextChat]);
			subLabel = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.MethodOfAbuse.Text.Subtitle");
			identifier = Constants_upvr.AbuseMethods.TextChat;
		}}
		if arg2 then
			module[#module + 1] = {
				label = RobloxTranslator_upvr:FormatByKey(Constants_upvr.localizationKeys[Constants_upvr.AbuseMethods.Avatar]);
				subLabel = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.MethodOfAbuse.AvatarSubtitle");
				identifier = Constants_upvr.AbuseMethods.Avatar;
			}
		else
			module[#module + 1] = {
				label = RobloxTranslator_upvr:FormatByKey(Constants_upvr.localizationKeys[Constants_upvr.AbuseMethods.Other]);
				subLabel = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.MethodOfAbuse.Other.Subtitle");
				identifier = Constants_upvr.AbuseMethods.Other;
			}
		end
		if arg1 then
			table.insert(module, 1, {
				label = RobloxTranslator_upvr:FormatByKey(Constants_upvr.localizationKeys[Constants_upvr.AbuseMethods.VoiceChat]);
				subLabel = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.MethodOfAbuse.VoiceChat.Subtitle");
				identifier = Constants_upvr.AbuseMethods.VoiceChat;
			})
		end
		return module
	end
	local module_2 = {{
		label = Constants_upvr.AbuseMethods.TextChat;
		subLabel = Constants_upvr.AbuseMethodSublabel.TextChat;
		identifier = Constants_upvr.AbuseMethods.TextChat;
	}}
	if arg2 then
		module_2[#module_2 + 1] = {
			label = Constants_upvr.AbuseMethods.Avatar;
			subLabel = Constants_upvr.AbuseMethodSublabel.Avatar;
			identifier = Constants_upvr.AbuseMethods.Avatar;
		}
	else
		module_2[#module_2 + 1] = {
			label = Constants_upvr.AbuseMethods.Other;
			subLabel = Constants_upvr.AbuseMethodSublabel.Other;
			identifier = Constants_upvr.AbuseMethods.Other;
		}
	end
	if arg1 then
		table.insert(module_2, 1, {
			label = Constants_upvr.AbuseMethods.VoiceChat;
			subLabel = Constants_upvr.AbuseMethodSublabel.VoiceChat;
			identifier = Constants_upvr.AbuseMethods.VoiceChat;
		})
	end
	return module_2
end
return getAvailableMethodsOfAbuse