-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:40
-- Luau version 6, Types version 3
-- Time taken: 0.002295 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Translator = require(Foundation.Utility.Localization.Translator)
local tbl_upvr = {
	icon = {
		name = "icons/status/oof_xlarge";
		size = require(Foundation.Enums.IconSize).Large;
	};
	text = Translator:FormatByKey("CommonUI.Controls.NoResultsFound");
	button = {
		icon = "icons/common/refresh";
		text = Translator:FormatByKey("CommonUI.Controls.Action.Refresh");
		onActivated = nil;
	};
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Icon_upvr = require(Foundation.Components.Icon)
local Text_upvr = require(Foundation.Components.Text)
local Button_upvr = require(Foundation.Components.Button)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 45, Named "Empty"
	--[[ Upvalues[9]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: withCommonProps_upvr (readonly)
		[7]: Icon_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: Button_upvr (readonly)
	]]
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local module_2 = {
		tag = "auto-xy size-full col align-y-center align-x-center gap-small";
	}
	module_2.ref = arg2
	local module = {
		Icon = React_upvr.createElement(Icon_upvr, {
			name = withDefaults_upvr_result1.icon.name;
			size = withDefaults_upvr_result1.icon.size;
			style = useTokens_upvr().Color.Content.Default;
			LayoutOrder = 1;
		});
		Text = React_upvr.createElement(Text_upvr, {
			Text = withDefaults_upvr_result1.text;
			LayoutOrder = 2;
			tag = "size-full-0 auto-y text-body-large content-default text-wrap text-align-x-center";
		});
	}
	local var19
	if withDefaults_upvr_result1.button and withDefaults_upvr_result1.button.onActivated then
		var19 = React_upvr.createElement
		var19 = var19(Button_upvr, {
			text = withDefaults_upvr_result1.button.text;
			icon = withDefaults_upvr_result1.button.icon;
			onActivated = withDefaults_upvr_result1.button.onActivated;
			LayoutOrder = 3;
		})
	else
		var19 = nil
	end
	module.Button = var19
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(withDefaults_upvr_result1, module_2), module)
end))