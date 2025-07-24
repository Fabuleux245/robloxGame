-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:23
-- Luau version 6, Types version 3
-- Time taken: 0.001128 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.Component:extend("AlertView")
any_extend_result1.defaultProps = {
	Visible = false;
	width = UDim.new(0.5, 0);
	contentPaddingLeft = 12;
	contentPaddingRight = 12;
	contentPaddingTop = 12;
	contentPaddingBottom = 12;
}
local UIBlox_upvr = dependencies.UIBlox
local FitFrameVertical_upvr = require(script.Parent.Parent.FitFrameVertical)
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FitFrameVertical_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 19
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FitFrameVertical_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(FitFrameVertical_upvr, {
			Visible = arg1.props.Visible;
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = arg1_2.Theme.BackgroundUIDefault.Color;
			Position = UDim2.new(0.5, 0, 0.5, 0);
			width = arg1.props.width;
		}, {
			InnerFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
				margin = {
					top = arg1.props.contentPaddingTop;
					bottom = arg1.props.contentPaddingBottom;
					left = arg1.props.contentPaddingLeft;
					right = arg1.props.contentPaddingRight;
				};
				width = UDim.new(1, 0);
				BackgroundTransparency = 1;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}, arg1.props[Roact_upvr.Children]);
		})
	end)
end
return any_extend_result1