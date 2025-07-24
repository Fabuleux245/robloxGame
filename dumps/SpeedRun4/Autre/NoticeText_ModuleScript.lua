-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:44
-- Luau version 6, Types version 3
-- Time taken: 0.002939 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppChat").Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("NoticeText")
any_extend_result1.defaultProps = {
	AnchorPoint = Vector2.new(0, 0);
	Font = Enum.Font.Gotham;
	HorizontalAlignment = Enum.HorizontalAlignment.Left;
	LayoutOrder = 1;
	Position = UDim2.new(0, 0, 0, 0);
	Text = "PLACEHOLDER Not everyone in this chat can see your message.";
	TextColor3 = nil;
	TextSize = 17;
	TextTransparency = nil;
	TextWrapped = true;
	TextXAlignment = Enum.TextXAlignment.Left;
	TextYAlignment = Enum.TextYAlignment.Top;
	[Roact_upvr.Change.AbsoluteSize] = function() -- Line 22
	end;
	margin = {
		top = 0;
		left = 0;
		right = 0;
		bottom = 0;
	};
	maxWidth = 0;
	width = UDim.new(1, 0);
}
local TextService_upvr = game:GetService("TextService")
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local maximum = math.max(0, (arg1.props.maxWidth) - (arg1.props.margin.left + arg1.props.margin.right))
	local any_GetTextSize_result1 = TextService_upvr:GetTextSize(arg1.props.Text, arg1.props.TextSize, arg1.props.Font, Vector2.new(maximum, math.huge))
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg1.props.AnchorPoint;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = arg1.props.LayoutOrder;
		Position = arg1.props.Position;
		[Roact_upvr.Change.AbsoluteSize] = arg1.props[Roact_upvr.Change.AbsoluteSize];
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(arg1.props.width, UDim.new(0, 0));
	}, {
		Layout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = arg1.props.HorizontalAlignment;
		});
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, arg1.props.margin.bottom);
			PaddingRight = UDim.new(0, arg1.props.margin.right);
			PaddingLeft = UDim.new(0, arg1.props.margin.left);
			PaddingTop = UDim.new(0, arg1.props.margin.top);
		});
		NoticeText = Roact_upvr.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Font = arg1.props.Font;
			Text = arg1.props.Text;
			TextColor3 = arg1.props.TextColor3;
			TextSize = arg1.props.TextSize;
			TextTransparency = arg1.props.TextTransparency;
			TextWrapped = arg1.props.TextWrapped;
			TextXAlignment = arg1.props.TextXAlignment;
			TextYAlignment = arg1.props.TextYAlignment;
			Size = UDim2.fromOffset(math.ceil(any_GetTextSize_result1.X), math.ceil(any_GetTextSize_result1.Y));
		}, {
			SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(maximum, math.huge);
			});
		});
	})
end
return any_extend_result1