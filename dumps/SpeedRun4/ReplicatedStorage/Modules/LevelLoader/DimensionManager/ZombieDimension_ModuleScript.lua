-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:00
-- Luau version 6, Types version 3
-- Time taken: 0.005078 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Audio"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local Folder = Instance.new("Folder")
Folder.Name = "ZombieScripts"
Folder.Parent = script
local Zombie_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Enemies"):WaitForChild("Zombie")
local Humanoid = Zombie_upvr:WaitForChild("Humanoid")
Humanoid:AddTag(require(ReplicatedStorage:WaitForChild("CommonData")).Tags.EnemyHumanoid)
Humanoid:SetAttribute("EnemyId", "Zom")
local ZombieStateCreate_upvr
if require(Modules:WaitForChild("Enemies")).Data_ById.Zom then
	Humanoid:SetAttribute("EnemyId", "Zom")
else
	ZombieStateCreate_upvr = require(ReplicatedStorage:WaitForChild("CommonData")).FormatOutput("Missing EnemyData '%s'", "ZombieDimension", nil, "Zom")
	warn(ZombieStateCreate_upvr)
end
local RootPart = Humanoid.RootPart
if RootPart then
	ZombieStateCreate_upvr = RootPart.Size.Y * 0.5
else
	ZombieStateCreate_upvr = 0
end
local Folder_upvr = Instance.new("Folder")
Folder_upvr.Name = "Zombies"
Folder_upvr.Parent = workspace
local tbl = {}
ZombieStateCreate_upvr = 1
tbl.Volume = ZombieStateCreate_upvr
ZombieStateCreate_upvr = module_upvr.SoundGroup.SFX
tbl.SoundGroup = ZombieStateCreate_upvr
;({}).Alarm = tbl
local tbl_upvr = {}
ZombieStateCreate_upvr = {}
tbl_upvr.ZombieAlarm_ByLevel = ZombieStateCreate_upvr
ZombieStateCreate_upvr = {}
tbl_upvr.ZombieStates_ByLevelAssetState = ZombieStateCreate_upvr
local ZombieScript_upvr = script:WaitForChild("ZombieScript")
local cframe_upvw = CFrame.new(0, Humanoid.HipHeight + ZombieStateCreate_upvr, 0)
function ZombieStateCreate_upvr(arg1) -- Line 87, Named "ZombieStateCreate"
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: Zombie_upvr (readonly)
		[3]: ZombieScript_upvr (readonly)
		[4]: cframe_upvw (read and write)
		[5]: Folder_upvr (readonly)
	]]
	local Folder_2 = Instance.new("Folder")
	Folder_2.Name = arg1.Asset.Id
	local module = {
		AssetSubscriptions = {};
		Connections_ByAssetSubscription = {};
		Folder = Folder_2;
	}
	tbl_upvr.ZombieStates_ByLevelAssetState[arg1] = module
	for _, v in assert(arg1.Map).Levels do
		for _, v_2 in v.EnemySpawns do
			local clone = Zombie_upvr:Clone()
			local clone_2 = ZombieScript_upvr:Clone()
			clone_2.myZombie.Value = clone
			local var28 = v_2.CFrame * CFrame.new(0, v_2.Size.Y * 0.5, 0) * cframe_upvw
			clone:SetAttribute("SpawnPoint", var28)
			clone:PivotTo(var28)
			clone_2.Enabled = true
			clone.Parent = Folder_2
			clone_2.Parent = Folder_2
		end
	end
	Folder_2.Parent = Folder_upvr
	return module
end
local function _(arg1) -- Line 128, Named "ZombieStateDestroy"
	arg1.Folder:Destroy()
end
local any_AssertEnabled_result1_upvr = require(LevelLoader:WaitForChild("DimensionCommon")).AssertEnabled("Zombie")
function any_AssertEnabled_result1_upvr.Equip() -- Line 134
end
function any_AssertEnabled_result1_upvr.Unequip() -- Line 138
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	for _, v_3 in pairs(tbl_upvr.ZombieStates_ByLevelAssetState) do
		v_3.Folder:Destroy()
	end
	table.clear(tbl_upvr.ZombieStates_ByLevelAssetState)
	for _, v_4 in pairs(tbl_upvr.ZombieAlarm_ByLevel) do
		module_upvr.ManagedSound.Destroy(v_4)
	end
	table.clear(tbl_upvr.ZombieAlarm_ByLevel)
end
local module_3_upvr = require(LevelLoader:WaitForChild("DimensionManager"))
function any_AssertEnabled_result1_upvr.ResolveSubscriptions(arg1) -- Line 154
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 52. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 52. Error Block 13 end (CF ANALYSIS FAILED)
end
local module_2_upvr = require(Modules:WaitForChild("Dimensions"))
function any_AssertEnabled_result1_upvr.Subscribe(arg1) -- Line 203
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: any_AssertEnabled_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: ZombieStateCreate_upvr (readonly)
	]]
	local var46
	if not module_2_upvr.DimensionCanApply(any_AssertEnabled_result1_upvr.Dimension, arg1.AssetState.Asset) then
		return false
	end
	local AssetState_3 = arg1.AssetState
	var46 = tbl_upvr.ZombieStates_ByLevelAssetState[AssetState_3]
	if not var46 then
		var46 = ZombieStateCreate_upvr(AssetState_3)
	end
	if not table.find(var46.AssetSubscriptions, arg1) then
		var46.AssetSubscriptions[#var46.AssetSubscriptions + 1] = arg1
		arg1.DimensionSubscriptionChanged:Fire(any_AssertEnabled_result1_upvr.Id, true)
	end
	return true
end
function any_AssertEnabled_result1_upvr.Unsubscribe(arg1) -- Line 226
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: any_AssertEnabled_result1_upvr (readonly)
	]]
	local AssetState_2 = arg1.AssetState
	local var53 = tbl_upvr.ZombieStates_ByLevelAssetState[AssetState_2]
	if var53 then
		local table_find_result1 = table.find(var53.AssetSubscriptions, arg1)
		if table_find_result1 then
			table.remove(var53.AssetSubscriptions, table_find_result1)
			arg1.DimensionSubscriptionChanged:Fire(any_AssertEnabled_result1_upvr.Id, false)
			if #var53.AssetSubscriptions == 0 then
				tbl_upvr.ZombieStates_ByLevelAssetState[AssetState_2] = nil
				var53.Folder:Destroy()
			end
		end
	end
end
return any_AssertEnabled_result1_upvr