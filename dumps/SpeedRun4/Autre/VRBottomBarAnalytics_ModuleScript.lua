-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:32
-- Luau version 6, Types version 3
-- Time taken: 0.001313 seconds

local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TelemetryServicePlaySessionInfoEnabled")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local TelemetryService_upvr = game:GetService("TelemetryService")
return {
	sendEventToTelemetryV2 = function(arg1) -- Line 12, Named "sendEventToTelemetryV2"
		--[[ Upvalues[3]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: RbxAnalyticsService_upvr (readonly)
			[3]: TelemetryService_upvr (readonly)
		]]
		local tbl_2 = {"addPlaceId", "addUniverseId", "addSessionInfo"}
		local tbl = {
			integration_id = arg1.integrationId;
			is_toggle_on = tostring(arg1.isToggleOn);
			source = arg1.source;
		}
		if game_GetEngineFeature_result1_upvr then
			table.insert(tbl_2, "addPlaySessionId")
		else
			tbl.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
		end
		TelemetryService_upvr:LogEvent({
			eventName = "coreui_vr_bottom_bar_action";
			backends = {"EventIngest"};
			throttlingPercentage = game:DefineFastInt("VRBottomBarActionEventThrottleHunderedthsPercent", 0);
			lastUpdated = {2025, 5, 12};
			description = "Event fired from the client every time VRBottomBar buttons are clicked";
			links = "https://github.rbx.com/Roblox/proto-schemas/pull/5803";
		}, {
			standardizedFields = tbl_2;
			customFields = tbl;
		})
	end;
}