-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:22
-- Luau version 6, Types version 3
-- Time taken: 0.000468 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local logger_upvr = require(VirtualEvents.logger)
local HttpService_upvr = game:GetService("HttpService")
local EventIngestService_upvr = game:GetService("EventIngestService")
local getPlatformTarget_upvr = require(VirtualEvents.Parent.Analytics).getPlatformTarget
return function(arg1, arg2) -- Line 9, Named "sendEventDeferred"
	--[[ Upvalues[4]:
		[1]: logger_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: EventIngestService_upvr (readonly)
		[4]: getPlatformTarget_upvr (readonly)
	]]
	logger_upvr:debug(string.format("Fired %q with payload %s", arg1, HttpService_upvr:JSONEncode(arg2)))
	EventIngestService_upvr:SendEventDeferred(getPlatformTarget_upvr(), "virtualEvents", arg1, arg2)
end