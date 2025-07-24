-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:43
-- Luau version 6, Types version 3
-- Time taken: 0.001381 seconds

local DsaIllegalContentReporting = script:FindFirstAncestor("DsaIllegalContentReporting")
local Parent = DsaIllegalContentReporting.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local Responsive_upvr = require(Parent.Responsive)
local tbl_upvr = {
	OPEN_CUSTOM_WEBVIEW = 20;
}
local useStyle_upvr = UIBlox.Core.Style.useStyle
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local isInExperienceUIVREnabled_upvr = require(Parent.SharedExperimentDefinition).isInExperienceUIVREnabled
local GetFFlagDSAReadOnlyLinkForConsole_upvr = require(Parent.SharedFlags).GetFFlagDSAReadOnlyLinkForConsole
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Constants_upvr = require(DsaIllegalContentReporting.Utility.Constants)
local LinkButton_upvr = UIBlox.App.Button.LinkButton
local HttpService_upvr = game:GetService("HttpService")
local GuiService_upvr = game:GetService("GuiService")
function DSAReportLink() -- Line 26
	--[[ Upvalues[12]:
		[1]: useStyle_upvr (readonly)
		[2]: usePreferredInput_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: isInExperienceUIVREnabled_upvr (readonly)
		[5]: GetFFlagDSAReadOnlyLinkForConsole_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: StyledTextLabel_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: LinkButton_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: GuiService_upvr (readonly)
		[12]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
	if usePreferredInput_upvr() ~= Responsive_upvr.Input.Directional then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 7 end (CF ANALYSIS FAILED)
end
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
function WrapperContainer() -- Line 91
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StyleProviderWithDefaultTheme_upvr (readonly)
	]]
	return React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {
		withDarkTheme = true;
	}, {
		Button = React_upvr.createElement(DSAReportLink);
	})
end
return WrapperContainer