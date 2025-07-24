-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:33
-- Luau version 6, Types version 3
-- Time taken: 0.001815 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent.Parent
local Parent_3 = Parent.Parent
local Roact_upvr = require(Parent_3.Roact)
local t = require(Parent_3.t)
local ItemTileEnums_upvr = require(Parent_2.Enum.ItemTileEnums)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemTileStatus")
any_extend_result1.validateProps = t.strictInterface({
	statusText = t.string;
	statusStyle = ItemTileEnums_upvr.StatusStyle.isEnumValue;
})
local function getStyle_upvr(arg1, arg2) -- Line 30, Named "getStyle"
	--[[ Upvalues[1]:
		[1]: ItemTileEnums_upvr (readonly)
	]]
	if arg2 == ItemTileEnums_upvr.StatusStyle.Info then
		return {
			Background = arg1.SystemPrimaryDefault;
			Text = arg1.SystemPrimaryContent;
		}
	end
	if arg2 == ItemTileEnums_upvr.StatusStyle.Alert then
		return {
			Background = arg1.Alert;
			Text = arg1.TextEmphasis;
		}
	end
	return {
		Background = arg1.SystemPrimaryDefault;
		Text = arg1.SystemPrimaryContent;
	}
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local GetTextSize_upvr = require(Parent.Core.Text.GetTextSize)
local vector2_upvr = Vector2.new(50, 20)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent.App.ImageSet.Images)
local vector2_upvr_2 = Vector2.new(10, 6)
function any_extend_result1.render(arg1) -- Line 49
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
		[3]: vector2_upvr (readonly)
		[4]: getStyle_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: vector2_upvr_2 (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 50
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: GetTextSize_upvr (copied, readonly)
			[3]: vector2_upvr (copied, readonly)
			[4]: getStyle_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: ImageSetComponent_upvr (copied, readonly)
			[7]: Images_upvr (copied, readonly)
			[8]: vector2_upvr_2 (copied, readonly)
		]]
		local Font_2 = arg1_2.Font
		local Tokens = arg1_2.Tokens
		local statusText = arg1.props.statusText
		local Font = Font_2.CaptionHeader.Font
		local var23 = Font_2.BaseSize * Font_2.CaptionHeader.RelativeSize
		local GetTextSize_upvr_result1 = GetTextSize_upvr(statusText, var23, Font, vector2_upvr)
		local getStyle_upvr_result1 = getStyle_upvr(arg1_2.Theme, arg1.props.statusStyle)
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
			BackgroundTransparency = 1;
			Image = Images_upvr["component_assets/circle_17"];
			ImageColor3 = getStyle_upvr_result1.Background.Color;
			ImageTransparency = getStyle_upvr_result1.Background.Transparency;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 8, 9, 9);
			Position = UDim2.new(0, Tokens.Global.Size_100, 0, Tokens.Global.Size_100);
			Size = UDim2.new(0, GetTextSize_upvr_result1.X + vector2_upvr_2.X, 0, GetTextSize_upvr_result1.Y + vector2_upvr_2.Y);
		}, {
			Text = Roact_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Font = Font;
				TextSize = var23;
				Text = statusText;
				TextColor3 = getStyle_upvr_result1.Text.Color;
				TextTransparency = getStyle_upvr_result1.Text.TextTransparency;
				TextTruncate = Enum.TextTruncate.AtEnd;
				TextXAlignment = Enum.TextXAlignment.Center;
				TextYAlignment = Enum.TextYAlignment.Center;
				Size = UDim2.new(1, 0, 1, 0);
			});
		})
	end)
end
return any_extend_result1