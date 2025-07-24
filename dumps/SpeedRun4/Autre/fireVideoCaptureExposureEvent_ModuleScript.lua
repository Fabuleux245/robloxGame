-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:06
-- Luau version 6, Types version 3
-- Time taken: 0.001085 seconds

local tbl_2_upvr = {
	eventName = "VideoCaptureExposure";
	backends = {"EventIngest"};
	throttlingPercentage = game:DefineFastInt("VideoCaptureExposureThrottleHundrethsPercent", 0);
	lastUpdated = {2025, 5, 9};
	description = "Event fired from the client every time the capture controls are exposed";
	links = "https://github.rbx.com/Roblox/proto-schemas/pull/5820";
}
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TelemetryServiceMemoryCPUInfoEnabled")
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("TelemetryServicePlaySessionInfoEnabled")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local TelemetryService_upvr = game:GetService("TelemetryService")
return function(arg1, arg2) -- Line 20, Named "fireVideoCaptureExposureEvent"
	--[[ Upvalues[5]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr_2 (readonly)
		[3]: RbxAnalyticsService_upvr (readonly)
		[4]: TelemetryService_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
	]]
	local tbl = {"addOSInfo", "addPlaceId", "addSessionInfo", "addUniverseId"}
	local tbl_3 = {}
	local var10 = "true"
	tbl_3.IsExposedToUserCaptureButton = var10
	tbl_3.VideoCaptureExperimentSubvariant = arg2
	if arg1 then
		var10 = "true"
	else
		var10 = "false"
	end
	tbl_3.VideoScreenCaptureFlagEnabled = var10
	if game_GetEngineFeature_result1_upvr then
		table.insert(tbl, "addMemoryInfo")
	end
	if game_GetEngineFeature_result1_upvr_2 then
		table.insert(tbl, "addPlaySessionId")
	else
		tbl_3.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	TelemetryService_upvr:LogEvent(tbl_2_upvr, {
		standardizedFields = tbl;
		customFields = tbl_3;
	})
end