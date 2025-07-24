-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:28
-- Luau version 6, Types version 3
-- Time taken: 0.001191 seconds

local Parent = script:FindFirstAncestor("BulkPurchaseApp").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local function PriceIcon_upvr(arg1) -- Line 18, Named "PriceIcon"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	return React_upvr.createElement(ImageSetLabel_upvr, {
		Size = arg1.Size;
		Image = Images_upvr["icons/common/robux_small"];
		ImageColor3 = arg1.color;
		ImageTransparency = 0;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
	})
end
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local NumberLocalization_upvr = require(Parent.Localization).NumberLocalization
local LocalizationService_upvr = game:GetService("LocalizationService")
return function(arg1) -- Line 35, Named "Price"
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: PriceIcon_upvr (readonly)
		[4]: StyledTextLabel_upvr (readonly)
		[5]: NumberLocalization_upvr (readonly)
		[6]: LocalizationService_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		FillDirection = Enum.FillDirection.Horizontal;
		Padding = UDim.new(0, useDesignTokens_upvr().Global.Space_50);
	}), React_upvr.createElement(PriceIcon_upvr, {
		Size = UDim2.fromOffset(arg1.fontStyle.FontSize, arg1.fontStyle.FontSize);
		color = arg1.colorStyle.Color3;
		LayoutOrder = 1;
	}), React_upvr.createElement(StyledTextLabel_upvr, {
		fontStyle = arg1.fontStyle;
		colorStyle = arg1.colorStyle;
		text = NumberLocalization_upvr.localize(arg1.amount, LocalizationService_upvr.RobloxLocaleId);
		textXAlignment = Enum.TextXAlignment.Right;
		layoutOrder = 2;
	}))
end