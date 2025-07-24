-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:59
-- Luau version 6, Types version 3
-- Time taken: 0.000839 seconds

local Parent = script:FindFirstAncestor("PeopleReactView").Parent
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
local Text_upvr = Foundation.Text
return function(arg1) -- Line 23, Named "CoreButton"
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Icon_upvr (readonly)
		[5]: IconSize_upvr (readonly)
		[6]: Text_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "size-0-full grow radius-medium padding-x-small align-y-center row gap-xsmall bg-surface-200 bg-surface-300:hover";
		onActivated = arg1.onActivated;
		LayoutOrder = arg1.LayoutOrder;
	}, {
		Icon = React_upvr.createElement(Icon_upvr, {
			name = arg1.icon;
			size = IconSize_upvr.Medium;
			LayoutOrder = 1;
		});
		Text = React_upvr.createElement(Text_upvr, {
			Text = arg1.text;
			textStyle = {
				Color3 = useTokens_upvr().Color.Content.Default.Color3;
			};
			tag = "text-label-medium size-0-full auto-x text-align-x-left";
			LayoutOrder = 2;
		});
	})
end