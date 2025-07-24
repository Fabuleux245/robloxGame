-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:22
-- Luau version 6, Types version 3
-- Time taken: 0.002524 seconds

local dependencies = require(script.Parent.Parent.Parent.Parent.dependencies)
local t = dependencies.t
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsInformationModal")
any_extend_result1.validateProps = t.strictInterface({
	text = t.string;
	image = t.table;
	layoutOrder = t.optional(t.number);
})
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconSize_upvr = UIBlox.App.Constant.IconSize
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function any_extend_result1.render(arg1) -- Line 32
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: StyledTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 33
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ImageSetLabel_upvr (copied, readonly)
			[4]: IconSize_upvr (copied, readonly)
			[5]: StyledTextLabel_upvr (copied, readonly)
		]]
		local props = arg1.props
		return Roact_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.fromScale(1, 0);
			BackgroundTransparency = 1;
			LayoutOrder = props.layoutOrder;
		}, {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 12);
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			UIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 24);
				PaddingBottom = UDim.new(0, 36);
			});
			IconContainer = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(120, 132);
				LayoutOrder = 1;
			}, {
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					ImageColor3 = arg1_2.Theme.IconEmphasis.Color;
					ImageTransparency = arg1_2.Theme.IconEmphasis.Transparency;
					Image = props.image;
					Size = UDim2.fromOffset(IconSize_upvr.XLarge, IconSize_upvr.XLarge);
					Position = UDim2.fromScale(0.5, 0.5);
					LayoutOrder = 1;
				});
			});
			Description = Roact_upvr.createElement(StyledTextLabel_upvr, {
				text = props.text;
				fontStyle = arg1_2.Font.CaptionBody;
				colorStyle = arg1_2.Theme.TextEmphasis;
				lineHeight = 1.2;
				size = UDim2.fromScale(1, 0);
				automaticSize = Enum.AutomaticSize.Y;
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Center;
				textYAlignment = Enum.TextYAlignment.Top;
				layoutOrder = 2;
			});
		})
	end)
end
return any_extend_result1