-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:25
-- Luau version 6, Types version 3
-- Time taken: 0.001777 seconds

local Parent = script:FindFirstAncestor("BulkPurchaseApp").Parent
local function mapTokens_upvr(arg1) -- Line 10, Named "mapTokens"
	local Size_600 = arg1.Global.Size_600
	local Space_100 = arg1.Global.Space_100
	return {
		fontStyle = arg1.Semantic.Typography.Body;
		colorStyle = arg1.Semantic.Color.Text.Default;
		imageRightMargin = arg1.Global.Space_150;
		imageBoxSize = Size_600;
		imageBoxPadding = Space_100;
		imageBoxTransparency = arg1.Semantic.Color.Common.Placeholder.Transparency;
		imageBoxBackgroundColor = arg1.Semantic.Color.Common.Placeholder.Color3;
		imageBoxCornerRadius = arg1.Semantic.Radius.Medium;
		imageSize = Size_600 - Space_100 * 2;
	}
end
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local Box_upvr = require(script.Parent.Box)
local StyledTextLabel_upvr = require(Parent.UIBlox).App.Text.StyledTextLabel
return function(arg1) -- Line 34, Named "Item"
	--[[ Upvalues[5]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: mapTokens_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Box_upvr (readonly)
		[5]: StyledTextLabel_upvr (readonly)
	]]
	local var5_result1 = useDesignTokens_upvr(mapTokens_upvr)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, var5_result1.imageBoxSize);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
	}, {
		ImageBox = React_upvr.createElement(Box_upvr, {
			Size = UDim2.fromOffset(var5_result1.imageBoxSize, var5_result1.imageBoxSize);
			BorderSizePixel = 0;
			BackgroundTransparency = var5_result1.imageBoxTransparency;
			BackgroundColor3 = var5_result1.imageBoxBackgroundColor;
			padding = {var5_result1.imageBoxPadding, var5_result1.imageBoxPadding, var5_result1.imageBoxPadding, var5_result1.imageBoxPadding};
			cornerRadius = UDim.new(0, var5_result1.imageBoxCornerRadius);
		}, {
			Image = React_upvr.createElement("ImageLabel", {
				Image = arg1.image;
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(var5_result1.imageSize, var5_result1.imageSize);
				[React_upvr.Tag] = "data-testid=BulkPurchaseApp_ItemImage";
			});
		});
		LineItem = React_upvr.createElement("Frame", {
			Position = UDim2.fromOffset(var5_result1.imageBoxSize + var5_result1.imageRightMargin, 0);
			Size = UDim2.new(1, -(var5_result1.imageBoxSize + var5_result1.imageRightMargin), 1, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, React_upvr.createElement(StyledTextLabel_upvr, {
			fontStyle = var5_result1.fontStyle;
			colorStyle = var5_result1.colorStyle;
			text = arg1.name;
			textTruncate = Enum.TextTruncate.AtEnd;
			textYAlignment = Enum.TextYAlignment.Top;
			size = UDim2.new(0.66, 0, 1, 0);
			lineHeight = var5_result1.fontStyle.lineHeight;
		}), React_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(0.33, 0, 1, 0);
			Position = UDim2.new(1, 0, 0, 0);
		}, arg1.endSlot));
	})
end