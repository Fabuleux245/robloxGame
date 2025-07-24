-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:55
-- Luau version 6, Types version 3
-- Time taken: 0.002393 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl = {
	name = "appChatClosed";
	description = "";
	lastUpdated = {2021, 1, 1};
}
local tbl_3 = {}
local tbl_2 = {
	type = "RobloxTelemetryCounter";
	overrideName = function() -- Line 27, Named "overrideName"
		return "AppChat.Navigation.Closed"
	end;
}
local function format() -- Line 30
	return {}
end
tbl_2.format = format
tbl_3[1] = tbl_2
tbl_3[2] = {
	type = "EventIngest";
	standardizedFields = {"addSessionId", "addSessionInfo"};
	format = function(arg1, arg2) -- Line 37, Named "format"
		return {
			context = arg2.context;
			userId = arg2.userId;
			locale = arg2.locale;
			entryPoint = arg2.entryPoint;
			unfilteredThreadsEligibility = arg2.unfilteredThreadsEligibility;
			playSessionId = arg2.playSessionId;
			currentSquadId = arg2.currentSquadId;
			isChatEnabled = arg1.isChatEnabled;
		}
	end;
}
tbl.backendsList = tbl_3
local SessionService_upvr = game:GetService("SessionService")
local useTelemetry_upvr = require(AppChat.Telemetry.useTelemetry)
local AppTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.AppTelemetryLayer)
local useIsChatEnabled_upvr = require(AppChat.Hooks.useIsChatEnabled)
local useEffect_upvr = require(Parent.React).useEffect
local SessionType_upvr = require(Parent.RobloxAppSessionization).SessionType
local game_DefineFastString_result1_upvr = game:DefineFastString("AppChatSessionName", "ChatPage")
local String_upvr = require(Parent.LuauPolyfill).String
local getFFlagAppChatClosedEvent_upvr = require(AppChat.Flags.getFFlagAppChatClosedEvent)
local any_new_result1_upvr = require(AppChat.Telemetry.Telemetry).new(tbl)
return function(arg1, arg2) -- Line 58
	--[[ Upvalues[10]:
		[1]: SessionService_upvr (readonly)
		[2]: useTelemetry_upvr (readonly)
		[3]: AppTelemetryLayer_upvr (readonly)
		[4]: useIsChatEnabled_upvr (readonly)
		[5]: useEffect_upvr (readonly)
		[6]: SessionType_upvr (readonly)
		[7]: game_DefineFastString_result1_upvr (readonly)
		[8]: String_upvr (readonly)
		[9]: getFFlagAppChatClosedEvent_upvr (readonly)
		[10]: any_new_result1_upvr (readonly)
	]]
	local var21_upvr = arg2
	if not var21_upvr then
		var21_upvr = SessionService_upvr
	end
	local useTelemetry_upvr_result1_upvr = useTelemetry_upvr(AppTelemetryLayer_upvr.Context)
	local useIsChatEnabled_upvr_result1_upvr = useIsChatEnabled_upvr()
	local tbl_4 = {}
	tbl_4[1] = arg1
	tbl_4[2] = var21_upvr
	useEffect_upvr(function() -- Line 63
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: SessionType_upvr (copied, readonly)
			[3]: var21_upvr (readonly)
			[4]: game_DefineFastString_result1_upvr (copied, readonly)
			[5]: String_upvr (copied, readonly)
			[6]: getFFlagAppChatClosedEvent_upvr (copied, readonly)
			[7]: useTelemetry_upvr_result1_upvr (readonly)
			[8]: any_new_result1_upvr (copied, readonly)
			[9]: useIsChatEnabled_upvr_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
		if arg1 then
			local Level2a = SessionType_upvr.StructuralIdentifier.Level2a
			if var21_upvr:SessionExists(Level2a) then
				var21_upvr:SetSession(Level2a, game_DefineFastString_result1_upvr, game_DefineFastString_result1_upvr)
				if game:GetEngineFeature("SessionGetSessionID") and String_upvr.startsWith(var21_upvr:GetSessionTag(Level2a), "ingame") then
					var21_upvr:SetMetadata(game_DefineFastString_result1_upvr, "InGameSessionId", var21_upvr:GetSessionID(Level2a))
					-- KONSTANTWARNING: GOTO [75] #62
				end
				-- KONSTANTWARNING: GOTO [75] #62
			end
		else
			if var21_upvr:SessionExists(game_DefineFastString_result1_upvr) then
				var21_upvr:RemoveSession(game_DefineFastString_result1_upvr)
			end
			if getFFlagAppChatClosedEvent_upvr() then
				useTelemetry_upvr_result1_upvr.emit(any_new_result1_upvr, {
					isChatEnabled = useIsChatEnabled_upvr_result1_upvr;
				})
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [75] 62. Error Block 11 start (CF ANALYSIS FAILED)
		do
			return function() -- Line 89
			end
		end
		-- KONSTANTERROR: [75] 62. Error Block 11 end (CF ANALYSIS FAILED)
	end, tbl_4)
end