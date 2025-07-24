-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:54
-- Luau version 6, Types version 3
-- Time taken: 0.001135 seconds

local tbl_upvr = {
	eventName = "coreui_gamepad_toggle_exp_controls";
	backends = {"EventIngest"};
	throttlingPercentage = game:DefineFastInt("GamepadOpenExperienceControlsMenuThrottleHundrethsPercent", 0);
	lastUpdated = {25, 4, 25};
	description = "Event fired from the client every time Experience Controls Menu is toggled open/closed";
	links = "https://github.rbx.com/Roblox/proto-schemas/pull/5750";
}
local FFlagLoggingGamepadOpenExpControlsMenu_upvr = require(script.Parent.Parent.Flags.FFlagLoggingGamepadOpenExpControlsMenu)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TelemetryServicePlaySessionInfoEnabled")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local TelemetryService_upvr = game:GetService("TelemetryService")
return function(arg1) -- Line 24
	--[[ Upvalues[5]:
		[1]: FFlagLoggingGamepadOpenExpControlsMenu_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: RbxAnalyticsService_upvr (readonly)
		[4]: TelemetryService_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	if not FFlagLoggingGamepadOpenExpControlsMenu_upvr then
	else
		local var9
		local var10
		if game_GetEngineFeature_result1_upvr then
			var9 = {"addPlaceId", "addUniverseId", "addPlaySessionId", "addSessionInfo"}
			var10 = {
				is_toggle_open = tostring(arg1);
			}
		else
			var9 = {"addPlaceId", "addUniverseId", "addSessionInfo"}
			var10 = {
				is_toggle_open = tostring(arg1);
				playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId();
			}
		end
		TelemetryService_upvr:LogEvent(tbl_upvr, {
			standardizedFields = var9;
			customFields = var10;
		})
	end
end