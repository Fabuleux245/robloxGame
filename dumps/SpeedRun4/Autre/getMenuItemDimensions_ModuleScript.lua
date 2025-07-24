-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:19
-- Luau version 6, Types version 3
-- Time taken: 0.001181 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local useStyle_upvr = require(game:GetService("CorePackages").Packages.UIBlox).Core.Style.useStyle
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr = require(AbuseReportMenu.Flags.GetFFlagAddAbuseReportMenuCoreScriptsProvider)
function getMenuItemDimensions(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	if arg1 < Constants_upvr.SmallLayoutThreshold then
		return {
			LeftWidth = Constants_upvr.LeftContainerWidthSmall;
			RightWidth = Constants_upvr.RightContainerWidthSmall;
			TextSize = Constants_upvr.FieldLabelSizeSmall;
		}
	end
	if GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr() then
		return {
			LeftWidth = useStyle_upvr_result1.Tokens.Global.Space_1000 * 3;
			RightWidth = useStyle_upvr_result1.Tokens.Global.Space_1000 * 4;
			TextSize = useStyle_upvr_result1.Tokens.Global.FontSize_100;
		}
	end
	return {
		LeftWidth = Constants_upvr.LeftContainerWidth;
		RightWidth = Constants_upvr.RightContainerWidth;
		TextSize = Constants_upvr.FieldLabelSize;
	}
end
return getMenuItemDimensions