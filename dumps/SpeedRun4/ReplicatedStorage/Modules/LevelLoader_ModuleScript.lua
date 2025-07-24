-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:56
-- Luau version 6, Types version 3
-- Time taken: 0.007415 seconds

local module_upvr_4 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_7 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_8 = require(Modules:WaitForChild("ClientData"))
local module_upvr_18 = require(Modules:WaitForChild("LocalPlayerManager"))
local module_upvr_17 = require(Modules:WaitForChild("UIShared"))
local module_upvr_9 = require(Modules:WaitForChild("Worlds"))
local module_upvr_3 = require(script:WaitForChild("LevelAssetLogic"))
local module_upvr = require(script:WaitForChild("LevelLogic"))
local module_upvr_12 = require(script:WaitForChild("LevelCommon"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_upvr_10 = require(UserInterface:WaitForChild("NotificationsUI"))
local module_upvr_15 = require(UserInterface:WaitForChild("SpecialLevelUI"))
local tbl_upvr = {
	AssetFailed = "Unable to load level\n\"%s\"";
	AssetFallback = "Loaded level \"%s\" instead.";
	WorldEquipped = "World:\n%s";
}
local tbl_upvr_2 = {
	GroundednessProfilePending = true;
	PendingLobbyAdjacentLevel = nil;
	PendingSpawnRequests_ByLevelData = {};
	ActivePopups = {};
	QueuedPopups = {};
	CharacterDisableState = module_upvr_18.CharacterDisableStateCreate();
}
local function RemoveActivePopup_upvr(arg1) -- Line 114, Named "RemoveActivePopup"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local table_find_result1 = table.find(tbl_upvr_2.ActivePopups, arg1)
	if table_find_result1 then
		table.remove(tbl_upvr_2.ActivePopups, table_find_result1)
	end
end
local module_upvr_16 = require(Modules:WaitForChild("LevelAssets"))
local function NotifyAssetFallbackUsage_upvr(arg1) -- Line 122, Named "NotifyAssetFallbackUsage"
	--[[ Upvalues[7]:
		[1]: module_upvr_9 (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: tbl_upvr (readonly)
		[5]: module_upvr_16 (readonly)
		[6]: module_upvr_10 (readonly)
		[7]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	local _DisplayedFallbackNotification = arg1.AssetState._DisplayedFallbackNotification
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [113] 82. Error Block 19 start (CF ANALYSIS FAILED)
	if _DisplayedFallbackNotification then
		arg1.AssetState._DisplayedFallbackNotification = true
		tbl_upvr_2.QueuedPopups[#tbl_upvr_2.QueuedPopups + 1] = module_upvr_10.Popup.Create(module_upvr_10.Popup.Type.FullScreenText, _DisplayedFallbackNotification, module_upvr_10.Popup.Specs.Default)
	end
	-- KONSTANTERROR: [113] 82. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [149] 106. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [149] 106. Error Block 18 end (CF ANALYSIS FAILED)
end
local function ProcessPopupQueue_upvr() -- Line 185, Named "ProcessPopupQueue"
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: RemoveActivePopup_upvr (readonly)
	]]
	if 0 < #tbl_upvr_2.QueuedPopups then
		for _, v in tbl_upvr_2.ActivePopups do
			if v.PlaybackState == Enum.PlaybackState.Begin then
				module_upvr_10.Popup.Cancel(v)
			end
		end
		table.clear(tbl_upvr_2.ActivePopups)
		for i_2 = 1, #tbl_upvr_2.QueuedPopups - 1 do
			local var24 = tbl_upvr_2.QueuedPopups[i_2]
			var24.Callback = RemoveActivePopup_upvr
			module_upvr_10.Popup.Queue(var24)
		end
		module_upvr_10.Popup.ExpediteQueue(module_upvr_10.Popup.Type.FullScreenText)
		local var25 = tbl_upvr_2.QueuedPopups[#tbl_upvr_2.QueuedPopups]
		var25.Callback = RemoveActivePopup_upvr
		module_upvr_10.Popup.Queue(var25)
		tbl_upvr_2.ActivePopups = tbl_upvr_2.QueuedPopups
		tbl_upvr_2.QueuedPopups = tbl_upvr_2.ActivePopups
	end
end
local function _(arg1) -- Line 217, Named "DisconnectLoadConnection"
	if arg1._LoadConnection then
		arg1._LoadConnection:Disconnect()
		arg1._LoadConnection = nil
	end
end
local function ProcessLevelAssetLoadState_upvr(arg1) -- Line 225, Named "ProcessLevelAssetLoadState"
	--[[ Upvalues[3]:
		[1]: module_upvr_7 (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	arg1._LoadConnection:Disconnect()
	arg1._LoadConnection = nil
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 8. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr_4.LoadLevel(arg1) -- Line 240
	--[[ Upvalues[7]:
		[1]: module_upvr_9 (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_12 (readonly)
		[5]: module_upvr (readonly)
		[6]: module_upvr_8 (readonly)
		[7]: ProcessLevelAssetLoadState_upvr (readonly)
	]]
	local var26_upvw
	if not module_upvr_9.Data_ByLevel[arg1] then
		var26_upvw = module_upvr_7.FormatOutput("Provided LevelData is invalid", "LevelLoader", nil)
		error(var26_upvw, 2)
	end
	var26_upvw = module_upvr_3
	var26_upvw = arg1.LevelAsset
	var26_upvw = module_upvr_12.Levels_ByLevelData[arg1]
	if not var26_upvw then
		var26_upvw = module_upvr.Create(arg1, var26_upvw.Create(var26_upvw))
		module_upvr_12.Levels_ByLevelData[arg1] = var26_upvw
	end
	module_upvr_3.Subscribe(var26_upvw)
	module_upvr_3.Fetch(var26_upvw.AssetState)
	if table.find(module_upvr_9.LobbyAdjacentLevels, arg1) then
		module_upvr_8.LastLoadedLobbyAdjacentLevelData = arg1
	end
	if module_upvr_7.IsLoaded(var26_upvw.AssetState) then
		ProcessLevelAssetLoadState_upvr(var26_upvw)
	elseif not var26_upvw._LoadConnection then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var26_upvw._LoadConnection = var26_upvw.Create(var26_upvw).LoadStateChanged:Connect(function() -- Line 269
			--[[ Upvalues[2]:
				[1]: ProcessLevelAssetLoadState_upvr (copied, readonly)
				[2]: var26_upvw (read and write)
			]]
			ProcessLevelAssetLoadState_upvr(var26_upvw)
		end)
	end
end
function module_upvr_4.UnloadLevel(arg1) -- Line 275
	--[[ Upvalues[5]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: module_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: tbl_upvr_2 (readonly)
	]]
	local var28 = module_upvr_12.Levels_ByLevelData[arg1]
	if not var28 then
	else
		if var28._LoadConnection then
			var28._LoadConnection:Disconnect()
			var28._LoadConnection = nil
		end
		var28.IsCurrentLevel = false
		if module_upvr_7.IsLoaded(var28) then
			module_upvr.Unload(var28)
			module_upvr_7.UnloadObject(var28)
		end
		module_upvr_12.Levels_ByLevelData[var28.Data] = nil
		module_upvr_3.Unsubscribe(var28)
		if tbl_upvr_2.PendingLobbyAdjacentLevel == var28 then
			tbl_upvr_2.PendingLobbyAdjacentLevel = nil
		end
	end
end
module_upvr_3.External_UnloadLevel = module_upvr_4.UnloadLevel
function module_upvr_4.LoadNextLevel(arg1) -- Line 305
	--[[ Upvalues[3]:
		[1]: module_upvr_8 (readonly)
		[2]: module_upvr_9 (readonly)
		[3]: module_upvr_15 (readonly)
	]]
	local CurrentLevel = module_upvr_8.LocalPlayerState.CurrentLevel
	local any_LevelGetNext_result1 = module_upvr_9.LevelGetNext(CurrentLevel)
	local var31
	if any_LevelGetNext_result1 then
		if any_LevelGetNext_result1.LevelAsset == CurrentLevel.LevelAsset then
			var31 = false
		end
		module_upvr_8.LocalPlayerStateCurrentLevelSet(any_LevelGetNext_result1, var31)
	else
		local var32 = module_upvr_9.Data_ByLevel[CurrentLevel]
		if var32.WorldCompletionBehavior == module_upvr_9.WorldCompletionBehavior.InformCompletion and var32.CounterType then
			module_upvr_15.RequestCollection(module_upvr_15.CollectionType.Info_CompletedAll)
		end
	end
end
module_upvr.External_LoadNextLevel = module_upvr_4.LoadNextLevel
function module_upvr_4.LoadWorld(arg1, arg2, arg3) -- Line 337
	--[[ Upvalues[2]:
		[1]: module_upvr_9 (readonly)
		[2]: module_upvr_8 (readonly)
	]]
	local var33
	if module_upvr_9.Data_ByLevel[module_upvr_8.LocalCurrentLevel] == arg1 and not arg3 then
		var33 = module_upvr_9.LevelGetNext(module_upvr_8.LocalCurrentLevel)
	end
	if not var33 then
		var33 = arg1.Levels[1]
	end
	if var33 then
		module_upvr_8.LocalPlayerStateCurrentLevelSet(var33, arg2)
	end
end
module_upvr_15.External_LoadWorld = module_upvr_4.LoadWorld
function module_upvr_4.RefreshLobbyAdjacentWorld() -- Line 363
	--[[ Upvalues[5]:
		[1]: module_upvr_8 (readonly)
		[2]: module_upvr_9 (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: module_upvr_12 (readonly)
	]]
	if module_upvr_8.LocalCurrentLevel == module_upvr_9.DefaultLevel then
		local _1 = module_upvr_8.GetLobbyAdjacentWorld().Levels[1]
		if _1 then
			module_upvr_4.LoadLevel(_1)
			tbl_upvr_2.PendingLobbyAdjacentLevel = module_upvr_12.Levels_ByLevelData[_1]
		end
	end
end
module_upvr_8.Signals.SaveDataLoaded:Connect(function() -- Line 381
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	module_upvr_4.RefreshLobbyAdjacentWorld()
end)
module_upvr_8.Signals.InventoryEquippedChanged:Connect(function(arg1) -- Line 385
	--[[ Upvalues[2]:
		[1]: module_upvr_7 (readonly)
		[2]: module_upvr_4 (readonly)
	]]
	if arg1 == module_upvr_7.ItemType.World then
		module_upvr_4.RefreshLobbyAdjacentWorld()
	end
end)
local module_upvr_14 = require(Modules:WaitForChild("BUPGameClient"))
local module_upvr_19 = require(UserInterface:WaitForChild("LoadingScreenUI"))
local module_upvr_13 = require(Modules:WaitForChild("RollEngine"):WaitForChild("RollProperties"))
local module_upvr_11 = require(Modules:WaitForChild("CharacterStateHandler"))
local module_upvr_5 = require(Modules:WaitForChild("HumanoidEngine"):WaitForChild("CustomHumanoid"))
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("BUA"))
local any_Create_result1_upvr = module_upvr_17.UIExclusivityMember.Create(require(Modules:WaitForChild("UIExclusivityGroups")).LoadingScreenUIGroup)
function module_upvr_4.PreSimulation(arg1, arg2) -- Line 395
	--[[ Upvalues[20]:
		[1]: module_upvr_8 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: module_upvr_14 (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: module_upvr_12 (readonly)
		[6]: module_upvr_4 (readonly)
		[7]: module_upvr_9 (readonly)
		[8]: module_upvr_19 (readonly)
		[9]: module_upvr (readonly)
		[10]: NotifyAssetFallbackUsage_upvr (readonly)
		[11]: ProcessPopupQueue_upvr (readonly)
		[12]: module_upvr_3 (readonly)
		[13]: module_upvr_2 (readonly)
		[14]: module_upvr_13 (readonly)
		[15]: module_upvr_11 (readonly)
		[16]: module_upvr_5 (readonly)
		[17]: module_upvr_6 (readonly)
		[18]: module_upvr_17 (readonly)
		[19]: any_Create_result1_upvr (readonly)
		[20]: module_upvr_18 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFS_LevelLoader")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 2 start (CF ANALYSIS FAILED)
	tbl_upvr_2.PendingSpawnRequests_ByLevelData[module_upvr_8.LocalCurrentLevel] = true
	tbl_upvr_2.GroundednessProfilePending = true
	module_upvr_14.LocalPetsRespawn()
	module_upvr_8.Flags.LocalPlayerPendingTeleport = false
	module_upvr_8.Flags.TimerResetPending = true
	-- KONSTANTERROR: [10] 8. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 28. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 28. Error Block 3 end (CF ANALYSIS FAILED)
end
return module_upvr_4