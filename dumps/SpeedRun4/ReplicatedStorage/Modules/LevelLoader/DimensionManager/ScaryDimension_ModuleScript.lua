-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:04
-- Luau version 6, Types version 3
-- Time taken: 0.002641 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_upvr = require(LevelLoader:WaitForChild("PathChaserNPCManager"))
local any_AssertEnabled_result1_upvr = require(LevelLoader:WaitForChild("DimensionCommon")).AssertEnabled("Scary")
local tbl_upvr = {
	NPC_ByLevel = {};
}
function any_AssertEnabled_result1_upvr.Equip() -- Line 31
end
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("CommonData"))
function any_AssertEnabled_result1_upvr.Unequip() -- Line 35
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: any_AssertEnabled_result1_upvr (readonly)
	]]
	error(module_upvr_4.FormatOutput("Cannot unequip DimensionId '%s'", "ScaryDimension", nil, any_AssertEnabled_result1_upvr.Id), 2)
end
local module_upvr_3 = require(Modules:WaitForChild("Worlds"))
local module_upvr_6 = require(LevelLoader:WaitForChild("LevelAssetLogic"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local module_upvr_5 = require(Modules:WaitForChild("Raycast"))
function any_AssertEnabled_result1_upvr.Start(arg1) -- Line 42
	--[[ Upvalues[6]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: module_upvr (readonly)
	]]
	if module_upvr_3.Data_ByLevel[arg1.Data].IsTechnical then
	elseif not tbl_upvr.NPC_ByLevel[arg1] then
		local any_GetSpawnCFrame_result1 = module_upvr_6.GetSpawnCFrame(arg1)
		local workspace_Raycast_result1 = workspace:Raycast(any_GetSpawnCFrame_result1.Position, any_GetSpawnCFrame_result1.UpVector * -module_upvr_2.PathChaserNPCRadius, module_upvr_5.Params.WorldOnly)
		if workspace_Raycast_result1 then
			any_GetSpawnCFrame_result1 = any_GetSpawnCFrame_result1.Rotation + workspace_Raycast_result1.Position
		end
		tbl_upvr.NPC_ByLevel[arg1] = module_upvr.Create(arg1.AssetState, any_GetSpawnCFrame_result1, module_upvr.ChaserType.Monster)
	end
end
local function _(arg1, arg2) -- Line 72, Named "DestroyNPC"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var17 = tbl_upvr.NPC_ByLevel[arg1]
	if var17 then
		module_upvr.Destroy(var17, arg2)
		tbl_upvr.NPC_ByLevel[arg1] = nil
	end
end
function any_AssertEnabled_result1_upvr.End(arg1) -- Line 85
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var19 = tbl_upvr.NPC_ByLevel[arg1]
	if var19 then
		module_upvr.Destroy(var19, false)
		tbl_upvr.NPC_ByLevel[arg1] = nil
	end
end
function any_AssertEnabled_result1_upvr.Unload(arg1) -- Line 89
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var21 = tbl_upvr.NPC_ByLevel[arg1]
	if var21 then
		module_upvr.Destroy(var21, true)
		tbl_upvr.NPC_ByLevel[arg1] = nil
	end
end
return any_AssertEnabled_result1_upvr