-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:28
-- Luau version 6, Types version 3
-- Time taken: 0.003242 seconds

local Parent = script.Parent.Parent
local MessageBus_upvr = require(Parent.MessageBus).MessageBus
local t = require(Parent.t)
local module_upvr = {
	GAME_LAUNCH_DESCRIPTOR = {
		mid = MessageBus_upvr.getMessageId("Game", "launch");
		validateParams = t.intersection(t.strictInterface({
			placeId = t.optional(t.number);
			userId = t.optional(t.number);
			accessCode = t.optional(t.string);
			gameInstanceId = t.optional(t.string);
			linkCode = t.optional(t.string);
			referralPage = t.optional(t.string);
			launchData = t.optional(t.string);
			eventId = t.optional(t.string);
			referredByPlayerId = t.optional(t.number);
			joinAttemptOrigin = t.optional(t.string);
			joinAttemptId = t.string;
		}), function(arg1) -- Line 45, Named "checkRequiredParams"
			local placeId = arg1.placeId
			if not placeId then
				placeId = arg1.userId
			end
			return placeId
		end);
	};
}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 57
	--[[ Upvalues[2]:
		[1]: MessageBus_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		subscriber = MessageBus_upvr.Subscriber.new();
	}, module_upvr)
end
local HttpService_upvr = game:GetService("HttpService")
local Cryo_upvr = require(Parent.Cryo)
local GetFFlagMoveLuaExpLaunchBegin_upvr = require(script.Parent.Flags.GetFFlagMoveLuaExpLaunchBegin)
local default_upvr = require(Parent.LoggingProtocol).default
function module_upvr.launchGame(arg1, arg2, arg3, arg4) -- Line 64
	--[[ Upvalues[5]:
		[1]: HttpService_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: GetFFlagMoveLuaExpLaunchBegin_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: MessageBus_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13
	if var13 == "string" then
		var13 = tonumber(arg2.placeId)
		arg2.placeId = var13
	end
	var13 = type(arg2.userId)
	if var13 == "string" then
		var13 = tonumber(arg2.userId)
		arg2.userId = var13
	end
	if arg2.joinAttemptId ~= nil then
		var13 = arg2.joinAttemptId
	else
		var13 = HttpService_upvr:GenerateGUID(false)
	end
	local tbl = {
		joinAttemptId = var13;
	}
	if arg3 ~= nil then
	else
	end
	tbl.joinAttemptOrigin = arg2.joinAttemptOrigin
	if arg4 then
		arg4(var13)
	end
	if GetFFlagMoveLuaExpLaunchBegin_upvr() then
		default_upvr:logEvent("experience_launch_begin")
	end
	MessageBus_upvr.publish(arg1.GAME_LAUNCH_DESCRIPTOR, Cryo_upvr.Dictionary.join(arg2, tbl))
end
module_upvr.default = module_upvr.new()
return module_upvr