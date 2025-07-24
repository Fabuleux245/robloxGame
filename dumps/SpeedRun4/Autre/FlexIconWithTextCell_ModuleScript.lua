-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:22
-- Luau version 6, Types version 3
-- Time taken: 0.008098 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_5_upvr = {
	Text = "titleText";
	primaryIconSize = 32;
	isDisabled = false;
	topPadding = 8;
	bottomPadding = 8;
	widthScale = 1;
	widthOffset = 0;
	onActivated = function() -- Line 54, Named "onActivated"
		print("FlexIconWithTextCell onActivated")
	end;
	secondaryIcon = "";
	secondaryIconSize = 24;
	iconCellWidth = 60;
	LayoutOrder = 0;
	style = require(AppChat.SocialLibraries).Components.TestStyle;
	BackgroundTransparency = nil;
	showDivider = true;
}
local Cryo_upvr = require(Parent.Cryo)
local BaseCell_upvr = require(script.Parent.BaseCell)
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
return React_upvr.memo(function(arg1) -- Line 70, Named "FlexIconWithTextCell"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: BaseCell_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_5_upvr, arg1)
	local style = any_union_result1.style
	local Theme = style.Theme
	local Font = style.Font
	local var12
	if any_union_result1.primaryIcon ~= nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local module = {}
	var12 = UDim2.new(1, any_union_result1.widthOffset, 0, 0)
	module.Size = var12
	var12 = Enum.AutomaticSize.Y
	module.AutomaticSize = var12
	var12 = Theme.BackgroundDefault.Color
	module.BackgroundColor3 = var12
	var12 = any_union_result1.BackgroundTransparency
	if not var12 then
		var12 = Theme.BackgroundDefault.Transparency
	end
	module.BackgroundTransparency = var12
	var12 = Theme.BackgroundOnPress.Color
	module.onPressedBackgroundColor3 = var12
	var12 = Theme.BackgroundOnPress.Transparency
	module.onPressedBackgroundTransparency = var12
	var12 = any_union_result1.LayoutOrder
	module.LayoutOrder = var12
	var12 = any_union_result1.onActivated
	module.onActivated = var12
	var12 = any_union_result1.showDivider
	module.showDivider = var12
	var12 = Theme.Divider.Color
	module.dividerColor3 = var12
	var12 = Theme.Divider.Transparency
	module.dividerTransparency = var12
	var12 = any_union_result1.isDisabled
	module.isDisabled = var12
	var12 = any_union_result1.iconCellWidth
	module.avatarCircleCellWidth = var12
	var12 = {}
	local tbl = {
		leftListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	local any_createElement_result1 = React_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, any_union_result1.topPadding);
		PaddingBottom = UDim.new(0, any_union_result1.bottomPadding);
	})
	tbl.leftFramePadding = any_createElement_result1
	local var20
	if not true then
		any_createElement_result1 = React_upvr.createElement
		local tbl_3 = {}
		local tbl_4 = {}
		var20 = 0.5
		tbl_4.Position = UDim2.fromScale(0.5, var20)
		var20 = 0.5
		tbl_4.AnchorPoint = Vector2.new(0.5, var20)
		tbl_4.Image = any_union_result1.primaryIcon
		tbl_4.BorderSizePixel = 0
		var20 = any_union_result1.primaryIconSize
		tbl_4.Size = UDim2.new(0, var20, 0, any_union_result1.primaryIconSize)
		tbl_4.ImageColor3 = Theme.IconEmphasis.Color
		tbl_4.BackgroundTransparency = 1
		tbl_3.primaryIcon = React_upvr.createElement(ImageSetLabel_upvr, tbl_4)
		any_createElement_result1 = any_createElement_result1("Frame", {
			Size = UDim2.new(0, any_union_result1.iconCellWidth, 0, any_union_result1.primaryIconSize);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}, tbl_3)
	else
		any_createElement_result1 = nil
	end
	tbl.imageFrame = any_createElement_result1
	local tbl_7 = {
		uiListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	local tbl_2 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
		var20 = 0
	else
		var20 = -any_union_result1.iconCellWidth
	end
	tbl_2.Size = UDim2.new(1, var20, 0, 0)
	tbl_2.AutomaticSize = Enum.AutomaticSize.Y
	tbl_2.Text = any_union_result1.Text
	tbl_2.TextSize = Font.Header2.RelativeSize * Font.BaseSize
	tbl_2.Font = Font.Header2.Font
	tbl_2.TextColor3 = Theme.TextEmphasis.Color
	tbl_2.TextXAlignment = Enum.TextXAlignment.Left
	tbl_2.TextTruncate = Enum.TextTruncate.AtEnd
	tbl_2.TextWrapped = true
	tbl_2.BackgroundTransparency = 1
	tbl_2.LayoutOrder = 2
	tbl_7.titleText = React_upvr.createElement("TextLabel", tbl_2)
	if any_union_result1.SubTitleText then
		local tbl_6 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
		else
		end
		tbl_6.Size = UDim2.new(1, -any_union_result1.iconCellWidth, 0, 0)
		tbl_6.AutomaticSize = Enum.AutomaticSize.Y
		tbl_6.Text = any_union_result1.SubTitleText
		tbl_6.TextSize = Font.BodySmall.RelativeSize * Font.BaseSize
		tbl_6.Font = Font.BodySmall.Font
		tbl_6.TextColor3 = Theme.TextDefault.Color
		tbl_6.TextXAlignment = Enum.TextXAlignment.Left
		tbl_6.TextWrapped = true
		tbl_6.BackgroundTransparency = 1
		tbl_6.LayoutOrder = 3
	else
	end
	tbl_7.subTitleText = nil
	tbl.textFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, tbl_7)
	var12.leftFrame = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, -any_union_result1.iconCellWidth, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, tbl)
	if any_union_result1.secondaryIcon then
		local _ = {
			Size = UDim2.fromOffset(any_union_result1.iconCellWidth, any_union_result1.iconCellWidth);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}
		;({}).secondaryIcon = React_upvr.createElement("ImageLabel", {
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Image = any_union_result1.secondaryIcon;
			BackgroundTransparency = 1;
			Size = UDim2.fromOffset(any_union_result1.secondaryIconSize, any_union_result1.secondaryIconSize);
		})
	else
	end
	var12.rightFrame = nil
	return React_upvr.createElement(BaseCell_upvr, module, var12)
end)