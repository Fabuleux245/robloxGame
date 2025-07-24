-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:54
-- Luau version 6, Types version 3
-- Time taken: 0.004975 seconds

local module_upvr_9 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("BUPClient"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_4 = require(Modules:WaitForChild("ClientData"))
local module_upvr_8 = require(Modules:WaitForChild("Pets"))
local module_upvr_7 = require(Modules:WaitForChild("RollEngine"):WaitForChild("RollProperties"))
local tbl_3_upvr = {
	ManagedPetGroup_ByPlayerState = {};
	PendingRequestIds = {};
	ModelFetchStates_ByItemData = {};
	PendingModelFetchStates = {};
	FallbackModelFetchStates_ByItemData = {};
}
local tbl_upvr = {
	FollowOrientationThreshold = 1;
	MatchCharacterDirection = module_upvr.UseSpeedRun4Character;
	RootOffset = nil;
}
if module_upvr.IsRollGame then
	tbl_upvr.RootOffset = CFrame.new(0, -module_upvr_7.BallRadius, 0)
	module_upvr_3.PetMovingStartThresholdFactor = 0.375
	module_upvr_3.PetMovingStopThresholdFactor = 0.25
end
module_upvr_3.RaycastParams = require(Modules:WaitForChild("Raycast")).Params.WorldOnly
function module_upvr_3.RaycastConsiderGrounded(arg1) -- Line 108
	return not arg1:FindFirstAncestor("Hazards")
end
module_upvr_9.HighlightModels = module_upvr_3.HighlightModels
function module_upvr_9.GetPetHatchActive() -- Line 124
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	return module_upvr_3.PetHatchActive
end
local function ModelFetchStateGet_upvr(arg1) -- Line 132, Named "ModelFetchStateGet"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local assert_result1 = assert(arg1.ModelId, "Unsupported ItemData")
	local var14 = tbl_3_upvr.ModelFetchStates_ByItemData[arg1]
	if not var14 then
		local Model_ById = module_upvr_3.Model_ById
		local var16 = Model_ById[assert_result1]
		if var16 == nil then
			Model_ById = false
		else
			Model_ById = true
		end
		local tbl = {
			_Model = var16;
		}
		tbl.Data = arg1
		tbl.Id = assert_result1
		tbl.Initialized = Model_ById
		tbl_3_upvr.ModelFetchStates_ByItemData[arg1] = tbl
		if not Model_ById then
			tbl_3_upvr.PendingRequestIds[#tbl_3_upvr.PendingRequestIds + 1] = assert_result1
			tbl_3_upvr.PendingModelFetchStates[#tbl_3_upvr.PendingModelFetchStates + 1] = tbl
		end
		var14 = tbl
	end
	return var14
end
local module_upvr_5 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_6 = require(Modules:WaitForChild("ItemDataUtility"))
function module_upvr_9.ModelBuild(arg1, arg2) -- Line 169
	--[[ Upvalues[3]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: module_upvr_8 (readonly)
	]]
	if not arg1.Initialized or not arg1._Model then
		error(module_upvr_5.FormatOutput("ModelFetchState is not initialized", "BUPGameClient"), 2)
	end
	local clone = arg1._Model:Clone()
	local ItemTheme_2 = arg1.Data.ItemTheme
	if ItemTheme_2 then
		module_upvr_5.ItemThemeApply(clone, ItemTheme_2, arg2)
	end
	if module_upvr_6.ItemType_ByItemData[arg1.Data] == module_upvr_5.ItemType.Pet then
		local var25 = module_upvr_8.Scale_BySizeMod[arg1.Data.SizeMod]
		if var25 ~= 1 then
			clone:ScaleTo(arg1._Model:GetScale() * var25)
		end
	end
	return clone
end
local DefaultEgg_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("DefaultEgg")
function module_upvr_9.EggModelFetch(arg1) -- Line 208
	--[[ Upvalues[3]:
		[1]: ModelFetchStateGet_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: DefaultEgg_upvr (readonly)
	]]
	if arg1.ModelId then
		return ModelFetchStateGet_upvr(arg1)
	end
	local var27 = tbl_3_upvr.FallbackModelFetchStates_ByItemData[arg1]
	if not var27 then
		local tbl_2 = {
			_Model = DefaultEgg_upvr;
		}
		tbl_2.Data = arg1
		tbl_2.Id = ""
		tbl_2.Initialized = true
		tbl_3_upvr.FallbackModelFetchStates_ByItemData[arg1] = tbl_2
		var27 = tbl_2
	end
	return var27
end
function module_upvr_9.PetModelFetch(arg1) -- Line 239
	--[[ Upvalues[1]:
		[1]: ModelFetchStateGet_upvr (readonly)
	]]
	return ModelFetchStateGet_upvr(arg1)
end
function module_upvr_9.LocalPetsRespawn() -- Line 252
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_4 (readonly)
	]]
	local var29 = tbl_3_upvr.ManagedPetGroup_ByPlayerState[module_upvr_4.LocalPlayerState]
	if var29 then
		var29.RespawnPending = true
	end
end
function module_upvr_9.CharacterAdded(arg1) -- Line 266
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local var30 = tbl_3_upvr.ManagedPetGroup_ByPlayerState[assert(module_upvr_4.PlayerState_ByPlayer[arg1.Player])]
	if var30 then
		var30.RespawnPending = true
	end
end
function module_upvr_9.PlayerRemoving(arg1) -- Line 284
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local var31 = tbl_3_upvr.ManagedPetGroup_ByPlayerState[arg1]
	if var31 then
		tbl_3_upvr.ManagedPetGroup_ByPlayerState[arg1] = nil
		module_upvr_3.PetGroupDestroy(var31.PetGroup)
	end
end
local module_upvr_10 = require(Modules:WaitForChild("PlayerPhysicsEngine"))
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
function module_upvr_9.PreSimulation(arg1, arg2) -- Line 301
	--[[ Upvalues[10]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: module_upvr_7 (readonly)
		[6]: module_upvr_8 (readonly)
		[7]: module_upvr_9 (readonly)
		[8]: module_upvr_10 (readonly)
		[9]: tbl_upvr (readonly)
		[10]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFH_BUPGameClient")
	module_upvr_3.Stepped(arg1, arg2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [586] 416. Error Block 87 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [586] 416. Error Block 87 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 124 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [586.10]
	if nil then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [586.13]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [16] 14. Error Block 124 end (CF ANALYSIS FAILED)
end
function module_upvr_9.RenderStepped(arg1, arg2) -- Line 703
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr_4 (readonly)
	]]
	debug.profilebegin("CFR_BUPGameClient")
	if 0 < #tbl_3_upvr.PendingRequestIds then
		module_upvr_3.RequestModels(tbl_3_upvr.PendingRequestIds)
		table.clear(tbl_3_upvr.PendingRequestIds)
	end
	if module_upvr_3.ModelsDirty then
		module_upvr_3.ModelsDirty = false
		for i = #tbl_3_upvr.PendingModelFetchStates, 1, -1 do
			local var37 = tbl_3_upvr.PendingModelFetchStates[i]
			local var38 = module_upvr_3.Model_ById[var37.Id]
			if var38 then
				var37._Model = var38
				var37.Initialized = true
				table.remove(tbl_3_upvr.PendingModelFetchStates, i)
			end
		end
	end
	for i_2, v in tbl_3_upvr.ManagedPetGroup_ByPlayerState do
		if i_2.PetState.Dirty then
			v.PetsDirty = true
		end
		if i_2 ~= module_upvr_4.LocalPlayerState and i_2.CurrentLevelDirty then
			v.RespawnPending = true
		end
	end
	module_upvr_3.RenderStepped(arg1, arg2)
	debug.profileend()
end
module_upvr_3.Init({})
return module_upvr_9