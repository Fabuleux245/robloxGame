-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:29
-- Luau version 6, Types version 3
-- Time taken: 0.003971 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	bodyText = "Placeholder body";
	iconImage = nil;
	iconSize = UIBlox.App.ImageSet.Enum.IconSize.Small;
	iconCellWidth = 30;
	cellHeight = 28;
	onIconActivated = function() -- Line 37, Named "onIconActivated"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local React_upvr = require(Parent.React)
local BaseCell_upvr = require(AppChat.Components.Cells.BaseCell)
local IconButton_upvr = UIBlox.App.Button.IconButton
return function(arg1) -- Line 42, Named "ConversationTypeCell"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useIsInExperience_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: BaseCell_upvr (readonly)
		[8]: IconButton_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var13 = any_join_result1.style or useStyle_upvr()
	local Theme = var13.Theme
	local Font = var13.Font
	local useIsInExperience_upvr_result1 = useIsInExperience_upvr()
	local module = {}
	local tbl = {}
	local udim2 = UDim2.new(1, 0, 0, any_join_result1.cellHeight)
	tbl.Size = udim2
	if useIsInExperience_upvr_result1 then
		udim2 = useTokens_upvr().Color.None.Color3
	else
		udim2 = Theme.BackgroundDefault.Color
	end
	tbl.BackgroundColor3 = udim2
	if useIsInExperience_upvr_result1 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		udim2 = useTokens_upvr().Color.None.Transparency
	else
		udim2 = var13.Theme.BackgroundDefault.Transparency
	end
	tbl.BackgroundTransparency = udim2
	udim2 = false
	tbl.showDivider = udim2
	udim2 = Theme.Divider.Color
	tbl.dividerColor3 = udim2
	udim2 = Theme.Divider.Transparency
	tbl.dividerTransparency = udim2
	udim2 = true
	tbl.isDisabled = udim2
	udim2 = {}
	udim2.UIListLayout = React_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	udim2.UIPadding = React_upvr.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, var13.Tokens.Global.Size_150);
	})
	udim2.TextFrame = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.fromScale(0, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		Size = UDim2.new(0, 0, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, {
		Text = React_upvr.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.X;
			Size = UDim2.new(0, 0, 1, 0);
			Text = any_join_result1.bodyText;
			TextSize = Font.Header2.RelativeSize * Font.BaseSize;
			Font = Font.Header2.Font;
			TextColor3 = Theme.TextEmphasis.Color;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextTruncate = Enum.TextTruncate.AtEnd;
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		});
	})
	udim2.IconFrame = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0.5);
		Position = UDim2.fromScale(1, 0.5);
		Size = UDim2.fromOffset(any_join_result1.iconCellWidth, any_join_result1.iconCellWidth);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, {
		InfoIcon = React_upvr.createElement(IconButton_upvr, {
			position = UDim2.fromScale(0.5, 0.5);
			anchorPoint = Vector2.new(0.5, 0.5);
			icon = any_join_result1.iconImage;
			iconColor3 = Theme.IconDefault.Color;
			iconTransparency = Theme.IconDefault.Transparency;
			iconSize = any_join_result1.iconSize;
			backgroundTransparency = 1;
			size = UDim2.fromOffset(any_join_result1.iconCellWidth, any_join_result1.iconCellWidth);
			onActivated = any_join_result1.onIconActivated;
		});
	})
	module.ConversationTypeRow = React_upvr.createElement(BaseCell_upvr, tbl, udim2)
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = any_join_result1.layoutOrder;
		Size = UDim2.fromScale(1, 0);
	}, module)
end