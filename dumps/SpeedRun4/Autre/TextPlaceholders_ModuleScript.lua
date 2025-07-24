-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:39
-- Luau version 6, Types version 3
-- Time taken: 0.001212 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TextPlaceholders")
any_extend_result1.defaultProps = {
	LayoutOrder = 0;
	avatarSize = 60;
	avatarCellWidth = 60;
}
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local ShimmerPanel_upvr = require(Parent.UIBlox).App.Loading.ShimmerPanel
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ShimmerPanel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 19
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ShimmerPanel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, -arg1.props.avatarCellWidth, 1, 0);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.LayoutOrder;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12);
				PaddingLeft = UDim.new(0, 0);
			});
			UIList = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
			});
			topRectangle = Roact_upvr.createElement(ShimmerPanel_upvr, {
				LayoutOrder = 1;
				Size = UDim2.new(0, 94, 0, 12);
			});
			spacer = Roact_upvr.createElement("Frame", {
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 0, 7);
				BackgroundTransparency = 1;
			});
			bottomRectangle = Roact_upvr.createElement(ShimmerPanel_upvr, {
				LayoutOrder = 3;
				Size = UDim2.new(0, 169, 0, 12);
			});
		})
	end)
end
return any_extend_result1