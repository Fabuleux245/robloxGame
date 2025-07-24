-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:22
-- Luau version 6, Types version 3
-- Time taken: 0.006542 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local getMenuItemDimensions_upvr = require(AbuseReportMenu.Components.getMenuItemDimensions)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local React_upvr = require(CorePackages.Packages.React)
local TextService_upvr = game:GetService("TextService")
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return function(arg1) -- Line 22, Named "DropdownReportMenuItem"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: getMenuItemDimensions_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: TextService_upvr (readonly)
		[6]: AppFonts_upvr (readonly)
		[7]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 79 start (CF ANALYSIS FAILED)
	local var3_result1_upvr = useStyle_upvr()
	local var11
	if arg1.label == "" or arg1.isRightComponentFullWidth then
		local const_number = 0
	else
	end
	local Theme = var3_result1_upvr.Theme
	local getMenuItemDimensions_upvr_result1_upvr = getMenuItemDimensions_upvr(arg1.menuContainerWidth)
	local maximum_upvr = math.max(arg1.menuContainerWidth - Constants_upvr.MenuItemDynamicWidthOffset, getMenuItemDimensions_upvr_result1_upvr.LeftWidth + getMenuItemDimensions_upvr_result1_upvr.RightWidth)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(var3_result1_upvr.Tokens.Global.Size_500)
	React_upvr.useEffect(function() -- Line 36
		--[[ Upvalues[7]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var3_result1_upvr (readonly)
			[3]: TextService_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: getMenuItemDimensions_upvr_result1_upvr (readonly)
			[6]: AppFonts_upvr (copied, readonly)
			[7]: maximum_upvr (readonly)
		]]
		local var19
		if arg1.isSmallPortraitViewport then
			var19 = maximum_upvr
		else
			var19 = getMenuItemDimensions_upvr_result1_upvr.LeftWidth
		end
		any_useState_result2_upvr(math.max(var3_result1_upvr.Tokens.Global.Size_500, TextService_upvr:GetTextSize(arg1.label, getMenuItemDimensions_upvr_result1_upvr.TextSize, AppFonts_upvr.default:getMedium(), Vector2.new(var19, math.huge)).Y))
	end, {})
	local tbl_3 = {}
	local tbl_2 = {}
	if arg1.isSmallPortraitViewport then
		var11 = Enum.FillDirection.Vertical
	else
		var11 = Enum.FillDirection.Horizontal
	end
	tbl_2.FillDirection = var11
	var11 = Enum.VerticalAlignment.Center
	tbl_2.VerticalAlignment = var11
	var11 = Enum.HorizontalAlignment.Center
	tbl_2.HorizontalAlignment = var11
	var11 = Enum.SortOrder.LayoutOrder
	tbl_2.SortOrder = var11
	if arg1.isSmallPortraitViewport then
		var11 = UDim.new(0, var3_result1_upvr.Tokens.Global.Size_75)
	else
		var11 = UDim.new(0, 0)
	end
	tbl_2.Padding = var11
	tbl_3.Layout = React_upvr.createElement("UIListLayout", tbl_2)
	local tbl = {}
	var11 = UDim.new
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var11 = var11(0, var3_result1_upvr.Tokens.Global.Size_75)
	tbl.PaddingTop = var11
	var11 = UDim.new
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var11 = var11(0, var3_result1_upvr.Tokens.Global.Size_75)
	tbl.PaddingBottom = var11
	tbl_3.Padding = React_upvr.createElement("UIPadding", tbl)
	if arg1.isRightComponentFullWidth then
		var11 = Constants_upvr.MenuItemDynamicWidthOffset
		var11 = getMenuItemDimensions_upvr_result1_upvr.LeftWidth
		var11 = Cryo_upvr
		var11 = {}
		var11.RightComponentWrapper = React_upvr.createElement("Frame", {
			Size = UDim2.new(0, math.max(arg1.menuContainerWidth - var11, var11 + getMenuItemDimensions_upvr_result1_upvr.RightWidth), 0, Constants_upvr.MenuItemHeight);
			BackgroundTransparency = 1;
			LayoutOrder = 3;
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			RightComponent = arg1.rightComponent;
		})
		-- KONSTANTWARNING: GOTO [422] #286
	end
	-- KONSTANTERROR: [0] 1. Error Block 79 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [211] 144. Error Block 78 start (CF ANALYSIS FAILED)
	local var26
	var11 = arg1.menuContainerWidth - getMenuItemDimensions_upvr_result1_upvr.LeftWidth - getMenuItemDimensions_upvr_result1_upvr.RightWidth
	var11 = Cryo_upvr
	var11 = {}
	if arg1.label ~= "" or not arg1.isSmallPortraitViewport then
		local tbl_4 = {}
		var26 = arg1.label
		tbl_4.Text = var26
		var26 = AppFonts_upvr.default:getMedium()
		tbl_4.Font = var26
		var26 = 1
		tbl_4.LayoutOrder = var26
		var26 = Theme.TextEmphasis.Color
		tbl_4.TextColor3 = var26
		var26 = Theme.TextEmphasis.Transparency
		tbl_4.TextTransparency = var26
		var26 = getMenuItemDimensions_upvr_result1_upvr.TextSize
		tbl_4.TextSize = var26
		var26 = true
		tbl_4.TextWrapped = var26
		var26 = Enum.TextXAlignment.Left
		tbl_4.TextXAlignment = var26
		if arg1.isSmallPortraitViewport then
			var26 = UDim2.new(0, maximum_upvr, 0, 0)
		else
			var26 = UDim2.new(0, getMenuItemDimensions_upvr_result1_upvr.LeftWidth, 0, any_useState_result1)
		end
		tbl_4.Size = var26
		var26 = Enum.AutomaticSize.Y
		tbl_4.AutomaticSize = var26
		var26 = 1
		tbl_4.BackgroundTransparency = var26
	else
	end
	var11.Label = nil
	if arg1.isSmallPortraitViewport then
		-- KONSTANTWARNING: GOTO [347] #235
	end
	-- KONSTANTERROR: [211] 144. Error Block 78 end (CF ANALYSIS FAILED)
end