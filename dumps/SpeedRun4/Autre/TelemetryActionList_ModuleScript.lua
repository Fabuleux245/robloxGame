-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:10
-- Luau version 6, Types version 3
-- Time taken: 0.003553 seconds

local SupportedTelemetryBackends = require(script:FindFirstAncestor("CrossExperienceVoice").Parent.SocialLuaAnalytics).Analytics.Enums.SupportedTelemetryBackends
local EventNames = require(script.Parent.EventNames)
local module = {
	defaults = {
		throttlingThousandths = game:DefineFastInt("PartyVoiceTelemetryThrottlingThousandths", 1000);
		links = "";
	};
}
local tbl_6 = {
	lastUpdated = {24, 12, 8};
	description = "Event when a user transitions state during a party voice session";
}
local tbl_8 = {}
local tbl_7 = {
	type = SupportedTelemetryBackends.RobloxTelemetryCounter;
}
local tbl_2 = {
	status = function(arg1) -- Line 21, Named "status"
		return arg1
	end;
	previousStatus = function(arg1) -- Line 24, Named "previousStatus"
		return arg1
	end;
	detail = function(arg1) -- Line 27, Named "detail"
		return arg1
	end;
}
local function activeDm(arg1) -- Line 30
	return arg1
end
tbl_2.activeDm = activeDm
tbl_7.dynamicCustomFields = tbl_2
tbl_8[1] = tbl_7
tbl_6.backendsList = tbl_8
module[EventNames.PartyVoiceStateChanged] = tbl_6
local tbl = {
	lastUpdated = {24, 11, 30};
	description = "Event when a user successfully connects to a party voice channel";
}
local tbl_4 = {}
local tbl_5 = {
	type = SupportedTelemetryBackends.RobloxTelemetryCounter;
}
local tbl_3 = {
	numberActive = function(arg1) -- Line 44, Named "numberActive"
		return arg1
	end;
}
local function activeDm(arg1) -- Line 47
	return arg1
end
tbl_3.activeDm = activeDm
tbl_5.dynamicCustomFields = tbl_3
tbl_4[1] = tbl_5
tbl.backendsList = tbl_4
module[EventNames.PartyVoiceConnectedParticipantsOnJoin] = tbl
module[EventNames.PartyVoiceJoinFailure] = {
	lastUpdated = {25, 3, 12};
	description = "Event when a user attempts to connect to party voice and results in failure";
	backendsList = {{
		type = SupportedTelemetryBackends.RobloxTelemetryCounter;
		dynamicCustomFields = {
			errorMessage = function(arg1) -- Line 61, Named "errorMessage"
				return arg1
			end;
		};
	}};
}
module[EventNames.PartyVoiceJoinAttempt] = {
	lastUpdated = {24, 12, 8};
	description = "Event when a user attempts to connect to party voice";
	backendsList = {{
		type = SupportedTelemetryBackends.RobloxTelemetryCounter;
		dynamicCustomFields = {
			activeDm = function(arg1) -- Line 75, Named "activeDm"
				return arg1
			end;
		};
	}};
}
module[EventNames.PartyVoiceUnmuteParticipant] = {
	lastUpdated = {25, 3, 30};
	description = "Event when a user unmutes a participant in party voice";
	backendsList = {{
		type = SupportedTelemetryBackends.RobloxTelemetryCounter;
	}};
}
module[EventNames.PartyVoiceMuteParticipant] = {
	lastUpdated = {25, 3, 30};
	description = "Event when a user mutes a participant in party voice";
	backendsList = {{
		type = SupportedTelemetryBackends.RobloxTelemetryCounter;
	}};
}
module[EventNames.PartyVoiceBlockParticipant] = {
	lastUpdated = {25, 3, 30};
	description = "Event when a user blocks a participant in party voice";
	backendsList = {{
		type = SupportedTelemetryBackends.RobloxTelemetryCounter;
	}};
}
module[EventNames.PartyVoiceUnblockParticipant] = {
	lastUpdated = {25, 3, 30};
	description = "Event when a user unblocks a participant in party voice";
	backendsList = {{
		type = SupportedTelemetryBackends.RobloxTelemetryCounter;
	}};
}
return module