-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:18
-- Luau version 6, Types version 3
-- Time taken: 0.001990 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local tbl_upvr = {
	eventName = "DynamicAbuseReportEvent";
	description = "Event to track dynamic abuse report";
	lastUpdated = {2024, 6, 18};
	backends = {"EventIngest", "Points"};
	throttlingPercentage = game:DefineFastInt("DynamicAbuseReportThrottleHundredthsPercent", 0);
	links = "https://github.rbx.com/Roblox/proto-schemas/pull/6068";
}
local Dash_upvr = require(Parent.Dash)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local AbuseEntrypoint_upvr = require(GenericAbuseReporting.Enums.AbuseEntrypoint)
local function buildCustomFields_upvr(arg1) -- Line 60, Named "buildCustomFields"
	--[[ Upvalues[3]:
		[1]: Dash_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: AbuseEntrypoint_upvr (readonly)
	]]
	local var10
	if arg1.meta then
		var10 = Dash_upvr.pretty(arg1.meta, {
			depth = 10;
			multiline = false;
		})
	end
	local module = {}
	local abuseVector = arg1.context.abuseVector
	module.abuse_vector = abuseVector
	if LocalPlayer_upvr then
		abuseVector = LocalPlayer_upvr.UserId
	else
		abuseVector = 0
	end
	module.user_id = abuseVector
	module.event_type = arg1.eventType
	module.entry_point = AbuseEntrypoint_upvr.APP
	module.meta = var10
	return module
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local TelemetryService_upvr = game:GetService("TelemetryService")
return {
	sendAnalyticsEvent = function(arg1) -- Line 76, Named "sendAnalyticsEvent"
		--[[ Upvalues[4]:
			[1]: ArgCheck_upvr (readonly)
			[2]: TelemetryService_upvr (readonly)
			[3]: tbl_upvr (readonly)
			[4]: buildCustomFields_upvr (readonly)
		]]
		ArgCheck_upvr.assert(arg1.context, "customFields must be provided")
		ArgCheck_upvr.assert(arg1.context.abuseVector, "customFields.abuse_vector must be provided")
		TelemetryService_upvr:LogEvent(tbl_upvr, {
			customFields = buildCustomFields_upvr(arg1);
		})
	end;
	TelemetryEventType = {
		Abandoned = "EVENT_ABANDONED";
		Error = "EVENT_ERROR";
		Rendered = "EVENT_RENDERED";
		Submitted = "EVENT_SUBMITTED";
	};
}