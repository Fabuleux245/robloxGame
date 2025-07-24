-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:46
-- Luau version 6, Types version 3
-- Time taken: 0.001946 seconds

local LoggingProtocol = require(script:FindFirstAncestor("AppLaunchTracker").Parent.LoggingProtocol)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("DiscoveryAppLaunchMilestonesHundredthsPercent", 0)
local tbl_3_upvr = {
	eventName = "DiscoveryAppLaunch_Milestones";
	backends = {LoggingProtocol.TelemetryBackends.Points, LoggingProtocol.TelemetryBackends.EventIngest};
	throttlingPercentage = game_DefineFastInt_result1_upvr;
	lastUpdated = {24, 11, 4};
	description = "App launch rodux actions";
	links = "";
}
local tbl_4_upvr = {
	eventName = "DiscoveryAppLaunch_Error";
	backends = {LoggingProtocol.TelemetryBackends.Counter};
	throttlingPercentage = game:DefineFastInt("DiscoveryAppLaunchErrorHundredthsPercent", 0);
	lastUpdated = {24, 11, 4};
	description = "Error related to discovery app launch metric tracking";
}
return {
	reportStatsforMilestone = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 37, Named "reportStatsforMilestone"
		--[[ Upvalues[2]:
			[1]: game_DefineFastInt_result1_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
		]]
		assert(arg1, "LoggingProtocol must exist")
		if 0 < game_DefineFastInt_result1_upvr then
			local tbl = {}
			tbl.milestone = arg2
			tbl.milestoneSpan = `{arg3}-{arg2}`
			tbl.durationMs = arg4
			tbl.numTilesInit = arg6
			tbl.numTileRenders = arg7
			tbl.numFeedItems = arg8
			tbl.numFeedRenders = arg9
			tbl.totalSduiDurationMs = arg10
			for i, v in arg5 do
				tbl[i] = v
				local var14
			end
			arg1:logRobloxTelemetryEvent(tbl_3_upvr, {arg1.StandardizedFields.addOsInfo}, var14)
		end
	end;
	reportError = function(arg1, arg2) -- Line 72, Named "reportError"
		--[[ Upvalues[1]:
			[1]: tbl_4_upvr (readonly)
		]]
		local tbl_2 = {}
		tbl_2.errorTag = arg2
		arg1:logRobloxTelemetryCounter(tbl_4_upvr, 1, tbl_2)
	end;
}