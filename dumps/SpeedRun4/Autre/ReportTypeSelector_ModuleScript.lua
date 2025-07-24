-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:25
-- Luau version 6, Types version 3
-- Time taken: 0.003756 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getMenuItemDimensions_upvr = require(AbuseReportMenu.Components.getMenuItemDimensions)
local getMenuItemSizings_upvr = require(AbuseReportMenu.Utility.getMenuItemSizings)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local React_upvr = require(CorePackages.Packages.React)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
local TextButton_upvr = UIBlox.App.Button.TextButton
return function(arg1) -- Line 28
	--[[ Upvalues[10]:
		[1]: useStyle_upvr (readonly)
		[2]: getMenuItemDimensions_upvr (readonly)
		[3]: getMenuItemSizings_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: AppFonts_upvr (readonly)
		[7]: IconButton_upvr (readonly)
		[8]: IconSize_upvr (readonly)
		[9]: Images_upvr (readonly)
		[10]: TextButton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
	local getMenuItemDimensions_upvr_result1 = getMenuItemDimensions_upvr(arg1.menuWidth)
	local isSmallPortraitViewport = arg1.isSmallPortraitViewport
	local module = {}
	local var18 = 0
	module.Size = UDim2.new(1, 0, 0, var18)
	module.BackgroundTransparency = 1
	module.AutomaticSize = Enum.AutomaticSize.Y
	local module_2 = {}
	local tbl_3 = {}
	if isSmallPortraitViewport then
		var18 = Enum.FillDirection.Vertical
	else
		var18 = Enum.FillDirection.Horizontal
	end
	tbl_3.FillDirection = var18
	var18 = Enum.SortOrder.LayoutOrder
	tbl_3.SortOrder = var18
	var18 = Enum.HorizontalAlignment.Center
	tbl_3.HorizontalAlignment = var18
	if isSmallPortraitViewport then
		var18 = UDim.new(0, useStyle_upvr().Tokens.Global.Size_100)
		-- KONSTANTWARNING: GOTO [90] #63
	end
	-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [85] 59. Error Block 40 start (CF ANALYSIS FAILED)
	var18 = UDim.new(0, 0)
	tbl_3.Padding = var18
	module_2.Layout = React_upvr.createElement("UIListLayout", tbl_3)
	local tbl = {}
	var18 = arg1.label
	tbl.Text = var18
	var18 = AppFonts_upvr.default:getMedium()
	tbl.Font = var18
	var18 = 1
	tbl.LayoutOrder = var18
	var18 = Color3.new(1, 1, 1)
	tbl.TextColor3 = var18
	var18 = 0
	tbl.TextTransparency = var18
	var18 = getMenuItemDimensions_upvr_result1.TextSize
	tbl.TextSize = var18
	var18 = Enum.AutomaticSize.Y
	tbl.AutomaticSize = var18
	var18 = true
	tbl.TextWrapped = var18
	var18 = Enum.TextXAlignment.Left
	tbl.TextXAlignment = var18
	if isSmallPortraitViewport then
		var18 = UDim2.fromOffset(math.max(arg1.menuWidth - Constants_upvr.MenuItemDynamicWidthOffset, getMenuItemDimensions_upvr_result1.LeftWidth + getMenuItemDimensions_upvr_result1.RightWidth), 0)
	else
		var18 = UDim2.new(0, getMenuItemDimensions_upvr_result1.LeftWidth, 0, Constants_upvr.MenuItemHeight)
	end
	tbl.Size = var18
	tbl.BackgroundTransparency = 1
	local any_createElement_result1 = React_upvr.createElement("TextLabel", tbl)
	module_2.Label = any_createElement_result1
	if isSmallPortraitViewport then
		any_createElement_result1 = nil
	else
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			Size = UDim2.new(0, math.max(0, arg1.menuWidth - getMenuItemDimensions_upvr_result1.LeftWidth - getMenuItemDimensions_upvr_result1.RightWidth - 100), 0, Constants_upvr.MenuItemHeight);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
		})
	end
	module_2.MiddleWidthHolder = any_createElement_result1
	local tbl_2 = {}
	if isSmallPortraitViewport then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	tbl_2.Size = UDim2.new(0, getMenuItemDimensions_upvr_result1.RightWidth, 1, 0)
	tbl_2.BackgroundTransparency = 1
	tbl_2.LayoutOrder = 3
	local tbl_4 = {
		FillDirection = Enum.FillDirection.Horizontal;
	}
	local LayoutOrder = Enum.SortOrder.LayoutOrder
	tbl_4.SortOrder = LayoutOrder
	if isSmallPortraitViewport then
		LayoutOrder = Enum.HorizontalAlignment.Left
	else
		LayoutOrder = Enum.HorizontalAlignment.Center
	end
	tbl_4.HorizontalAlignment = LayoutOrder
	tbl_4.VerticalAlignment = Enum.VerticalAlignment.Center
	;({}).Layout = React_upvr.createElement("UIListLayout", tbl_4)
	if arg1.isSelectionDisabled then
		-- KONSTANTWARNING: GOTO [300] #206
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).LeftChevron = React_upvr.createElement(IconButton_upvr, {
		size = UDim2.fromOffset(32, 32);
		iconSize = IconSize_upvr.Medium;
		icon = Images_upvr["icons/actions/cycleLeft"];
		onActivated = arg1.onClickLeft;
		layoutOrder = 1;
	})
	local any_createElement_result1_2 = React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY;
		Size = UDim2.new(0, getMenuItemDimensions_upvr_result1.RightWidth - 64, 0, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, {
		ToggleButton = React_upvr.createElement(TextButton_upvr, {
			size = UDim2.new(1, 0, 1, 0);
			text = arg1.abuseType;
			onActivated = arg1.onClickRight;
			layoutOrder = 2;
			isDisabled = arg1.isSelectionDisabled;
			fontStyle = getMenuItemSizings_upvr().FontStyle;
		});
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).ButtonContainer = any_createElement_result1_2
	if arg1.isSelectionDisabled then
		any_createElement_result1_2 = nil
	else
		any_createElement_result1_2 = React_upvr.createElement
		any_createElement_result1_2 = any_createElement_result1_2(IconButton_upvr, {
			size = UDim2.fromOffset(32, 32);
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/actions/cycleRight"];
			onActivated = arg1.onClickRight;
			layoutOrder = 3;
		})
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).RightChevron = any_createElement_result1_2
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.Container = React_upvr.createElement("Frame", tbl_2, {})
	do
		return React_upvr.createElement("Frame", module, module_2)
	end
	-- KONSTANTERROR: [85] 59. Error Block 40 end (CF ANALYSIS FAILED)
end