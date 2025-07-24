-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:20
-- Luau version 6, Types version 3
-- Time taken: 0.000676 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local ReportMenuItem_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.MenuItems.ReportMenuItem)
return function(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ReportMenuItem_upvr (readonly)
	]]
	return React_upvr.createElement(ReportMenuItem_upvr, {
		label = arg1.label;
		layoutOrder = arg1.layoutOrder;
		rightComponent = arg1.button;
		menuContainerWidth = arg1.menuContainerWidth;
		isSmallPortraitViewport = arg1.isSmallPortraitViewport;
	})
end