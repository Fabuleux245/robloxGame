-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:09
-- Luau version 6, Types version 3
-- Time taken: 0.001131 seconds

local module_upvr = {
	ButtonName = {
		SettingsHub = "settingsHub";
	};
	EventName = {
		GameInviteEntryPoint = "inputShareGameEntryPoint";
		GameInviteEntryPointCounter = settings():GetFVariable("LuaShareGameSettingsHubEntryCounter");
	};
}
local tbl_upvr = {
	GameInviteEntryPoint = {
		eventConfig = {
			eventName = module_upvr.EventName.GameInviteEntryPoint;
			backends = {"EventIngest"};
			lastUpdated = {2025, 6, 25};
			description = "Event to track game invite entry point from people tab.";
		};
		counterConfig = {
			eventName = module_upvr.EventName.GameInviteEntryPointCounter;
			backends = {"RobloxTelemetryCounter"};
			lastUpdated = {2025, 6, 25};
			description = "Counter to track game invite entry point clicks from people tab.";
		};
	};
}
module_upvr.TelemetryConfigs = tbl_upvr
local TelemetryService_upvr = game:GetService("TelemetryService")
local GameInviteAnalyticsManager_upvr = require(script:FindFirstAncestor("PeopleService").Parent.GameInvite).GameInviteAnalyticsManager
function module_upvr.trackGameInviteEntryPoint(arg1) -- Line 48
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: TelemetryService_upvr (readonly)
		[4]: GameInviteAnalyticsManager_upvr (readonly)
	]]
	local GameInviteEntryPoint = tbl_upvr.GameInviteEntryPoint
	TelemetryService_upvr:LogEvent(GameInviteEntryPoint.eventConfig, {
		customFields = {
			btn = module_upvr.ButtonName.SettingsHub;
			placeId = tostring(game.PlaceId);
			gameId = tostring(game.GameId);
		};
	})
	TelemetryService_upvr:LogCounter(GameInviteEntryPoint.counterConfig, {}, 1)
	GameInviteAnalyticsManager_upvr:withButtonName(module_upvr.ButtonName.SettingsHub)
end
return module_upvr