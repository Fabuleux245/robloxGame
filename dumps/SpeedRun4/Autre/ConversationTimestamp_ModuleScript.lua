-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:43
-- Luau version 6, Types version 3
-- Time taken: 0.001072 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppChat").Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ConversationTimestamp")
any_extend_result1.defaultProps = {
	text = "TEST";
	textSize = 24;
	textWidth = 32;
	paddingX = 0;
	paddingY = 0;
	currentStyle = nil;
}
function any_extend_result1.render(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local textSize = arg1.props.textSize
	local currentStyle = arg1.props.currentStyle
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, {
		layout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		});
		padding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, arg1.props.paddingY);
			PaddingRight = UDim.new(0, arg1.props.paddingX);
		});
		timestamp = Roact_upvr.createElement("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Right;
			TextYAlignment = Enum.TextYAlignment.Top;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, arg1.props.textWidth, 0, textSize);
			Text = arg1.props.text;
			TextSize = textSize;
			Font = currentStyle.Font.Body.Font;
			TextColor3 = currentStyle.Theme.TextDefault.Color;
			TextTransparency = currentStyle.Theme.TextDefault.Transparency;
		});
	})
end
return any_extend_result1