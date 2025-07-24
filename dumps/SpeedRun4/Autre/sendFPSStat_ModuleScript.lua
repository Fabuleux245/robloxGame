-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:42
-- Luau version 6, Types version 3
-- Time taken: 0.001365 seconds

local Parent = script:FindFirstAncestor("IntervalPerformanceTracker").Parent
local UserInputService_upvr = game:GetService("UserInputService")
local isSpatial_upvr = require(Parent.AppCommonLib).isSpatial
local RunService_upvr = game:GetService("RunService")
local HttpService_upvr = game:GetService("HttpService")
local Dash_upvr = require(Parent.Dash)
local function getDefaultMetadata_upvr(arg1) -- Line 18, Named "getDefaultMetadata"
	--[[ Upvalues[5]:
		[1]: UserInputService_upvr (readonly)
		[2]: isSpatial_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: Dash_upvr (readonly)
	]]
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	if isSpatial_upvr() then
		any_GetPlatform_result1 = "VR"
	end
	return Dash_upvr.assign({
		appVersion = RunService_upvr:GetRobloxVersion();
		userAgent = HttpService_upvr:GetUserAgent();
		coreScriptVersion = RunService_upvr:GetCoreScriptVersion();
		platform = any_GetPlatform_result1;
	}, arg1)
end
local default_upvr = require(Parent.LoggingProtocol).default
local any_new_result1_upvr = require(Parent.Analytics).Analytics.new(game:GetService("RbxAnalyticsService"))
return function(arg1) -- Line 43, Named "sendFPSStat"
	--[[ Upvalues[3]:
		[1]: getDefaultMetadata_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	local var11
	if arg1.excludeEventStream == false then
		var11 = false
	else
		var11 = true
	end
	if not arg1.excludeStat then
		default_upvr:logRobloxTelemetryStat({
			eventName = arg1.statName;
			backends = {"RobloxTelemetryStat"};
			lastUpdated = {2025, 4, 28};
			description = "Stat to track FPS metrics.";
			links = "";
		}, arg1.interval, getDefaultMetadata_upvr(arg1.metaData))
	end
	if not var11 and arg1.eventStreamName then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		any_new_result1_upvr.EventStream:sendEventDeferred(arg1.eventStreamName, "robloxFPSMetrics", getDefaultMetadata_upvr(arg1.metaData))
	end
end