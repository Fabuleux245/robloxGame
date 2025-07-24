-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:13
-- Luau version 6, Types version 3
-- Time taken: 0.008043 seconds

local module_3_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local any_IsClient_result1_upvr = game:GetService("RunService"):IsClient()
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_9_upvr = require(Modules:WaitForChild("Utility"))
local module_7_upvr = require(script:WaitForChild("SpaceMapper"))
local var9_upvr = 64
local table_create_result1_upvr = table.create(var9_upvr)
local var17_upvw
if any_IsClient_result1_upvr then
	var9_upvr = ReplicatedStorage
else
	var9_upvr = game:GetService("ServerScriptService")
end
module_3_upvr.QueryStatus = table.freeze({
	InProgress = 1;
	Finalizing = 2;
	Complete = 3;
})
debug.setmemorycategory("OpenSpaceHandler_CachedMaps")
local tbl_2_upvr = {}
debug.resetmemorycategory()
debug.setmemorycategory("OpenSpaceHandler_FinalizeThreads")
debug.resetmemorycategory()
debug.setmemorycategory("OpenSpaceHandler_MapQuerySources")
local tbl_10_upvr = {}
debug.resetmemorycategory()
debug.setmemorycategory("OpenSpaceHandler_OpenThreads")
local tbl_11_upvr = {}
debug.resetmemorycategory()
local tbl_9_upvr = {}
var17_upvw = 0
tbl_9_upvr.QueryId = var17_upvw
var17_upvw = 0
tbl_9_upvr.QueryIndex = var17_upvw
var17_upvw = {}
tbl_9_upvr.CompleteQueries = var17_upvw
var17_upvw = {}
tbl_9_upvr.ActiveOpenSpaceMaps = var17_upvw
var17_upvw = {}
tbl_9_upvr.ActiveOpenSpaceQueries = var17_upvw
var17_upvw = {}
tbl_9_upvr.RequestPending_ByLevelAsset = var17_upvw
var17_upvw = nil
if any_IsClient_result1_upvr then
	local module_8_upvw = require(Modules:WaitForChild("ClientData"))
	function var17_upvw() -- Line 134
		--[[ Upvalues[1]:
			[1]: module_8_upvw (readonly)
		]]
		return module_8_upvw.LocalPlayerIdentity.IsAuthorizedUser
	end
else
	var17_upvw = function() -- Line 139
		return true
	end
end
function module_8_upvw() -- Line 142
	--[[ Upvalues[4]:
		[1]: var9_upvr (readonly)
		[2]: any_IsClient_result1_upvr (readonly)
		[3]: tbl_9_upvr (readonly)
		[4]: table_create_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local clone = script:WaitForChild("MappingActor"):Clone()
	local Folder = Instance.new("Folder")
	Folder.Name = "OpenSpaceHandler_MappingActors"
	Folder.Parent = var9_upvr
	if any_IsClient_result1_upvr then
		clone.ClientScript.Enabled = true
		clone.ServerScript:Destroy()
	else
		clone.ClientScript:Destroy()
		clone.ServerScript.Enabled = true
	end
	for i = 1, 64 do
		local clone_2 = clone:Clone()
		clone_2.Parent = Folder
		clone_2.Output.Event:Connect(function(arg1, arg2) -- Line 160, Named "StoreQuery"
			--[[ Upvalues[1]:
				[1]: tbl_9_upvr (copied, readonly)
			]]
			tbl_9_upvr.CompleteQueries[arg1] = arg2
		end)
		table_create_result1_upvr[i] = clone_2.Input
		local _
	end
	clone:Destroy()
end
local AsyncData_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("AsyncData")
local PhysicsService_upvr = game:GetService("PhysicsService")
local module_upvr_2 = require(Modules:WaitForChild("LevelAssets"))
function module_3_upvr.OpenSpaceMapCreate(arg1, arg2, arg3) -- Line 184
	--[[ Upvalues[14]:
		[1]: tbl_2_upvr (readonly)
		[2]: any_IsClient_result1_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: AsyncData_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: module_8_upvw (read and write)
		[8]: PhysicsService_upvr (readonly)
		[9]: var9_upvr (readonly)
		[10]: module_9_upvr (readonly)
		[11]: module_upvr_2 (readonly)
		[12]: module_7_upvr (readonly)
		[13]: tbl_10_upvr (readonly)
		[14]: tbl_9_upvr (readonly)
	]]
	local var65
	if arg1.SpaceMappingDisallowed then
		return nil
	end
	if tbl_2_upvr[arg1] then
		return tbl_2_upvr[arg1]
	end
	if any_IsClient_result1_upvr and module_2_upvr.LevelsServerMapsOpenSpace then
		local module_4 = {}
		module_4.Asset = arg1
		module_4.Map = {
			_Written = 0;
			Finalized = false;
			Map = buffer.create(0);
			OffsetY = 0;
			OffsetZ = 0;
			Origin = Vector3.new(0, 0, 0);
			Resolution = 1;
			Size = Vector3.new(0, 0, 0);
		}
		module_4.Status = module_3_upvr.QueryStatus.InProgress
		tbl_2_upvr[arg1] = module_4
		var65 = module_upvr
		AsyncData_upvr:FireServer(var65.AsyncDataRequestType.GetSpaceMap, arg1.Id)
		return module_4
	end
	if module_8_upvw then
		module_8_upvw()
		module_8_upvw = nil
	end
	local WorldModel_2 = Instance.new("WorldModel")
	WorldModel_2.Name = "SpaceMapper_"..arg1.Id
	local tbl_12 = {}
	local tbl_3 = {}
	for _, v in PhysicsService_upvr:GetRegisteredCollisionGroups() do
		if PhysicsService_upvr:CollisionGroupsAreCollidable(v.name, module_upvr.CollisionGroups.Default) then
			({})[v.name] = true
		end
	end
	local descendants_2, NONE_4, NONE_2 = arg2.Model:GetDescendants()
	for _, v_2 in descendants_2, NONE_4, NONE_2 do
		if v_2:IsA("BasePart") then
			if v_2:HasTag(module_upvr.Tags.MapperMap) then
				tbl_3[#tbl_3 + 1] = v_2
			end
			if v_2.CanCollide then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if ({})[v_2.CollisionGroup] then
					v_2 = v_2:Clone()
					if arg3 then
						v_2.CFrame = arg3(v_2.CFrame)
					end
					v_2.Parent = WorldModel_2
					if not v_2:HasTag(module_upvr.Tags.MapperIgnore) then
						tbl_12[#tbl_12 + 1] = v_2
					end
				end
			end
		end
	end
	WorldModel_2.Parent = var9_upvr
	NONE_4 = module_9_upvr
	if 0 < #tbl_3 then
		NONE_4 = tbl_3
	else
		NONE_4 = tbl_12
	end
	NONE_4 = module_upvr_2.SpawnCFrameGet(arg2)
	if arg3 then
		NONE_4 = arg3(NONE_4)
	end
	local any_Create_result1, any_Create_result2_2 = module_7_upvr.Create(NONE_4.OABB_FromParts(NONE_4, CFrame.identity), NONE_4, arg1.SpaceMappingResolution)
	local module_5 = {
		_CreatedAt = os.clock();
	}
	module_5.Asset = arg1
	module_5.Map = any_Create_result1
	module_5.Status = module_3_upvr.QueryStatus.InProgress
	tbl_2_upvr[arg1] = module_5
	tbl_10_upvr[module_5] = {
		FloodHead = any_Create_result2_2;
		FloodLookup = {
			[any_Create_result2_2.Pos] = any_Create_result2_2;
		};
		FloodTail = any_Create_result2_2;
		PendingQueries = {};
		QueryStack = {};
		WorldModel = WorldModel_2;
	}
	tbl_9_upvr.ActiveOpenSpaceMaps[#tbl_9_upvr.ActiveOpenSpaceMaps + 1] = module_5
	return module_5
end
function module_3_upvr.OpenSpaceMapFetch(arg1) -- Line 337
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	return tbl_2_upvr[arg1]
end
function module_3_upvr.OpenSpaceMapImport(arg1, arg2) -- Line 344
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	if not arg2.Finalized then
		warn(module_upvr.FormatOutput("Map for LevelAssetId '%s' is incomplete", "OpenSpaceHandler", nil, arg1.Id))
	end
	local var86 = tbl_2_upvr[arg1]
	if var86 then
		table.clear(var86.Map)
		for i_4, v_3 in arg2 do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var86.Map[i_4] = v_3
			local _
		end
		var86.Status = module_3_upvr.QueryStatus.Complete
		return var86
	end
	local tbl_7 = {}
	tbl_7.Asset = arg1
	tbl_7.Map = arg2
	tbl_7.Status = module_3_upvr.QueryStatus.Complete
	local var89 = tbl_7
	tbl_2_upvr[arg1] = var89
	return var89
end
function module_3_upvr.OpenSpaceQueryCreate(arg1, arg2, arg3) -- Line 386
	--[[ Upvalues[4]:
		[1]: module_7_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: tbl_9_upvr (readonly)
		[4]: tbl_11_upvr (readonly)
	]]
	local tbl_6 = {
		Finalized = false;
		Offsets = {};
		SpaceMap = arg1.Map;
	}
	local module = {
		Source = tbl_6;
		Status = module_3_upvr.QueryStatus.InProgress;
	}
	tbl_9_upvr.ActiveOpenSpaceQueries[#tbl_9_upvr.ActiveOpenSpaceQueries + 1] = module
	tbl_11_upvr[module] = task.spawn(module_7_upvr.PopupulateOffsets, tbl_6, arg2, arg3)
	return module
end
function module_3_upvr.OpenSpaceQueryGetRandom(arg1) -- Line 415
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	return module_7_upvr.OpenQuerySourceGetRandomPosition(arg1.Source)
end
local tbl_4_upvr = {}
function module_3_upvr.PostSimulation(arg1, arg2) -- Line 426
	--[[ Upvalues[10]:
		[1]: tbl_9_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: tbl_10_upvr (readonly)
		[4]: module_7_upvr (readonly)
		[5]: table_create_result1_upvr (readonly)
		[6]: tbl_4_upvr (readonly)
		[7]: var17_upvw (read and write)
		[8]: module_upvr (readonly)
		[9]: module_9_upvr (readonly)
		[10]: tbl_11_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFH_OpenSpaceHandler")
	local _ = #tbl_9_upvr.ActiveOpenSpaceMaps
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [361] 259. Error Block 66 start (CF ANALYSIS FAILED)
	debug.profileend()
	if os.clock() + 0.016 <= os.clock() then
		-- KONSTANTWARNING: GOTO [370] #265
	end
	-- KONSTANTERROR: [361] 259. Error Block 66 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [369.2299]
	-- KONSTANTERROR: [15] 13. Error Block 2 end (CF ANALYSIS FAILED)
end
if not module_2_upvr.LevelsSpaceMappingEnabled then
	local function DO_NOTHING() -- Line 668
	end
	module_3_upvr.OpenSpaceMapCreate = DO_NOTHING
	module_3_upvr.OpenSpaceMapFetch = DO_NOTHING
	module_3_upvr.PostSimulation = DO_NOTHING
end
return module_3_upvr