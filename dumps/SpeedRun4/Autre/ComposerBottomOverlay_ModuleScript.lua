-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:24
-- Luau version 6, Types version 3
-- Time taken: 0.004231 seconds

local Parent = script.Parent.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local udim_upvr = UDim.new(0, 8)
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local TextButton_upvr = UIBlox.App.Button.TextButton
local Colors_upvr = UIBlox.App.Style.Colors
return function(arg1) -- Line 32
	--[[ Upvalues[10]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: udim_upvr (readonly)
		[5]: HeaderBar_upvr (readonly)
		[6]: IconButton_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: IconSize_upvr (readonly)
		[9]: TextButton_upvr (readonly)
		[10]: Colors_upvr (readonly)
	]]
	local var4_result1_upvr = useStyle_upvr()
	local var5_result1 = useLocalization_upvr({
		postAcknowledgeAction = "Feature.Captures.Action.PostCapturesOverlayAcknowledged";
		postInfoLabel = "Feature.Captures.Label.PostCapturesInfoLabel";
		postWarningLabel = "Feature.Captures.Label.PostCapturesWarningLabel";
	})
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
		});
	}
	local tbl = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		});
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 12);
			PaddingLeft = UDim.new(0, 12);
			PaddingRight = UDim.new(0, 12);
		});
	}
	local tbl_2 = {
		backgroundTransparency = 1;
		isTitleCentered = arg1.isHorizontal;
		layoutOrder = 1;
		margin = 0;
	}
	local udim2 = UDim2.new(1, 0, 0, 48)
	tbl_2.size = udim2
	if arg1.isHorizontal then
		udim2 = "Post Captures"
	else
		udim2 = ""
	end
	tbl_2.title = udim2
	function tbl_2.renderLeft() -- Line 88
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: var4_result1_upvr (readonly)
		]]
		if not arg1.isHorizontal then
			return React_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Font = var4_result1_upvr.Font.Header2.Font;
				LayoutOrder = 1;
				Size = UDim2.new(1, 0, 0, 24);
				Text = "Post Captures";
				TextColor3 = var4_result1_upvr.Theme.TextEmphasis.Color;
				TextSize = 24;
				TextXAlignment = Enum.TextXAlignment.Left;
			})
		end
		return nil
	end
	function tbl_2.renderRight() -- Line 102
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: Images_upvr (copied, readonly)
			[4]: IconSize_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		return React_upvr.createElement(IconButton_upvr, {
			icon = Images_upvr["icons/navigation/close"];
			iconSize = IconSize_upvr.Medium;
			onActivated = arg1.onOverlayActive;
			showBackground = false;
		})
	end
	tbl.ModalHeaderBar = React_upvr.createElement(HeaderBar_upvr, tbl_2)
	tbl.BodyFrame = React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		Size = UDim2.new(1, 0, 0, 114);
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			Padding = UDim.new(0, 8);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		PublicIcon = React_upvr.createElement(IconButton_upvr, {
			icon = Images_upvr["icons/status/public"];
			isDisabled = false;
			layoutOrder = 1;
			showBackground = false;
			size = UDim2.fromOffset(44, 44);
		});
		TextFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.X;
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.fromScale(1, 1);
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			InfoLabel = React_upvr.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				Font = var4_result1_upvr.Font.Header2.Font;
				LayoutOrder = 1;
				Size = UDim2.new(1, -60, 0, 20);
				Text = var5_result1.postInfoLabel;
				TextColor3 = var4_result1_upvr.Theme.TextEmphasis.Color;
				TextSize = 20;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = true;
			});
			WarningLabel = React_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Font = var4_result1_upvr.Font.CaptionBody.Font;
				LayoutOrder = 2;
				Size = UDim2.new(1, -60, 0, 20);
				Text = var5_result1.postWarningLabel;
				TextColor3 = var4_result1_upvr.Theme.TextDefault.Color;
				TextSize = 20;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
		});
	})
	tbl.ConfirmButton = React_upvr.createElement(TextButton_upvr, {
		backgroundColor = {
			Color = Colors_upvr.White;
			Transparency = 0;
		};
		colorStyleDefault = "ItemBackgroundDefault";
		layoutOrder = 3;
		onActivated = arg1.onOverlayActive;
		showBackground = true;
		size = UDim2.new(1, 0, 0, 40);
		text = var5_result1.postAcknowledgeAction;
	})
	module.InfoOverlay = React_upvr.createElement("Frame", {
		Active = true;
		BackgroundColor3 = var4_result1_upvr.Theme.BackgroundContrast.Color;
		BackgroundTransparency = var4_result1_upvr.Theme.BackgroundContrast.Transparency;
		BorderSizePixel = 0;
		Position = UDim2.fromOffset(0, 0);
		Size = UDim2.new(1, 0, 0, 226);
	}, tbl)
	return React_upvr.createElement("Frame", {
		Active = true;
		BackgroundColor3 = var4_result1_upvr.Theme.BackgroundContrast.Color;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.fromOffset(0, 0);
		Size = UDim2.new(1, 0, 1, 0);
	}, module)
end