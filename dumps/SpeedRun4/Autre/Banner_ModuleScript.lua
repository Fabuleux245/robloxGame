-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:01
-- Luau version 6, Types version 3
-- Time taken: 0.003756 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local Core = UIBlox.Core
local App = UIBlox.App
local tbl_4_upvr = {
	showDismiss = true;
	visible = true;
}
local useStyle_upvr = Core.Style.useStyle
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = Core.ImageSet.ImageSetLabel
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local ButtonStack_upvr = App.Button.ButtonStack
local IconButton_upvr = App.Button.IconButton
local icons_navigation_close_upvr = App.ImageSet.Images["icons/navigation/close"]
local IconSize_upvr = App.ImageSet.Enum.IconSize
return function(arg1) -- Line 48, Named "Banner"
	--[[ Upvalues[10]:
		[1]: useStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
		[7]: ButtonStack_upvr (readonly)
		[8]: IconButton_upvr (readonly)
		[9]: icons_navigation_close_upvr (readonly)
		[10]: IconSize_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	local useStyle_upvr_result1 = useStyle_upvr()
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_4_upvr, arg1)
	local Theme = useStyle_upvr_result1.Theme
	local Font = useStyle_upvr_result1.Font
	local Tokens = useStyle_upvr_result1.Tokens
	if any_join_result1.ctaButtons then
		local _ = {
			minHorizontalButtonPadding = 0;
			forcedFillDirection = Enum.FillDirection.Horizontal;
		}
	end
	local _ = {
		[React_upvr.Tag] = "data-testid=Banner";
		BackgroundTransparency = Theme.BackgroundUIDefault.Transparency;
		BackgroundColor3 = Theme.BackgroundUIDefault.Color;
		AutomaticSize = Enum.AutomaticSize.XY;
		Visible = any_join_result1.visible;
		Size = UDim2.new(0, 0, 0, 0);
	}
	local tbl_3 = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
		UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(640, math.huge);
		});
		UILayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 12);
		});
	}
	local tbl_2 = {
		PaddingLeft = UDim.new(0, 12);
	}
	local udim = UDim.new(0, 12)
	tbl_2.PaddingRight = udim
	local any_createElement_result1 = React_upvr.createElement("UIPadding", tbl_2)
	tbl_3.UIPadding = any_createElement_result1
	if any_join_result1.iconImage then
		any_createElement_result1 = React_upvr.createElement
		local tbl = {}
		if any_join_result1.iconBackgroundColor then
			udim = 0
		else
			udim = 1
		end
		tbl.BackgroundTransparency = udim
		udim = any_join_result1.iconBackgroundColor
		tbl.BackgroundColor3 = udim
		udim = 1
		tbl.LayoutOrder = udim
		udim = UDim2.new(0, 28, 0, 28)
		tbl.Size = udim
		udim = 0
		tbl.BorderSizePixel = udim
		udim = {}
		udim.Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			Selectable = false;
			Size = UDim2.fromOffset(28, 28);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Image = any_join_result1.iconImage;
			ImageColor3 = Tokens.Semantic.Color.Icon.Emphasis.Color3;
			ImageTransparency = Tokens.Semantic.Color.Icon.Emphasis.Transparency;
			BackgroundTransparency = 1;
		})
		any_createElement_result1 = any_createElement_result1("Frame", tbl, udim)
	else
		any_createElement_result1 = nil
	end
	tbl_3.IconWrapper = any_createElement_result1
	local tbl_5 = {
		LayoutOrder = 2;
		Size = UDim2.new(0, 500, 1, 0);
		BackgroundTransparency = 1;
	}
	;({}).UILayout = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	local _ = {
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, 0);
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	}
	if any_join_result1.titleMessage then
		local _ = {
			layoutOrder = 1;
			text = any_join_result1.titleMessage;
			colorStyle = Theme.TextEmphasis;
			fontStyle = Font.CaptionHeader;
			fluidSizing = false;
			lineHeight = 1;
			textTruncate = Enum.TextTruncate.AtEnd;
			textWrapped = false;
			automaticSize = Enum.AutomaticSize.XY;
		}
		-- KONSTANTWARNING: GOTO [432] #291
	end
	-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [431] 290. Error Block 43 start (CF ANALYSIS FAILED)
	;({
		UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(250, math.huge);
		});
		TextLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 12);
			PaddingBottom = UDim.new(0, 12);
		});
	}).Title = nil
	if any_join_result1.sublineMessage then
		local _ = {
			layoutOrder = 2;
			text = any_join_result1.sublineMessage;
			colorStyle = Theme.TextDefault;
			fontStyle = Font.CaptionBody;
			fluidSizing = false;
			lineHeight = 1;
			textTruncate = Enum.TextTruncate.AtEnd;
			textWrapped = false;
			automaticSize = Enum.AutomaticSize.XY;
		}
		-- KONSTANTWARNING: GOTO [477] #319
	end
	-- KONSTANTERROR: [431] 290. Error Block 43 end (CF ANALYSIS FAILED)
end