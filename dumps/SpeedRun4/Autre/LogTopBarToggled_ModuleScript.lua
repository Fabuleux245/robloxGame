-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:22
-- Luau version 6, Types version 3
-- Time taken: 0.001508 seconds

local tbl_upvr = {
	eventName = "topbar_toggled";
	backends = {"EventIngest"};
	throttlingPercentage = game:DefineFastInt("TopBarToggledThrottleHundredthsPercent", 0);
	lastUpdated = {25, 6, 10};
	description = "Event fired every time TopBar is toggled open/close in UI-less mode";
	links = "https://github.rbx.com/Roblox/proto-schemas/pull/6270";
}
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TelemetryServicePlaySessionInfoEnabled")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local TelemetryService_upvr = game:GetService("TelemetryService")
return function(arg1) -- Line 22
	--[[ Upvalues[4]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: TelemetryService_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	local var8
	local var9
	if game_GetEngineFeature_result1_upvr then
		var8 = {"addPlaceId", "addUniverseId", "addPlaySessionId", "addSessionInfo"}
		var9 = {
			is_toggled_on = tostring(arg1);
		}
	else
		var8 = {"addPlaceId", "addUniverseId", "addSessionInfo"}
		var9 = {
			is_toggled_on = tostring(arg1);
			playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId();
		}
	end
	TelemetryService_upvr:LogEvent(tbl_upvr, {
		standardizedFields = var8;
		customFields = var9;
	})
end