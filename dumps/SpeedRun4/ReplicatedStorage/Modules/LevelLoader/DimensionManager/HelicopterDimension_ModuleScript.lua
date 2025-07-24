-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:04
-- Luau version 6, Types version 3
-- Time taken: 0.006659 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_upvr_7 = require(LevelLoader:WaitForChild("DimensionManager"))
local module_upvr_6 = require(LevelLoader:WaitForChild("FlyingChaserNPCManager"))
local module_upvr_3 = require(LevelLoader:WaitForChild("OpenSpaceHandler"))
local any_AssertEnabled_result1_upvr = require(LevelLoader:WaitForChild("DimensionCommon")).AssertEnabled("Heli")
local tbl_upvr = {
	Count = {4, 30, 0.5};
	RespawnTime = {5, 15, -0.25, 0.25};
	SpawnDistance = {20, 80, -2};
}
local OverlapParams_new_result1_upvr = OverlapParams.new()
OverlapParams_new_result1_upvr.RespectCanCollide = true
OverlapParams_new_result1_upvr.MaxParts = 1
local tbl_upvr_2 = {
	HelicopterState_ByLevel = {};
}
local function _(arg1, arg2) -- Line 92, Named "GetStrengthValue"
	local _1 = arg1[1]
	local _2 = arg1[2]
	local _3_2 = arg1[3]
	local _4_2 = arg1[4]
	local var22
	if 0 <= _3_2 then
		var22 = _1
	else
		var22 = _2
	end
	local var23 = var22 + _3_2 * (arg2 - 1)
	if _4_2 then
		var23 *= 1 + _4_2 * (0.5 - math.random())
	end
	return math.clamp(var23, _1, _2)
end
local module_upvr_5 = require(Modules:WaitForChild("Worlds"))
local module_upvr_8 = require(LevelLoader:WaitForChild("LevelAssetLogic"))
local function HelicopterStateCreate_upvr(arg1) -- Line 114, Named "HelicopterStateCreate"
	--[[ Upvalues[7]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_8 (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: module_upvr_2 (readonly)
		[7]: tbl_upvr (readonly)
	]]
	local var26
	if tbl_upvr_2.HelicopterState_ByLevel[arg1] then return end
	if module_upvr_5.Data_ByLevel[arg1.Data].IsTechnical then return end
	local _, any_AssertLoaded_result2 = module_upvr_8.AssertLoaded(arg1)
	local any_OpenSpaceMapCreate_result1 = module_upvr_3.OpenSpaceMapCreate(arg1.Data.LevelAsset, any_AssertLoaded_result2, function(arg1_2) -- Line 129, Named "TransformCFrames"
		--[[ Upvalues[2]:
			[1]: module_upvr_7 (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return module_upvr_7.CFrameFromDimensionSpace(arg1.AssetState, arg1_2)
	end)
	if not any_OpenSpaceMapCreate_result1 then return end
	local any_LevelGetEnemyStrength_result1 = module_upvr_5.LevelGetEnemyStrength(arg1.Data)
	local Count = tbl_upvr.Count
	local _2_2 = Count[2]
	local _3 = Count[3]
	local _4 = Count[4]
	if 0 <= _3 then
		var26 = Count[1]
	else
		var26 = _2_2
	end
	local var35 = var26 + _3 * (any_LevelGetEnemyStrength_result1 - 1)
	if _4 then
		var35 *= 1 + _4 * (0.5 - math.random())
	end
	return {
		Strength = any_LevelGetEnemyStrength_result1;
		LevelData = arg1.Data;
		FlyingChaserNPCs = {};
		PendingSpawnTimes = table.create(math.clamp(var35, Count[1], _2_2), 0);
		SpawnRegion = module_upvr_2.AABB_FromCFrame(module_upvr_8.GetSpawnCFrame(arg1), Vector3.new(140, 140, 140));
		OpenSpaceMap = any_OpenSpaceMapCreate_result1;
	}
end
local function _(arg1, arg2) -- Line 170, Named "HelicopterStateDestroy"
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	for _, v in arg1.FlyingChaserNPCs do
		module_upvr_6.Destroy(v, arg2)
	end
end
function any_AssertEnabled_result1_upvr.Equip() -- Line 185
end
function any_AssertEnabled_result1_upvr.Unequip() -- Line 189
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: any_AssertEnabled_result1_upvr (readonly)
	]]
	error(module_upvr_4.FormatOutput("Cannot unequip DimensionId '%s'", "HelicopterDimension", nil, any_AssertEnabled_result1_upvr.Id), 2)
end
function any_AssertEnabled_result1_upvr.ResolveSubscriptions(arg1) -- Line 198
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_7 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.7]
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
function any_AssertEnabled_result1_upvr.Subscribe(arg1) -- Line 244
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: HelicopterStateCreate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Level_2 = arg1.Level
	local var44 = tbl_upvr_2.HelicopterState_ByLevel[Level_2]
	if not var44 then
		var44 = HelicopterStateCreate_upvr(Level_2)
		tbl_upvr_2.HelicopterState_ByLevel[Level_2] = var44
	end
	if var44 == nil then
	else
	end
	return true
end
function any_AssertEnabled_result1_upvr.Unsubscribe(arg1) -- Line 258
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	local Level = arg1.Level
	local var49 = tbl_upvr_2.HelicopterState_ByLevel[Level]
	if var49 then
		tbl_upvr_2.HelicopterState_ByLevel[Level] = nil
		for _, v_2 in var49.FlyingChaserNPCs do
			module_upvr_6.Destroy(v_2, nil)
		end
	end
end
function any_AssertEnabled_result1_upvr.Start(arg1) -- Line 275
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var53 = tbl_upvr_2.HelicopterState_ByLevel[arg1]
	if not var53 then
	else
		for _, var52 in var53.FlyingChaserNPCs do
			var52.Passive = false
		end
	end
end
function any_AssertEnabled_result1_upvr.End(arg1) -- Line 291
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	local var57 = tbl_upvr_2.HelicopterState_ByLevel[arg1]
	if not var57 then
	else
		for _, var56 in var57.FlyingChaserNPCs do
			module_upvr_6.Pacify(var56)
		end
	end
end
function any_AssertEnabled_result1_upvr.Unload(arg1) -- Line 305
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	local var61 = tbl_upvr_2.HelicopterState_ByLevel[arg1]
	if var61 then
		tbl_upvr_2.HelicopterState_ByLevel[arg1] = nil
		for _, v_3 in var61.FlyingChaserNPCs do
			module_upvr_6.Destroy(v_3, true)
		end
	end
end
function any_AssertEnabled_result1_upvr.CharacterRemoving(arg1) -- Line 320
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: module_upvr_6 (readonly)
	]]
	if arg1 == module_upvr.LocalCharacterState then
		for _, v_4 in tbl_upvr_2.HelicopterState_ByLevel do
			for _, v_5 in v_4.FlyingChaserNPCs do
				module_upvr_6.Pacify(v_5)
			end
		end
	end
end
local any_I_result1_upvr = module_upvr_2.I("Part", {
	Shape = Enum.PartType.Ball;
	Size = Vector3.new(8, 8, 8);
})
local assert_result1_upvr = assert(require(Modules:WaitForChild("Enemies")).Data_ById.Hel, "Missing EnemyData")
function any_AssertEnabled_result1_upvr.PostSimulation(arg1, arg2) -- Line 338
	--[[ Upvalues[11]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: tbl_upvr (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr_7 (readonly)
		[8]: any_I_result1_upvr (readonly)
		[9]: OverlapParams_new_result1_upvr (readonly)
		[10]: module_upvr_6 (readonly)
		[11]: assert_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [224] 168. Error Block 30 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [224] 168. Error Block 30 end (CF ANALYSIS FAILED)
end
function any_AssertEnabled_result1_upvr.RenderStepped(arg1, arg2) -- Line 469
end
return any_AssertEnabled_result1_upvr