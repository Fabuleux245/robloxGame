-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:17
-- Luau version 6, Types version 3
-- Time taken: 0.001231 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local getMenuItemSizings_upvr = require(AbuseReportMenu.Utility.getMenuItemSizings)
local React_upvr = require(CorePackages.Packages.React)
local reportExperienceUIStateReducer_upvr = require(AbuseReportMenu.Reducers.reportExperienceUIStateReducer)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local getMenuItemsFromConfigs_upvr = require(AbuseReportMenu.MenuConfigs.getMenuItemsFromConfigs)
local ReportExperienceMenuItemConfigList_upvr = require(AbuseReportMenu.MenuConfigs.Experience.ReportExperienceMenuItemConfigList)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return function(arg1) -- Line 17, Named "ReportExperienceMenuItemsContainer"
	--[[ Upvalues[7]:
		[1]: getMenuItemSizings_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: reportExperienceUIStateReducer_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: getMenuItemsFromConfigs_upvr (readonly)
		[6]: ReportExperienceMenuItemConfigList_upvr (readonly)
		[7]: Cryo_upvr (readonly)
	]]
	local any_useReducer_result1, any_useReducer_result2 = React_upvr.useReducer(reportExperienceUIStateReducer_upvr, Constants_upvr.InitExperienceUIState)
	React_upvr.useEffect(function() -- Line 21
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		if arg1.utilityProps.isReportTabVisible then
			arg1.utilityProps.analyticsDispatch({
				type = Constants_upvr.AnalyticsActions.SwitchToExperienceInitialSelections;
			})
		end
	end, {arg1.utilityProps.isReportTabVisible})
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, {
		MenuItems = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, Cryo_upvr.Dictionary.join({
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, getMenuItemSizings_upvr().ItemPadding);
			});
		}, getMenuItemsFromConfigs_upvr(any_useReducer_result1, any_useReducer_result2, arg1.utilityProps, ReportExperienceMenuItemConfigList_upvr, arg1.isSmallPortraitViewport)));
	})
end