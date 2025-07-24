-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:56
-- Luau version 6, Types version 3
-- Time taken: 0.001034 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local useStyle_upvr = require(game:GetService("CorePackages").Packages.UIBlox).Core.Style.useStyle
local GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr = require(AbuseReportMenu.Flags.GetFFlagAddAbuseReportMenuCoreScriptsProvider)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
function getMenuItemSizings() -- Line 11
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	local var2_result1 = useStyle_upvr()
	if GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr() then
		return {
			ItemPadding = var2_result1.Tokens.Global.Space_125;
			DropdownTextSize = var2_result1.Tokens.Global.FontSize_100;
			FontStyle = Constants_upvr.ReportMenuFontStyle;
			ButtonSize = Constants_upvr.ReportMenuButtonSizeConsole;
		}
	end
	return {
		ItemPadding = var2_result1.Tokens.Global.Size_150;
		DropdownTextSize = var2_result1.Tokens.Global.FontSize_100;
		FontStyle = Constants_upvr.ReportMenuFontStyle;
		ButtonSize = Constants_upvr.ReportMenuButtonSizeConsole;
	}
end
return getMenuItemSizings