-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:00
-- Luau version 6, Types version 3
-- Time taken: 0.001090 seconds

local Parent = script:FindFirstAncestor("GameLaunch").Parent
local GetFFlagMoveLuaExpLaunchBegin_upvr = require(Parent.ExperienceService).Flags.GetFFlagMoveLuaExpLaunchBegin
local default_upvr = require(Parent.LoggingProtocol).default
local Cryo_upvr = require(Parent.Cryo)
local ExperienceService_upvr = require(Parent.ExperienceService).ExperienceService
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 10, Named "LaunchGame"
	--[[ Upvalues[4]:
		[1]: GetFFlagMoveLuaExpLaunchBegin_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: ExperienceService_upvr (readonly)
	]]
	if not GetFFlagMoveLuaExpLaunchBegin_upvr() then
		default_upvr:logEvent("experience_launch_begin")
	end
	local tbl = {
		placeId = tonumber(arg1);
	}
	tbl.referralPage = arg2
	if arg3 then
		tbl = Cryo_upvr.Dictionary.join(tbl, arg3)
	end
	ExperienceService_upvr:LaunchExperience(tbl, arg5, arg6)
end