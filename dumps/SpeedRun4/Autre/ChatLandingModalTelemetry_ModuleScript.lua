-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:34
-- Luau version 6, Types version 3
-- Time taken: 0.002971 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local SocialLuaAnalytics_upvr = require(Parent.SocialLuaAnalytics)
local Telemetry = require(AppChat.Telemetry.Telemetry)
local ModalTelemetry = require(AppChat.Components.ModalTelemetry)
local module_upvr = {}
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local function eventIngestWithFormatFunction(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: SocialLuaAnalytics_upvr (readonly)
		[2]: LoggingProtocol_upvr (readonly)
	]]
	local module = {
		type = SocialLuaAnalytics_upvr.Analytics.Enums.SupportedTelemetryBackends.EventIngest;
		standardizedFields = {LoggingProtocol_upvr.StandardizedFields.addSessionId, LoggingProtocol_upvr.StandardizedFields.addSessionInfo};
	}
	module.format = arg1
	module.overrideName = nil
	module.throttlingThousandths = nil
	return module
end
module_upvr.Constants = {
	EventStreamCtx = SocialLuaAnalytics_upvr.Analytics.Enums.Contexts.Party;
	FaeModalShownField = "fae";
	ConfirmFaeBtn = "confirmFae";
	CancelFaeBtn = "cancelFae";
}
local tbl = {
	FaeModalShown = Telemetry.new({
		name = "authModalShown";
		description = "";
		lastUpdated = {2021, 1, 1};
		backendsList = {eventIngestWithFormatFunction(function(arg1, arg2) -- Line 40
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			return {
				field = module_upvr.Constants.FaeModalShownField;
				os_time = os.time();
				os_clock = os.clock();
			}
		end)};
		eventStreamCtx = module_upvr.Constants.EventStreamCtx;
	});
	TelemetryFaeButtonClick = Telemetry.new({
		name = "authButtonClick";
		description = "";
		lastUpdated = {2021, 1, 1};
		backendsList = {eventIngestWithFormatFunction(function(arg1, arg2) -- Line 56
			return {
				state = arg1.state;
				btn = arg1.btn;
				os_time = os.time();
				os_clock = os.clock();
			}
		end)};
		eventStreamCtx = module_upvr.Constants.EventStreamCtx;
	});
}
local tbl_2 = {
	modalSequence = ModalTelemetry.Enums.ModalSequence.ChatLandingModal;
}
local function counterFormat(arg1, arg2) -- Line 73
	return {
		modalVariant = arg1.modalVariant;
	}
end
tbl_2.counterFormat = counterFormat
tbl.ModalRendered = ModalTelemetry.Events.modalRenderedWithSequence(tbl_2)
local tbl_3 = {
	modalSequence = ModalTelemetry.Enums.ModalSequence.ChatLandingModal;
}
local function counterFormat(arg1, arg2) -- Line 81
	return {
		modalVariant = arg1.modalVariant;
		action = arg1.action;
	}
end
tbl_3.counterFormat = counterFormat
tbl.ModalAction = ModalTelemetry.Events.modalActionWithSequence(tbl_3)
tbl.ModalActionResult = ModalTelemetry.Events.modalActionResultWithSequence({
	modalSequence = ModalTelemetry.Enums.ModalSequence.ChatLandingModal;
	counterFormat = function(arg1, arg2) -- Line 93, Named "counterFormat"
		return {
			modalVariant = arg1.modalVariant;
			action = arg1.action;
			actionResult = arg1.actionResult;
		}
	end;
})
module_upvr.Events = tbl
return module_upvr