-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:20
-- Luau version 6, Types version 3
-- Time taken: 0.002448 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getMenuItemSizings_upvr = require(AbuseReportMenu.Utility.getMenuItemSizings)
local React_upvr = require(CorePackages.Packages.React)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local DropdownMenu_upvr = UIBlox.App.Menu.DropdownMenu
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local ReportMenuItem_upvr = require(AbuseReportMenu.Components.MenuItems.ReportMenuItem)
return function(arg1) -- Line 27, Named "DropdownReportMenuItem"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: getMenuItemSizings_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AppFonts_upvr (readonly)
		[5]: DropdownMenu_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: ReportMenuItem_upvr (readonly)
	]]
	local Theme = useStyle_upvr().Theme
	local var12
	if arg1.readonlyValue ~= nil then
		var12 = React_upvr.createElement
		local tbl = {
			Text = arg1.readonlyValue;
			Font = AppFonts_upvr.default:getMedium();
			TextColor3 = Theme.TextEmphasis.Color;
			TextTransparency = Theme.TextMuted.Transparency;
			TextSize = getMenuItemSizings_upvr().DropdownTextSize;
		}
		local var14 = true
		tbl.TextWrapped = var14
		if arg1.isSmallPortraitViewport then
			var14 = Enum.TextXAlignment.Left
		else
			var14 = Enum.TextXAlignment.Center
		end
		tbl.TextXAlignment = var14
		tbl.AutomaticSize = Enum.AutomaticSize.Y
		tbl.Size = UDim2.new(1, 0, 0, arg1.minHeight)
		tbl.BackgroundTransparency = 1
		var12 = var12("TextLabel", tbl)
	else
		var12 = React_upvr.createElement
		var12 = var12(DropdownMenu_upvr, {
			placeholder = arg1.placeholderText;
			onChange = arg1.onSelect;
			height = UDim.new(0, 48);
			screenSize = Vector2.new(2400, 1800);
			errorState = false;
			showDropShadow = true;
			fixedListHeight = 180;
			cellDatas = Cryo_upvr.List.map(arg1.selections, function(arg1_2) -- Line 56
				local module = {}
				module.text = arg1_2
				return module
			end);
		})
	end
	return React_upvr.createElement(ReportMenuItem_upvr, {
		label = arg1.label;
		layoutOrder = arg1.layoutOrder;
		rightComponent = var12;
		menuContainerWidth = arg1.menuContainerWidth;
		isSmallPortraitViewport = arg1.isSmallPortraitViewport;
	})
end