-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:33
-- Luau version 6, Types version 3
-- Time taken: 0.004492 seconds

local Parent = script:FindFirstAncestor("PhoneUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return function(arg1) -- Line 28
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Checkbox_upvr (readonly)
		[4]: LinkButton_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local BaseSize = useStyle_upvr_result1.Font.BaseSize
	local Space_75 = useStyle_upvr_result1.Tokens.Global.Space_75
	local module = {
		ListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, useStyle_upvr_result1.Tokens.Global.Space_75);
		});
	}
	local var14
	if arg1.showLegalText and arg1.showLegalTextCheckbox then
		var14 = React_upvr.createElement
		var14 = var14("Frame", {
			LayoutOrder = 3;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, Space_75);
			});
			LegalCheckbox = React_upvr.createElement(Checkbox_upvr, {
				onActivated = arg1.setLegalTextChecked;
				isSelected = arg1.legalTextChecked;
				text = "";
			});
			LegalText = React_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Text = arg1.legalText;
				TextSize = BaseSize * useStyle_upvr_result1.Font.CaptionHeader.RelativeSize;
				TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
				TextTransparency = useStyle_upvr_result1.Theme.TextDefault.Transparency;
				Font = useStyle_upvr_result1.Font.Body.Font;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = true;
				Size = UDim2.new(1, -(26 + Space_75), 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			});
		})
	else
		var14 = arg1.showLegalText
		if var14 then
			var14 = React_upvr.createElement
			local tbl_3 = {
				LayoutOrder = 3;
				BackgroundTransparency = 1;
				Text = arg1.legalText;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_3.TextSize = BaseSize * useStyle_upvr_result1.Font.CaptionHeader.RelativeSize
			tbl_3.TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color
			tbl_3.TextTransparency = useStyle_upvr_result1.Theme.TextDefault.Transparency
			tbl_3.Font = useStyle_upvr_result1.Font.Body.Font
			tbl_3.TextXAlignment = Enum.TextXAlignment.Left
			tbl_3.TextWrapped = true
			tbl_3.Size = UDim2.new(1, 0, 0, 0)
			tbl_3.AutomaticSize = Enum.AutomaticSize.Y
			var14 = var14("TextLabel", tbl_3)
		end
	end
	module.LegalTextContainer = var14
	var14 = arg1.showLegalButtons
	if var14 then
		var14 = React_upvr.createElement
		local tbl = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 5);
			});
			TermsOfUseButton = React_upvr.createElement(LinkButton_upvr, {
				text = arg1.termsOfUse;
				onActivated = arg1.onTermsOfUseClick;
				layoutOrder = 5;
				fontStyle = "CaptionBody";
			});
		}
		local tbl_2 = {
			LayoutOrder = 6;
			BackgroundTransparency = 1;
			Text = '-';
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.TextSize = BaseSize * useStyle_upvr_result1.Font.CaptionHeader.RelativeSize
		tbl_2.TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color
		tbl_2.TextTransparency = useStyle_upvr_result1.Theme.TextDefault.Transparency
		tbl_2.Font = useStyle_upvr_result1.Font.Body.Font
		tbl_2.TextXAlignment = Enum.TextXAlignment.Center
		tbl_2.TextWrapped = true
		tbl_2.AutomaticSize = Enum.AutomaticSize.XY
		tbl.TextButtonDivider = React_upvr.createElement("TextLabel", tbl_2)
		tbl.PrivacyPolicyButton = React_upvr.createElement(LinkButton_upvr, {
			text = arg1.privacyPolicy;
			onActivated = arg1.onPrivacyPolicyClick;
			layoutOrder = 7;
			fontStyle = "CaptionBody";
		})
		var14 = var14("Frame", {
			LayoutOrder = 4;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, tbl)
	end
	module.LegalButtonsContainer = var14
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
		LayoutOrder = arg1.LayoutOrder;
	}, module)
end