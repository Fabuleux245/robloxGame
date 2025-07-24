-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:57
-- Luau version 6, Types version 3
-- Time taken: 0.031067 seconds

-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
local module_8_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService_upvr = game:GetService("UserInputService")
local module_13_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_2_upvr = require(Modules:WaitForChild("CharacterStateHandler"))
local module_4_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_4 = require(Modules:WaitForChild("LevelAssets"))
local module_upvr_6 = require(Modules:WaitForChild("UIShared"))
local module_upvr = require(Modules:WaitForChild("Utility"))
local module_7_upvr = require(Modules:WaitForChild("Worlds"))
local module_9_upvr = require(Modules:WaitForChild("UserInterface"):WaitForChild("LevelPurchaseUI"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_10_upvr = require(LevelLoader:WaitForChild("DimensionManager"))
local module_upvr_2 = require(LevelLoader:WaitForChild("GateLockManager"))
local module_5_upvr = require(LevelLoader:WaitForChild("LevelAssetLogic"))
local module_upvr_5 = require(LevelLoader:WaitForChild("LevelCommon"))
local module_upvr_3 = require(LevelLoader:WaitForChild("SellerNPCManager"))
local CustomLevelLogic = LevelLoader:WaitForChild("CustomLevelLogic")
local CustomLevelLogic_2_upvr = require(CustomLevelLogic)
local OpenSpaceHandler = LevelLoader:WaitForChild("OpenSpaceHandler")
local Level_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Level")
local tbl_4_upvr = {
	DebugEnabled = false;
	DebugUI = nil;
	ActiveGatePopupStates = {};
	CheckpointDebounce_ByIndex = {};
	RenderSteppedHandlers_ByLevel = {};
}
local tbl_7_upvr = {}
function module_8_upvr.External_LoadNextLevel(arg1) -- Line 83
	error(debug.traceback("External_LoadNextLevel stub called!"))
end
local function _(arg1) -- Line 93, Named "LevelIsLocked"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	return not module_7_upvr.LevelCanUse(arg1, module_4_upvr.LocalSaveData)
end
local function _(arg1) -- Line 98, Named "NextLevelIsLocked"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local any_LevelGetNext_result1 = module_7_upvr.LevelGetNext(arg1)
	local var34 = false
	if any_LevelGetNext_result1 ~= nil then
		var34 = not module_7_upvr.LevelCanUse(any_LevelGetNext_result1, module_4_upvr.LocalSaveData)
	end
	return var34, any_LevelGetNext_result1
end
local function ExplainLevelLock_upvr(arg1) -- Line 109, Named "ExplainLevelLock"
	--[[ Upvalues[3]:
		[1]: module_7_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_13_upvr (readonly)
	]]
	local any_LevelGetNext_result1_3 = module_7_upvr.LevelGetNext(arg1)
	local var40
	if any_LevelGetNext_result1_3 ~= nil then
		var40 = not module_7_upvr.LevelCanUse(any_LevelGetNext_result1_3, module_4_upvr.LocalSaveData)
	end
	local var41 = any_LevelGetNext_result1_3
	if var40 and var41 then
		var40 = module_13_upvr.UnlockMethod.Currency
		if var41.UnlockMethod ~= var40 then
			local tbl_6 = {}
			var40 = true
			tbl_6.LoadIfUnlocked = var40
			var40 = module_4_upvr.Signals.UnlockExplanationRequested:Fire
			var40(module_13_upvr.ItemType.Level, var41, tbl_6)
		end
	end
end
local function Create(arg1, arg2) -- Line 131
	--[[ Upvalues[1]:
		[1]: module_13_upvr (readonly)
	]]
	local module_3 = {
		Active = false;
		IsCurrentLevel = false;
		Primed = false;
		Started = false;
		StartedAt = 0;
		Finished = false;
		FinishedAt = 0;
		Completed = false;
		CheckpointsHit = {};
	}
	module_3.Data = arg1
	module_3.AssetState = arg2
	module_3.Objects = {
		Collectibles = {};
		Connections = {
			Checkpoint = {};
			Hazard = {};
			TriggerActive = {};
			TriggerLoaded = {};
		};
	}
	return module_13_upvr.LoadableObjectCreate(module_3)
end
module_8_upvr.Create = Create
local var137_upvw
local function _(arg1, arg2) -- Line 175, Named "LoadLootboxes"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	if module_4_upvr.LocalPlayerTouched(arg1) and module_4_upvr.LocalPolicyState.LootboxesEnabled then
		module_4_upvr.Signals.LootboxInterfaceOpenRequested:Fire(arg2:GetPivot().Position)
	end
end
function module_8_upvr.Load(arg1) -- Line 188
	--[[ Upvalues[11]:
		[1]: module_13_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: module_4_upvr (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: module_upvr_4 (readonly)
		[7]: module_7_upvr (readonly)
		[8]: module_10_upvr (readonly)
		[9]: module_upvr_2 (readonly)
		[10]: CustomLevelLogic_2_upvr (readonly)
		[11]: tbl_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 48 start (CF ANALYSIS FAILED)
	local _, _, any_AssertLoaded_result3_2 = module_5_upvr.AssertLoaded(arg1)
	for _, v_upvr in any_AssertLoaded_result3_2.Triggers do
		if v_upvr.Name == "Lootbox" then
			module_upvr.ConnectTouchedPVInstance(v_upvr, function(arg1_2) -- Line 207
				--[[ Upvalues[2]:
					[1]: v_upvr (readonly)
					[2]: module_4_upvr (copied, readonly)
				]]
				if module_4_upvr.LocalPlayerTouched(arg1_2) and module_4_upvr.LocalPolicyState.LootboxesEnabled then
					module_4_upvr.Signals.LootboxInterfaceOpenRequested:Fire(v_upvr:GetPivot().Position)
				end
			end, arg1.Objects.Connections.TriggerLoaded)
		end
	end
	-- KONSTANTERROR: [6] 6. Error Block 48 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 343, Named "GrantRunningSpeed"
	--[[ Upvalues[4]:
		[1]: module_4_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_7_upvr (readonly)
	]]
	if module_4_upvr.LocalPlayerTouched(arg1) and module_4_upvr.LocalCharacterState then
		module_upvr.RunFunction(module_2_upvr.SetWalkSpeed, module_4_upvr.LocalCharacterState, module_7_upvr.LevelGetWalkSpeed(arg2.Data), true)
	end
end
local var139_upvw
local var134_upvw
local function GetLoadedLevel_upvr(arg1, arg2, arg3) -- Line 365, Named "MarkCheckpoint"
	--[[ Upvalues[5]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: var139_upvw (read and write)
		[5]: var134_upvw (read and write)
	]]
	if not arg2.Active or tbl_4_upvr.CheckpointDebounce_ByIndex[arg3] then
	elseif module_4_upvr.LocalPlayerTouched(arg1) then
		tbl_4_upvr.CheckpointDebounce_ByIndex[arg3] = true
		local _, _, any_AssertLoaded_result3_3 = module_5_upvr.AssertLoaded(arg2)
		arg2.CheckpointsHit[arg3] = true
		if arg3 == #any_AssertLoaded_result3_3.Checkpoints then
			var139_upvw(arg2)
		elseif not arg2.Started then
			var134_upvw(arg2)
		end
		task.wait(1)
		tbl_4_upvr.CheckpointDebounce_ByIndex[arg3] = nil
	end
end
local function _(arg1, arg2) -- Line 397, Named "LevelTriggered"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: var137_upvw (read and write)
	]]
	if not arg2.Active or not arg2.Primed then
	elseif module_4_upvr.LocalPlayerTouched(arg1) then
		var137_upvw(arg2)
	end
end
local function ReturnToLobby_upvw(arg1) -- Line 413, Named "ReturnToLobby"
	--[[ Upvalues[3]:
		[1]: CustomLevelLogic_2_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_7_upvr (readonly)
	]]
	if CustomLevelLogic_2_upvr.CanUsePortal(arg1) then
		module_4_upvr.LocalPlayerStateCurrentLevelSet(module_7_upvr.DefaultLevel, true)
	end
end
local function SendToWinners_upvr(arg1) -- Line 421, Named "SendToWinners"
	--[[ Upvalues[3]:
		[1]: CustomLevelLogic_2_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_7_upvr (readonly)
	]]
	if CustomLevelLogic_2_upvr.CanUsePortal(arg1) then
		module_4_upvr.LocalPlayerStateCurrentLevelSet(module_7_upvr.WinnersLevel, true)
	end
end
function module_8_upvr.Activate(arg1) -- Line 429
	--[[ Upvalues[14]:
		[1]: module_8_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: GetLoadedLevel_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_4_upvr (readonly)
		[7]: var137_upvw (read and write)
		[8]: ReturnToLobby_upvw (readonly)
		[9]: module_2_upvr (readonly)
		[10]: module_7_upvr (readonly)
		[11]: SendToWinners_upvr (readonly)
		[12]: tbl_4_upvr (readonly)
		[13]: CustomLevelLogic_2_upvr (readonly)
		[14]: module_10_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.Active then
		module_8_upvr.Deactivate(arg1)
	end
	if not arg1.IsCurrentLevel then
		warn(module_13_upvr.FormatOutput("Activating non-current LevelId '%s'", "LevelLogic", nil, arg1.Data.Id))
	end
	local _, _, any_AssertLoaded_result3_4 = module_5_upvr.AssertLoaded(arg1)
	module_5_upvr.Activate(arg1)
	arg1.Active = true
	arg1.Primed = true
	arg1.Started = false
	arg1.Finished = false
	for i_2_upvr, v_2 in any_AssertLoaded_result3_4.Checkpoints do
		module_upvr.ConnectTouched(v_2, function(arg1_6) -- Line 457
			--[[ Upvalues[3]:
				[1]: GetLoadedLevel_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: i_2_upvr (readonly)
			]]
			GetLoadedLevel_upvr(arg1_6, arg1, i_2_upvr)
		end, arg1.Objects.Connections.Checkpoint)
		local var124
	end
	for _, v_3 in any_AssertLoaded_result3_4.Triggers do
		local Name = v_3.Name
		local var131 = ({
			Dimension = function(arg1_7) -- Line 472
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: module_4_upvr (copied, readonly)
					[3]: var137_upvw (copied, read and write)
				]]
				local var127 = arg1
				if var127.Active then
					if not var127.Primed then return end
					if module_4_upvr.LocalPlayerTouched(arg1_7) then
						var137_upvw(var127)
					end
				end
			end;
			Lobby = ReturnToLobby_upvw;
			Speed = function(arg1_8) -- Line 476
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: module_4_upvr (copied, readonly)
					[3]: module_upvr (copied, readonly)
					[4]: module_2_upvr (copied, readonly)
					[5]: module_7_upvr (copied, readonly)
				]]
				if module_4_upvr.LocalPlayerTouched(arg1_8) and module_4_upvr.LocalCharacterState then
					module_upvr.RunFunction(module_2_upvr.SetWalkSpeed, module_4_upvr.LocalCharacterState, module_7_upvr.LevelGetWalkSpeed(arg1.Data), true)
				end
			end;
			Winners = SendToWinners_upvr;
		})[Name]
		if var131 then
			module_upvr.ConnectTouched(v_3, var131, var124.TriggerActive)
			if ({
				Dimension = true;
			})[Name] then
				local descendants_2 = v_3:GetDescendants()
				descendants_2[#descendants_2 + 1] = v_3
				for _, v_4 in descendants_2 do
					if v_4:IsA("BasePart") then
						v_4.Transparency = 1
						v_4.CanCollide = false
						v_4.CanTouch = true
						v_4.CanQuery = false
					end
				end
			end
		end
	end
	if arg1.Objects.GatePopupState then
		tbl_4_upvr.ActiveGatePopupStates[#tbl_4_upvr.ActiveGatePopupStates + 1] = arg1.Objects.GatePopupState
	end
	local var133 = CustomLevelLogic_2_upvr.LevelMethods_ById[arg1.Data.Id]
	if var133 and var133.Activate then
		var133.Activate(arg1)
	end
	module_10_upvr.ActivateLevel(arg1)
end
local function _(arg1) -- Line 539, Named "PerformLevelStartLogic"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: module_10_upvr (readonly)
	]]
	if not module_4_upvr.OnboardingComplete() then
	else
		module_10_upvr.StartLevel(arg1)
	end
end
function var134_upvw(arg1, arg2) -- Line 548
	--[[ Upvalues[8]:
		[1]: module_4_upvr (readonly)
		[2]: CustomLevelLogic_2_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_7_upvr (readonly)
		[6]: module_10_upvr (readonly)
		[7]: Level_upvr (readonly)
		[8]: module_13_upvr (readonly)
	]]
	if arg1.Active then
		local var136
		if not var136 then
			var136 = false
			arg1.Finished = var136
			var136 = true
			arg1.Started = var136
			var136 = arg2
			if not var136 then
				var136 = module_4_upvr.Now
			end
			arg1.StartedAt = var136
			var136 = CustomLevelLogic_2_upvr.LevelMethods_ById[arg1.Data.Id]
			if var136 and var136.Start then
				var136.Start(arg1)
			end
			if module_4_upvr.LocalCharacterState then
				module_upvr.RunFunction(module_2_upvr.SetWalkSpeed, module_4_upvr.LocalCharacterState, module_7_upvr.LevelGetWalkSpeed(arg1.Data), true)
			end
			if not module_4_upvr.OnboardingComplete() then
			else
				module_10_upvr.StartLevel(arg1)
			end
			module_4_upvr.Signals.LevelStarted:Fire(arg1.Data, arg1.StartedAt)
			if arg2 == nil then
				Level_upvr:FireServer(module_13_upvr.LevelRequestType.LevelStart, arg1.Data.Id, module_4_upvr.Now)
			end
		end
	end
end
function var137_upvw(arg1) -- Line 594
	--[[ Upvalues[5]:
		[1]: CustomLevelLogic_2_upvr (readonly)
		[2]: module_10_upvr (readonly)
		[3]: Level_upvr (readonly)
		[4]: module_13_upvr (readonly)
		[5]: module_4_upvr (readonly)
	]]
	if arg1.Active then
		if arg1.Primed then
			arg1.Primed = false
			local var138 = CustomLevelLogic_2_upvr.LevelMethods_ById[arg1.Data.Id]
			if var138 and var138.Trigger then
				var138.Trigger(arg1)
			end
			module_10_upvr.TriggerLevel(arg1)
			Level_upvr:FireServer(module_13_upvr.LevelRequestType.LevelTrigger, arg1.Data.Id, module_4_upvr.Now)
		end
	end
end
function var139_upvw(arg1, arg2, arg3) -- Line 621
	--[[ Upvalues[9]:
		[1]: module_4_upvr (readonly)
		[2]: CustomLevelLogic_2_upvr (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: module_7_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: Level_upvr (readonly)
		[7]: module_13_upvr (readonly)
		[8]: ExplainLevelLock_upvr (readonly)
		[9]: module_8_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	local Finished = arg1.Finished
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [87] 58. Error Block 50 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [87.5]
	local var151 = arg3 or nil
	local var152 = CustomLevelLogic_2_upvr.LevelMethods_ById[arg1.Data.Id]
	local var153
	if var152 and var152.End then
		local any_End_result1_2, any_End_result2 = var152.End(arg1, var151)
		var153 = any_End_result1_2
	end
	module_10_upvr.EndLevel(arg1)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [120.4]
	module_4_upvr.Signals.LevelEnded:Fire(arg1.Data, Finished, nil, var151)
	if var151 then
		arg1.Completed = true
		arg1.LevelEndAction = var153
		arg1.LevelEndSpawnPlayer = any_End_result2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			Level_upvr:FireServer(module_13_upvr.LevelRequestType.LevelEnd, arg1.Data.Id, module_4_upvr.Now)
			local any_SaveDataCreateLevelStats_result1_2 = module_13_upvr.SaveDataCreateLevelStats(module_4_upvr.LocalSaveData, arg1.Data.Id)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			any_SaveDataCreateLevelStats_result1_2.T = any_SaveDataCreateLevelStats_result1_2.T or nil
		end
	end
	-- KONSTANTERROR: [87] 58. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [166] 112. Error Block 51 start (CF ANALYSIS FAILED)
	if module_7_upvr.LevelUsesGatePopup(arg1.Data) and not module_4_upvr.Flags.AutoProgressLevels then
		arg1.LevelEndActionSuppress = true
	else
		arg1.LevelEndActionSuppress = nil
	end
	if not arg3 and arg1.Completed and arg1.LevelEndAction and not arg1.LevelEndActionSuppress then
		local LevelEndAction_2 = arg1.LevelEndAction
		local LevelEndSpawnPlayer_2 = arg1.LevelEndSpawnPlayer
		var153 = CustomLevelLogic_2_upvr.LevelEndAction
		if LevelEndAction_2 == var153.LoadNext then
			var153 = arg1.Data
			ExplainLevelLock_upvr(var153)
			var153 = module_8_upvr
			var153 = LevelEndSpawnPlayer_2
			var153.External_LoadNextLevel(var153)
			return
		end
		var153 = CustomLevelLogic_2_upvr.LevelEndAction
		if LevelEndAction_2 == var153.ReturnToLobby then
			var153 = module_4_upvr
			var153 = module_7_upvr.DefaultLevel
			var153.LocalPlayerStateCurrentLevelSet(var153, LevelEndSpawnPlayer_2)
		end
	end
	-- KONSTANTERROR: [166] 112. Error Block 51 end (CF ANALYSIS FAILED)
end
local var140_upvw = var139_upvw
function GetLoadedLevel_upvr(arg1, arg2) -- Line 731, Named "Deactivate"
	--[[ Upvalues[5]:
		[1]: var140_upvw (read and write)
		[2]: tbl_4_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: CustomLevelLogic_2_upvr (readonly)
		[5]: module_10_upvr (readonly)
	]]
	arg1.Completed = false
	arg1.LevelEndAction = nil
	arg1.LevelEndSpawnPlayer = nil
	var140_upvw(arg1)
	if arg1.Active then
		arg1.Active = false
		arg1.Finished = false
		arg1.Primed = false
		table.clear(arg1.CheckpointsHit)
		local Connections = arg1.Objects.Connections
		for _, v_5 in Connections.Checkpoint do
			v_5:Disconnect()
		end
		table.clear(Connections.Checkpoint)
		for i_6, v_6 in Connections.TriggerActive do
			v_6:Disconnect()
		end
		table.clear(Connections.TriggerActive)
		if arg1.Objects.GatePopupState then
			local GatePopupState_2 = arg1.Objects.GatePopupState
			i_6 = tbl_4_upvr
			i_6 = GatePopupState_2
			local table_find_result1 = table.find(i_6.ActiveGatePopupStates, i_6)
			if table_find_result1 then
				v_6 = tbl_4_upvr
				i_6 = v_6.ActiveGatePopupStates
				v_6 = table_find_result1
				table.remove(i_6, v_6)
			end
			i_6 = module_9_upvr
			i_6 = GatePopupState_2.LevelData
			v_6 = false
			i_6.RegisterLevelProximity(i_6, v_6)
		end
		i_6 = arg1.Data
		local var166 = CustomLevelLogic_2_upvr.LevelMethods_ById[i_6.Id]
		if var166 and var166.Deactivate then
			var166.Deactivate(arg1)
		end
		module_10_upvr.DeactivateLevel(arg1)
	end
end
module_8_upvr.Deactivate = GetLoadedLevel_upvr
function GetLoadedLevel_upvr(arg1) -- Line 795, Named "Unload"
	--[[ Upvalues[7]:
		[1]: module_8_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: CustomLevelLogic_2_upvr (readonly)
		[7]: module_10_upvr (readonly)
	]]
	module_8_upvr.Deactivate(arg1, true)
	if module_13_upvr.IsLoaded(arg1) then
		if arg1.Objects.GateLock then
			module_upvr_2.Destroy(arg1.Objects.GateLock)
			arg1.Objects.GateLock = nil
		end
		if arg1.Objects.GatePopupState then
			local GatePopupState = arg1.Objects.GatePopupState
			arg1.Objects.GatePopupState = nil
			if GatePopupState._DimensionConnection then
				GatePopupState._DimensionConnection:Disconnect()
				GatePopupState._DimensionConnection = nil
			end
		end
		if arg1.Objects.SellerNPC then
			module_upvr_3.Destroy(arg1.Objects.SellerNPC)
			arg1.Objects.SellerNPC = nil
		end
		tbl_4_upvr.RenderSteppedHandlers_ByLevel[arg1] = nil
		local var178 = CustomLevelLogic_2_upvr.LevelMethods_ById[arg1.Data.Id]
		if var178 and var178.Unload then
			var178.Unload(arg1)
		end
		for _, v_7 in arg1.Objects.Connections do
			for _, v_8 in v_7 do
				v_8:Disconnect()
			end
			table.clear(v_7)
		end
		module_13_upvr.UnloadObject(arg1)
		module_10_upvr.UnloadLevel(arg1)
	end
end
module_8_upvr.Unload = GetLoadedLevel_upvr
function GetLoadedLevel_upvr(arg1) -- Line 855, Named "GetLoadedLevel"
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_13_upvr (readonly)
	]]
	local var179
	if var179 and not module_13_upvr.IsLoaded(var179) then
		var179 = nil
	end
	return var179
end
function module_8_upvr.GetActiveSellerNPCs() -- Line 873
	--[[ Upvalues[1]:
		[1]: module_upvr_5 (readonly)
	]]
	local module_14 = {}
	for _, v_9 in module_upvr_5.Levels_ByLevelData do
		local SellerNPC = v_9.Objects.SellerNPC
		if SellerNPC and SellerNPC.Active then
			module_14[#module_14 + 1] = SellerNPC
		end
	end
	return module_14
end
function module_8_upvr.End(arg1, arg2) -- Line 890
	--[[ Upvalues[3]:
		[1]: module_upvr_5 (readonly)
		[2]: module_13_upvr (readonly)
		[3]: var140_upvw (read and write)
	]]
	local var184
	if var184 and not module_13_upvr.IsLoaded(var184) then
		var184 = nil
	end
	local var185 = var184
	if var185 then
		var184 = var140_upvw
		var184(var185, arg2, true)
	end
end
function module_8_upvr.Start(arg1, arg2) -- Line 902
	--[[ Upvalues[4]:
		[1]: module_upvr_5 (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: var134_upvw (read and write)
	]]
	local var188
	if var188 and not module_13_upvr.IsLoaded(var188) then
		var188 = nil
	end
	local var189 = var188
	if var189 then
		var188 = var189.Started
		if not var188 then
			var188 = module_8_upvr.Activate
			var188(var189)
			var188 = var134_upvw
			var188(var189, arg2)
		end
	end
end
function module_8_upvr.Trigger(arg1) -- Line 915
	--[[ Upvalues[3]:
		[1]: module_upvr_5 (readonly)
		[2]: module_13_upvr (readonly)
		[3]: var137_upvw (read and write)
	]]
	local var190
	if var190 and not module_13_upvr.IsLoaded(var190) then
		var190 = nil
	end
	local var191 = var190
	if var191 then
		var190 = var137_upvw
		var190(var191)
	end
end
local function RecheckLockedGates_upvr(arg1) -- Line 936, Named "RecheckLockedGates"
	--[[ Upvalues[4]:
		[1]: module_upvr_5 (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_upvr_2 (readonly)
	]]
	for _, v_10 in module_upvr_5.Levels_ByLevelData do
		local GateLock = v_10.Objects.GateLock
		if GateLock and not not module_7_upvr.LevelCanUse(GateLock.LockedLevelData, module_4_upvr.LocalSaveData) then
			if arg1 then
				module_upvr_2.Unlock(GateLock)
			else
				module_upvr_2.Destroy(GateLock)
				v_10.Objects.GateLock = nil
			end
			module_4_upvr.Flags.AttemptPreloadLevel = true
		end
	end
end
SendToWinners_upvr = module_4_upvr.Flags
ReturnToLobby_upvw = SendToWinners_upvr.LocalSaveDataLoaded
if not ReturnToLobby_upvw then
	ReturnToLobby_upvw = nil
	SendToWinners_upvr = module_4_upvr.Signals.SaveDataLoaded
	SendToWinners_upvr = SendToWinners_upvr:Connect(function(arg1) -- Line 959
		--[[ Upvalues[2]:
			[1]: ReturnToLobby_upvw (read and write)
			[2]: RecheckLockedGates_upvr (readonly)
		]]
		if ReturnToLobby_upvw.Connected then
			ReturnToLobby_upvw:Disconnect()
			RecheckLockedGates_upvr(false)
		end
	end)
	ReturnToLobby_upvw = SendToWinners_upvr
end
module_4_upvr.Signals.InventoryOwnedAdded:Connect(function(arg1) -- Line 971
	--[[ Upvalues[2]:
		[1]: module_13_upvr (readonly)
		[2]: RecheckLockedGates_upvr (readonly)
	]]
	if arg1 == module_13_upvr.ItemType.Level then
		RecheckLockedGates_upvr(true)
	end
end)
local tbl_5_upvr = {
	[module_13_upvr.CounterType.ForbiddenLevels] = true;
	[module_13_upvr.CounterType.MainLevels] = true;
	[module_13_upvr.CounterType.SecretLevels] = true;
}
module_4_upvr.Signals.CounterChanged:Connect(function(arg1) -- Line 983
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: RecheckLockedGates_upvr (readonly)
	]]
	if tbl_5_upvr[arg1] then
		RecheckLockedGates_upvr(true)
	end
end)
for _, v_11 in CustomLevelLogic:GetChildren() do
	if v_11:IsA("ModuleScript") then
	end
end
for _, v_12 in {"FD1", "Rel15"} do
	local var203 = CustomLevelLogic_2_upvr.LevelMethods_ById[v_12]
	if not var203 then
		var203 = {}
		CustomLevelLogic_2_upvr.LevelMethods_ById[v_12] = var203
	end
	if not var203.End then
		function var203.End() -- Line 1017, Named "GenericPostLevelHandler"
			--[[ Upvalues[1]:
				[1]: CustomLevelLogic_2_upvr (readonly)
			]]
			return CustomLevelLogic_2_upvr.LevelEndAction.None, false
		end
	else
		warn(module_13_upvr.FormatOutput("Level '%s' already has custom level end logic", "LevelLogic", nil, v_12))
	end
end
if not module_4_upvr.OnboardingComplete() then
	local var205_upvw
	local module_12_upvr = require(Modules:WaitForChild("Tutorials"))
	var205_upvw = module_4_upvr.Signals.LocalTutorialProgressed:Connect(function(arg1, arg2) -- Line 1045
		--[[ Upvalues[5]:
			[1]: var205_upvw (read and write)
			[2]: module_12_upvr (readonly)
			[3]: module_4_upvr (readonly)
			[4]: module_upvr_5 (readonly)
			[5]: module_10_upvr (readonly)
		]]
		if var205_upvw.Connected and arg2 and arg1.Type == module_12_upvr.TutorialType.Onboarding and module_4_upvr.OnboardingComplete() then
			var205_upvw:Disconnect()
			module_4_upvr.Flags.AttemptPreloadLevel = true
			for _, v_13 in module_upvr_5.Levels_ByLevelData do
				if v_13.Started then
					if not module_4_upvr.OnboardingComplete() then
					else
						module_10_upvr.StartLevel(v_13)
					end
				end
			end
		end
	end)
end
RecheckLockedGates_upvr = nil
local var209_upvw = RecheckLockedGates_upvr
tbl_5_upvr = {}
local var210_upvr = tbl_5_upvr
var210_upvr.DrawAsset = nil
var210_upvr.DrawModel = nil
var210_upvr.DrawPending = false
local function _() -- Line 1082, Named "ClearCellDrawing"
	--[[ Upvalues[1]:
		[1]: var210_upvr (readonly)
	]]
	if var210_upvr.DrawModel then
		task.defer(var210_upvr.DrawModel.Destroy, var210_upvr.DrawModel)
		var210_upvr.DrawModel = nil
	end
	var210_upvr.DrawAsset = nil
end
local var29_2_upvr = require(OpenSpaceHandler)
local module_11_upvr = require(OpenSpaceHandler:WaitForChild("SpaceMapper"))
local function ProcessDebugInput_upvr(arg1) -- Line 1096, Named "ProcessDebugInput"
	--[[ Upvalues[11]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: var210_upvr (readonly)
		[4]: module_upvr_5 (readonly)
		[5]: module_13_upvr (readonly)
		[6]: module_5_upvr (readonly)
		[7]: module_10_upvr (readonly)
		[8]: var29_2_upvr (readonly)
		[9]: module_11_upvr (readonly)
		[10]: module_upvr (readonly)
		[11]: module_upvr_6 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 2 start (CF ANALYSIS FAILED)
	tbl_4_upvr.DebugEnabled = not tbl_4_upvr.DebugEnabled
	do
		return
	end
	-- KONSTANTERROR: [6] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 10. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 10. Error Block 3 end (CF ANALYSIS FAILED)
end
local function _() -- Line 1210, Named "SetDebugOptionsEnabled"
	--[[ Upvalues[5]:
		[1]: module_4_upvr (readonly)
		[2]: var209_upvw (read and write)
		[3]: UserInputService_upvr (readonly)
		[4]: ProcessDebugInput_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
	var209_upvw = UserInputService_upvr.InputBegan:Connect(ProcessDebugInput_upvr)
	do
		return
	end
	-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 9 start (CF ANALYSIS FAILED)
	if var209_upvw then
		var209_upvw:Disconnect()
		var209_upvw = nil
	end
	tbl_4_upvr.DebugEnabled = false
	-- KONSTANTERROR: [19] 15. Error Block 9 end (CF ANALYSIS FAILED)
end
module_4_upvr.Signals.PlayerIdentityChanged:Connect(function(arg1) -- Line 1227
	--[[ Upvalues[5]:
		[1]: module_4_upvr (readonly)
		[2]: var209_upvw (read and write)
		[3]: UserInputService_upvr (readonly)
		[4]: ProcessDebugInput_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 9. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 9. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 18. Error Block 10 start (CF ANALYSIS FAILED)
	if var209_upvw then
		var209_upvw:Disconnect()
		var209_upvw = nil
	end
	tbl_4_upvr.DebugEnabled = false
	-- KONSTANTERROR: [24] 18. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 28. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 28. Error Block 8 end (CF ANALYSIS FAILED)
end)
if module_4_upvr.LocalPlayerState.PlayerIdentity.IsAuthorizedUser then
	if not var209_upvw then
		var209_upvw = UserInputService_upvr.InputBegan:Connect(ProcessDebugInput_upvr)
		-- KONSTANTWARNING: GOTO [630] #489
	end
else
	if var209_upvw then
		var209_upvw:Disconnect()
		var209_upvw = nil
	end
	tbl_4_upvr.DebugEnabled = false
end
-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [630] 489. Error Block 23 start (CF ANALYSIS FAILED)
tbl_7_upvr.FrameProps = {
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	BackgroundTransparency = 0.5;
	BorderSizePixel = 0;
	Position = UDim2.fromOffset(10, 10);
}
tbl_7_upvr.TextProps = module_upvr.PropsMerge(module_upvr_6.Properties.Text, {
	Font = Enum.Font.SourceSans;
	TextColor3 = Color3.fromRGB(255, 255, 255);
	TextSize = 14;
	TextXAlignment = Enum.TextXAlignment.Right;
})
function tbl_7_upvr.Create() -- Line 1250
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: tbl_7_upvr (readonly)
	]]
	local module = {
		Data = {};
		Labels = {};
		ScreenGui = module_upvr.I("ScreenGui", module_upvr_6.Properties.ScreenGui_Legacy, {
			DisplayOrder = 2147483647;
			Parent = module_upvr_6.PlayerGui;
		});
		Frame = module_upvr.I("Frame", tbl_7_upvr.FrameProps, {
			Parent = module.ScreenGui;
		});
	}
	return module
end
function tbl_7_upvr.Destroy(arg1) -- Line 1271
	arg1.ScreenGui:Destroy()
end
function tbl_7_upvr.Update(arg1, arg2, arg3) -- Line 1276
	--[[ Upvalues[4]:
		[1]: module_upvr_5 (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	table.clear(arg1.Data)
	local var235 = module_upvr_5.Levels_ByLevelData[module_4_upvr.LocalCurrentLevel]
	local tbl_8 = {}
	local var237
	if var235 then
		var237 = var235.Data.Id
	else
		var237 = "N/A"
	end
	tbl_8[1] = "Level"
	tbl_8[2] = var237
	arg1.Data[#arg1.Data + 1] = tbl_8
	if var235 then
		local tbl_13 = {}
		var237 = tostring(var235.Active)
		tbl_13[1] = "Active"
		tbl_13[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl_13
		local tbl_12 = {}
		var237 = tostring(var235.IsCurrentLevel)
		tbl_12[1] = "Current"
		tbl_12[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl_12
		local tbl = {}
		var237 = tostring(var235.Primed)
		tbl[1] = "Primed"
		tbl[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl
		local tbl_2 = {}
		var237 = tostring(var235.Started)
		tbl_2[1] = "Started"
		tbl_2[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl_2
		local tbl_10 = {}
		var237 = tostring(var235.StartedAt)
		tbl_10[1] = "StartedAt"
		tbl_10[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl_10
		local tbl_15 = {}
		var237 = tostring(var235.Finished)
		tbl_15[1] = "Finished"
		tbl_15[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl_15
		local tbl_9 = {}
		var237 = tostring(var235.FinishedAt)
		tbl_9[1] = "FinishedAt"
		tbl_9[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl_9
		local tbl_3 = {}
		var237 = tostring(var235.Completed)
		tbl_3[1] = "Completed"
		tbl_3[2] = var237
		arg1.Data[#arg1.Data + 1] = tbl_3
		if next(var235.CheckpointsHit) ~= nil then
			local tbl_16 = {}
			for i_14 in var235.CheckpointsHit do
				tbl_16[#tbl_16 + 1] = i_14
			end
			table.sort(tbl_16)
			arg1.Data[#arg1.Data + 1] = {"Checkpoints", table.concat(tbl_16, ", ")}
		else
			arg1.Data[#arg1.Data + 1] = {"Checkpoints", "[none]"}
		end
	end
	if #arg1.Data == #arg1.Labels then
	else
	end
	if true then
		if #arg1.Labels < #arg1.Data then
			for i_15 = #arg1.Labels + 1, #arg1.Data do
				local clone = module_upvr.I("TextLabel", tbl_7_upvr.TextProps):Clone()
				local var250 = (i_15 - 1) * 18
				module_upvr.I("TextLabel", tbl_7_upvr.TextProps).Position = UDim2.fromOffset(0, var250)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module_upvr.I("TextLabel", tbl_7_upvr.TextProps).Size = UDim2.fromOffset(80, 18)
				clone.Position = UDim2.fromOffset(90, var250)
				clone.Size = UDim2.fromOffset(150, 18)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module_upvr.I("TextLabel", tbl_7_upvr.TextProps).Parent = arg1.Frame
				clone.Parent = arg1.Frame
				local tbl_11 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_11[1] = module_upvr.I("TextLabel", tbl_7_upvr.TextProps)
				tbl_11[2] = clone
				arg1.Labels[i_15] = tbl_11
			end
			arg1.Frame.Size = UDim2.fromOffset(250, #arg1.Data * 18)
			-- KONSTANTWARNING: GOTO [356] #247
		end
		-- KONSTANTWARNING: GOTO [318] #219
	end
	for i_16, v_14 in arg1.Data do
		local var252 = arg1.Labels[i_16]
		var252[1].Text = v_14[1]
		var252[2].Text = v_14[2]
	end
end
local function _(arg1, arg2) -- Line 1379, Named "GatePopupStateSetEngaged"
	--[[ Upvalues[1]:
		[1]: module_9_upvr (readonly)
	]]
	if arg1.Engaged ~= arg2 then
		arg1.Engaged = arg2
		module_9_upvr.RegisterLevelProximity(arg1.LevelData, arg2)
	end
end
local module_6_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
function module_8_upvr.PostSimulation(arg1, arg2) -- Line 1391
	--[[ Upvalues[5]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_6_upvr (readonly)
		[5]: module_9_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFH_LevelLogic")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 55. Error Block 26 start (CF ANALYSIS FAILED)
	debug.profileend()
	-- KONSTANTERROR: [77] 55. Error Block 26 end (CF ANALYSIS FAILED)
end
function module_8_upvr.RenderStepped(arg1, arg2) -- Line 1424
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFR_LevelLogic")
	for i_17, v_15 in tbl_4_upvr.RenderSteppedHandlers_ByLevel do
		if i_17.AssetState.Active then
			v_15(i_17, arg1, arg2)
		end
	end
	if tbl_4_upvr.DebugEnabled then
		if not tbl_4_upvr.DebugUI then
			tbl_4_upvr.DebugUI = tbl_7_upvr.Create()
		end
		if tbl_4_upvr.DebugUI then
			i_17 = arg2
			tbl_7_upvr.Update(tbl_4_upvr.DebugUI, arg1, i_17)
			-- KONSTANTWARNING: GOTO [66] #51
		end
	elseif tbl_4_upvr.DebugUI then
		tbl_7_upvr.Destroy(tbl_4_upvr.DebugUI)
		tbl_4_upvr.DebugUI = nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 51. Error Block 13 start (CF ANALYSIS FAILED)
	debug.profileend()
	-- KONSTANTERROR: [66] 51. Error Block 13 end (CF ANALYSIS FAILED)
end
do
	return module_8_upvr
end
-- KONSTANTERROR: [630] 489. Error Block 23 end (CF ANALYSIS FAILED)