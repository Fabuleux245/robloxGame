-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:21
-- Luau version 6, Types version 3
-- Time taken: 0.000512 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local ReportMenuItem_upvr = require(AbuseReportMenu.Components.MenuItems.ReportMenuItem)
local ModalBasedSelector_upvr = require(AbuseReportMenu.Components.ModalBasedSelector)
return function(arg1) -- Line 15
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ReportMenuItem_upvr (readonly)
		[3]: ModalBasedSelector_upvr (readonly)
	]]
	return React_upvr.createElement(ReportMenuItem_upvr, {
		label = arg1.label;
		layoutOrder = arg1.layoutOrder;
		rightComponent = React_upvr.createElement(ModalBasedSelector_upvr, arg1);
		menuContainerWidth = arg1.menuContainerWidth;
		isSmallPortraitViewport = arg1.isSmallPortraitViewport;
		placeholderText = arg1.placeholderText;
	})
end