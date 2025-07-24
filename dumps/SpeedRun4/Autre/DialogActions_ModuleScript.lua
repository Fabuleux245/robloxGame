-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:25
-- Luau version 6, Types version 3
-- Time taken: 0.001341 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local Dash_upvr = require(Parent.Dash)
local Button_upvr = require(Foundation.Components.Button)
local FillBehavior_upvr = require(Foundation.Enums.FillBehavior)
local View_upvr = require(Foundation.Components.View)
local Text_upvr = require(Foundation.Components.Text)
return function(arg1) -- Line 32, Named "DialogActions"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: Dash_upvr (readonly)
		[3]: Button_upvr (readonly)
		[4]: FillBehavior_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: Text_upvr (readonly)
	]]
	local module_2 = {}
	local any_createElement_result1 = React_upvr.createElement(View_upvr, {
		tag = "row wrap gap-large auto-y size-full-0";
		LayoutOrder = 1;
	}, {
		Actions = React_upvr.useMemo(function() -- Line 33
			--[[ Upvalues[5]:
				[1]: React_upvr (copied, readonly)
				[2]: Dash_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: Button_upvr (copied, readonly)
				[5]: FillBehavior_upvr (copied, readonly)
			]]
			return React_upvr.createElement(React_upvr.Fragment, nil, Dash_upvr.map(arg1.actions, function(arg1_2, arg2) -- Line 37
				--[[ Upvalues[4]:
					[1]: React_upvr (copied, readonly)
					[2]: Button_upvr (copied, readonly)
					[3]: Dash_upvr (copied, readonly)
					[4]: FillBehavior_upvr (copied, readonly)
				]]
				local module = {
					key = `{arg2}-{arg1_2.text}`;
					Name = arg1_2.text;
				}
				module.LayoutOrder = arg2
				module.fillBehavior = FillBehavior_upvr.Fill
				return React_upvr.createElement(Button_upvr, Dash_upvr.join(arg1_2, module))
			end))
		end, {arg1.actions});
	})
	module_2.ActionsContainer = any_createElement_result1
	if arg1.label then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(Text_upvr, {
			Text = arg1.label;
			tag = "text-label-small text-align-x-center text-align-y-top auto-y size-full-0";
			LayoutOrder = 2;
		})
	else
		any_createElement_result1 = nil
	end
	module_2.ActionsLabel = any_createElement_result1
	return React_upvr.createElement(View_upvr, {
		tag = "col gap-large auto-y size-full-0";
		LayoutOrder = arg1.LayoutOrder;
	}, module_2)
end