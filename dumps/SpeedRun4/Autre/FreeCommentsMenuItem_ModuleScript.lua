-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:21
-- Luau version 6, Types version 3
-- Time taken: 0.000644 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local ReportMenuItem_upvr = require(AbuseReportMenu.Components.MenuItems.ReportMenuItem)
local ReportTextEntry_upvr = require(AbuseReportMenu.Components.ReportTextEntry)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
return function(arg1) -- Line 18, Named "FreeCommentsMenuItem"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: ReportMenuItem_upvr (readonly)
		[3]: ReportTextEntry_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	return React_upvr.createElement(ReportMenuItem_upvr, {
		label = "Abuse Description";
		isRightComponentFullWidth = true;
		layoutOrder = arg1.layoutOrder;
		rightComponent = React_upvr.createElement(ReportTextEntry_upvr, {
			layoutOrder = arg1.layoutOrder;
			text = arg1.comment;
			placeholderText = arg1.placeholderText;
			onUpdate = arg1.onUpdate;
		});
		heightOverride = Constants_upvr.FreeCommentsMenuItemHeight;
		menuContainerWidth = arg1.menuContainerWidth;
		isSmallPortraitViewport = arg1.isSmallPortraitViewport;
	})
end