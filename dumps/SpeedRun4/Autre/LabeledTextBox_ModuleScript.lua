-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:10
-- Luau version 6, Types version 3
-- Time taken: 0.001228 seconds

local CorePackages = game:GetService("CorePackages")
local tbl_upvr = {
	textBoxHeight = 30;
	topPadding = 0;
}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local NameTextBox_upvr = require(script.Parent.NameTextBox)
return function(arg1) -- Line 43, Named "LabeledTextBox"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: NameTextBox_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local useStyle_upvr_result1 = useStyle_upvr()
	local Font = useStyle_upvr_result1.Font
	local CaptionHeader = Font.CaptionHeader
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 19 + any_join_result1.textBoxHeight + any_join_result1.topPadding);
		BackgroundTransparency = 1;
		LayoutOrder = any_join_result1.LayoutOrder;
	}, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			Padding = UDim.new(0, 4);
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, any_join_result1.topPadding);
		});
		TextboxLabel = React_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, 15);
			Font = CaptionHeader.Font;
			Text = any_join_result1.labelText;
			TextSize = Font.BaseSize * CaptionHeader.RelativeSize;
			TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
			BackgroundTransparency = 1;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 1;
		});
		Textbox = React_upvr.createElement(NameTextBox_upvr, {
			Size = UDim2.new(1, 0, 0, any_join_result1.textBoxHeight);
			maxLength = any_join_result1.maxLength;
			onNameUpdated = any_join_result1.onTextUpdated;
			defaultName = any_join_result1.defaultText;
			centerText = any_join_result1.centerText;
			nameTextBoxRef = any_join_result1.textBoxRef;
			LayoutOrder = 2;
			invalidInputText = any_join_result1.invalidInputText;
		});
	})
end