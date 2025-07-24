-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:25
-- Luau version 6, Types version 3
-- Time taken: 0.001662 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("AlertViewTextbox")
any_extend_result1_upvr.defaultProps = {
	LayoutOrder = 0;
	Text = "";
	PlaceholderText = nil;
}
local UIBlox_upvr = dependencies.UIBlox
local Rect_new_result1_upvr = Rect.new(7, 8, 7, 8)
local Images_upvr = require(script.Parent.Images)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(200, 200, 200)
function any_extend_result1_upvr.render(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: UIBlox_upvr (readonly)
		[2]: Rect_new_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: Color3_fromRGB_result1_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 20
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Rect_new_result1_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: Color3_fromRGB_result1_upvr (copied, readonly)
		]]
		local Font = arg1_2.Font
		local Theme = arg1_2.Theme
		return Roact_upvr.createElement("ImageLabel", {
			ImageRectSize = Vector2.new(0, 0);
			BackgroundTransparency = 1;
			Image = Images_upvr.buttonStroke.Image;
			ImageColor3 = Theme.UIDefault.Color;
			ImageRectOffset = Vector2.new(0, 0);
			LayoutOrder = arg1.props.LayoutOrder;
			ScaleType = Enum.ScaleType.Slice;
			Size = UDim2.new(1, 0, 0, 30);
			SliceCenter = Rect_new_result1_upvr;
		}, {
			Textbox = Roact_upvr.createElement("TextBox", {
				BackgroundTransparency = 1;
				ClearTextOnFocus = false;
				Font = Font.Header2.Font;
				PlaceholderText = arg1.props.PlaceholderText;
				PlaceholderColor3 = Color3_fromRGB_result1_upvr;
				Position = UDim2.new(0, 6, 0, 0);
				Size = UDim2.new(1, -12, 1, 0);
				Text = arg1.props.Text;
				TextColor3 = Theme.TextDefault.Color;
				TextSize = Font.BaseSize * Font.CaptionBody.RelativeSize;
				TextTruncate = Enum.TextTruncate.AtEnd;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
				[Roact_upvr.Change.Text] = function(arg1_3) -- Line 57
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					if arg1.props.onTextChanged then
						arg1.props.onTextChanged(arg1_3.Text)
					end
				end;
				[Roact_upvr.Ref] = arg1.props.forwardRef;
			});
		})
	end)
end
local Cryo_upvr = dependencies.Cryo
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 69
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)