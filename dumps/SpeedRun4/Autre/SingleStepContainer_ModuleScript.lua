-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:17
-- Luau version 6, Types version 3
-- Time taken: 0.001245 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local useTokens_upvr = Foundation.Hooks.useTokens
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local SingleStepInnerContentRenderer_upvr = require(GenericAbuseReporting.Bedui.SingleStepInnerContentRenderer)
return React_upvr.memo(function(arg1) -- Line 21, Named "SingleStepContainer"
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Text_upvr (readonly)
		[5]: SingleStepInnerContentRenderer_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	local module = {
		Title = React_upvr.createElement(Text_upvr, {
			Text = arg1.node.title;
			fontStyle = useTokens_upvr_result1.Typography.HeadingLarge;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			tag = "auto-xy padding-bottom-medium";
			LayoutOrder = 0;
		});
	}
	local var13
	if arg1.node.subtitle and 0 < #arg1.node.subtitle then
		var13 = React_upvr.createElement
		var13 = var13(Text_upvr, {
			Text = arg1.node.subtitle;
			fontStyle = useTokens_upvr_result1.Typography.LabelLarge;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			tag = "auto-xy padding-bottom-medium";
			LayoutOrder = 1;
		})
	else
		var13 = nil
	end
	module.Subtitle = var13
	var13 = React_upvr.createElement
	var13 = var13(View_upvr, {
		tag = "size-full-0 auto-y";
		LayoutOrder = 2;
	}, {
		InnerContentRenderer = React_upvr.createElement(SingleStepInnerContentRenderer_upvr, {
			contentConfig = arg1.node.innerContentConfig;
			formDataKeysWithError = arg1.formDataKeysWithError;
		});
	})
	module.InnerContent = var13
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-0 auto-y col gap-medium";
	}, module)
end)