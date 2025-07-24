-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:08
-- Luau version 6, Types version 3
-- Time taken: 0.003353 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local SocialLuaAnalytics_upvr = require(Parent.SocialLuaAnalytics)
local Telemetry_upvr = require(AppChat.Telemetry.Telemetry)
local module_2 = {}
local function robloxCounterWithName_upvr(arg1, arg2) -- Line 13, Named "robloxCounterWithName"
	--[[ Upvalues[1]:
		[1]: SocialLuaAnalytics_upvr (readonly)
	]]
	local module = {
		type = SocialLuaAnalytics_upvr.Analytics.Enums.SupportedTelemetryBackends.RobloxTelemetryCounter;
		overrideName = function() -- Line 16, Named "overrideName"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1
		end;
	}
	module.format = arg2
	module.standardizedFields = nil
	module.throttlingThousandths = nil
	return module
end
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local function eventIngestWithFormatFunction_upvr(arg1) -- Line 24, Named "eventIngestWithFormatFunction"
	--[[ Upvalues[2]:
		[1]: SocialLuaAnalytics_upvr (readonly)
		[2]: LoggingProtocol_upvr (readonly)
	]]
	local module_3 = {
		type = SocialLuaAnalytics_upvr.Analytics.Enums.SupportedTelemetryBackends.EventIngest;
		standardizedFields = {LoggingProtocol_upvr.StandardizedFields.addSessionId, LoggingProtocol_upvr.StandardizedFields.addSessionInfo};
	}
	module_3.format = arg1
	module_3.overrideName = nil
	module_3.throttlingThousandths = nil
	return module_3
end
module_2.Events = {
	modalRenderedWithSequence = function(arg1) -- Line 58, Named "modalRenderedWithSequence"
		--[[ Upvalues[3]:
			[1]: robloxCounterWithName_upvr (readonly)
			[2]: eventIngestWithFormatFunction_upvr (readonly)
			[3]: Telemetry_upvr (readonly)
		]]
		local tbl = {}
		local counterFormat_2 = arg1.counterFormat
		local eventStreamFormat_2 = arg1.eventStreamFormat
		if counterFormat_2 then
			table.insert(tbl, robloxCounterWithName_upvr(`AppChat.Modal.{arg1.modalSequence}.Rendered`, counterFormat_2))
		end
		if eventStreamFormat_2 then
			table.insert(tbl, eventIngestWithFormatFunction_upvr(eventStreamFormat_2))
		end
		return Telemetry_upvr.new({
			name = "appChatModalRendered";
			description = "";
			lastUpdated = {2021, 1, 1};
			backendsList = tbl;
		})
	end;
	modalActionWithSequence = function(arg1) -- Line 89, Named "modalActionWithSequence"
		--[[ Upvalues[3]:
			[1]: robloxCounterWithName_upvr (readonly)
			[2]: eventIngestWithFormatFunction_upvr (readonly)
			[3]: Telemetry_upvr (readonly)
		]]
		local tbl_2 = {}
		local counterFormat = arg1.counterFormat
		local eventStreamFormat_3 = arg1.eventStreamFormat
		if counterFormat then
			table.insert(tbl_2, robloxCounterWithName_upvr(`AppChat.Modal.{arg1.modalSequence}.Action`, counterFormat))
		end
		if eventStreamFormat_3 then
			table.insert(tbl_2, eventIngestWithFormatFunction_upvr(eventStreamFormat_3))
		end
		return Telemetry_upvr.new({
			name = "appChatModalAction";
			description = "";
			lastUpdated = {2021, 1, 1};
			backendsList = tbl_2;
		})
	end;
	modalActionResultWithSequence = function(arg1) -- Line 123, Named "modalActionResultWithSequence"
		--[[ Upvalues[3]:
			[1]: robloxCounterWithName_upvr (readonly)
			[2]: eventIngestWithFormatFunction_upvr (readonly)
			[3]: Telemetry_upvr (readonly)
		]]
		local tbl_3 = {}
		local counterFormat_3 = arg1.counterFormat
		local eventStreamFormat = arg1.eventStreamFormat
		if counterFormat_3 then
			table.insert(tbl_3, robloxCounterWithName_upvr(`AppChat.Modal.{arg1.modalSequence}.ActionResult`, counterFormat_3))
		end
		if eventStreamFormat then
			table.insert(tbl_3, eventIngestWithFormatFunction_upvr(eventStreamFormat))
		end
		return Telemetry_upvr.new({
			name = "appChatModalActionResult";
			description = "";
			lastUpdated = {2021, 1, 1};
			backendsList = tbl_3;
		})
	end;
}
module_2.Enums = {
	ModalActions = {
		PrimaryCta = "primaryCta";
		SecondaryCta = "secondaryCta";
		Dismiss = "dismiss";
		InlineCta = "inlineCta";
	};
	ModalActionResults = {
		Success = "success";
		Failure = "failure";
	};
	ModalSequence = {
		ChatLandingModal = "ChatLandingModal";
		ConversationOverlay = "ConversationOverlay";
	};
}
return module_2