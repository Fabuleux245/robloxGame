-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:56
-- Luau version 6, Types version 3
-- Time taken: 0.005653 seconds

local Parent = script:FindFirstAncestor("InterventionShared").Parent
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local tbl_2_upvr = {
	InterventionTypes = {
		Nudge = "INTERVENTION_CHAT_NUDGE";
		Timeout = "INTERVENTION_CHAT_TIMEOUT";
		PartyChatNudge = "INTERVENTION_PARTY_CHAT_NUDGE";
		PartyChatTimeout = "INTERVENTION_PARTY_CHAT_TIMEOUT";
	};
	CounterNamespaceTypes = {
		PartyChat = "PartyChat";
	};
	EventTypes = {
		AppealClicked = "EVENT_APPEAL_CLICKED";
		CtaClicked = "EVENT_CTA_CLICKED";
		ModalAppeared = "EVENT_MODAL_APPEARED";
		ModalMessageReceived = "EVENT_MODAL_MESSAGE_RECEIVED";
		ToastMessageReceived = "EVENT_TOAST_MESSAGE_RECEIVED";
		NudgeToastAppeared = "EVENT_NUDGE_TOAST_APPEARED";
		NudgeToastDismissed = "EVENT_NUDGE_TOAST_DISMISSED";
		ChatAttemptToastAppeared = "EVENT_CHAT_ATTEMPT_TOAST_APPEARED";
		ChatAttemptToastDismissed = "EVENT_CHAT_ATTEMPT_TOAST_DISMISSED";
	};
	EventContext = "InExperienceInterventionEvent";
	EventName = "InExperienceInterventionEvent";
}
local Players_upvr = game:GetService("Players")
local Cryo_upvr = require(Parent.Cryo)
local tbl = {
	eventName = tbl_2_upvr.EventName;
	backends = {LoggingProtocol_upvr.TelemetryBackends.EventIngest};
	formatCustomFields = function(arg1) -- Line 67
		--[[ Upvalues[3]:
			[1]: Players_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: Cryo_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local eventType = arg1.eventType
		local var12
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var12 = Players_upvr.LocalPlayer.UserId
			return var12
		end
		if not Players_upvr or not Players_upvr.LocalPlayer or not INLINED() then
			var12 = 0
		end
		local UnixTimestampMillis = DateTime.now().UnixTimestampMillis
		local module = {
			user_id = tostring(var12);
			timestamp_milliseconds = tostring(UnixTimestampMillis);
			event_type = eventType;
			intervention_type = arg1.interventionType;
			event_id = arg1.eventId;
			evidence = arg1.evidence;
		}
		if arg1.duration ~= nil then
		else
		end
		module.timeout_duration_seconds = nil
		module.placement = arg1.placement
		if eventType == tbl_2_upvr.EventTypes.CtaClicked or eventType == tbl_2_upvr.EventTypes.AppealClicked or eventType == tbl_2_upvr.EventTypes.NudgeToastDismissed or eventType == tbl_2_upvr.EventTypes.ChatAttemptToastDismissed then
		end
		return Cryo_upvr.Dictionary.join({
			time_to_interact_seconds = tostring((UnixTimestampMillis - arg1.renderedTimestamp) / 1000);
		}, module)
	end;
}
local function var18(arg1) -- Line 106
	--[[ Upvalues[1]:
		[1]: LoggingProtocol_upvr (readonly)
	]]
	local module_2 = {}
	module_2.counterSuffix = arg1
	module_2.backends = {LoggingProtocol_upvr.TelemetryBackends.Counter}
	function module_2.formatCustomFields(arg1_2) -- Line 110
		return {
			eventType = arg1_2.eventType;
			interventionType = arg1_2.interventionType;
			placement = arg1_2.placement;
		}
	end
	return module_2
end
local default_upvr = LoggingProtocol_upvr.default
return {
	sendAnalyticsEvent = function(arg1, arg2) -- Line 159
		--[[ Upvalues[1]:
			[1]: default_upvr (readonly)
		]]
		local loggingTypes = arg1.loggingTypes
		if loggingTypes.Event then
			local Event = loggingTypes.Event
			local standardizedFields = Event.standardizedFields
			if not standardizedFields then
				standardizedFields = {}
			end
			default_upvr:logRobloxTelemetryEvent({
				eventName = Event.eventName;
				backends = Event.backends;
				throttlingPercentage = arg1.throttlingPercentage;
				lastUpdated = arg1.lastUpdated;
				description = arg1.description;
				links = arg1.links;
			}, standardizedFields, Event.formatCustomFields(arg2))
		end
		if loggingTypes.Counter then
			local Counter = loggingTypes.Counter
			default_upvr:logRobloxTelemetryCounter({
				eventName = `Intervention.{arg2.counterNamespace or "Unknown"}.{Counter.counterSuffix}`;
				backends = Counter.backends;
				throttlingPercentage = arg1.throttlingPercentage;
				lastUpdated = arg1.lastUpdated;
				description = arg1.description;
				links = arg1.links;
			}, 1, Counter.formatCustomFields(arg2))
		end
	end;
	Constants = tbl_2_upvr;
	TelemetryConfigs = {
		MessageReceived = {
			loggingTypes = {
				Event = tbl;
				Counter = var18("Message.Received");
			};
			throttlingPercentage = 10000;
			lastUpdated = {2025, 3, 25};
			description = "Intervention RTN message Received";
		};
		DialogRendered = {
			loggingTypes = {
				Event = tbl;
				Counter = var18("Dialog.Rendered");
			};
			throttlingPercentage = 10000;
			lastUpdated = {2025, 3, 25};
			description = "Intervention Dialog Rendered";
		};
		DialogCtaClicked = {
			loggingTypes = {
				Event = tbl;
				Counter = var18("Dialog.Button.Cta");
			};
			throttlingPercentage = 10000;
			lastUpdated = {2025, 3, 25};
			description = "Intervention Dialog CTA Clicked";
		};
		DialogAppealClicked = {
			loggingTypes = {
				Event = tbl;
				Counter = var18("Dialog.Button.Appeal");
			};
			throttlingPercentage = 10000;
			lastUpdated = {2025, 3, 25};
			description = "Intervention Dialog Appeal Clicked";
		};
	};
}