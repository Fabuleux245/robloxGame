-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:32
-- Luau version 6, Types version 3
-- Time taken: 0.035911 seconds

local module_upvr_10 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local module_upvr_28 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_34 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_41 = require(Modules:WaitForChild("CharacterStateHandler"))
local module_upvr_9 = require(Modules:WaitForChild("CharacterVisibility"))
local module_upvr_12 = require(Modules:WaitForChild("ClientData"))
local module_upvr_14 = require(Modules:WaitForChild("LocalPlayerManager"))
local module_upvr_3 = require(Modules:WaitForChild("Worlds"))
module_upvr_10.PlayerState_ByPlayer = module_upvr_12.PlayerState_ByPlayer
module_upvr_10.PlayerState_ByUserId = module_upvr_12.PlayerState_ByUserId
local var46_upvw
local function CharacterAdded_Early_upvr(arg1, arg2, arg3) -- Line 58, Named "CharacterAdded_Early"
	--[[ Upvalues[6]:
		[1]: var46_upvw (read and write)
		[2]: module_upvr_41 (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: module_upvr_12 (readonly)
		[5]: module_upvr_14 (readonly)
		[6]: module_upvr_9 (readonly)
	]]
	local var18
	local CharacterState = arg1.CharacterState
	if CharacterState then
		if CharacterState.Character ~= arg3 then
			var46_upvw(arg1, arg2, CharacterState.Character)
		else
			var18 = CharacterState
		end
	end
	if not var18 then
		local any_Create_result1 = module_upvr_41.Create(arg2, arg3)
		arg1.CharacterState = any_Create_result1
		if arg2 == LocalPlayer_upvr then
			module_upvr_12.LocalCharacterState = any_Create_result1
			module_upvr_14.CharacterAdded(any_Create_result1)
		end
		module_upvr_9.CharacterAdded(any_Create_result1, arg1.VisibilityState)
		var18 = any_Create_result1
	end
	module_upvr_12.CharacterState_ByCharacter[arg3] = var18
	return var18
end
local module_upvr_11 = require(Modules:WaitForChild("Trails"))
local function PlayerAdded_upvr(arg1) -- Line 94, Named "PlayerAdded"
	--[[ Upvalues[6]:
		[1]: module_upvr_10 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_11 (readonly)
		[5]: module_upvr_12 (readonly)
		[6]: CharacterAdded_Early_upvr (readonly)
	]]
	assert(not module_upvr_10.PlayerState_ByPlayer[arg1], "Duplicate state")
	local any_PlayerStateCreate_result1 = module_upvr_28.PlayerStateCreate(arg1, {
		Initialized = false;
		CurrentLevel = module_upvr_3.DefaultLevel;
		CurrentLevelDirty = true;
		TrailStates = module_upvr_11.TrailStatesCreate();
		VisibilityState = module_upvr_12.VisibilityStateCreate();
	})
	module_upvr_12.Flags.CurrentLevelsDirty = true
	module_upvr_10.PlayerState_ByPlayer[arg1] = any_PlayerStateCreate_result1
	module_upvr_10.PlayerState_ByUserId[arg1.UserId] = any_PlayerStateCreate_result1
	if arg1.Character then
		CharacterAdded_Early_upvr(any_PlayerStateCreate_result1, arg1, arg1.Character)
	end
	return any_PlayerStateCreate_result1
end
Players_upvr.PlayerAdded:Connect(PlayerAdded_upvr)
for _, v in Players_upvr:GetPlayers() do
	PlayerAdded_upvr(v)
end
local var27 = module_upvr_12.PlayerState_ByPlayer[LocalPlayer_upvr]
module_upvr_12.LocalPlayerState = var27
module_upvr_12.LocalCarryState = var27.CarryState
module_upvr_12.LocalPetState = var27.PetState
module_upvr_12.LocalPlayerIdentity = var27.PlayerIdentity
module_upvr_12.LocalPolicyState = var27.PolicyState
module_upvr_12.LocalToolStates = var27.ToolStates
module_upvr_12.LocalTutorialState = var27.TutorialState
module_upvr_12.LocalVisibilityState = var27.VisibilityState
task.spawn(module_upvr_28.PlayerStateLoadPolicyState, var27)
local module_upvr_35 = require(Modules:WaitForChild("BUDGameClient"))
local module_upvr_40 = require(Modules:WaitForChild("BUPGameClient"))
local module_upvr_42 = require(Modules:WaitForChild("Dimensions"))
local module_upvr_8 = require(Modules:WaitForChild("ItemActionHandler"))
local module_upvr_18 = require(Modules:WaitForChild("ItemDataUtility"))
local module_upvr_2 = require(Modules:WaitForChild("PlayerInteract"))
local module_upvr_7 = require(Modules:WaitForChild("Products"))
local module_upvr_6 = require(Modules:WaitForChild("Quests"))
local module_upvr_4 = require(Modules:WaitForChild("Subscriptions"))
local module_upvr_30 = require(Modules:WaitForChild("TrailTracker"))
local LevelLoader = Modules:WaitForChild("LevelLoader")
local module_upvr_17 = require(LevelLoader:WaitForChild("DimensionManager"))
local module_upvr_38 = require(LevelLoader:WaitForChild("LevelLogic"))
local module_upvr_5 = require(LevelLoader:WaitForChild("PathChaserNPCManager"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_upvr_13 = require(UserInterface:WaitForChild("NotificationsUI"))
local module_upvr_33 = require(UserInterface:WaitForChild("PlayerListUI"))
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
function var46_upvw(arg1, arg2, arg3) -- Line 201
	--[[ Upvalues[11]:
		[1]: module_upvr_9 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_30 (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: module_upvr_26 (readonly)
		[6]: module_upvr_17 (readonly)
		[7]: module_upvr_14 (readonly)
		[8]: module_upvr_5 (readonly)
		[9]: module_upvr_19 (readonly)
		[10]: module_upvr_41 (readonly)
		[11]: module_upvr_12 (readonly)
	]]
	local CharacterState_2 = arg1.CharacterState
	if CharacterState_2 and CharacterState_2.Character == arg3 then
		module_upvr_9.CharacterRemoving(CharacterState_2)
		module_upvr_2.CharacterRemoving(CharacterState_2)
		module_upvr_30.CharacterRemoving(CharacterState_2)
		if arg2 == LocalPlayer_upvr then
			module_upvr_26.CharacterRemoving()
			module_upvr_17.CharacterRemoving(CharacterState_2)
			module_upvr_14.CharacterRemoving(CharacterState_2)
			module_upvr_5.CharacterRemoving(CharacterState_2)
		end
		module_upvr_19.PhysicsCharacterDestroy(CharacterState_2)
		module_upvr_41.Destroy(CharacterState_2, true)
		arg1.CharacterState = nil
		if module_upvr_12.LocalCharacterState == CharacterState_2 then
			module_upvr_12.LocalCharacterState = nil
		end
	end
	module_upvr_12.CharacterState_ByCharacter[arg3] = nil
end
local module_upvr_26 = require(Modules:WaitForChild("BUEGameClient"))
local module_upvr_19 = require(Modules:WaitForChild("PlayerPhysicsEngine"))
local var47_upvw = var46_upvw
local module_upvr_21 = require(ReplicatedStorage:WaitForChild("Settings"))
local module_upvr_15 = require(ReplicatedStorage:WaitForChild("BUA"))
local module_upvr = require(UserInterface:WaitForChild("FadeOutUI"))
local function CharacterStateInitialized_upvr(arg1) -- Line 235, Named "CharacterStateInitialized"
	--[[ Upvalues[10]:
		[1]: module_upvr_10 (readonly)
		[2]: module_upvr_40 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_30 (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: module_upvr_21 (readonly)
		[7]: module_upvr_15 (readonly)
		[8]: module_upvr_12 (readonly)
		[9]: module_upvr_17 (readonly)
		[10]: module_upvr (readonly)
	]]
	local var55 = module_upvr_10.PlayerState_ByPlayer[arg1.Player]
	if var55 then
		module_upvr_40.CharacterAdded(arg1)
		module_upvr_2.CharacterAdded(arg1)
		module_upvr_30.CharacterAdded(arg1)
		if var55.Player == LocalPlayer_upvr then
			if module_upvr_21.BUAEnabled then
				module_upvr_15.TriggerStableAd = true
			end
			module_upvr_12.Flags.LocalPlayerPendingTeleport = true
			module_upvr_17.CharacterAdded(arg1)
			module_upvr.FadeCancel()
		end
	end
end
local function CharacterAdded_upvr(arg1, arg2, arg3) -- Line 260, Named "CharacterAdded"
	--[[ Upvalues[2]:
		[1]: CharacterAdded_Early_upvr (readonly)
		[2]: CharacterStateInitialized_upvr (readonly)
	]]
	local CharacterAdded_Early_result1_3 = CharacterAdded_Early_upvr(arg1, arg2, arg3)
	local coroutine_create_result1_2 = coroutine.create(CharacterStateInitialized_upvr)
	if CharacterAdded_Early_result1_3.Initialized then
		task.spawn(coroutine_create_result1_2, CharacterAdded_Early_result1_3)
	else
		CharacterAdded_Early_result1_3._YieldedThreads[#CharacterAdded_Early_result1_3._YieldedThreads + 1] = coroutine_create_result1_2
	end
end
local function _(arg1, arg2) -- Line 280, Named "CurrentLevelSet"
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	if module_upvr_12.PlayerStateCurrentLevelSet(arg1, arg2) and arg1 == module_upvr_12.LocalPlayerState then
		module_upvr_12.Flags.LocalPlayerPendingTeleport = true
		module_upvr_12.Flags.TimerResetPending = true
	end
end
local module_upvr_32 = require(Modules:WaitForChild("Enemies"))
local function ProcessEnemyStateMessage_upvr(arg1, arg2) -- Line 298, Named "ProcessEnemyStateMessage"
	--[[ Upvalues[1]:
		[1]: module_upvr_32 (readonly)
	]]
	for i_2, v_2 in arg2.E do
		local var61 = module_upvr_32.Data_ById[i_2]
		if var61 then
			module_upvr_32.EnemyStateSetPoints(arg1.EnemyState, var61, v_2)
		end
	end
end
local function ProcessLeaderstatsChangedMessage_upvr(arg1, arg2) -- Line 316, Named "ProcessLeaderstatsChangedMessage"
	--[[ Upvalues[1]:
		[1]: module_upvr_33 (readonly)
	]]
	for i_3, v_3 in arg2.Le do
		local var64 = module_upvr_33.StatTypeMap[i_3]
		if var64 then
			module_upvr_33.SetStatValue(arg1.Player, var64, v_3)
		end
	end
end
local function _(arg1, arg2) -- Line 337, Named "ProcessPetStateMessage"
	local PetState_3 = arg1.PetState
	table.clear(PetState_3.Equipped)
	table.move(arg2.P, 1, #arg2.P, 1, PetState_3.Equipped)
	PetState_3.Dirty = true
end
local module_upvr_37 = require(Modules:WaitForChild("Tutorials"))
local module_upvr_25 = require(Modules:WaitForChild("TutorialTracker"))
local function ProcessTutorialStateMessage_upvr(arg1, arg2) -- Line 350, Named "ProcessTutorialStateMessage"
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr_37 (readonly)
		[3]: module_upvr_25 (readonly)
	]]
	local var72
	if arg1.Player == LocalPlayer_upvr then
		var72 = {}
	end
	for i_4, v_4 in arg2.Tu do
		local var73 = module_upvr_37.Data_ById[i_4]
		if var73 and var72 then
			var72[var73] = {v_4, module_upvr_37.TutorialStateSetProgress(arg1.TutorialState, var73, v_4)}
		end
	end
	if var72 then
		module_upvr_25.ProcessTutorialChanges(var72)
	end
end
local function PlayerAdded_FromMessage_upvr(arg1, arg2) -- Line 388, Named "PlayerAdded_FromMessage"
	--[[ Upvalues[14]:
		[1]: module_upvr_10 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: PlayerAdded_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: module_upvr_12 (readonly)
		[6]: ProcessEnemyStateMessage_upvr (readonly)
		[7]: ProcessTutorialStateMessage_upvr (readonly)
		[8]: CharacterAdded_Early_upvr (readonly)
		[9]: CharacterStateInitialized_upvr (readonly)
		[10]: var47_upvw (read and write)
		[11]: CharacterAdded_upvr (readonly)
		[12]: module_upvr_33 (readonly)
		[13]: ProcessLeaderstatsChangedMessage_upvr (readonly)
		[14]: module_upvr_30 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var152_upvw
	if not var152_upvw then
	else
		var152_upvw = module_upvr_10.PlayerState_ByPlayer[arg1]
		if not var152_upvw then
			warn(module_upvr_28.FormatOutput("Failed to generate PlayerState for player prior to receiving snapshot", "PlayerStateHandler", arg1))
			var152_upvw = PlayerAdded_upvr(arg1)
		end
		var152_upvw.Initialized = true
		var152_upvw.SessionStart = arg2.S
		for i_14 in var152_upvw.PlayerIdentity do
			if not arg2.I[i_14] then
				var152_upvw.PlayerIdentity[i_14] = nil
			end
		end
		for i_15 in arg2.I do
			if not var152_upvw.PlayerIdentity[i_15] then
				var152_upvw.PlayerIdentity[i_15] = true
			end
		end
		local var153 = var152_upvw
		if module_upvr_12.PlayerStateCurrentLevelSet(var153, module_upvr_3.Level_ById[arg2.L]) and var153 == module_upvr_12.LocalPlayerState then
			module_upvr_12.Flags.LocalPlayerPendingTeleport = true
			module_upvr_12.Flags.TimerResetPending = true
		end
		ProcessEnemyStateMessage_upvr(var152_upvw, arg2)
		local PetState_4 = var152_upvw.PetState
		table.clear(PetState_4.Equipped)
		table.move(arg2.P, 1, #arg2.P, 1, PetState_4.Equipped)
		PetState_4.Dirty = true
		ProcessTutorialStateMessage_upvr(var152_upvw, arg2)
		local CarryState = var152_upvw.CarryState
		CarryState.Dirty = true
		local C = arg2.C
		if type(C.C) == "number" then
			local var157 = module_upvr_12.PlayerState_ByUserId[C.C]
			local var158 = var157
			if var158 then
				var158 = var157.CarryState
			end
			CarryState.Carrier = var158
		elseif type(C.C) == "table" then
			for _, v_19 in C.C do
				local var159 = module_upvr_12.PlayerState_ByUserId[v_19]
				if var159 then
					CarryState.Carrying[#CarryState.Carrying + 1] = var159.CarryState
				end
			end
		end
		for i_16, v_14 in C.P do
			local var160 = module_upvr_12.PlayerState_ByUserId[v_14]
			if var160 then
				CarryState.Paired[#CarryState.Paired + 1] = var160.CarryState
			end
		end
		if var152_upvw.IsInGame then
			var152_upvw.CharacterConnections[#var152_upvw.CharacterConnections + 1] = arg1.CharacterAdded:Connect(function(arg1_4) -- Line 475
				--[[ Upvalues[4]:
					[1]: var152_upvw (read and write)
					[2]: arg1 (readonly)
					[3]: CharacterAdded_Early_upvr (copied, readonly)
					[4]: CharacterStateInitialized_upvr (copied, readonly)
				]]
				local CharacterAdded_Early_result1 = CharacterAdded_Early_upvr(var152_upvw, arg1, arg1_4)
				local coroutine_create_result1_3 = coroutine.create(CharacterStateInitialized_upvr)
				if CharacterAdded_Early_result1.Initialized then
					task.spawn(coroutine_create_result1_3, CharacterAdded_Early_result1)
				else
					CharacterAdded_Early_result1._YieldedThreads[#CharacterAdded_Early_result1._YieldedThreads + 1] = coroutine_create_result1_3
				end
			end)
			var152_upvw.CharacterConnections[#var152_upvw.CharacterConnections + 1] = arg1.CharacterRemoving:Connect(function(arg1_5) -- Line 478
				--[[ Upvalues[3]:
					[1]: var47_upvw (copied, read and write)
					[2]: var152_upvw (read and write)
					[3]: arg1 (readonly)
				]]
				var47_upvw(var152_upvw, arg1, arg1_5)
			end)
			if arg1.Character then
				task.spawn(CharacterAdded_upvr, var152_upvw, arg1, arg1.Character)
			end
		end
		module_upvr_33.PlayerAdded(var152_upvw)
		ProcessLeaderstatsChangedMessage_upvr(var152_upvw, arg2)
		for _, v_15 in arg2.T do
			v_14 = module_upvr_30
			i_16 = v_14.ProcessTrailSnapshot
			v_14 = var152_upvw
			i_16(v_14, v_15)
		end
		if true then
			module_upvr_12.Signals.PlayerIdentityChanged:Fire(var152_upvw)
		end
		module_upvr_12.Signals.PlayerStateInitialized:Fire(var152_upvw)
	end
end
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 505, Named "PlayerRemoving"
	--[[ Upvalues[8]:
		[1]: module_upvr_10 (readonly)
		[2]: var47_upvw (read and write)
		[3]: module_upvr_28 (readonly)
		[4]: module_upvr_35 (readonly)
		[5]: module_upvr_40 (readonly)
		[6]: module_upvr_8 (readonly)
		[7]: module_upvr_33 (readonly)
		[8]: module_upvr_12 (readonly)
	]]
	local UserId_2 = arg1.UserId
	local var166 = module_upvr_10.PlayerState_ByPlayer[arg1]
	if var166 then
		if arg1.Character then
			var47_upvw(var166, arg1, arg1.Character)
		end
		module_upvr_28.PlayerStateEndSession(var166)
		module_upvr_35.PlayerRemoving(arg1)
		module_upvr_40.PlayerRemoving(var166)
		module_upvr_8.PlayerRemoving(var166)
		module_upvr_33.PlayerRemoving(var166)
		module_upvr_10.PlayerState_ByPlayer[arg1] = nil
		module_upvr_10.PlayerState_ByUserId[UserId_2] = nil
	end
	module_upvr_12.CarryDistanceState.Carried[UserId_2] = nil
	module_upvr_12.CarryDistanceState.WasCarriedBy[UserId_2] = nil
end)
module_upvr_12.Signals.InventoryOwnedAdded:Connect(function(arg1, arg2) -- Line 537
	--[[ Upvalues[3]:
		[1]: module_upvr_18 (readonly)
		[2]: module_upvr_34 (readonly)
		[3]: module_upvr_13 (readonly)
	]]
	local var172 = module_upvr_18.ItemModule_ByItemType[arg1]
	local Proper = module_upvr_34.FrontEndNames.Items_ByItemType[arg1].Singular.Proper
	for _, v_5 in arg2 do
		module_upvr_13.Popup.Queue(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.Topbar, string.format("%s Unlocked: \"%s\"", Proper, var172.Data_ById[v_5].Name)))
	end
end)
local tbl_4_upvr = {
	[module_upvr_28.CounterType.ForbiddenLevels] = true;
	[module_upvr_28.CounterType.SecretLevels] = true;
}
module_upvr_12.Signals.CounterChanged:Connect(function(arg1, arg2, arg3) -- Line 563
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_upvr_34 (readonly)
		[3]: module_upvr_13 (readonly)
	]]
	if tbl_4_upvr[arg1] then
		local var176
		if arg3 == 1 then
			var176 = string.format("Unlocked new %s", module_upvr_34.FrontEndNames.Counter_ByCounterType[arg1].Singular.Proper)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var176 = string.format("Unlocked %i new %s", arg3, module_upvr_34.FrontEndNames.Counter_ByCounterType[arg1].Plural.Proper)
		end
		module_upvr_13.Popup.Queue(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.Topbar, var176))
	end
end)
tbl_4_upvr = {}
local ShowSessionNotification_upvr = tbl_4_upvr
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.CarryState] = function(arg1, arg2) -- Line 603
	--[[ Upvalues[2]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_28 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var179 = module_upvr_12.PlayerState_ByUserId[arg2.P]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 7 start (CF ANALYSIS FAILED)
	if not var179.IsInGame then
		-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [7] 6. Error Block 7 end (CF ANALYSIS FAILED)
end
local module_upvr_39 = require(Modules:WaitForChild("Dances"))
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.DanceChanged] = function(arg1, arg2) -- Line 620
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr_12 (readonly)
		[3]: module_upvr_39 (readonly)
	]]
	if arg1.Player == LocalPlayer_upvr then
		local D = arg2.D
		if module_upvr_12.DanceState.CurrentDanceId ~= D then
			module_upvr_12.DanceState.CurrentDanceId = D
			module_upvr_12.Signals.DanceChanged:Fire(module_upvr_39.Data_ById[D])
		end
	end
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.DimensionState] = function(arg1, arg2) -- Line 636
	--[[ Upvalues[2]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_42 (readonly)
	]]
	if module_upvr_12.LocalCarryState.Carrier and module_upvr_12.LocalCarryState.Carrier.PlayerState == arg1 then
		if not module_upvr_12.CarrierDimensionState then
			module_upvr_12.CarrierDimensionState = module_upvr_42.DimensionStateCreate()
		end
		if module_upvr_12.CarrierDimensionState then
			table.clear(module_upvr_12.CarrierDimensionState.Equipped_ById)
			for _, v_6 in arg2.D do
				module_upvr_12.CarrierDimensionState.Applied_ById[v_6] = true
			end
			module_upvr_12.CarrierDimensionState.Dirty = false
			module_upvr_12.CarrierDimensionState.Resolved = true
		end
	end
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.EnemyState] = function(arg1, arg2) -- Line 667
	--[[ Upvalues[1]:
		[1]: ProcessEnemyStateMessage_upvr (readonly)
	]]
	ProcessEnemyStateMessage_upvr(arg1, arg2)
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.LeaderstatsChanged] = function(arg1, arg2) -- Line 674
	--[[ Upvalues[1]:
		[1]: ProcessLeaderstatsChangedMessage_upvr (readonly)
	]]
	ProcessLeaderstatsChangedMessage_upvr(arg1, arg2)
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.LevelChanged] = function(arg1, arg2) -- Line 681
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_12 (readonly)
	]]
	if module_upvr_12.PlayerStateCurrentLevelSet(arg1, module_upvr_3.Level_ById[arg2.L]) and arg1 == module_upvr_12.LocalPlayerState then
		module_upvr_12.Flags.LocalPlayerPendingTeleport = true
		module_upvr_12.Flags.TimerResetPending = true
	end
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.MonetizationState] = function(arg1, arg2) -- Line 689
	--[[ Upvalues[3]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: module_upvr_28 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var241
	if arg1 == module_upvr_12.LocalPlayerState then
		var241 = module_upvr_12.LocalMonetizationState
	elseif module_upvr_8.GiftTarget and module_upvr_8.GiftTarget.PlayerState == arg1 then
		var241 = module_upvr_8.GiftTarget.MonetizationState
	end
	if not var241 then
	else
		if arg2.D then
			for i_18, v_16 in arg2.D do
				if module_upvr_28.MonetizationStateSetDurableState(var241, i_18, v_16) and true and v_16 == module_upvr_28.DurableStateType.Owned then
					module_upvr_12.Signals.DurableAdded:Fire(i_18)
				end
			end
		end
		if arg2.G then
			for i_19, v_17 in arg2.G do
				local assert_result1_2 = assert(tonumber(i_19))
				if module_upvr_28.MonetizationStateSetGamepassOwned(var241, assert_result1_2, v_17) then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if true and v_17 then
						module_upvr_12.Signals.GamepassAdded:Fire(assert_result1_2)
					end
				end
			end
		end
		if arg2.P then
			for i_20, v_18 in arg2.P do
				module_upvr_28.MonetizationStateSetProductEligibility(var241, assert(tonumber(i_20)), not v_18)
			end
		end
	end
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.PetState] = function(arg1, arg2) -- Line 761
	local PetState_2 = arg1.PetState
	table.clear(PetState_2.Equipped)
	table.move(arg2.P, 1, #arg2.P, 1, PetState_2.Equipped)
	PetState_2.Dirty = true
end
local module_upvr_36 = require(Modules:WaitForChild("NetworkRequestUtility"))
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.Response] = function(arg1, arg2) -- Line 768
	--[[ Upvalues[1]:
		[1]: module_upvr_36 (readonly)
	]]
	module_upvr_36.ProcessResponse(arg2)
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.TrailCreated] = function(arg1, arg2) -- Line 774
	--[[ Upvalues[1]:
		[1]: module_upvr_30 (readonly)
	]]
	module_upvr_30.ProcessTrailSnapshot(arg1, arg2)
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.TutorialState] = function(arg1, arg2) -- Line 780
	--[[ Upvalues[1]:
		[1]: ProcessTutorialStateMessage_upvr (readonly)
	]]
	ProcessTutorialStateMessage_upvr(arg1, arg2)
end
ShowSessionNotification_upvr[module_upvr_28.StateRequestType.VIPStatusChanged] = function(arg1, arg2) -- Line 787
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	local var250
	if arg2.V then
		var250 = true
	else
		var250 = nil
	end
	if arg1.PlayerIdentity.IsVIP ~= var250 then
		arg1.PlayerIdentity.IsVIP = arg2.V
		module_upvr_12.Signals.PlayerIdentityChanged:Fire(arg1)
	end
end
Remotes:WaitForChild("State").OnClientEvent:Connect(function(arg1) -- Line 801
	--[[ Upvalues[5]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: PlayerAdded_FromMessage_upvr (readonly)
		[4]: module_upvr_10 (readonly)
		[5]: ShowSessionNotification_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 42. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 42. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [53.6]
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
end)
function ShowSessionNotification_upvr(arg1) -- Line 839, Named "ProcessDataRequestSnapshot"
	--[[ Upvalues[3]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: module_upvr_6 (readonly)
	]]
	local _1 = arg1.Args[1]
	local _2 = arg1.Args[2]
	local _3 = arg1.Args[3]
	local LocalPlayerState = module_upvr_12.LocalPlayerState
	local PlayerData = LocalPlayerState.PlayerData
	if PlayerData.SaveLoadState == _1 then
		LocalPlayerState = false
	else
		LocalPlayerState = true
	end
	PlayerData.Data = _2
	PlayerData.SaveLoadState = _1
	local var257 = _2
	if not var257 then
		var257 = module_upvr_12.LocalSaveData
	end
	module_upvr_12.LocalSaveData = var257
	if _3 then
		module_upvr_12.LocalSaveVersion = _3
	end
	module_upvr_12.DimensionState.Dirty = true
	if LocalPlayerState then
		module_upvr_12.Signals.SaveLoadStateChanged:Fire(_1)
	end
	if module_upvr_12.Flags.LocalSaveDataLoaded then
		warn(module_upvr_28.FormatOutput("Received new SaveData after SaveData was already received"))
	end
	if _1 == module_upvr_28.SaveLoadState.Loaded and _2 then
		module_upvr_12.Flags.LocalSaveDataLoaded = true
		module_upvr_6.QuestStateSaveDataDeserialize(module_upvr_12.QuestState, _2, false)
		module_upvr_12.Signals.SaveDataLoaded:Fire(_2)
	end
end
local function _(arg1, arg2) -- Line 882, Named "ProcessProductCreditChange"
	--[[ Upvalues[2]:
		[1]: module_upvr_28 (readonly)
		[2]: module_upvr_12 (readonly)
	]]
	local any_SaveDataSetProductCredit_result1_3 = module_upvr_28.SaveDataSetProductCredit(module_upvr_12.LocalSaveData, arg1.ProductId, arg2)
	module_upvr_12.Signals.ProductCreditChanged:Fire(arg1, arg2, arg2 - any_SaveDataSetProductCredit_result1_3, any_SaveDataSetProductCredit_result1_3)
end
local tbl_upvr_2 = {
	[module_upvr_28.CurrencyType.MemePoints] = function(arg1, arg2) -- Line 897
		--[[ Upvalues[2]:
			[1]: module_upvr_28 (readonly)
			[2]: module_upvr_12 (readonly)
		]]
		local var261 = arg2 - module_upvr_28.SaveDataGetCurrency(arg1, module_upvr_28.CurrencyType.MemePoints)
		if 0 < var261 then
			local any_MemePointsAwardPoints_result1, any_MemePointsAwardPoints_result2 = module_upvr_28.MemePointsAwardPoints(arg1, var261)
			module_upvr_12.MemePointsRankupsLastAction = any_MemePointsAwardPoints_result1
			module_upvr_12.MemePointsRankCost = any_MemePointsAwardPoints_result2
		end
	end;
}
local tbl_upvr = {
	[module_upvr_28.DataRequestType.Counter] = function(arg1, arg2, arg3) -- Line 912
		--[[ Upvalues[2]:
			[1]: module_upvr_28 (readonly)
			[2]: module_upvr_12 (readonly)
		]]
		for i_7, v_7 in arg3 do
			local var268 = module_upvr_28.CounterTypeMap[i_7]
			if var268 then
				local var269 = arg2.Counters[var268]
				arg2.Counters[var268] = v_7
				module_upvr_12.Signals.CounterChanged:Fire(i_7, v_7, v_7 - var269, var269)
			else
				warn(module_upvr_28.FormatOutput("CounterType '%s' missing map key", "PlayerStateHandler", nil, i_7))
			end
		end
	end;
	[module_upvr_28.DataRequestType.Currency] = function(arg1, arg2, arg3) -- Line 942
		--[[ Upvalues[3]:
			[1]: module_upvr_28 (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: module_upvr_12 (readonly)
		]]
		for i_8, v_8 in arg3 do
			if module_upvr_28.CurrencyTypeMap[i_8] then
				local any_SaveDataGetCurrency_result1 = module_upvr_28.SaveDataGetCurrency(arg2, i_8)
				local var274 = tbl_upvr_2[i_8]
				if var274 then
					var274(arg2, v_8)
				end
				module_upvr_28.SaveDataSetCurrency(arg2, i_8, v_8)
				module_upvr_12.Signals.CurrencyChanged:Fire(i_8, v_8, v_8 - any_SaveDataGetCurrency_result1, any_SaveDataGetCurrency_result1)
			else
				warn(module_upvr_28.FormatOutput("CurrencyType '%s' missing map key", "PlayerStateHandler", nil, i_8))
			end
		end
	end;
	[module_upvr_28.DataRequestType.EnergyHighestMultiplier] = function(arg1, arg2, arg3) -- Line 976
		arg2.EnergyHighestMultiplier = arg3
	end;
	[module_upvr_28.DataRequestType.EquippedItems] = function(arg1, arg2, arg3, arg4) -- Line 989
		--[[ Upvalues[1]:
			[1]: module_upvr_8 (readonly)
		]]
		module_upvr_8.InventorySetEquipped(arg3, arg4)
	end;
	[module_upvr_28.DataRequestType.GroupRewardClaimed] = function(arg1, arg2, arg3) -- Line 998
		--[[ Upvalues[1]:
			[1]: module_upvr_12 (readonly)
		]]
		if not table.find(arg2.GroupRewardIds, arg3) then
			arg2.GroupRewardIds[#arg2.GroupRewardIds + 1] = arg3
			module_upvr_12.Signals.GroupRewardClaimed:Fire(arg3)
		end
	end;
	[module_upvr_28.DataRequestType.LevelEndUpdate] = function(arg1, arg2, arg3, arg4) -- Line 1011
		--[[ Upvalues[5]:
			[1]: module_upvr_3 (readonly)
			[2]: module_upvr_28 (readonly)
			[3]: module_upvr_12 (readonly)
			[4]: module_upvr_34 (readonly)
			[5]: module_upvr_13 (readonly)
		]]
		local var279 = module_upvr_3.Level_ById[arg3]
		local any_SaveDataCreateLevelStats_result1 = module_upvr_28.SaveDataCreateLevelStats(arg2, var279.Id)
		local LCT = arg4.LCT
		if not LCT then
			LCT = any_SaveDataCreateLevelStats_result1.CT
		end
		any_SaveDataCreateLevelStats_result1.CT = LCT
		LCT = arg4.LCV
		local var282 = LCT
		if not var282 then
			var282 = any_SaveDataCreateLevelStats_result1.CV
		end
		any_SaveDataCreateLevelStats_result1.CV = var282
		var282 = arg4.LTB
		local var283 = var282
		if not var283 then
			var283 = any_SaveDataCreateLevelStats_result1.TB
		end
		any_SaveDataCreateLevelStats_result1.TB = var283
		var283 = arg4.LT
		local var284 = var283
		if not var284 then
			var284 = any_SaveDataCreateLevelStats_result1.T
		end
		any_SaveDataCreateLevelStats_result1.T = var284
		var284 = arg4.LV
		local var285 = var284
		if not var285 then
			var285 = any_SaveDataCreateLevelStats_result1.V
		end
		any_SaveDataCreateLevelStats_result1.V = var285
		module_upvr_12.Signals.LevelStatsChanged:Fire(var279, any_SaveDataCreateLevelStats_result1)
		local E = arg4.E
		if E then
			module_upvr_12.LevelDataRecentEnergyRewards[var279] = E
			module_upvr_12.Signals.EnergyRewardReceived:Fire(E)
		end
		local G = arg4.G
		if G then
			local var288
			if G == 1 then
				var288 = module_upvr_34.FrontEndNames.Currency_ByCurrencyType[module_upvr_28.CurrencyType.Gems].Singular.Lower
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var288 = module_upvr_34.FrontEndNames.Currency_ByCurrencyType[module_upvr_28.CurrencyType.Gems].Plural.Lower
			end
			module_upvr_13.Popup.Queue(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.Topbar, string.format("You got %i %s for beating %s!", G, var288, module_upvr_3.LevelGetFormattedName(var279, module_upvr_3.FormattedNameType.Number))))
		end
	end;
	[module_upvr_28.DataRequestType.OwnedItemsAdd] = function(arg1, arg2, arg3, arg4) -- Line 1066
		--[[ Upvalues[1]:
			[1]: module_upvr_8 (readonly)
		]]
		module_upvr_8.InventoryAdd(arg3, arg4)
	end;
	[module_upvr_28.DataRequestType.OwnedItemsRemove] = function(arg1, arg2, arg3, arg4) -- Line 1075
		--[[ Upvalues[1]:
			[1]: module_upvr_8 (readonly)
		]]
		module_upvr_8.InventoryRemove(arg3, arg4)
	end;
}
local module_upvr_31 = require(Modules:WaitForChild("Pets"))
tbl_upvr[module_upvr_28.DataRequestType.PetStock] = function(arg1, arg2, arg3) -- Line 1084
	--[[ Upvalues[3]:
		[1]: module_upvr_31 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: module_upvr_12 (readonly)
	]]
	for i_9, v_9 in arg3 do
		local var295 = module_upvr_31.PetData_ById[i_9]
		if var295 then
			local any_SaveDataGetPetStockCount_result1 = module_upvr_28.SaveDataGetPetStockCount(arg2, i_9)
			module_upvr_28.SaveDataSetPetsStockCount(arg2, i_9, v_9)
			module_upvr_12.Signals.PetOwnedCountChanged:Fire(var295, v_9, v_9 - any_SaveDataGetPetStockCount_result1, any_SaveDataGetPetStockCount_result1)
		else
			warn(module_upvr_28.FormatOutput("Received invalid PetId '%*' for ownership update", "PlayerStateHandler", nil, i_9))
		end
	end
end
tbl_upvr[module_upvr_28.DataRequestType.Playtime] = function(arg1, arg2, arg3, arg4) -- Line 1111
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	arg2.Playtime = arg3
	module_upvr_12.PlaytimeUpdatedAt = arg4
end
tbl_upvr[module_upvr_28.DataRequestType.ProductCreditSpent] = function(arg1, arg2, arg3, arg4) -- Line 1121
	--[[ Upvalues[3]:
		[1]: module_upvr_7 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: module_upvr_12 (readonly)
	]]
	local var299 = module_upvr_7.Data_ById[arg3]
	if var299 then
		local any_SaveDataSetProductCredit_result1_2 = module_upvr_28.SaveDataSetProductCredit(module_upvr_12.LocalSaveData, var299.ProductId, arg4)
		module_upvr_12.Signals.ProductCreditChanged:Fire(var299, arg4, arg4 - any_SaveDataSetProductCredit_result1_2, any_SaveDataSetProductCredit_result1_2)
	end
end
tbl_upvr[module_upvr_28.DataRequestType.ProductPurchased] = function(arg1, arg2, arg3, arg4) -- Line 1133
	--[[ Upvalues[3]:
		[1]: module_upvr_7 (readonly)
		[2]: module_upvr_12 (readonly)
		[3]: module_upvr_28 (readonly)
	]]
	local var302 = module_upvr_7.Data_ById[arg3]
	local var303
	if var302 then
		if arg4 == nil then
			var303 = false
		else
			var303 = true
		end
		module_upvr_12.Signals.ProductPurchased:Fire(var302, var303)
		if arg4 then
			var303 = arg4
			local any_SaveDataSetProductCredit_result1 = module_upvr_28.SaveDataSetProductCredit(module_upvr_12.LocalSaveData, var302.ProductId, var303)
			var303 = module_upvr_12.Signals
			var303.ProductCreditChanged:Fire(var302, arg4, arg4 - any_SaveDataSetProductCredit_result1, any_SaveDataSetProductCredit_result1)
		end
	end
end
tbl_upvr[module_upvr_28.DataRequestType.QuestCompletionCount] = function(arg1, arg2, arg3, arg4) -- Line 1150
	arg2.Quests.Completed[arg3] = arg4
end
tbl_upvr[module_upvr_28.DataRequestType.Star] = function(arg1, arg2, arg3, arg4) -- Line 1159
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_12 (readonly)
		[3]: module_upvr_28 (readonly)
	]]
	local var307 = module_upvr_3.Level_ById[arg3]
	module_upvr_3.StarAddToSaveData(var307, arg4, arg2)
	module_upvr_12.Signals.StarsChanged:Fire(var307)
	module_upvr_12.Signals.LevelStatsChanged:Fire(var307, assert(module_upvr_28.SaveDataGetLevelStats(arg2, arg3)))
end
local module_upvr_27 = require(UserInterface:WaitForChild("IconTextPopupUI"))
tbl_upvr[module_upvr_28.DataRequestType.WorldEndUpdate] = function(arg1, arg2, arg3, arg4) -- Line 1173
	--[[ Upvalues[5]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: module_upvr_12 (readonly)
		[4]: module_upvr_27 (readonly)
		[5]: module_upvr_34 (readonly)
	]]
	local var310 = module_upvr_3.Data_ById[arg3]
	local any_SaveDataCreateWorldStats_result1 = module_upvr_28.SaveDataCreateWorldStats(arg2, var310.Id)
	local WCT = arg4.WCT
	if not WCT then
		WCT = any_SaveDataCreateWorldStats_result1.CT
	end
	any_SaveDataCreateWorldStats_result1.CT = WCT
	WCT = arg4.WCV
	local var313 = WCT
	if not var313 then
		var313 = any_SaveDataCreateWorldStats_result1.CV
	end
	any_SaveDataCreateWorldStats_result1.CV = var313
	var313 = arg4.WTB
	local var314 = var313
	if not var314 then
		var314 = any_SaveDataCreateWorldStats_result1.TB
	end
	any_SaveDataCreateWorldStats_result1.TB = var314
	module_upvr_12.WorldDataPendingProgressConsumption[#module_upvr_12.WorldDataPendingProgressConsumption + 1] = var310
	if module_upvr_3.WorldAwardsRandomWorldOnCompletion(var310) then
		local WU = arg4.WU
		local tbl = {
			Font = module_upvr_34.FontFaceNormal;
			Text = "";
			TextColor = module_upvr_34.TextColor1;
		}
		if WU then
			tbl.Text = "You completed every level in this world! You ".."gained the world \""..module_upvr_3.Data_ById[WU].Name.."\" as a reward! If you want to unlock more worlds, ".."you can do it again!"
			tbl.Image = module_upvr_34.Checkbox_Filled
			tbl.ImageColor = module_upvr_34.CheckmarkColor2
		else
			tbl.Text = "You have collected all of the worlds.\n".."More will be added very soon! Check back again!"
		end
		module_upvr_27.Popup.Add(module_upvr_27.PopupQueue.Fetch(module_upvr_27.PopupQueueType.ScreenGui), tbl, 8)
	end
	module_upvr_12.Signals.WorldStatsChanged:Fire(var310, any_SaveDataCreateWorldStats_result1)
end
Remotes:WaitForChild("Data").OnClientEvent:Connect(function(arg1) -- Line 1259
	--[[ Upvalues[4]:
		[1]: module_upvr_28 (readonly)
		[2]: ShowSessionNotification_upvr (readonly)
		[3]: module_upvr_12 (readonly)
		[4]: tbl_upvr (readonly)
	]]
	for _, v_10 in arg1 do
		if v_10.R == module_upvr_28.DataRequestType.Snapshot then
			ShowSessionNotification_upvr(v_10)
		else
			local any_PlayerStateGetSaveData_result1 = module_upvr_28.PlayerStateGetSaveData(module_upvr_12.LocalPlayerState)
			if any_PlayerStateGetSaveData_result1 then
				tbl_upvr[v_10.R](module_upvr_12.LocalPlayerState, any_PlayerStateGetSaveData_result1, table.unpack(v_10.Args))
			else
				warn(module_upvr_28.FormatOutput("Received data message (type '%s') before snapshot", "PlayerStateHandler", nil, v_10.R))
			end
		end
	end
end)
function ShowSessionNotification_upvr(arg1, arg2) -- Line 1294, Named "ShowSessionNotification"
	--[[ Upvalues[5]:
		[1]: module_upvr_12 (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_34 (readonly)
		[5]: module_upvr_13 (readonly)
	]]
	task.wait(3)
	while module_upvr_12.Flags.LoadingScreenActive do
		task.wait()
	end
	local tbl_3 = {string.format("Welcome back, %s!", LocalPlayer_upvr.DisplayName)}
	if arg2 then
		local var325 = module_upvr_3.Level_ById[arg2]
		if var325 then
			tbl_3[#tbl_3 + 1] = string.format("You are on %s.", module_upvr_3.LevelGetFormattedName(var325, module_upvr_3.FormattedNameType.Index))
		end
	end
	module_upvr_13.Popup.PurgeQueue(module_upvr_13.Popup.Type.Timed, true)
	module_upvr_13.Popup.PurgeQueue(module_upvr_13.Popup.Type.FullScreenText, false)
	module_upvr_13.Popup.PurgeQueue(module_upvr_13.Popup.Type.Topbar, true)
	module_upvr_13.Popup.Queue(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.UpperScreenText, table.concat(tbl_3, '\n'), {
		Color = module_upvr_34.TextColor1;
		Font = module_upvr_34.FontFaceNormal;
		TextScale = 1 / #tbl_3 + 1;
	}, #tbl_3 * 2.5 + 3))
end
function tbl_upvr(arg1) -- Line 1353
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	module_upvr_12.Signals.PlayerIdentityChanged:Fire(arg1)
end
module_upvr_4.LegacyVIPStatusChanged:Connect(tbl_upvr)
local tbl_2_upvr = {}
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.CarryDistance
function tbl_upvr(arg1, arg2) -- Line 1358
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	module_upvr_12.Flags.CarryDistanceDirty = true
	for _, v_11 in arg2 do
		module_upvr_12.CarryDistanceSet(v_11[1], v_11[2], v_11[3])
	end
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.CarryRequest
function tbl_upvr(arg1, arg2, arg3, arg4) -- Line 1373
	--[[ Upvalues[3]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var338 = module_upvr_12.PlayerState_ByUserId[arg2]
	local var339 = module_upvr_12.PlayerState_ByUserId[arg3]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 30. Error Block 12 start (CF ANALYSIS FAILED)
	local any_CarryStateCancelRequest_result1 = module_upvr_28.CarryStateCancelRequest(var338.CarryState, var339.CarryState)
	if any_CarryStateCancelRequest_result1 then
		local CarryRequestsPendingDisplay = module_upvr_2.CarryRequestsPendingDisplay
		local table_find_result1 = table.find(CarryRequestsPendingDisplay, any_CarryStateCancelRequest_result1)
		if table_find_result1 then
			table.remove(CarryRequestsPendingDisplay, table_find_result1)
		end
	end
	-- KONSTANTERROR: [38] 30. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 47. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 47. Error Block 10 end (CF ANALYSIS FAILED)
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.CharacterCaptured
function tbl_upvr(arg1) -- Line 1426
	--[[ Upvalues[1]:
		[1]: module_upvr_5 (readonly)
	]]
	module_upvr_5.Capture()
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.DonationNotification
function tbl_upvr(arg1, arg2) -- Line 1432
	--[[ Upvalues[1]:
		[1]: module_upvr_35 (readonly)
	]]
	module_upvr_35.ReceiveNotification(arg2)
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.DonationState
function tbl_upvr(arg1, arg2, arg3, arg4) -- Line 1438
	--[[ Upvalues[2]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_35 (readonly)
	]]
	local var346 = module_upvr_12.PlayerState_ByUserId[arg2]
	if var346 and var346.IsInGame then
		module_upvr_35.DonationStateUpdate(var346.Player, arg3, arg4)
	end
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.EnemyClaimIds
local module_upvr_29 = require(Modules:WaitForChild("EnemyTracker"))
function tbl_upvr(arg1, arg2) -- Line 1450
	--[[ Upvalues[1]:
		[1]: module_upvr_29 (readonly)
	]]
	module_upvr_29.ClaimIdsProcess(arg2)
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.GetSpaceMap
local module_upvr_24 = require(Modules:WaitForChild("LevelAssets"))
local module_upvr_16 = require(LevelLoader:WaitForChild("OpenSpaceHandler"))
function tbl_upvr(arg1, arg2, arg3) -- Line 1457
	--[[ Upvalues[2]:
		[1]: module_upvr_24 (readonly)
		[2]: module_upvr_16 (readonly)
	]]
	local var352 = module_upvr_24.Data_ById[arg2]
	if var352 then
		module_upvr_16.OpenSpaceMapImport(var352, arg3)
	end
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.GiftSent
local module_upvr_23 = require(Modules:WaitForChild("Utility"))
local module_upvr_22 = require(Modules:WaitForChild("UsernameStateHandler"))
function tbl_upvr(arg1, arg2, arg3, arg4, ...) -- Line 1469
	--[[ Upvalues[7]:
		[1]: module_upvr_7 (readonly)
		[2]: module_upvr_28 (readonly)
		[3]: module_upvr_34 (readonly)
		[4]: module_upvr_23 (readonly)
		[5]: module_upvr_18 (readonly)
		[6]: module_upvr_22 (readonly)
		[7]: module_upvr_13 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
	local UserId = arg1.UserId
	local var357
	if UserId ~= arg3 then
		var357 = false
	else
		var357 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [182] 123. Error Block 73 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [182.6]
	if not nil then
		local Data = UserId.Data
		if UserId.Type == module_upvr_7.ProductType.GiftGamepass then
			Data = "the \"%s\" Gamepass"
		else
			Data = "a \"%s\" boost"
		end
	end
	local var359 = module_upvr_22
	if var357 then
		var359 = arg4
	else
		var359 = arg3
	end
	local any_Fetch_result1 = var359.Fetch(var359)
	if not any_Fetch_result1.IsAvailable then
		local current_thread_upvr = coroutine.running()
		coroutine.yield()
		any_Fetch_result1.Changed:Connect(function() -- Line 1580
			--[[ Upvalues[1]:
				[1]: current_thread_upvr (readonly)
			]]
			if coroutine.status(current_thread_upvr) == "suspended" then
				task.spawn(current_thread_upvr)
			end
		end):Disconnect()
	end
	current_thread_upvr = module_upvr_22.Read(any_Fetch_result1, true)
	local var363 = current_thread_upvr
	if var357 then
		var363 = "%s has received your gift of %s!"
	else
		var363 = "%s has gifted you %s!"
	end
	module_upvr_13.Popup.Queue(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.Topbar, string.format(var363, var363, string.format(Data, module_upvr_18.GetProductInfo(Data).Name)), {
		Font = module_upvr_34.FontFaceBoldItalic;
		Color = module_upvr_34.TextSuccessColor1;
	}))
	do
		return
	end
	-- KONSTANTERROR: [182] 123. Error Block 73 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [286] 199. Error Block 50 start (CF ANALYSIS FAILED)
	if var357 then
		module_upvr_13.Popup.Queue(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.Timed, "Your gift was unable to be delivered at this time.\n".."You have received credit for the transaction and can try sending it again later.", {
			Font = module_upvr_34.FontFaceNormal;
			Color = module_upvr_34.TextColor1;
		}, module_upvr_13.Popup.DefaultTimes_ByType[module_upvr_13.Popup.Type.Timed].Display * 2))
	end
	-- KONSTANTERROR: [286] 199. Error Block 50 end (CF ANALYSIS FAILED)
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.LegacyVIPPrompt
local module_upvr_20 = require(UserInterface:WaitForChild("LegacyVIPUI"))
function tbl_upvr(arg1) -- Line 1633
	--[[ Upvalues[1]:
		[1]: module_upvr_20 (readonly)
	]]
	module_upvr_20.DisplayLegacyVIPPrompt()
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.LuckState
function tbl_upvr(arg1, arg2, arg3) -- Line 1649
	--[[ Upvalues[2]:
		[1]: module_upvr_28 (readonly)
		[2]: module_upvr_12 (readonly)
	]]
	if module_upvr_28.LuckStateManageSource(module_upvr_12.LuckState, arg2, arg3) then
		module_upvr_12.Signals.LuckChanged:Fire(module_upvr_12.LuckState.Luck)
	end
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.PermissionState
function tbl_upvr(arg1, arg2, arg3) -- Line 1663
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	module_upvr_12.LocalPermissionState.HasPermission_ByType[arg2] = arg3
	module_upvr_12.Signals.PermissionChanged:Fire(arg2, arg3)
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.SessionRestore
function tbl_upvr(arg1, arg2) -- Line 1677
	--[[ Upvalues[1]:
		[1]: ShowSessionNotification_upvr (readonly)
	]]
	task.spawn(ShowSessionNotification_upvr, false, arg2)
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.SubscriptionStatus
function tbl_upvr(arg1, arg2, arg3) -- Line 1685
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr_12 (readonly)
	]]
	local var372 = module_upvr_4.Data_ByNetworkId[arg2]
	module_upvr_12.SubscriptionStatus_ById[var372.SubscriptionId] = arg3
	module_upvr_4.PlayerStateResolveLegacyVIP(arg1, var372, arg3)
	module_upvr_4.SubscriptionStatusChanged:Fire(arg1, var372, arg3)
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr = module_upvr_28.AsyncDataRequestType
tbl_upvr_2 = tbl_upvr.UniqueCollectibleDetails
function tbl_upvr(arg1, arg2) -- Line 1707
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	local Id = arg2.Id
	local var375
	if not var375 then
		var375 = {
			Id = Id;
		}
		module_upvr_12.UniqueCollectibleDetails_ById[Id] = var375
	end
	if arg2.Model and var375.Model ~= arg2.Model then
		var375.Model = arg2.Model
	end
	local var377
	if arg2.Eligible ~= nil and var375.Eligible ~= arg2.Eligible then
		var377 = true
		var375.Eligible = arg2.Eligible
	end
	if var377 then
		module_upvr_12.Signals.UniqueCollectibleDetailsChanged:Fire(arg2.Id)
	end
end
tbl_2_upvr[tbl_upvr_2] = tbl_upvr
tbl_upvr_2 = Remotes:WaitForChild("AsyncData").OnClientEvent
tbl_upvr_2 = tbl_upvr_2:Connect
tbl_upvr_2(function(arg1) -- Line 1752
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_12 (readonly)
	]]
	for _, v_12 in arg1 do
		tbl_2_upvr[v_12.R](module_upvr_12.LocalPlayerState, table.unpack(v_12.Args))
	end
end)
ShowSessionNotification_upvr = {}
local RenderStepped_upvr = ShowSessionNotification_upvr
tbl_upvr_2 = module_upvr_28.LevelRequestType
tbl_2_upvr = tbl_upvr_2.CollectibleEarned
function tbl_upvr_2(arg1, arg2, arg3) -- Line 1784
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	module_upvr_12.Signals.CollectibleEarned:Fire(arg1, arg2, arg3)
end
RenderStepped_upvr[tbl_2_upvr] = tbl_upvr_2
tbl_upvr_2 = module_upvr_28.LevelRequestType
tbl_2_upvr = tbl_upvr_2.LevelEnd
function tbl_upvr_2(arg1, arg2) -- Line 1793
	--[[ Upvalues[1]:
		[1]: module_upvr_38 (readonly)
	]]
	module_upvr_38.End(arg1, arg2)
end
RenderStepped_upvr[tbl_2_upvr] = tbl_upvr_2
tbl_upvr_2 = module_upvr_28.LevelRequestType
tbl_2_upvr = tbl_upvr_2.LevelStart
function tbl_upvr_2(arg1, arg2) -- Line 1799
	--[[ Upvalues[1]:
		[1]: module_upvr_38 (readonly)
	]]
	module_upvr_38.Start(arg1, arg2)
end
RenderStepped_upvr[tbl_2_upvr] = tbl_upvr_2
tbl_upvr_2 = module_upvr_28.LevelRequestType
tbl_2_upvr = tbl_upvr_2.LevelTrigger
function tbl_upvr_2(arg1) -- Line 1805
	--[[ Upvalues[1]:
		[1]: module_upvr_38 (readonly)
	]]
	module_upvr_38.Trigger(arg1)
end
RenderStepped_upvr[tbl_2_upvr] = tbl_upvr_2
tbl_upvr_2 = module_upvr_28.LevelRequestType
tbl_2_upvr = tbl_upvr_2.RestartLevel
function tbl_upvr_2(arg1) -- Line 1810
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	if arg1 ~= module_upvr_12.LocalCurrentLevel then
	else
		module_upvr_12.Flags.LevelActivationPending = true
		module_upvr_12.Flags.TimerResetPending = true
	end
end
RenderStepped_upvr[tbl_2_upvr] = tbl_upvr_2
tbl_2_upvr = Remotes:WaitForChild("Level").OnClientEvent
function tbl_upvr(arg1) -- Line 1825
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: RenderStepped_upvr (readonly)
	]]
	for _, v_13 in arg1 do
		RenderStepped_upvr[v_13.R](module_upvr_3.Level_ById[v_13.L], table.unpack(v_13.Args))
	end
end
tbl_2_upvr = tbl_2_upvr:Connect
tbl_2_upvr(tbl_upvr)
function RenderStepped_upvr(arg1, arg2) -- Line 1842, Named "RenderStepped"
	--[[ Upvalues[4]:
		[1]: module_upvr_42 (readonly)
		[2]: module_upvr_12 (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: module_upvr_13 (readonly)
	]]
	local any_DimensionStateResolve_result1 = module_upvr_42.DimensionStateResolve(module_upvr_12.DimensionState, module_upvr_12.LocalSaveData, module_upvr_12.LocalCurrentLevel, module_upvr_12.CarrierDimensionState)
	if any_DimensionStateResolve_result1 and next(any_DimensionStateResolve_result1) ~= nil then
		module_upvr_12.Signals.AppliedDimensionStateChanged:Fire(any_DimensionStateResolve_result1)
	end
	if module_upvr_12.CarrierDimensionState then
		module_upvr_12.CarrierDimensionState.Resolved = false
	end
	module_upvr_6.QuestStateResolve(module_upvr_12.QuestState)
	if module_upvr_12.Flags.ExplainCarryBlockedAction then
		local var391
		if module_upvr_12.LocalCarryState.Carrier then
			var391 = module_upvr_12.LocalCarryState.Carrier.PlayerState.Player.DisplayName
		else
			var391 = "another player"
		end
		module_upvr_13.Popup.Queue(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.Topbar, string.format("You are currently being held by %s.\nYou can click \"Unpair\" if you want to.", var391)))
		module_upvr_12.Flags.ExplainCarryBlockedAction = false
	end
end
module_upvr_10.RenderStepped = RenderStepped_upvr
return module_upvr_10