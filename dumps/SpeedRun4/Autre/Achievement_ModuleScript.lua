-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:00
-- Luau version 6, Types version 3
-- Time taken: 0.002773 seconds

local module_upvr = {
	NAMES = require(script.Parent.AchievementConstants).ACHIEVEMENT_NAMES;
}
local AchievementRules_upvr = require(script.Parent.AchievementRules)
function module_upvr._init(arg1, arg2, arg3, arg4) -- Line 28
	--[[ Upvalues[1]:
		[1]: AchievementRules_upvr (readonly)
	]]
	arg1.achievementService = arg4
	arg1.achievementName = arg2
	arg1.achievementRule = AchievementRules_upvr[arg2]
	arg1.achievementAwardedCallbacks = {}
	arg1.hasAchieved = nil
	assert(arg1.achievementRule, "Achievement rule not found for "..tostring(arg2))
	if arg1.achievementService:IsAvailable() then
		pcall(function() -- Line 37
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.hasAchieved = arg1.achievementService:HasAchieved(arg2)
		end)
		if arg1.hasAchieved == false then
			arg1.achievementDataSubscription = arg3:subscribe(function(arg1_3) -- Line 42
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.achievementRule(arg1_3) then
					arg1:grantAchievement(arg1.achievementName)
				end
			end)
		end
	end
end
local LoggingProtocol_upvr = require(script:FindFirstAncestor("Achievements").Parent.LoggingProtocol)
local AchievementTelemetry_upvr = require(script.Parent.AchievementTelemetry)
function module_upvr.grantAchievement(arg1, arg2) -- Line 51
	--[[ Upvalues[2]:
		[1]: LoggingProtocol_upvr (readonly)
		[2]: AchievementTelemetry_upvr (readonly)
	]]
	if arg1.hasAchieved == false then
		local _, pcall_result2_2 = pcall(function() -- Line 53
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1.achievementService:GrantAchievement(arg2)
		end)
		local tbl_2 = {}
		tbl_2.achievementName = arg2
		tbl_2.grantedState = tostring(pcall_result2_2)
		LoggingProtocol_upvr.default:logRobloxTelemetryEvent(AchievementTelemetry_upvr, nil, tbl_2)
		if pcall_result2_2 == true then
			arg1.hasAchieved = true
			arg1.achievementDataSubscription:unsubscribe()
			for _, v in arg1.achievementAwardedCallbacks do
				v(arg2)
			end
		end
	end
end
function module_upvr.registerOnAchievementAwardedListener(arg1, arg2) -- Line 72
	arg1.achievementAwardedCallbacks[arg2] = arg2
	return {
		unsubscribe = function() -- Line 77, Named "unsubscribe"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.achievementAwardedCallbacks[arg2] = nil
		end;
	}
end
function module_upvr.new(arg1, arg2, arg3) -- Line 83
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, {
		__index = module_upvr;
	})
	module:_init(arg1, arg2, arg3)
	return module
end
function module_upvr.newWithRefresher(arg1, arg2, arg3, arg4) -- Line 94
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new(arg1, arg2, arg4)
	if any_new_result1.hasAchieved == false then
		arg3:start()
		any_new_result1:registerOnAchievementAwardedListener(function() -- Line 104
			--[[ Upvalues[1]:
				[1]: arg3 (readonly)
			]]
			arg3:stop()
		end)
	end
	return any_new_result1
end
return module_upvr