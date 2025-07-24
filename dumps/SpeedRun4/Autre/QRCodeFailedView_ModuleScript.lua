-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:25
-- Luau version 6, Types version 3
-- Time taken: 0.002139 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local TextKeys_upvr = require(ProfileQRCode.Common.TextKeys)
local React_upvr = require(Parent.React)
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
local IconSize_upvr = UIBlox.App.Constant.IconSize
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_graphic_error_xlarge_upvr = Images["icons/graphic/error_xlarge"]
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
local icons_common_refresh_upvr = Images["icons/common/refresh"]
return function(arg1) -- Line 30
	--[[ Upvalues[13]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: TextKeys_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Color3_new_result1_upvr (readonly)
		[6]: IconSize_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: icons_graphic_error_xlarge_upvr (readonly)
		[9]: StyledTextLabel_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: ButtonType_upvr (readonly)
		[12]: StandardButtonSize_upvr (readonly)
		[13]: icons_common_refresh_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Wrapper = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 0);
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			ImageWrapper = React_upvr.createElement("Frame", {
				BorderSizePixel = 0;
				BackgroundColor3 = Color3_new_result1_upvr;
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(IconSize_upvr.XLarge, IconSize_upvr.XLarge);
				LayoutOrder = 1;
			}, {
				FailedImage = React_upvr.createElement(ImageSetLabel_upvr, {
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					Image = icons_graphic_error_xlarge_upvr;
					Size = UDim2.fromOffset(IconSize_upvr.XLarge, IconSize_upvr.XLarge);
					Position = UDim2.fromScale(0.5, 0.5);
					LayoutOrder = 1;
				});
			});
			Spacer1 = React_upvr.createElement("Frame", {
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 0, 0, 12);
				LayoutOrder = 2;
			});
			FailedMessage = React_upvr.createElement(StyledTextLabel_upvr, {
				layoutOrder = 3;
				size = UDim2.new(1, 0, 0, 0);
				text = useLocalization_upvr({
					failedToLoadMessage = TextKeys_upvr.FailedToLoad;
				}).failedToLoadMessage;
				fontStyle = useStyle_upvr_result1.Font.CaptionBody;
				colorStyle = useStyle_upvr_result1.Theme.TextMuted;
				automaticSize = Enum.AutomaticSize.Y;
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Center;
				textYAlignment = Enum.TextYAlignment.Center;
				fluidSizing = false;
				richText = false;
			});
			Spacer2 = React_upvr.createElement("Frame", {
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 0, 0, 20);
				LayoutOrder = 4;
			});
			RetryButton = React_upvr.createElement(Button_upvr, {
				buttonType = ButtonType_upvr.Secondary;
				standardSize = StandardButtonSize_upvr.Regular;
				layoutOrder = 5;
				icon = icons_common_refresh_upvr;
				onActivated = arg1.onActivated;
			});
		});
	})
end