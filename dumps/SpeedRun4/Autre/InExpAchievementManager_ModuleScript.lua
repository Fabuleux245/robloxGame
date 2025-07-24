-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:05
-- Luau version 6, Types version 3
-- Time taken: 0.004612 seconds

local Achievements = script:FindFirstAncestor("Achievements")
local Parent = Achievements.Parent
local HttpRequest_upvr = require(Parent.HttpRequest)
local tbl_2 = {}
local function requestFunction(arg1, arg2, arg3) -- Line 19
	--[[ Upvalues[1]:
		[1]: HttpRequest_upvr (readonly)
	]]
	return HttpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
end
tbl_2.requestFunction = requestFunction
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	requestFunction = game:DefineFastInt("InExpAchievementManagerHttpRetryCount", 4)
else
	requestFunction = nil
end
tbl_2.maxRetryCount = requestFunction
local var5_upvw
pcall(function() -- Line 29
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw = game:GetService("PlatformFriendsService")
end)
local var7_upvw
pcall(function() -- Line 34
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	var7_upvw = game:GetService("PlatformCloudStorageService")
end)
local var9_upvw
pcall(function() -- Line 39
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	var9_upvw = game:GetService("AchievementService")
end)
local var11_upvw
pcall(function() -- Line 47
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	var11_upvw = game:GetService("PlatformService")
end)
local module_2_upvr = {}
local Signal_upvr = require(Parent.Signal)
local TimeRefresher_upvr = require(Achievements.AchievementDataRefresher.TimeRefresher)
local FriendCountRefresher_upvr = require(Achievements.AchievementDataRefresher.FriendCountRefresher)
local Achievement_upvr = require(Achievements.Achievement.Achievement)
function module_2_upvr.startUp(arg1) -- Line 56
	--[[ Upvalues[4]:
		[1]: Signal_upvr (readonly)
		[2]: TimeRefresher_upvr (readonly)
		[3]: FriendCountRefresher_upvr (readonly)
		[4]: Achievement_upvr (readonly)
	]]
	local any_createReadableSignal_result1_2, any_createReadableSignal_result2_3 = Signal_upvr.createReadableSignal(0)
	local any_createReadableSignal_result1_4, any_createReadableSignal_result2_4 = Signal_upvr.createReadableSignal(0)
	local any_createReadableSignal_result1, any_createReadableSignal_result2 = Signal_upvr.createReadableSignal(0)
	local any_createReadableSignal_result1_3, any_createReadableSignal_result2_2 = Signal_upvr.createReadableSignal(0)
	TimeRefresher_upvr:init(any_createReadableSignal_result2_3, 3600)
	FriendCountRefresher_upvr:init(any_createReadableSignal_result2_2, arg1.playersService)
	arg1.achievementMarathon = Achievement_upvr.newWithRefresher(Achievement_upvr.NAMES.ACHIEVEMENT_MARATHON, any_createReadableSignal_result1_2, TimeRefresher_upvr, arg1.achievementService)
	arg1.achievementFoursCompany = Achievement_upvr.newWithRefresher(Achievement_upvr.NAMES.ACHIEVEMENT_FOURS_COMPANY, any_createReadableSignal_result1_3, FriendCountRefresher_upvr, arg1.achievementService)
	arg1.achievementScout = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_SCOUT, any_createReadableSignal_result1_4, arg1.achievementService)
	arg1.achievementExplorer = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_EXPLORER, any_createReadableSignal_result1_4, arg1.achievementService)
	arg1.achievementTrailblazer = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_TRAILBLAZER, any_createReadableSignal_result1_4, arg1.achievementService)
	arg1.achievementStrengthInNumbers = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_STRENGTH_IN_NUMBERS, any_createReadableSignal_result1, arg1.achievementService)
	arg1:_checkStrengthInNumbers(any_createReadableSignal_result2)
	arg1:_checkJoinExperienceAchievements(any_createReadableSignal_result2_4)
end
local Dash_upvr = require(Parent.Dash)
local GetUserRecentExperiences_upvr = require(Achievements.Requests.GetUserRecentExperiences)
local Logger_upvr = require(Achievements.Logger)
function module_2_upvr._checkJoinExperienceAchievements(arg1, arg2) -- Line 92
	--[[ Upvalues[3]:
		[1]: Dash_upvr (readonly)
		[2]: GetUserRecentExperiences_upvr (readonly)
		[3]: Logger_upvr (readonly)
	]]
	if arg1.achievementScout.hasAchieved == false or arg1.achievementExplorer.hasAchieved == false or arg1.achievementTrailblazer.hasAchieved == false then
		if arg1.platformCloudStorageService then
			local var33
			if var33 then
				var33 = arg1.platformCloudStorageService:GetUserDataAsync("ExperiencesPlayed").data
				if not var33 then
					var33 = {}
				end
				if #var33 < 15 and not Dash_upvr.includes(var33, game.GameId) then
					table.insert(var33, game.GameId)
					arg1.platformCloudStorageService:SetUserDataAsync("ExperiencesPlayed", {
						data = var33;
					})
				end
				arg2(#var33)
				return
			end
		end
		GetUserRecentExperiences_upvr(arg1.requestImpl):andThen(function(arg1_4) -- Line 110
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2(arg1_4)
		end):catch(function(arg1_5) -- Line 112
			--[[ Upvalues[1]:
				[1]: Logger_upvr (copied, readonly)
			]]
			Logger_upvr:warning(arg1_5)
		end)
	end
end
function module_2_upvr._checkStrengthInNumbers(arg1, arg2) -- Line 119
	local hasAchieved = arg1.achievementStrengthInNumbers.hasAchieved
	if hasAchieved == false then
		if arg1.platformService then
			hasAchieved = arg1.platformService:GetPlatformPartyMembers()
		else
			hasAchieved = {}
		end
		if hasAchieved then
			arg2(#hasAchieved)
		end
		if game:GetEngineFeature("PlatformFriendsService") and arg1.platformFriendsService and game:GetEngineFeature("PlatformFriendsServiceGetPartyMembers") then
			local var38_upvw
			pcall(function() -- Line 138
				--[[ Upvalues[2]:
					[1]: var38_upvw (read and write)
					[2]: arg1 (readonly)
				]]
				var38_upvw = arg1.platformFriendsService:GetPartyMembers()
			end)
			if var38_upvw then
				arg2(#var38_upvw)
			end
		end
	end
end
local any_config_result1_upvr = HttpRequest_upvr.config(tbl_2)
local Players_upvr = game:GetService("Players")
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 148
	--[[ Upvalues[7]:
		[1]: any_config_result1_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var9_upvw (read and write)
		[5]: Players_upvr (readonly)
		[6]: var11_upvw (read and write)
		[7]: module_2_upvr (readonly)
	]]
	local module = {}
	local var43
	if arg1 then
		var43 = arg1
	else
		var43 = any_config_result1_upvr
	end
	module.requestImpl = var43
	var43 = arg2
	if not var43 then
		var43 = var5_upvw
	end
	module.platformFriendsService = var43
	var43 = arg3
	if not var43 then
		var43 = var7_upvw
	end
	module.platformCloudStorageService = var43
	if arg4 then
	else
	end
	module.achievementService = var9_upvw
	if arg5 then
		-- KONSTANTWARNING: GOTO [27] #24
	end
	module.playersService = Players_upvr
	if arg6 then
	else
	end
	module.platformService = var11_upvw
	;({}).__index = module_2_upvr
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return setmetatable(module, {})
end
return module_2_upvr