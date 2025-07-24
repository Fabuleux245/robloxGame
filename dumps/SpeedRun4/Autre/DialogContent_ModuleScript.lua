-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:26
-- Luau version 6, Types version 3
-- Time taken: 0.001193 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local useScrollBarPadding_upvr = require(script.Parent.useScrollBarPadding)
local React_upvr = require(Foundation.Parent.React)
local ScrollView_upvr = require(Foundation.Components.ScrollView)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
return function(arg1) -- Line 15, Named "DialogContent"
	--[[ Upvalues[4]:
		[1]: useScrollBarPadding_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ScrollView_upvr (readonly)
		[4]: withCommonProps_upvr (readonly)
	]]
	local var2_result1, var2_result2 = useScrollBarPadding_upvr()
	return React_upvr.createElement(ScrollView_upvr, withCommonProps_upvr(arg1, {
		scroll = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			CanvasSize = UDim2.new(0, 0, 0, 0);
		};
		onAbsoluteCanvasSizeChanged = var2_result2;
		onAbsoluteWindowSizeChanged = var2_result2;
		tag = "auto-y size-full fill clip";
	}), {
		ScrollPadding = React_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, var2_result1);
		});
		ScrollContent = React_upvr.createElement(React_upvr.Fragment, nil, arg1.children);
	})
end