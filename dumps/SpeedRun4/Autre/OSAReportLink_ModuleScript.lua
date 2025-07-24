-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:44
-- Luau version 6, Types version 3
-- Time taken: 0.002090 seconds

local Parent = script:FindFirstAncestor("DsaIllegalContentReporting").Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local tbl_upvr = {
	OPEN_CUSTOM_WEBVIEW = 20;
}
local useTokens_upvr = Foundation.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local HttpService_upvr = game:GetService("HttpService")
local GuiService_upvr = game:GetService("GuiService")
local ControlState_upvr = Foundation.Enums.ControlState
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
return React_upvr.memo(function() -- Line 22, Named "OSAReportLink"
	--[[ Upvalues[9]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: ControlState_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: Text_upvr (readonly)
	]]
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	local var6_result1_upvr = useLocalization_upvr({
		HelpPageTitle = "Feature.ReportAbuse.DSAIllegal.ReportPageTitle";
		OSACopy1 = "Feature.ReportAbuse.Message.OSACopy1";
		OSACopy2 = "Feature.ReportAbuse.Message.OSACopy2";
		OSACopy3 = "Feature.ReportAbuse.Message.OSACopy3";
	})
	return React_upvr.createElement(View_upvr, {
		tag = "size-full col align-x-left gap-small";
	}, {
		Divider = React_upvr.createElement(View_upvr, {
			tag = "size-full-0 stroke-muted padding-top-medium";
			LayoutOrder = 1;
		});
		OSACopy1 = React_upvr.createElement(Text_upvr, {
			Text = var6_result1_upvr.OSACopy1;
			fontStyle = useTokens_upvr_result1_upvr.Typography.BodySmall;
			textStyle = useTokens_upvr_result1_upvr.Color.Content.Muted;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			tag = "auto-xy";
			LayoutOrder = 2;
		});
		OSACopy2 = React_upvr.createElement(Text_upvr, {
			Text = var6_result1_upvr.OSACopy2;
			fontStyle = useTokens_upvr_result1_upvr.Typography.BodySmall;
			textStyle = useTokens_upvr_result1_upvr.Color.Content.Muted;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			tag = "auto-xy";
			LayoutOrder = 3;
		});
		OSALink = React_upvr.createElement(Text_upvr, {
			Text = `<b>{var6_result1_upvr.OSACopy3}</b>`;
			RichText = true;
			backgroundStyle = any_useState_result1;
			fontStyle = useTokens_upvr_result1_upvr.Typography.BodySmall;
			textStyle = useTokens_upvr_result1_upvr.Color.Content.Emphasis;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			onActivated = React_upvr.useCallback(function() -- Line 33
				--[[ Upvalues[4]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: var6_result1_upvr (readonly)
					[3]: GuiService_upvr (copied, readonly)
					[4]: tbl_upvr (copied, readonly)
				]]
				GuiService_upvr:BroadcastNotification(HttpService_upvr:JSONEncode({
					title = var6_result1_upvr.HelpPageTitle;
					presentationStyle = nil;
					visible = true;
					url = "https://www.roblox.com/illegal-content-reporting";
				}), tbl_upvr.OPEN_CUSTOM_WEBVIEW)
			end, {});
			onStateChanged = React_upvr.useCallback(function(arg1) -- Line 43
				--[[ Upvalues[3]:
					[1]: ControlState_upvr (copied, readonly)
					[2]: any_useState_result2_upvr (readonly)
					[3]: useTokens_upvr_result1_upvr (readonly)
				]]
				if arg1 == ControlState_upvr.Hover then
					any_useState_result2_upvr(useTokens_upvr_result1_upvr.Color.State.Hover)
				else
					if arg1 == ControlState_upvr.Pressed then
						any_useState_result2_upvr(useTokens_upvr_result1_upvr.Color.State.Press)
						return
					end
					any_useState_result2_upvr(nil)
				end
			end, {});
			tag = "auto-xy radius-small padding-xsmall";
			LayoutOrder = 4;
		});
	})
end)