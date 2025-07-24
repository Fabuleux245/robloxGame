-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:41
-- Luau version 6, Types version 3
-- Time taken: 0.003699 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("ClientData"))
local module_upvr_3 = require(Modules:WaitForChild("NetworkRequestUtility"))
local module_upvr_4 = require(Modules:WaitForChild("Quests"))
local Quest_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Quest")
function module.QuestRequestAbandon(arg1, arg2) -- Line 22
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: Quest_upvr (readonly)
	]]
	local var9
	local any_QuestStateQuestInProgress_result1, any_QuestStateQuestInProgress_result2 = module_upvr_4.QuestStateQuestInProgress(module_upvr_2.QuestState, arg1)
	if any_QuestStateQuestInProgress_result2 then
		return module_upvr.ResponseType.AlreadyCompleted, var9
	end
	if not any_QuestStateQuestInProgress_result1 then
		return module_upvr.ResponseType.NotStarted, var9
	end
	local tbl_3 = {
		Remote = Quest_upvr;
		Request = module_upvr.QuestRequestType.Abandon;
	}
	local tbl_4 = {arg1.Id}
	tbl_3.Args = tbl_4
	if arg2 then
		tbl_4 = coroutine.running()
	else
		tbl_4 = nil
	end
	tbl_3.Callback = tbl_4
	local any_MakeRequest_result1_2 = module_upvr_3.MakeRequest(tbl_3)
	return any_MakeRequest_result1_2.Response, any_MakeRequest_result1_2
end
function module.QuestRequestBegin(arg1, arg2) -- Line 58
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: Quest_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 11. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return module_upvr.ResponseType.NotAuthorized, nil
	end
	-- KONSTANTERROR: [17] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 15. Error Block 3 start (CF ANALYSIS FAILED)
	local any_QuestStateCanStartQuest_result1, _, _ = module_upvr_4.QuestStateCanStartQuest(module_upvr_2.QuestState, module_upvr_2.LocalSaveData, arg1)
	-- KONSTANTERROR: [23] 15. Error Block 3 end (CF ANALYSIS FAILED)
end
function module.QuestRequestClaim(arg1, arg2) -- Line 104
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: Quest_upvr (readonly)
	]]
	local var18
	if not module_upvr_4.QuestStateQuestClaimable(module_upvr_2.QuestState, arg1.Id) then
		if module_upvr_4.QuestStateQuestStarted(module_upvr_2.QuestState, arg1.Id) then
			return module_upvr.ResponseType.NotComplete, var18
		end
		return module_upvr.ResponseType.NotStarted, var18
	end
	local tbl_5 = {
		Remote = Quest_upvr;
		Request = module_upvr.QuestRequestType.ClaimReward;
	}
	local tbl_6 = {arg1.Id}
	tbl_5.Args = tbl_6
	if arg2 then
		tbl_6 = coroutine.running()
	else
		tbl_6 = nil
	end
	tbl_5.Callback = tbl_6
	local any_MakeRequest_result1_3 = module_upvr_3.MakeRequest(tbl_5)
	return any_MakeRequest_result1_3.Response, any_MakeRequest_result1_3
end
function module.QuestRequestPurchaseCompletion(arg1, arg2) -- Line 133
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: Quest_upvr (readonly)
	]]
	local var22
	local any_QuestStateQuestInProgress_result1_2, any_QuestStateQuestInProgress_result2_2 = module_upvr_4.QuestStateQuestInProgress(module_upvr_2.QuestState, arg1)
	if any_QuestStateQuestInProgress_result2_2 then
		return module_upvr.ResponseType.AlreadyCompleted, var22
	end
	if not any_QuestStateQuestInProgress_result1_2 then
		return module_upvr.ResponseType.NotStarted, var22
	end
	if not module_upvr_4.QuestGetCompletionProduct(arg1) then
		return module_upvr.ResponseType.NotAuthorized, var22
	end
	local tbl_7 = {
		Remote = Quest_upvr;
		Request = module_upvr.QuestRequestType.PurchaseCompletion;
	}
	local tbl = {arg1.Id}
	tbl_7.Args = tbl
	if arg2 then
		tbl = coroutine.running()
	else
		tbl = nil
	end
	tbl_7.Callback = tbl
	local any_MakeRequest_result1 = module_upvr_3.MakeRequest(tbl_7)
	return any_MakeRequest_result1.Response, any_MakeRequest_result1
end
local tbl_2_upvr = {
	[module_upvr.QuestRequestType.QuestRemoved] = function(arg1) -- Line 177
		--[[ Upvalues[3]:
			[1]: module_upvr_4 (readonly)
			[2]: module_upvr_2 (readonly)
			[3]: module_upvr (readonly)
		]]
		for _, v in ipairs(arg1.Ids) do
			local var35 = module_upvr_4.Data_ById[v]
			if var35 then
				module_upvr_4.QuestStateRemove(module_upvr_2.QuestState, var35)
			else
				warn(module_upvr.FormatOutput("Received invalid QuestId '%s'", "QuestHandle", nil, v))
			end
		end
	end;
	[module_upvr.QuestRequestType.QuestStarted] = function(arg1) -- Line 194
		--[[ Upvalues[3]:
			[1]: module_upvr_4 (readonly)
			[2]: module_upvr_2 (readonly)
			[3]: module_upvr (readonly)
		]]
		for _, v_2 in ipairs(arg1.Ids) do
			local var42 = module_upvr_4.Data_ById[v_2]
			if var42 then
				module_upvr_4.QuestStateProgressCreate(module_upvr_2.QuestState, var42)
			else
				warn(module_upvr.FormatOutput("Received invalid QuestId '%s'", "QuestHandle", nil, v_2))
			end
		end
	end;
	[module_upvr.QuestRequestType.QuestUpdated] = function(arg1) -- Line 212
		--[[ Upvalues[2]:
			[1]: module_upvr_4 (readonly)
			[2]: module_upvr_2 (readonly)
		]]
		module_upvr_4.QuestStateProgressUpdate_SerializedBatch(module_upvr_2.QuestState, arg1.SP)
	end;
}
Quest_upvr.OnClientEvent:Connect(function(arg1) -- Line 222
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	for _, v_3 in ipairs(arg1) do
		tbl_2_upvr[v_3.R](v_3)
	end
end)
return module