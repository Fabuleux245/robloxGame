-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:55
-- Luau version 6, Types version 3
-- Time taken: 0.003874 seconds

local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local SetDevConsoleVisibility_upvr = require(script.Parent.Parent.Actions.SetDevConsoleVisibility)
function ReportDevConsoleOpenClose(arg1, arg2) -- Line 23
	--[[ Upvalues[2]:
		[1]: SetDevConsoleVisibility_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	if arg2.type == SetDevConsoleVisibility_upvr.name and arg2.isVisible ~= arg1:getState().DisplayOptions.isVisible then
		if arg2.isVisible then
			RbxAnalyticsService_upvr:ReportCounter("DevConsoleStartVisible", 1)
			return
		end
		RbxAnalyticsService_upvr:ReportStats("DevConsoleSessionTime", tick() - arg1:getState().DisplayOptions.visibleStartTime)
	end
end
function getTabAnalyticsKeyName(arg1, arg2) -- Line 39
	if arg2 ~= nil then
		if arg2 then
		else
		end
		return string.format("%s_%s", arg1, "Server")
	end
	return string.format("%s", arg1)
end
local Dash_upvr = require(game:GetService("CorePackages").Packages.Dash)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ReportDevConsoleTabEventsThrottleHundredthsPercent", 0)
function dispatchTabAnalytics(arg1) -- Line 47
	--[[ Upvalues[3]:
		[1]: Dash_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
	]]
	RbxAnalyticsService_upvr:ReportInfluxSeries("devConsoleMetric", Dash_upvr.join({
		placeId = game.PlaceId;
		calledFrom = "devConsoleTabChange";
	}, arg1), game_DefineFastInt_result1_upvr)
end
local SetActiveTab_upvr = require(script.Parent.Parent.Actions.SetActiveTab)
local SetDevConsoleMinimized_upvr = require(script.Parent.Parent.Actions.SetDevConsoleMinimized)
function ReportTabChange(arg1, arg2) -- Line 59
	--[[ Upvalues[3]:
		[1]: SetActiveTab_upvr (readonly)
		[2]: SetDevConsoleVisibility_upvr (readonly)
		[3]: SetDevConsoleMinimized_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local type = arg2.type
	local var9 = SetActiveTab_upvr
	local name = var9.name
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 15. Error Block 26 start (CF ANALYSIS FAILED)
	dispatchTabAnalytics({
		initTab = getTabAnalyticsKeyName(type.currTabIndex, type.isClientView);
		endTab = getTabAnalyticsKeyName(name, var9);
	})
	do
		return
	end
	-- KONSTANTERROR: [26] 15. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 30. Error Block 34 start (CF ANALYSIS FAILED)
	if arg2.type == SetDevConsoleVisibility_upvr.name then
		local MainView_2 = arg1:getState().MainView
		local var13
		if arg2.isVisible then
			var13 = {
				initTab = "StartVisible";
				endTab = getTabAnalyticsKeyName(MainView_2.currTabIndex, MainView_2.isClientView);
			}
		elseif arg1:getState().DisplayOptions.isMinimized then
			var13 = {
				initTab = "Minimized";
				endTab = "EndVisible";
			}
		else
			var13 = {
				initTab = getTabAnalyticsKeyName(MainView_2.currTabIndex, MainView_2.isClientView);
				endTab = "EndVisible";
			}
		end
		dispatchTabAnalytics(var13)
		return
	end
	if arg2.type == SetDevConsoleMinimized_upvr.name then
		local MainView = arg1:getState().MainView
		local var18
		if arg2.isMinimized then
			var18 = {
				initTab = getTabAnalyticsKeyName(MainView.currTabIndex, MainView.isClientView);
				endTab = "Minimized";
			}
		else
			var18 = {
				initTab = "Minimized";
				endTab = getTabAnalyticsKeyName(MainView.currTabIndex, MainView.isClientView);
			}
		end
		dispatchTabAnalytics(var18)
	end
	-- KONSTANTERROR: [48] 30. Error Block 34 end (CF ANALYSIS FAILED)
end
return function(arg1, arg2) -- Line 117
	return function(arg1_2) -- Line 118
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		ReportTabChange(arg2, arg1_2)
		ReportDevConsoleOpenClose(arg2, arg1_2)
		arg1(arg1_2)
	end
end