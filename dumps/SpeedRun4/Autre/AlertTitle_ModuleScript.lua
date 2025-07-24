-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:25
-- Luau version 6, Types version 3
-- Time taken: 0.003447 seconds

local Parent = script.Parent.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AlertTitle")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number);
	margin = t.optional(t.table);
	maxWidth = t.optional(t.number);
	minWidth = t.optional(t.number);
	screenSize = t.Vector2;
	title = t.string;
	titlePadding = t.optional(t.number);
	titleContent = t.optional(t.callback);
	onCloseClicked = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	margin = {
		top = 0;
		bottom = 24;
		left = 24;
		right = 24;
	};
	maxWidth = 400;
	minWidth = 272;
	titlePadding = 12;
}
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local FitFrameOnAxis_upvr = require(Parent_2.FitFrame).FitFrameOnAxis
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent.ImageSet.Images)
local GenericTextLabel_upvr = require(Parent_3.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 50
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FitFrameOnAxis_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: GenericTextLabel_upvr (readonly)
	]]
	local var16_upvr = math.clamp(arg1.props.screenSize.X - arg1.props.margin.left - arg1.props.margin.right, arg1.props.minWidth, arg1.props.maxWidth) - arg1.props.margin.left - arg1.props.margin.right
	return withStyle_upvr(function(arg1_2) -- Line 58
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FitFrameOnAxis_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ImageSetComponent_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: GenericTextLabel_upvr (copied, readonly)
			[7]: var16_upvr (readonly)
		]]
		local Theme = arg1_2.Theme
		local Header = arg1_2.Tokens.Semantic.Typography.Header
		local FontSize = Header.FontSize
		local module = {}
		local titleContent = arg1.props.titleContent
		if titleContent then
			titleContent = Roact_upvr.createElement
			titleContent = titleContent(FitFrameOnAxis_upvr, {
				BackgroundTransparency = 1;
				LayoutOrder = 0;
				minimumSize = UDim2.new(1, 0, 0, 0);
			}, {
				Content = arg1.props.titleContent();
			})
		end
		module.TitleContent = titleContent
		local tbl = {
			BackgroundTransparency = 1;
			contentPadding = UDim.new(0, 12);
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			LayoutOrder = 1;
		}
		local var27 = 1
		tbl.minimumSize = UDim2.new(var27, 0, 0, 0)
		local tbl_2 = {}
		if arg1.props.onCloseClicked then
			var27 = Roact_upvr.createElement
			var27 = var27("Frame", {
				BackgroundTransparency = 1;
				LayoutOrder = 1;
				Size = UDim2.new(1, 0, 0, FontSize);
			}, {
				CloseButton = Roact_upvr.createElement(ImageSetComponent_upvr.Button, {
					BackgroundTransparency = 1;
					Size = UDim2.new(0, 36, 0, 36);
					Image = Images_upvr["icons/navigation/close"];
					ImageColor3 = Theme.IconEmphasis.Color;
					ImageTransparency = Theme.IconEmphasis.Transparency;
					AnchorPoint = Vector2.new(0, 0.5);
					Position = UDim2.new(0, 0, 0.5, 0);
					[Roact_upvr.Event.Activated] = arg1.props.onCloseClicked;
				});
				TitleText = Roact_upvr.createElement(GenericTextLabel_upvr, {
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.new(0.5, 0, 0.5, 0);
					colorStyle = Theme.TextEmphasis;
					fontStyle = Header;
					Size = UDim2.new(1, -(2 * (36 + arg1.props.titlePadding)), 0, FontSize * 2);
					LayoutOrder = 1;
					Text = arg1.props.title;
					TextSize = FontSize;
					TextTruncate = Enum.TextTruncate.AtEnd;
				});
			})
		else
			var27 = Roact_upvr.createElement
			var27 = var27(GenericTextLabel_upvr, {
				colorStyle = Theme.TextEmphasis;
				fontStyle = Header;
				maxSize = Vector2.new(var16_upvr, FontSize * 2);
				LayoutOrder = 1;
				Text = arg1.props.title;
				TextSize = FontSize;
				TextTruncate = Enum.TextTruncate.AtEnd;
			})
		end
		tbl_2.Title = var27
		tbl_2.Underline = Roact_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundColor3 = Theme.Divider.Color;
			BackgroundTransparency = Theme.Divider.Transparency;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, 1);
		})
		module.TitleArea = Roact_upvr.createElement(FitFrameOnAxis_upvr, tbl, tbl_2)
		return Roact_upvr.createElement(FitFrameOnAxis_upvr, {
			BackgroundTransparency = 1;
			contentPadding = UDim.new(0, 8);
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			LayoutOrder = arg1.props.layoutOrder;
			margin = {
				top = 12;
				bottom = 0;
				left = 0;
				right = 0;
			};
			minimumSize = UDim2.new(1, 0, 0, 0);
		}, module)
	end)
end
return any_extend_result1