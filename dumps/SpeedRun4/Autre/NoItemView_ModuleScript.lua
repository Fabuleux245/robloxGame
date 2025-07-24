-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:10
-- Luau version 6, Types version 3
-- Time taken: 0.003343 seconds

local dependencies = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = dependencies.Hooks.useLocalization
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 29, Named "NoItemView"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Images_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var3_result1 = useStyle_upvr()
	local Font = var3_result1.Font
	local Theme = var3_result1.Theme
	local useLocalization_upvr_result1 = useLocalization_upvr({
		failedLabel = "Feature.Call.Label.Retry";
		placeCallLabel = "Feature.Call.Prompt.StartCall";
	})
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 20);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	local any_createElement_result1 = React_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, 12);
		PaddingBottom = UDim.new(0, 12);
		PaddingLeft = UDim.new(0, 24);
		PaddingRight = UDim.new(0, 24);
	})
	module.UIPadding = any_createElement_result1
	if arg1.isImageEnabled then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Image = Images_upvr[arg1.imageName];
			LayoutOrder = 1;
			Size = UDim2.fromOffset(96, 96);
		})
	else
		any_createElement_result1 = nil
	end
	module.Image = any_createElement_result1
	any_createElement_result1 = React_upvr.createElement
	any_createElement_result1 = any_createElement_result1("TextLabel", {
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		Font = Font.Body.Font;
		LayoutOrder = 2;
		Text = arg1.messageText;
		TextColor3 = Theme.TextDefault.Color;
		TextSize = Font.Body.RelativeSize * Font.BaseSize;
		TextTransparency = Theme.TextDefault.Transparency;
		TextWrapped = true;
	})
	module.Message = any_createElement_result1
	if arg1.isFailedButtonEnabled then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("TextButton", {
			Size = UDim2.new(0, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundColor3 = Theme.SystemPrimaryDefault.Color;
			BackgroundTransparency = Theme.SystemPrimaryDefault.Transparency;
			BorderSizePixel = 0;
			Font = Font.Header2.Font;
			LayoutOrder = 3;
			Text = useLocalization_upvr_result1.failedLabel;
			TextColor3 = Theme.SystemPrimaryContent.Color;
			TextSize = Font.Header2.RelativeSize * Font.BaseSize;
			TextTransparency = Theme.SystemPrimaryContent.Transparency;
			[React_upvr.Event.Activated] = arg1.onFailedButtonActivated;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 8);
				PaddingRight = UDim.new(0, 8);
			});
			UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
				MinSize = Vector2.new(108, 36);
			});
		})
		-- KONSTANTWARNING: GOTO [333] #221
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [332] 220. Error Block 22 start (CF ANALYSIS FAILED)
	any_createElement_result1 = nil
	module.FailedButton = any_createElement_result1
	if arg1.isCallButtonEnabled then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("ImageButton", {
			Size = UDim2.new(1, 0, 0, 48);
			BackgroundColor3 = Theme.SystemPrimaryDefault.Color;
			BackgroundTransparency = Theme.SystemPrimaryDefault.Transparency;
			BorderSizePixel = 0;
			LayoutOrder = 3;
			[React_upvr.Event.Activated] = arg1.onCallButtonActivated;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, 4);
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			StartCallIcon = React_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.fromOffset(24, 24);
				BackgroundTransparency = 1;
				Image = "rbxassetid://15239343417";
				ImageColor3 = Theme.SystemPrimaryContent.Color;
				LayoutOrder = 1;
			});
			StartCallButtonText = React_upvr.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY;
				BackgroundTransparency = 1;
				Font = Font.Header2.Font;
				LayoutOrder = 2;
				Text = useLocalization_upvr_result1.placeCallLabel;
				TextColor3 = Theme.SystemPrimaryContent.Color;
				TextSize = Font.Header2.RelativeSize * Font.BaseSize;
				TextTransparency = Theme.SystemPrimaryContent.Transparency;
			});
		})
	else
		any_createElement_result1 = nil
	end
	module.CallButton = any_createElement_result1
	do
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = 10000;
		}, module)
	end
	-- KONSTANTERROR: [332] 220. Error Block 22 end (CF ANALYSIS FAILED)
end