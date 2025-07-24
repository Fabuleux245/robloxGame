-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:28
-- Luau version 6, Types version 3
-- Time taken: 0.003468 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuHeader")
any_extend_result1.validateProps = t.strictInterface({
	gameName = t.string;
	layoutOrder = t.integer;
	height = t.numberPositive;
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local component_assets_circle_17_upvr = Images["component_assets/circle_17"]
local Rect_new_result1_upvr = Rect.new(8, 8, 9, 9)
local icons_imageUnavailable_upvr = Images["icons/imageUnavailable"]
function any_extend_result1.render(arg1) -- Line 38
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: component_assets_circle_17_upvr (readonly)
		[5]: Rect_new_result1_upvr (readonly)
		[6]: icons_imageUnavailable_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 39
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetLabel_upvr (copied, readonly)
			[3]: component_assets_circle_17_upvr (copied, readonly)
			[4]: Rect_new_result1_upvr (copied, readonly)
			[5]: icons_imageUnavailable_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		local Theme = arg1_2.Theme
		local Font = arg1_2.Font
		local var16
		if game.GameId == 0 then
			var16 = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Image = component_assets_circle_17_upvr;
				SliceCenter = Rect_new_result1_upvr;
				ScaleType = Enum.ScaleType.Slice;
				Size = UDim2.fromOffset(80, 80);
				ImageColor3 = arg1_2.Theme.PlaceHolder.Color;
				ImageTransparency = arg1_2.Theme.PlaceHolder.Transparency;
			}, {
				PlaceholderIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Size = UDim2.fromOffset(44, 44);
					Position = UDim2.fromScale(0.5, 0.5);
					Image = icons_imageUnavailable_upvr;
					ImageColor3 = arg1_2.Theme.UIDefault.Color;
					ImageTransparency = arg1_2.Theme.UIDefault.Transparency;
					AnchorPoint = Vector2.new(0.5, 0.5);
				});
			})
		else
			var16 = Roact_upvr.createElement("ImageLabel", {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(80, 80);
				Image = "rbxthumb://type=GameIcon&id=%d&w=%d&h=%d":format(game.GameId, 128, 128);
			})
		end
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = arg1.props.layoutOrder;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, arg1.props.height);
		}, {
			ContentsFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
			}, {
				Layout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Left;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					Padding = UDim.new(0, 20);
				});
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 20);
					PaddingRight = UDim.new(0, 20);
				});
				GameIcon = var16;
				TextFrame = Roact_upvr.createElement("Frame", {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, -100, 1, 0);
				}, {
					TextLabel = Roact_upvr.createElement("TextLabel", {
						BackgroundTransparency = 1;
						Size = UDim2.new(1, 0, 1, -45);
						Position = UDim2.fromOffset(0, 25);
						Font = Font.Header1.Font;
						Text = arg1.props.gameName;
						TextSize = Font.BaseSize * Font.Header1.RelativeSize;
						TextColor3 = Theme.TextEmphasis.Color;
						TextTransparency = Theme.TextEmphasis.TextTransparency;
						TextXAlignment = Enum.TextXAlignment.Left;
						TextYAlignment = Enum.TextYAlignment.Top;
						TextTruncate = Enum.TextTruncate.AtEnd;
						TextWrapped = true;
					});
				});
			});
			Divider = Roact_upvr.createElement("Frame", {
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.fromScale(0, 1);
				AnchorPoint = Vector2.new(0, 1);
				BackgroundTransparency = Theme.Divider.Transparency;
				BackgroundColor3 = Theme.Divider.Color;
			});
		})
	end)
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 138, Named "mapStateToProps"
	return {
		gameName = arg1.gameInfo.name;
	}
end, nil)(any_extend_result1)