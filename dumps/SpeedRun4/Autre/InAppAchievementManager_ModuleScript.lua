-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:05
-- Luau version 6, Types version 3
-- Time taken: 0.003899 seconds

local Achievements = script:FindFirstAncestor("Achievements")
local Parent = Achievements.Parent
local HttpRequest_upvr = require(Parent.HttpRequest)
local VoteCountRefresher_upvr = require(Achievements.AchievementDataRefresher.VoteCountRefresher)
local tbl_2 = {}
local function requestFunction(arg1, arg2, arg3) -- Line 16
	--[[ Upvalues[1]:
		[1]: HttpRequest_upvr (readonly)
	]]
	return HttpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
end
tbl_2.requestFunction = requestFunction
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	requestFunction = game:DefineFastInt("InAppAchievementManagerHttpRetryCount", 4)
else
	requestFunction = nil
end
tbl_2.maxRetryCount = requestFunction
local var6_upvw
pcall(function() -- Line 25
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	var6_upvw = game:GetService("PlatformCloudStorageService")
end)
local var8_upvw
pcall(function() -- Line 32
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	var8_upvw = game:GetService("AchievementService")
end)
local module_upvr = {
	startUp = function(arg1) -- Line 38, Named "startUp"
		task.spawn(function() -- Line 39
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:initAchievements()
		end)
	end;
}
local Signal_upvr = require(Parent.Signal)
local Achievement_upvr = require(Achievements.Achievement.Achievement)
function module_upvr.initAchievements(arg1) -- Line 44
	--[[ Upvalues[3]:
		[1]: Signal_upvr (readonly)
		[2]: VoteCountRefresher_upvr (readonly)
		[3]: Achievement_upvr (readonly)
	]]
	local any_createReadableSignal_result1_2, any_createReadableSignal_result2_2 = Signal_upvr.createReadableSignal(0)
	local any_createReadableSignal_result1, any_createReadableSignal_result2 = Signal_upvr.createReadableSignal(0)
	local any_createReadableSignal_result1_3, any_createReadableSignal_result2_3 = Signal_upvr.createReadableSignal(false)
	VoteCountRefresher_upvr:init(any_createReadableSignal_result2_2, arg1.store, arg1.requestImpl, arg1.platformCloudStorageService)
	arg1.achievementPollster = Achievement_upvr.newWithRefresher(Achievement_upvr.NAMES.ACHIEVEMENT_POLLSTER, any_createReadableSignal_result1_2, VoteCountRefresher_upvr, arg1.achievementService)
	arg1.achievement3DayRoll = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_3_DAY_ROLL, any_createReadableSignal_result1, arg1.achievementService)
	arg1.achievement10DayRoll = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_10_DAY_ROLL, any_createReadableSignal_result1, arg1.achievementService)
	arg1.achievement20DayRoll = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_20_DAY_ROLL, any_createReadableSignal_result1, arg1.achievementService)
	arg1.achievementOneNameManyFaces = Achievement_upvr.new(Achievement_upvr.NAMES.ACHIEVEMENT_ONE_NAME_MANY_FACES, any_createReadableSignal_result1_3, arg1.achievementService)
	arg1:setupAchievements(any_createReadableSignal_result2, any_createReadableSignal_result2_3)
end
local GetXboxLoginConsecutiveDays_upvr = require(Achievements.Requests.GetXboxLoginConsecutiveDays)
local Logger_upvr = require(Achievements.Logger)
function module_upvr.setupAchievements(arg1, arg2, arg3) -- Line 76
	--[[ Upvalues[2]:
		[1]: GetXboxLoginConsecutiveDays_upvr (readonly)
		[2]: Logger_upvr (readonly)
	]]
	if arg1.achievement3DayRoll.hasAchieved == false or arg1.achievement10DayRoll.hasAchieved == false or arg1.achievement20DayRoll.hasAchieved == false then
		GetXboxLoginConsecutiveDays_upvr(arg1.requestImpl):andThen(function(arg1_2) -- Line 82
			--[[ Upvalues[2]:
				[1]: Logger_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			if arg1_2.responseBody == nil then
				Logger_upvr:warning("Response body is empty.")
			else
				local count = arg1_2.responseBody.count
				if count == nil then
					Logger_upvr:warning("Day count is missing.")
					return
				end
				arg2(count)
			end
		end):catch(function(arg1_3) -- Line 95
			--[[ Upvalues[1]:
				[1]: Logger_upvr (copied, readonly)
			]]
			Logger_upvr:warning(arg1_3)
		end)
	end
	if arg1.achievementOneNameManyFaces.hasAchieved == false then
		arg1.saveAvatarCompletedConnection = arg1.avatarEditorService.PromptSaveAvatarCompleted:Connect(function(arg1_4) -- Line 102
			--[[ Upvalues[2]:
				[1]: arg3 (readonly)
				[2]: arg1 (readonly)
			]]
			if arg1_4 == Enum.AvatarPromptResult.Success then
				arg3(true)
				arg1.saveAvatarCompletedConnection:Disconnect()
				arg1.saveAvatarCompletedConnection = nil
			end
		end)
	end
end
function module_upvr.shutDown(arg1) -- Line 113
	--[[ Upvalues[1]:
		[1]: VoteCountRefresher_upvr (readonly)
	]]
	arg1.achievementPollster = nil
	arg1.achievement3DayRoll = nil
	arg1.achievement10DayRoll = nil
	arg1.achievement20DayRoll = nil
	VoteCountRefresher_upvr:stop()
	if arg1.saveAvatarCompletedConnection and arg1.saveAvatarCompletedConnection.Connected then
		arg1.saveAvatarCompletedConnection:Disconnect()
		arg1.saveAvatarCompletedConnection = nil
	end
end
local any_config_result1_upvr = HttpRequest_upvr.config(tbl_2)
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local LoginStatus_upvr = require(Parent.RobloxAppEnums).LoginStatus
function module_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 126
	--[[ Upvalues[6]:
		[1]: any_config_result1_upvr (readonly)
		[2]: AvatarEditorService_upvr (readonly)
		[3]: var6_upvw (read and write)
		[4]: var8_upvw (read and write)
		[5]: module_upvr (readonly)
		[6]: LoginStatus_upvr (readonly)
	]]
	local tbl = {}
	tbl.store = arg1
	local var30
	if arg2 then
		var30 = arg2
	else
		var30 = any_config_result1_upvr
	end
	tbl.requestImpl = var30
	if arg3 then
		var30 = arg3
	else
		var30 = AvatarEditorService_upvr
	end
	tbl.avatarEditorService = var30
	var30 = arg4
	if not var30 then
		var30 = var6_upvw
	end
	tbl.platformCloudStorageService = var30
	if arg5 then
		var30 = arg5
	else
		var30 = var8_upvw
	end
	tbl.achievementService = var30
	var30 = {}
	var30.__index = module_upvr
	local setmetatable_result1_upvr = setmetatable(tbl, var30)
	arg1.changed:connect(function(arg1_5, arg2_2) -- Line 141
		--[[ Upvalues[2]:
			[1]: LoginStatus_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var33
		if arg1_5.AuthenticationStatus then
			var33 = arg1_5.AuthenticationStatus.status
		else
			var33 = LoginStatus_upvr.UNKNOWN
		end
		if arg2_2.AuthenticationStatus then
		else
		end
		if var33 ~= LoginStatus_upvr.UNKNOWN then
			if var33 == LoginStatus_upvr.LOGGED_IN then
				setmetatable_result1_upvr:startUp()
				return
			end
			if var33 == LoginStatus_upvr.LOGGED_OUT then
				setmetatable_result1_upvr:shutDown()
			end
		end
	end)
	return setmetatable_result1_upvr
end
return module_upvr