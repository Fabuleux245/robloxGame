-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:24
-- Luau version 6, Types version 3
-- Time taken: 0.002292 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("CheckboxRow")
any_extend_result1.defaultProps = {
	height = 28;
	image = "icons/controls/microphone";
	descriptionText = "Description Text";
	checkboxSelected = false;
	actionDisabled = false;
	onCheckboxActivated = function() -- Line 22, Named "onCheckboxActivated"
	end;
	LayoutOrder = 1;
}
any_extend_result1.validateProps = t.interface({
	height = t.number;
	image = t.string;
	descriptionText = t.string;
	checkboxSelected = t.boolean;
	actionDisabled = t.boolean;
	onCheckboxActivated = t.callback;
	LayoutOrder = t.optional(t.number);
})
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
function any_extend_result1.render(arg1) -- Line 36
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: Checkbox_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 37
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ImageSetLabel_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: Checkbox_upvr (copied, readonly)
		]]
		local var13
		local var14
		if arg1.props.actionDisabled then
			var13 = arg1_2.Theme.TextMuted
			var14 = arg1_2.Theme.IconDefault
		else
			var13 = arg1_2.Theme.TextEmphasis
			var14 = arg1_2.Theme.IconEmphasis
		end
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, arg1.props.height);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.LayoutOrder;
		}, {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, 12);
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			image = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.fromOffset(arg1.props.height, arg1.props.height);
				Image = Images_upvr[arg1.props.image];
				ImageColor3 = var14.Color;
				ImageTransparency = var14.Transparency;
				BackgroundTransparency = 1;
				LayoutOrder = 1;
			});
			text = Roact_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, -(arg1.props.height + 12) * 4, 1, 0);
				Text = arg1.props.descriptionText;
				TextColor3 = var13.Color;
				TextTransparency = var13.Transparency;
				TextSize = arg1_2.Font.Header2.RelativeSize * arg1_2.Font.BaseSize;
				Font = arg1_2.Font.Header2.Font;
				TextXAlignment = Enum.TextXAlignment.Left;
				LayoutOrder = 2;
			});
			checkbox = Roact_upvr.createElement(Checkbox_upvr, {
				size = UDim2.fromOffset(arg1.props.height, arg1.props.height);
				isDisabled = arg1.props.actionDisabled;
				isSelected = arg1.props.checkboxSelected;
				onActivated = arg1.props.onCheckboxActivated;
				text = "";
				layoutOrder = 3;
			});
		})
	end)
end
return any_extend_result1