-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:40
-- Luau version 6, Types version 3
-- Time taken: 0.016574 seconds

local module_upvr_4 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_5 = require(Modules:WaitForChild("Utility"))
module_upvr_4.ObjectiveType = {
	TargetExceed = 1;
	TargetSupplant = 2;
}
module_upvr_4.ProgressType = {
	Numeric = 1;
}
module_upvr_4.RewardType = {
	Currency = 1;
}
module_upvr_4.StartTriggerType = {
	Manual = 1;
	PlayerInitiated = 2;
	JoinGame = 3;
	LevelStarted = 4;
	WorldStarted = 5;
}
module_upvr_4.TriggerType = {
	LevelBeatTime = 1;
	LevelCompleted = 2;
	WorldBeatTime = 3;
	WorldCompleted = 4;
}
local tbl_8 = {}
module_upvr_4.DataArray = tbl_8
module_upvr_4.Data_ById = {}
module_upvr_4.Data_ByType = {
	Objective = {};
	Reward = {};
	StartTrigger = {};
	Trigger = {};
}
for i, v in pairs({
	[module_upvr_4.Data_ByType.Objective] = module_upvr_4.ObjectiveType;
	[module_upvr_4.Data_ByType.Reward] = module_upvr_4.RewardType;
	[module_upvr_4.Data_ByType.StartTrigger] = module_upvr_4.StartTriggerType;
	[module_upvr_4.Data_ByType.Trigger] = module_upvr_4.TriggerType;
}) do
	for i_2, v_2 in pairs(v) do
		i[v_2] = {}
	end
end
for _, v_3 in ipairs(tbl_8) do
	v = v_3.Id
	if module_upvr_4.Data_ById[v] then
		i_2 = "Quests"
		v_2 = nil
		error(module_upvr.FormatOutput("Duplicate QuestId '%s'", i_2, v_2, v))
	end
	module_upvr_4.Data_ById[v] = v_3
	module_upvr_4.Data_ByType.Objective[v_3.Objective.Type][v] = v_3
	module_upvr_4.Data_ByType.StartTrigger[v_3.StartTrigger.Type][v] = v_3
	module_upvr_4.Data_ByType.Trigger[v_3.Trigger.Type][v] = v_3
	for _, v_4 in ipairs(v_3.Rewards) do
		module_upvr_4.Data_ByType.Reward[v_4.Type][v] = v_3
	end
end
local function _(arg1, arg2) -- Line 225, Named "FormatIncompatibility"
	--[[ Upvalues[3]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr (readonly)
	]]
	return module_upvr.FormatOutput("ObjectiveType '*' is incompatible with TriggerType '*'", "Quests", nil, module_upvr_5.TableGetKeyFromValue(module_upvr_4.TriggerType, arg2), module_upvr_5.TableGetKeyFromValue(module_upvr_4.ObjectiveType, arg1))
end
local function GetItemNameFromTrigger_upvr(arg1) -- Line 237, Named "GetItemNameFromTrigger"
	--[[ Upvalues[3]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr (readonly)
	]]
	local var42
	if arg1.Type == module_upvr_4.TriggerType.LevelBeatTime then
		var42 = arg1.LevelData.Name
		return var42
	end
	if arg1.Type == module_upvr_4.TriggerType.WorldBeatTime then
		var42 = arg1.WorldData.Name
		return var42
	end
	error(module_upvr.FormatOutput("TriggerType '*' does not reference an item", "Quests", nil, module_upvr_5.TableGetKeyFromValue(module_upvr_4.TriggerType, arg1.Type)))
	return var42
end
local tbl_9_upvr = {
	BeatTime = 1;
	Completed = 2;
}
local _ = {
	LevelBeatTime = tbl_9_upvr.BeatTime;
	LevelCompleted = tbl_9_upvr.Completed;
	WorldBeatTime = tbl_9_upvr.BeatTime;
	WorldCompleted = tbl_9_upvr.Completed;
}
local _ = {}
local tbl_4 = {}
local function GetName(arg1) -- Line 280
	return string.format("Beat Time on %s", arg1.LevelData.Name)
end
tbl_4.GetName = GetName
;({})[module_upvr_4.TriggerType.LevelBeatTime] = tbl_4
local tbl_5 = {}
local function GetName(arg1) -- Line 290
	return string.format("Complete %s", arg1.LevelData.Name)
end
tbl_5.GetName = GetName
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr_4.TriggerType.LevelCompleted] = tbl_5
local tbl_3 = {}
local function GetName(arg1) -- Line 300
	return string.format("Beat Time in %s", arg1.WorldData.Name)
end
tbl_3.GetName = GetName
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr_4.TriggerType.WorldBeatTime] = tbl_3
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr_4.TriggerType.WorldCompleted] = {
	GetName = function(arg1) -- Line 310, Named "GetName"
		return string.format("Complete %s", arg1.WorldData.Name)
	end;
}
local tbl_7_upvr = {}
local tbl = {}
local function GetDescription(arg1, arg2) -- Line 343
	--[[ Upvalues[5]:
		[1]: tbl_9_upvr (readonly)
		[2]: GetItemNameFromTrigger_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: module_upvr (readonly)
	]]
	local var52 = tbl_9_upvr[arg2.Type]
	local var53
	if var52 == tbl_9_upvr.BeatTime then
		var53 = string.format("Beat %s in over %s", GetItemNameFromTrigger_upvr(arg2), module_upvr_5.FormatNumber_Timer(arg1.Target))
		return var53
	end
	local var54
	if var52 == tbl_9_upvr.Completed then
		if arg1.Target ~= 1 then
			var54 = 's'
		else
			var54 = ""
		end
		var53 = string.format("Beat %s %i time%s", GetItemNameFromTrigger_upvr(arg2), arg1.Target, var54)
		return var53
	end
	error(module_upvr.FormatOutput("ObjectiveType '*' is incompatible with TriggerType '*'", "Quests", nil, module_upvr_5.TableGetKeyFromValue(module_upvr_4.TriggerType, arg2.Type), module_upvr_5.TableGetKeyFromValue(module_upvr_4.ObjectiveType, module_upvr_4.ObjectiveType.TargetExceed)), 2)
	return var53
end
tbl.GetDescription = GetDescription
local function GetGoal(arg1, arg2, arg3) -- Line 375
	--[[ Upvalues[4]:
		[1]: tbl_9_upvr (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var55
	local var56 = tbl_9_upvr[arg2.Type]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 12 start (CF ANALYSIS FAILED)
	if arg3.Value ~= 0 then
		return var55, arg3.Value / arg1.Target, module_upvr_5.FormatNumber_Timer(arg3.Value)
	end
	do
		return var55, 0, string.gsub(var55, "%d", '-')
	end
	-- KONSTANTERROR: [20] 16. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 35. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 35. Error Block 6 end (CF ANALYSIS FAILED)
end
tbl.GetGoal = GetGoal
local function IsComplete(arg1, arg2) -- Line 418
	local var57
	if arg1.Target > arg2.Value then
		var57 = false
	else
		var57 = true
	end
	return var57
end
tbl.IsComplete = IsComplete
tbl_7_upvr[module_upvr_4.ObjectiveType.TargetExceed] = tbl
tbl_7_upvr[module_upvr_4.ObjectiveType.TargetSupplant] = {
	GetDescription = function(arg1, arg2) -- Line 429, Named "GetDescription"
		--[[ Upvalues[5]:
			[1]: tbl_9_upvr (readonly)
			[2]: GetItemNameFromTrigger_upvr (readonly)
			[3]: module_upvr_5 (readonly)
			[4]: module_upvr_4 (readonly)
			[5]: module_upvr (readonly)
		]]
		local var59
		if tbl_9_upvr[arg2.Type] == tbl_9_upvr.BeatTime then
			var59 = string.format("Beat %s in under %s", GetItemNameFromTrigger_upvr(arg2), module_upvr_5.FormatNumber_Timer(arg1.Target))
			return var59
		end
		error(module_upvr.FormatOutput("ObjectiveType '*' is incompatible with TriggerType '*'", "Quests", nil, module_upvr_5.TableGetKeyFromValue(module_upvr_4.TriggerType, arg2.Type), module_upvr_5.TableGetKeyFromValue(module_upvr_4.ObjectiveType, module_upvr_4.ObjectiveType.TargetSupplant)), 2)
		return var59
	end;
	GetGoal = function(arg1, arg2, arg3) -- Line 451, Named "GetGoal"
		--[[ Upvalues[4]:
			[1]: tbl_9_upvr (readonly)
			[2]: module_upvr_5 (readonly)
			[3]: module_upvr_4 (readonly)
			[4]: module_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var60
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 16. Error Block 9 start (CF ANALYSIS FAILED)
		if arg3.Value ~= 0 then
			return var60, arg1.Target / arg3.Value, module_upvr_5.FormatNumber_Timer(arg3.Value)
		end
		do
			return var60, 0, string.gsub(var60, "%d", '-')
		end
		-- KONSTANTERROR: [20] 16. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [46] 35. Error Block 6 start (CF ANALYSIS FAILED)
		error(module_upvr.FormatOutput("ObjectiveType '*' is incompatible with TriggerType '*'", "Quests", nil, module_upvr_5.TableGetKeyFromValue(module_upvr_4.TriggerType, arg2.Type), module_upvr_5.TableGetKeyFromValue(module_upvr_4.ObjectiveType, module_upvr_4.ObjectiveType.TargetSupplant)), 2)
		-- KONSTANTERROR: [46] 35. Error Block 6 end (CF ANALYSIS FAILED)
	end;
	IsComplete = function(arg1, arg2) -- Line 484, Named "IsComplete"
		local var61
		if arg2.Value > arg1.Target then
			var61 = false
		else
			var61 = true
		end
		return var61
	end;
}
local tbl_upvr = {
	[module_upvr_4.ProgressType.Numeric] = {
		Create = function() -- Line 509, Named "Create"
			return {
				Dirty = false;
				Updated = false;
				Value = 0;
			}
		end;
		Deserialize = function(arg1) -- Line 520, Named "Deserialize"
			return tonumber(arg1)
		end;
		Serialize = function(arg1) -- Line 526, Named "Serialize"
			return tostring(arg1.Value)
		end;
		Update = function(arg1, arg2) -- Line 532, Named "Update"
			local var65
			if arg1.Value == arg2 then
				var65 = false
			else
				var65 = true
			end
			arg1.Value = arg2
			return var65
		end;
	};
}
local tbl_6_upvr = {}
local tbl_2 = {}
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("Theme"))
function tbl_2.GetString(arg1) -- Line 556
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	local var69
	if arg1.Value ~= 1 then
		var69 = module_upvr_6.FrontEndNames.Currency_ByCurrencyType[arg1.CurrencyType].Singular.Proper
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var69 = module_upvr_6.FrontEndNames.Currency_ByCurrencyType[arg1.CurrencyType].Plural.Proper
	end
	return string.format("%i %s", arg1.Value, var69)
end
tbl_6_upvr[module_upvr_4.RewardType.Currency] = tbl_2
local module_upvr_3 = require(Modules:WaitForChild("Products"))
function module_upvr_4.QuestGetCompletionProduct(arg1) -- Line 583
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local var71
	if not arg1.DisablePurchase then
		local Difficulty = arg1.Difficulty
		if not Difficulty then
			Difficulty = module_upvr.QuestDifficulty.Unrated
		end
		var71 = module_upvr_3.ProductCompleteQuest_ByDifficulty[Difficulty]
	end
	return var71
end
function module_upvr_4.QuestGetDescription(arg1) -- Line 599
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	return tbl_7_upvr[arg1.Objective.Type].GetDescription(arg1.Objective, arg1.Trigger)
end
function module_upvr_4.QuestGetGoal(arg1) -- Line 614
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	return tbl_7_upvr[arg1.Objective.Type].GetGoal(arg1.Objective, arg1.Trigger)
end
local module_upvr_2 = {}
function module_upvr_4.QuestGetName(arg1) -- Line 629
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg1.Name then
		return arg1.Name
	end
	return module_upvr_2[arg1.Trigger.Type].GetName(arg1.Trigger)
end
function module_upvr_4.QuestGetRewardStrings(arg1) -- Line 645
	--[[ Upvalues[1]:
		[1]: tbl_6_upvr (readonly)
	]]
	local table_create_result1 = table.create(#arg1.Rewards)
	for i_5, v_5 in ipairs(arg1.Rewards) do
		table_create_result1[i_5] = tbl_6_upvr[v_5.Type].GetString(v_5)
	end
	return table_create_result1
end
function module_upvr_4.QuestStateCreate() -- Line 663
	return {
		Dirty = false;
		Updated = false;
		PendingCount = 0;
		Active_ById = {};
	}
end
function module_upvr_4.QuestStateQuestClaimable(arg1, arg2) -- Line 677
	local var83 = false
	local var84 = arg1.Active_ById[arg2]
	if var84 then
		if var84.Complete ~= true then
			var83 = false
		else
			var83 = true
		end
	end
	return var83
end
function module_upvr_4.QuestStateQuestStarted(arg1, arg2) -- Line 692
	local var85
	if arg1.Active_ById[arg2] == nil then
		var85 = false
	else
		var85 = true
	end
	return var85
end
local function _(arg1, arg2, arg3) -- Line 700, Named "RemoveQuest_Internal"
	local var86 = false
	local var87 = arg1.Active_ById[arg2.Id]
	if var87 and (arg3 == nil or not arg3 == not var87.Complete) then
		var86 = true
		arg1.Active_ById[arg2.Id] = nil
		arg1.Dirty = true
	end
	return var86
end
function module_upvr_4.QuestStateAbandon(arg1, arg2) -- Line 721
	local var88 = arg1.Active_ById[arg2.Id]
	local var89
	if var88 and not var88.Complete == true then
		var89 = true
		arg1.Active_ById[arg2.Id] = nil
		arg1.Dirty = true
	end
	return var89
end
function module_upvr_4.QuestStateCanStartQuest(arg1, arg2, arg3) -- Line 731
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var93 = arg1
	local any_QuestStateQuestStarted_result1 = module_upvr_4.QuestStateQuestStarted(var93, arg3.Id)
	if 0 >= module_upvr.SaveDataGetQuestCompletions(arg2, arg3.Id) then
		var93 = false
	else
		var93 = true
	end
	if not any_QuestStateQuestStarted_result1 then
		if not not var93 then
			if arg3.Repeatable ~= true then
			else
			end
		end
	end
	return true, any_QuestStateQuestStarted_result1, var93
end
function module_upvr_4.QuestStateClaim(arg1, arg2) -- Line 748
	local var95 = arg1.Active_ById[arg2.Id]
	local var96
	if var95 and not var95.Complete == false then
		var96 = true
		arg1.Active_ById[arg2.Id] = nil
		arg1.Dirty = true
	end
	return var96
end
local function ProgressUpdate_Internal_upvr(arg1, arg2, arg3, arg4, ...) -- Line 758, Named "ProgressUpdate_Internal"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var97 = tbl_upvr[arg3.Objective.ProgressType]
	local var98
	if arg4 then
		var98 = var97.Update(arg2, var97.Deserialize(arg4))
	else
		var98 = var97.Update(arg2, ...)
	end
	if var98 then
		arg2.Dirty = true
		arg1.Dirty = true
	end
	return var98
end
function module_upvr_4.QuestStateProgressCreate(arg1, arg2, arg3) -- Line 783
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: ProgressUpdate_Internal_upvr (readonly)
	]]
	if arg1.Active_ById[arg2.Id] then
		warn(module_upvr.FormatOutput("Overwriting QuestState progress for QuestId '%s'", "Quests", nil, arg2.Id))
	end
	local any_Create_result1 = tbl_upvr[arg2.Objective.ProgressType].Create()
	arg1.Active_ById[arg2.Id] = any_Create_result1
	if arg3 then
		ProgressUpdate_Internal_upvr(arg1, any_Create_result1, arg2, arg3)
	end
	return any_Create_result1
end
function module_upvr_4.QuestStateProgressReport(arg1, arg2) -- Line 806
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	local var100
	local var101
	local var102
	local var103 = arg1.Active_ById[arg2.Id]
	if var103 then
		local any_GetGoal_result1, any_GetGoal_result2, any_GetGoal_result3 = tbl_7_upvr[arg2.Objective.Type].GetGoal(arg2.Objective, arg2.Trigger, var103)
		var102 = any_GetGoal_result1
		var100 = any_GetGoal_result2
		var101 = any_GetGoal_result3
	end
	return var100 or 0, var101 or "", var102 or ""
end
function module_upvr_4.QuestStateProgressUpdate(arg1, arg2, ...) -- Line 829
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: ProgressUpdate_Internal_upvr (readonly)
	]]
	local var107 = arg1.Active_ById[arg2.Id]
	if var107 and not var107.Complete then
		ProgressUpdate_Internal_upvr(arg1, var107, module_upvr_4.Data_ById[arg2.Id], nil, ...)
	end
	return false
end
function module_upvr_4.QuestStateProgressUpdate_SerializedBatch(arg1, arg2) -- Line 846
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: ProgressUpdate_Internal_upvr (readonly)
	]]
	for i_6, v_6 in pairs(arg2) do
		local var113 = arg1.Active_ById[i_6]
		if not var113 then
			warn(module_upvr.FormatOutput("Missing QuestProgress for QuestId '%s'", "Quests", nil, tostring(i_6)))
		elseif not var113.Complete then
			ProgressUpdate_Internal_upvr(arg1, var113, module_upvr_4.Data_ById[i_6], v_6)
		end
	end
end
function module_upvr_4.QuestStateQuestInProgress(arg1, arg2) -- Line 866
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	local any_QuestStateQuestClaimable_result1 = module_upvr_4.QuestStateQuestClaimable(arg1, arg2.Id)
	local any_QuestStateQuestStarted_result1_3 = module_upvr_4.QuestStateQuestStarted(arg1, arg2.Id)
	if any_QuestStateQuestStarted_result1_3 then
		any_QuestStateQuestStarted_result1_3 = not any_QuestStateQuestClaimable_result1
	end
	return any_QuestStateQuestStarted_result1_3, any_QuestStateQuestClaimable_result1
end
function module_upvr_4.QuestStateRemove(arg1, arg2) -- Line 878
	local var116 = false
	if arg1.Active_ById[arg2.Id] then
		var116 = true
		arg1.Active_ById[arg2.Id] = nil
		arg1.Dirty = true
	end
	return var116
end
function module_upvr_4.QuestStateResolve(arg1, arg2) -- Line 888
	--[[ Upvalues[3]:
		[1]: module_upvr_4 (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local var121
	local var122
	if var122 then
		var121 = {}
		var122 = 0
		for i_7, v_7 in pairs(arg1.Active_ById) do
			if v_7.Dirty then
				local Objective = module_upvr_4.Data_ById[i_7].Objective
				if tbl_7_upvr[Objective.Type].IsComplete(Objective, v_7) then
					v_7.Complete = true
				end
				if arg2 then
					var121[i_7] = tbl_upvr[Objective.ProgressType].Serialize(v_7)
				end
				v_7.Dirty = false
				v_7.Updated = true
			else
				v_7.Updated = false
			end
			if v_7.Complete then
				var122 += 1
			end
		end
		if next(var121) == nil then
			var121 = nil
		end
		arg1.PendingCount = var122
		arg1.Dirty = false
		arg1.Updated = true
		return var121
	end
	arg1.Updated = false
	return var121
end
function module_upvr_4.QuestStateSaveDataDeserialize(arg1, arg2, arg3) -- Line 944
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg3 then
		table.clear(arg1)
		for i_8, v_8 in module_upvr_4.QuestStateCreate() do
			arg1[i_8] = v_8
		end
	end
	for i_9, _ in pairs(arg2.Quests.Started) do
		if module_upvr_4.Data_ById[i_9] then
		else
			warn(module_upvr.FormatOutput("Missing quest for QuestId '%s'", "Quests", nil, i_9))
		end
	end
end
function module_upvr_4.QuestStateSaveDataSerialize(arg1, arg2, arg3) -- Line 972
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if arg1.Dirty then
		error(module_upvr.FormatOutput("Cannot serialize unresolved QuestState to SaveData", "Quests"), 2)
	end
	if arg3 then
		table.clear(arg2.Quests.Started)
	end
	for i_10, v_10 in pairs(arg1.Active_ById) do
		local var143 = module_upvr_4.Data_ById[i_10]
		if var143 then
			arg2.Quests.Started[i_10] = tbl_upvr[var143.Objective.ProgressType].Serialize(v_10)
		else
			warn(module_upvr.FormatOutput("Missing quest for QuestId '%s'", "Quests", nil, i_10))
		end
	end
end
module_upvr_5.TableFreezeAll(module_upvr_4)
return module_upvr_4