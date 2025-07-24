-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:15
-- Luau version 6, Types version 3
-- Time taken: 0.002154 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local LoadingSpinner_upvr = UIBlox.App.Loading.LoadingSpinner
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return function(arg1) -- Line 20, Named "ProgressTile"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: LoadingSpinner_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
	]]
	local frameHeight = arg1.frameHeight
	local var3_result1 = useStyle_upvr()
	local module = {}
	local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		Padding = UDim.new(0, 12);
	})
	module.UIListLayout = any_createElement_result1
	if arg1.finished then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(ImageSetLabel_upvr, {
			Size = UDim2.new(0, frameHeight, 0, frameHeight);
			ScaleType = Enum.ScaleType.Fit;
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Image = Images_upvr["icons/status/success"];
			ImageTransparency = var3_result1.Theme.SystemPrimaryDefault.Transparency;
			ImageColor3 = var3_result1.Theme.IconEmphasis.Color;
		})
	else
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(LoadingSpinner_upvr, {
			size = UDim2.fromOffset(frameHeight, frameHeight);
		})
	end
	module.StatusIcon = any_createElement_result1
	module.TextFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, -frameHeight - 12, 0, frameHeight);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, {
		ProgressText = React_upvr.createElement(StyledTextLabel_upvr, {
			text = arg1.progressText;
			fontStyle = var3_result1.Font.CaptionBody;
			colorStyle = var3_result1.Theme.TextDefault;
			size = UDim2.new(1, 0, 1, 0);
			lineHeight = 1;
			textTruncate = Enum.TextTruncate.AtEnd;
			textXAlignment = Enum.TextXAlignment.Left;
			textYAlignment = Enum.TextYAlignment.Center;
		});
	})
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, frameHeight);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end