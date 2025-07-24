-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:27
-- Luau version 6, Types version 3
-- Time taken: 0.001001 seconds

local ExperienceService_upvr = game:GetService("ExperienceService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ReturnExperienceServiceConnections", false)
return {
	LaunchExperience = function(arg1, arg2, arg3, arg4) -- Line 4, Named "LaunchExperience"
		--[[ Upvalues[1]:
			[1]: ExperienceService_upvr (readonly)
		]]
		if arg3 ~= nil then
			if arg4 ~= nil then
				ExperienceService_upvr:LaunchExperienceFromSourceWithCallback(arg2, arg3, arg4)
			else
				ExperienceService_upvr:LaunchExperienceFromSource(arg2, arg3)
			end
		end
		if arg4 ~= nil then
			ExperienceService_upvr:LaunchExperienceFromSourceWithCallback(arg2, "", arg4)
		else
			ExperienceService_upvr:LaunchExperience(arg2)
		end
	end;
	RegisterForExperienceJoin = function(arg1, arg2) -- Line 19, Named "RegisterForExperienceJoin"
		--[[ Upvalues[2]:
			[1]: ExperienceService_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			return ExperienceService_upvr:RegisterForExperienceJoin(arg2)
		end
		return nil
	end;
	RegisterForExperienceLeave = function(arg1, arg2) -- Line 26, Named "RegisterForExperienceLeave"
		--[[ Upvalues[2]:
			[1]: ExperienceService_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			return ExperienceService_upvr:RegisterForExperienceLeave(arg2)
		end
		return nil
	end;
	GetPendingJoinAttempt = function(arg1) -- Line 34, Named "GetPendingJoinAttempt"
		--[[ Upvalues[1]:
			[1]: ExperienceService_upvr (readonly)
		]]
		return ExperienceService_upvr:GetPendingJoinAttempt()
	end;
	OnNewJoinAttempt = function(arg1) -- Line 38, Named "OnNewJoinAttempt"
		--[[ Upvalues[1]:
			[1]: ExperienceService_upvr (readonly)
		]]
		return ExperienceService_upvr.OnNewJoinAttempt
	end;
}