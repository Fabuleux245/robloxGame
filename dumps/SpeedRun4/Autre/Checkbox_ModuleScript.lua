-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:00
-- Luau version 6, Types version 3
-- Time taken: 0.001726 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.Component:extend("CheckBox")
local TextService_upvr = game:GetService("TextService")
local CheckBoxInnerPadding_upvr = Constants_upvr.UtilityBarFormatting.CheckBoxInnerPadding
function any_extend_result1.render(arg1) -- Line 10
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: TextService_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CheckBoxInnerPadding_upvr (readonly)
	]]
	local checkBoxHeight = arg1.props.checkBoxHeight
	local frameHeight = arg1.props.frameHeight
	local name_upvr = arg1.props.name
	local font = arg1.props.font
	local fontSize = arg1.props.fontSize
	local isSelected_upvr = arg1.props.isSelected
	local var12 = ""
	local var13 = 1
	local unselectedColor = arg1.props.unselectedColor
	if isSelected_upvr then
		var12 = Constants_upvr.Image.Check
		var13 = 0
		unselectedColor = arg1.props.selectedColor
	end
	local module = {
		Size = UDim2.new(0, checkBoxHeight + TextService_upvr:GetTextSize(name_upvr, fontSize, font, Vector2.new(0, frameHeight)).X + CheckBoxInnerPadding_upvr * 2, 0, frameHeight);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
	}
	local onCheckBoxClicked_upvr = arg1.props.onCheckBoxClicked
	module[Roact_upvr.Event.Activated] = function(arg1_2) -- Line 43
		--[[ Upvalues[3]:
			[1]: onCheckBoxClicked_upvr (readonly)
			[2]: name_upvr (readonly)
			[3]: isSelected_upvr (readonly)
		]]
		onCheckBoxClicked_upvr(name_upvr, not isSelected_upvr)
	end
	return Roact_upvr.createElement("ImageButton", module, {
		Icon = Roact_upvr.createElement("ImageLabel", {
			Image = var12;
			Size = UDim2.new(0, checkBoxHeight, 0, checkBoxHeight);
			Position = UDim2.new(0, 0, 0.5, -checkBoxHeight / 2);
			BackgroundColor3 = unselectedColor;
			BackgroundTransparency = 0;
			BorderColor3 = Constants_upvr.Color.Text;
			BorderSizePixel = var13;
		});
		Text = Roact_upvr.createElement("TextLabel", {
			Text = name_upvr;
			TextColor3 = Constants_upvr.Color.Text;
			TextXAlignment = Enum.TextXAlignment.Left;
			Font = font;
			TextSize = fontSize;
			Size = UDim2.new(1, -frameHeight, 1, 0);
			Position = UDim2.new(0, checkBoxHeight + CheckBoxInnerPadding_upvr, 0, 0);
			BackgroundTransparency = 1;
		});
	})
end
return any_extend_result1