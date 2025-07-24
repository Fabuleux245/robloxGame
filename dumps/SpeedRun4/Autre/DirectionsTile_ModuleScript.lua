-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:12
-- Luau version 6, Types version 3
-- Time taken: 0.001527 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconSize_upvr = UIBlox.App.Constant.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return function(arg1) -- Line 19
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local frameHeight = arg1.frameHeight
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, frameHeight);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		ImageIcon = React_upvr.createElement(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(0, 0.5);
			Size = UDim2.new(0, IconSize_upvr.Large, 0, IconSize_upvr.Large);
			ScaleType = Enum.ScaleType.Fit;
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Image = Images_upvr[arg1.imagePath];
			ImageTransparency = useStyle_upvr_result1.Theme.SystemPrimaryDefault.Transparency;
		});
		TextFrame = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, -48, 0, frameHeight);
			LayoutOrder = 2;
		}, {
			TextLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			Header = React_upvr.createElement(StyledTextLabel_upvr, {
				text = arg1.headerText;
				fontStyle = useStyle_upvr_result1.Font.Header2;
				colorStyle = useStyle_upvr_result1.Theme.TextEmphasis;
				size = UDim2.new(1, 0, 0.5, 0);
				lineHeight = 1;
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Center;
				layoutOrder = 1;
			});
			Body = React_upvr.createElement(StyledTextLabel_upvr, {
				text = arg1.descriptionText;
				fontStyle = useStyle_upvr_result1.Font.CaptionBody;
				colorStyle = useStyle_upvr_result1.Theme.TextDefault;
				size = UDim2.new(1, 0, 0.5, 0);
				lineHeight = 1;
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Center;
				layoutOrder = 2;
			});
		});
	})
end