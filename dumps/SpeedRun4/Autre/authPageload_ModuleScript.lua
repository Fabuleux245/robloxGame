-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:11
-- Luau version 6, Types version 3
-- Time taken: 0.001059 seconds

local Parent = script.Parent.Parent
local Logging_upvr = require(Parent.Parent.AppCommonLib).Logging
local checkAndSendEvent_upvr = require(Parent.Utils.checkAndSendEvent)
return function(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[2]:
		[1]: Logging_upvr (readonly)
		[2]: checkAndSendEvent_upvr (readonly)
	]]
	local tbl = {}
	if arg2 then
		if type(arg2) ~= "string" then
			Logging_upvr.warn("Failure logging authPageLoad: Expected state to be a string but got "..type(arg2))
			return
		end
		tbl.state = arg2
	end
	if arg3 ~= nil then
		if type(arg3) ~= "boolean" then
			Logging_upvr.warn("Failure logging authPageLoad: Expected isAltAttempt to be a boolean but got "..type(arg3))
			return
		end
		tbl.is_alt_attempt = arg3
	end
	checkAndSendEvent_upvr(arg1, "authPageload", tbl)
end