-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:58
-- Luau version 6, Types version 3
-- Time taken: 0.025867 seconds

local module_upvr_15 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_14 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_13 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_19 = require(Modules:WaitForChild("Audio"))
local module_upvr_12 = require(Modules:WaitForChild("BUEGameClient"))
local module_upvr_11 = require(Modules:WaitForChild("ClientData"))
local module_upvr_18 = require(Modules:WaitForChild("LevelAssets"))
local module_upvr_9 = require(Modules:WaitForChild("Utility"))
local module_upvr_4 = require(Modules:WaitForChild("Worlds"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_upvr_3 = require(LevelLoader:WaitForChild("CollectibleStateManager"))
local module_upvr_5 = require(LevelLoader:WaitForChild("DimensionManager"))
local module_upvr_6 = require(LevelLoader:WaitForChild("DynamicObjectManager"))
local module_upvr_2 = require(LevelLoader:WaitForChild("LightingStateManager"))
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local Level_upvr = Remotes:WaitForChild("Level")
local Levels_upvr = workspace:WaitForChild("Levels")
local Folder_upvr = Instance.new("Folder")
Folder_upvr.Name = "UnloadedLevels"
Folder_upvr.Parent = ReplicatedStorage
local tbl_3_upvr = {
	ActiveSubscription = nil;
	LevelAssetStates_ByLevelAsset = {};
	RequestPending_ByLevelAssetId = {};
	HazardBadgePrimed = false;
	LoadedStatesDirty = false;
}
local tbl_6_upvr = {
	Loading = 1;
	Deactivating = 2;
	Unloading = 3;
}
function module_upvr_15.External_UnloadLevel(...) -- Line 80
	error(debug.traceback("External_UnloadLevel stub called!"))
end
local module_upvr = require(LevelLoader:WaitForChild("LevelCommon"))
local function LightingStateCreate_FromAssetStateObject_upvr(arg1) -- Line 88, Named "LightingStateCreate_FromAssetStateObject"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_18 (readonly)
	]]
	local var24
	local var25
	if arg1.Map then
		var24 = arg1.Map
		var25 = module_upvr.LightingType.World
	else
		var24 = arg1.LevelSpec
		var25 = module_upvr.LightingType.Level
	end
	assert(var24, "Map missing")
	local any_GetSanitizedLightingProperties_result1, _ = module_upvr_18.GetSanitizedLightingProperties(var24.MapSettings)
	return {
		_Type = var25;
		Directory = var24.Directories.Lighting;
		Objects = var24.Lighting;
		Properties = any_GetSanitizedLightingProperties_result1;
	}
end
local function GetShuffleMusic_upvr(arg1) -- Line 127, Named "GetShuffleMusic"
	local var34 = false
	if typeof(arg1) == "Instance" then
		if arg1:IsA("ModuleScript") then
			local arg1 = require(arg1)
			if type(arg1) == "table" then
				local pcall_result1, pcall_result2_2 = pcall(rawget, arg1, "ShuffleMusic")
				local var38 = pcall_result1
				if var38 then
					if pcall_result2_2 ~= true then
						var38 = false
					else
						var38 = true
					end
				end
				var34 = var38
			end
		end
	end
	return var34
end
local var77_upvw
local var129_upvw
local function AssetSubscriptionSetActive_upvr(arg1, arg2) -- Line 147, Named "AssetSubscriptionSetActive"
	--[[ Upvalues[9]:
		[1]: module_upvr_14 (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: AssetSubscriptionSetActive_upvr (readonly)
		[4]: var77_upvw (read and write)
		[5]: var129_upvw (read and write)
		[6]: module_upvr_19 (readonly)
		[7]: module_upvr_13 (readonly)
		[8]: module_upvr_18 (readonly)
		[9]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local AssetState = arg1.AssetState
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [135] 95. Error Block 24 start (CF ANALYSIS FAILED)
	module_upvr_2.Add(AssetState.LightingState)
	do
		return
	end
	-- KONSTANTERROR: [135] 95. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [142] 100. Error Block 40 start (CF ANALYSIS FAILED)
	if arg1.Playlist then
		module_upvr_19.Playlist.Stop(arg1.Playlist)
	end
	if arg1.LightingState then
		module_upvr_2.Remove(arg1.LightingState)
	end
	if tbl_3_upvr.ActiveSubscription == arg1 then
		tbl_3_upvr.ActiveSubscription = nil
		if AssetState.LightingState then
			module_upvr_2.Remove(AssetState.LightingState)
		end
	end
	-- KONSTANTERROR: [142] 100. Error Block 40 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 232, Named "AssetSubscriptionActivate"
	--[[ Upvalues[2]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	module_upvr_12.CollectiblesCreate(arg1)
	module_upvr_5.Subscribe(arg1)
end
local function _(arg1) -- Line 242, Named "AssetSubscriptionDeactivate"
	--[[ Upvalues[2]:
		[1]: module_upvr_12 (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	module_upvr_12.CollectiblesDestroy(arg1)
	module_upvr_5.Unsubscribe(arg1)
end
local function AssetSubscriptionLoad_upvr(arg1) -- Line 250, Named "AssetSubscriptionLoad"
	--[[ Upvalues[7]:
		[1]: module_upvr_14 (readonly)
		[2]: module_upvr_19 (readonly)
		[3]: GetShuffleMusic_upvr (readonly)
		[4]: LightingStateCreate_FromAssetStateObject_upvr (readonly)
		[5]: module_upvr_12 (readonly)
		[6]: module_upvr_5 (readonly)
		[7]: AssetSubscriptionSetActive_upvr (readonly)
	]]
	local AssetState_5 = arg1.AssetState
	if not module_upvr_14.IsLoaded(arg1) then
		local Map_2 = AssetState_5.Map
		if Map_2 then
			local var48 = Map_2.Levels[arg1.Level.Data.LevelIndex or 1]
			if var48 then
				arg1.LevelSpec = var48
				if 0 < #var48.Music then
					arg1.Playlist = module_upvr_19.Playlist.Create(var48.Music, GetShuffleMusic_upvr(var48.MapSettings), module_upvr_19.SoundGroup.Music)
				end
				arg1.LightingState = LightingStateCreate_FromAssetStateObject_upvr(arg1)
				module_upvr_14.LoadObject(arg1)
			end
		end
	end
	if module_upvr_14.IsLoaded(arg1) then
		if AssetState_5.Active then
			module_upvr_12.CollectiblesCreate(arg1)
			module_upvr_5.Subscribe(arg1)
		end
		if arg1.Level.IsCurrentLevel then
			AssetSubscriptionSetActive_upvr(arg1, true)
		end
	end
end
local function AssetSubscriptionUnload_upvr(arg1) -- Line 292, Named "AssetSubscriptionUnload"
	--[[ Upvalues[6]:
		[1]: tbl_3_upvr (readonly)
		[2]: AssetSubscriptionSetActive_upvr (readonly)
		[3]: module_upvr_19 (readonly)
		[4]: module_upvr_14 (readonly)
		[5]: module_upvr_12 (readonly)
		[6]: module_upvr_5 (readonly)
	]]
	arg1.DimensionSubscriptionChanged:DisconnectAll()
	if tbl_3_upvr.ActiveSubscription == arg1 then
		AssetSubscriptionSetActive_upvr(arg1, false)
	end
	if arg1.Playlist then
		module_upvr_19.Playlist.Destroy(arg1.Playlist)
		arg1.Playlist = nil
	end
	if module_upvr_14.IsLoaded(arg1) then
		module_upvr_12.CollectiblesDestroy(arg1)
		module_upvr_5.Unsubscribe(arg1)
	end
end
local module_upvr_10 = require(Modules:WaitForChild("Signal"))
local function AssetSubscriptionCreate_upvr(arg1) -- Line 312, Named "AssetSubscriptionCreate"
	--[[ Upvalues[3]:
		[1]: module_upvr_14 (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: AssetSubscriptionLoad_upvr (readonly)
	]]
	local AssetState_7 = arg1.AssetState
	local tbl_5 = {
		AssetState = AssetState_7;
	}
	tbl_5.Level = arg1
	tbl_5.DimensionsApplied_ById = {}
	tbl_5.DimensionSubscriptionChanged = module_upvr_10.new()
	local any_LoadableObjectCreate_result1_2 = module_upvr_14.LoadableObjectCreate(tbl_5)
	if module_upvr_14.IsLoaded(AssetState_7) then
		AssetSubscriptionLoad_upvr(any_LoadableObjectCreate_result1_2)
	end
	return any_LoadableObjectCreate_result1_2
end
local tbl_upvr = {}
local module_upvr_7 = require(Modules:WaitForChild("UIShared"))
function tbl_upvr.Explosive(arg1, arg2) -- Line 341
	--[[ Upvalues[1]:
		[1]: module_upvr_7 (readonly)
	]]
	local Explosion = Instance.new("Explosion")
	Explosion.Position = arg1.Position
	Explosion.Parent = module_upvr_7.Camera
end
local function _(arg1, arg2) -- Line 354, Named "KillPlayer"
	--[[ Upvalues[5]:
		[1]: module_upvr_11 (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: Level_upvr (readonly)
		[5]: module_upvr_14 (readonly)
	]]
	local any_LocalPlayerTouched_result1_2, any_LocalPlayerTouched_result2_2, any_LocalPlayerTouched_result3 = module_upvr_11.LocalPlayerTouched(arg1)
	if any_LocalPlayerTouched_result1_2 and any_LocalPlayerTouched_result2_2 then
		if any_LocalPlayerTouched_result3 then
			any_LocalPlayerTouched_result3.Health = 0
			if tbl_3_upvr.HazardBadgePrimed and arg2 then
				local var60 = tbl_upvr[arg2]
				if var60 then
					var60(arg1, any_LocalPlayerTouched_result2_2)
				end
				Level_upvr:FireServer(module_upvr_14.LevelRequestType.HazardEncountered, arg2)
			end
			tbl_3_upvr.HazardBadgePrimed = false
		end
	end
end
local module_upvr_17 = require(LevelLoader:WaitForChild("GateLockManager"))
local module_upvr_8 = require(LevelLoader:WaitForChild("SellerNPCManager"))
local function SetLevelObjectsActive_upvr(arg1, arg2) -- Line 382, Named "SetLevelObjectsActive"
	--[[ Upvalues[2]:
		[1]: module_upvr_17 (readonly)
		[2]: module_upvr_8 (readonly)
	]]
	for _, v in arg1.AssetSubscriptions do
		local GateLock = v.Level.Objects.GateLock
		if GateLock then
			module_upvr_17.SetActive(GateLock, arg2)
		end
		local SellerNPC = v.Level.Objects.SellerNPC
		if SellerNPC then
			module_upvr_8.SetActive(SellerNPC, arg2)
		end
	end
end
local function LevelAssetStateIsLobby_upvr(arg1) -- Line 400, Named "LevelAssetStateIsLobby"
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	local var71
	for _, v_2 in arg1.AssetSubscriptions do
		if module_upvr_4.Data_ByLevel[v_2.Level.Data] == module_upvr_4.Data_ById.Lobby then
			var71 = true
			return var71
		end
	end
	return var71
end
local function LevelAssetStateIsLobbyAdjacent_upvr(arg1) -- Line 419, Named "LevelAssetStateIsLobbyAdjacent"
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	local var76
	for _, v_3 in arg1.AssetSubscriptions do
		if table.find(module_upvr_4.LobbyAdjacentLevels, v_3.Level.Data) then
			var76 = true
			return var76
		end
	end
	return var76
end
local MaterialService_upvr = game:GetService("MaterialService")
local tbl_2_upvr = {}
function var77_upvw(arg1) -- Line 436
	--[[ Upvalues[14]:
		[1]: module_upvr_19 (readonly)
		[2]: MaterialService_upvr (readonly)
		[3]: Levels_upvr (readonly)
		[4]: module_upvr_12 (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: SetLevelObjectsActive_upvr (readonly)
		[7]: module_upvr_6 (readonly)
		[8]: module_upvr_9 (readonly)
		[9]: tbl_2_upvr (readonly)
		[10]: module_upvr_11 (readonly)
		[11]: tbl_3_upvr (readonly)
		[12]: tbl_upvr (readonly)
		[13]: Level_upvr (readonly)
		[14]: module_upvr_14 (readonly)
	]]
	if not arg1.Active then
		local assert_result1 = assert(arg1.Map, "Missing map")
		arg1.Active = true
		for _, v_4 in arg1.Collectibles do
			v_4.Active = true
		end
		if arg1.Ambience then
			module_upvr_19.SoundCollection.Play(arg1.Ambience)
		end
		for _, v_5 in assert_result1.MaterialVariants do
			v_5.Parent = MaterialService_upvr
		end
		assert_result1.Model.Parent = Levels_upvr
		for _, v_6 in arg1.AssetSubscriptions do
			module_upvr_12.CollectiblesCreate(v_6)
			module_upvr_5.Subscribe(v_6)
		end
		SetLevelObjectsActive_upvr(arg1, true)
		module_upvr_6.Initialize(arg1)
		for _, v_7 in {assert_result1.Hazards, module_upvr_6.GetDynamicHazards(arg1)} do
			for _, v_8 in v_7 do
				local Hazard_upvw = v_8:GetAttribute("Hazard")
				if type(Hazard_upvw) ~= "string" then
					Hazard_upvw = nil
				end
				local var103 = Hazard_upvw
				if not var103 then
					var103 = module_upvr_9.NilToken
				end
				local var105 = tbl_2_upvr[var103]
				if not var105 then
					function var105(arg1_2) -- Line 490
						--[[ Upvalues[6]:
							[1]: Hazard_upvw (read and write)
							[2]: module_upvr_11 (copied, readonly)
							[3]: tbl_3_upvr (copied, readonly)
							[4]: tbl_upvr (copied, readonly)
							[5]: Level_upvr (copied, readonly)
							[6]: module_upvr_14 (copied, readonly)
						]]
						local var106 = Hazard_upvw
						local any_LocalPlayerTouched_result1, any_LocalPlayerTouched_result2, any_LocalPlayerTouched_result3_2 = module_upvr_11.LocalPlayerTouched(arg1_2)
						if any_LocalPlayerTouched_result1 then
							if any_LocalPlayerTouched_result2 and any_LocalPlayerTouched_result3_2 then
								any_LocalPlayerTouched_result3_2.Health = 0
								if tbl_3_upvr.HazardBadgePrimed and var106 then
									local var110 = tbl_upvr[var106]
									if var110 then
										var110(arg1_2, any_LocalPlayerTouched_result2)
									end
									Level_upvr:FireServer(module_upvr_14.LevelRequestType.HazardEncountered, var106)
								end
								tbl_3_upvr.HazardBadgePrimed = false
							end
						end
					end
					tbl_2_upvr[var103] = var105
				end
				module_upvr_9.CollisionGroupSet(v_8, "Hazard")
				module_upvr_9.ConnectTouched(v_8, var105, arg1.HazardConnections)
			end
		end
		tbl_3_upvr.LoadedStatesDirty = true
	end
end
local function IsAssetEager_upvr(arg1, arg2) -- Line 512, Named "IsAssetEager"
	--[[ Upvalues[5]:
		[1]: module_upvr_18 (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: LevelAssetStateIsLobby_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: LevelAssetStateIsLobbyAdjacent_upvr (readonly)
	]]
	local var128 = true
	if arg1.Asset.LoadBehavior ~= module_upvr_18.LoadBehavior.Eager then
		var128 = false
		if arg2 == tbl_6_upvr.Deactivating then
			if arg1.Asset.LoadBehavior ~= module_upvr_18.LoadBehavior.Sticky then
				var128 = false
			else
				var128 = true
			end
		end
	end
	if not var128 then
		if LevelAssetStateIsLobby_upvr(arg1) then
			for _, v_9 in tbl_3_upvr.LevelAssetStates_ByLevelAsset do
				if LevelAssetStateIsLobbyAdjacent_upvr(v_9) then
					var128 = true
					return var128
				end
			end
			return var128
		end
		if LevelAssetStateIsLobbyAdjacent_upvr(arg1) then
			for _, v_10 in tbl_3_upvr.LevelAssetStates_ByLevelAsset do
				if LevelAssetStateIsLobby_upvr(v_10) then
					var128 = true
					return var128
				end
			end
		end
	end
	return var128
end
function var129_upvw(arg1, arg2) -- Line 552
	--[[ Upvalues[10]:
		[1]: tbl_6_upvr (readonly)
		[2]: IsAssetEager_upvr (readonly)
		[3]: module_upvr_19 (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: SetLevelObjectsActive_upvr (readonly)
		[6]: module_upvr_6 (readonly)
		[7]: module_upvr_12 (readonly)
		[8]: module_upvr_5 (readonly)
		[9]: Folder_upvr (readonly)
		[10]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Active = arg1.Active
	if Active then
		if arg2 then
			Active = tbl_6_upvr.Unloading
		else
			Active = tbl_6_upvr.Deactivating
		end
		if IsAssetEager_upvr(arg1, Active) then return end
		local assert_result1_2 = assert(arg1.Map, "Missing map")
		arg1.Active = false
		for _, v_11 in arg1.Collectibles do
			v_11.Active = false
		end
		if arg1.Ambience then
			module_upvr_19.SoundCollection.Stop(arg1.Ambience)
		end
		if arg1.Playlist then
			module_upvr_19.Playlist.Stop(arg1.Playlist)
		end
		for _, v_12 in assert_result1_2.MaterialVariants do
			v_12.Parent = assert_result1_2.Directories.MaterialVariants
			local var164
		end
		if arg1.LightingState then
			module_upvr_2.Remove(arg1.LightingState)
		end
		SetLevelObjectsActive_upvr(arg1, false)
		module_upvr_6.Deinitialize(arg1)
		for _, v_13 in arg1.HazardConnections do
			v_13:Disconnect()
		end
		table.clear(arg1.HazardConnections)
		for _, v_14 in arg1.AssetSubscriptions do
			module_upvr_12.CollectiblesDestroy(v_14)
			module_upvr_5.Unsubscribe(v_14)
		end
		var164.Model.Parent = Folder_upvr
		tbl_3_upvr.LoadedStatesDirty = true
	end
end
local function LevelAssetStateUnload_upvr(arg1) -- Line 608, Named "LevelAssetStateUnload"
	--[[ Upvalues[5]:
		[1]: module_upvr_14 (readonly)
		[2]: var129_upvw (read and write)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_19 (readonly)
		[5]: AssetSubscriptionUnload_upvr (readonly)
	]]
	if arg1._PreloadThread then
		if coroutine.status(arg1._PreloadThread) == "suspended" then
			task.cancel(arg1._PreloadThread)
		end
		arg1._PreloadThread = nil
	end
	if module_upvr_14.IsLoaded(arg1) then
		if arg1.Map then
			var129_upvw(arg1, true)
			if arg1.AncestryConnection then
				arg1.AncestryConnection:Disconnect()
				arg1.AncestryConnection = nil
			end
			arg1.Map.Model.Parent = nil
		end
		for _, v_15 in arg1.Collectibles do
			module_upvr_3.Destroy(v_15)
		end
		if arg1.Ambience then
			module_upvr_19.SoundCollection.Destroy(arg1.Ambience, true)
			arg1.Ambience = nil
		end
		if arg1.Playlist then
			module_upvr_19.Playlist.Destroy(arg1.Playlist)
			arg1.Playlist = nil
		end
		module_upvr_14.UnloadObject(arg1)
		for _, v_16 in arg1.AssetSubscriptions do
			AssetSubscriptionUnload_upvr(v_16)
		end
	end
end
local ContentProvider_upvr = game:GetService("ContentProvider")
local function LevelAssetStateLoad_upvr(arg1, arg2, arg3) -- Line 657, Named "LevelAssetStateLoad"
	--[[ Upvalues[16]:
		[1]: module_upvr_14 (readonly)
		[2]: module_upvr_9 (readonly)
		[3]: module_upvr_13 (readonly)
		[4]: ContentProvider_upvr (readonly)
		[5]: Levels_upvr (readonly)
		[6]: Folder_upvr (readonly)
		[7]: module_upvr_11 (readonly)
		[8]: module_upvr_4 (readonly)
		[9]: module_upvr_3 (readonly)
		[10]: module_upvr_19 (readonly)
		[11]: GetShuffleMusic_upvr (readonly)
		[12]: LightingStateCreate_FromAssetStateObject_upvr (readonly)
		[13]: AssetSubscriptionLoad_upvr (readonly)
		[14]: IsAssetEager_upvr (readonly)
		[15]: tbl_6_upvr (readonly)
		[16]: var77_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var218
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	local _PreloadThread_upvr = arg1._PreloadThread
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 81. Error Block 130 start (CF ANALYSIS FAILED)
	arg1.AncestryConnection = _PreloadThread_upvr.AncestryChanged:Connect(function(arg1_3, arg2_2) -- Line 726
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Levels_upvr (copied, readonly)
			[3]: Folder_upvr (copied, readonly)
			[4]: _PreloadThread_upvr (readonly)
		]]
		local var221
		if arg1.Active then
			var221 = Levels_upvr
		else
			var221 = Folder_upvr
		end
		if arg2_2 ~= var221 then
			_PreloadThread_upvr.Parent = var221
		end
	end)
	local Collectibles_2 = arg1.Collectibles
	var218 = module_upvr_4.Levels_ByLevelAsset_ByIndex
	local var223 = var218[arg1.Asset]
	if var223 then
		var218 = var223
		for i_17, v_17 in var218 do
			local var224 = arg2.Levels[i_17]
			if var224 then
				for _, v_18 in var224.Collectibles.Star do
					local Name_2 = v_18.Name
					if module_upvr_4.StarIsValid(v_17, Name_2) and not module_upvr_4.StarOwned(v_17, Name_2, module_upvr_14.PlayerStateGetSaveData(module_upvr_11.LocalPlayerState)) then
						Collectibles_2[#Collectibles_2 + 1] = module_upvr_3.Create(module_upvr_14.CollectibleType.Star, {Name_2}, v_17, arg1, v_18:GetPivot().Position, var224.Directories.Collectibles)
					end
				end
				for _, v_19 in var224.Collectibles.Unique do
					local Name = v_19.Name
					local var228 = module_upvr_11.UniqueCollectibleDetails_ById[Name]
					if var228 and var228.Eligible then
						local any_Create_result1 = module_upvr_3.Create(module_upvr_14.CollectibleType.Unique, {Name}, v_17, arg1, v_19:GetPivot().Position, var224.Directories.Collectibles)
						module_upvr_3.SetCollectibleDecoration(any_Create_result1, module_upvr_3.CollectibleDecoration.GlowSparks)
						Collectibles_2[#Collectibles_2 + 1] = any_Create_result1
					end
				end
			end
		end
	end
	var218 = #arg2.Ambience
	if 0 < var218 then
		var218 = module_upvr_19.SoundCollection.Create
		var218 = var218(arg2.Ambience, true, {
			SoundGroup = module_upvr_19.SoundGroup.Ambience;
			Looped = true;
		})
		arg1.Ambience = var218
	end
	var218 = #arg2.Music
	if 0 < var218 then
		var218 = module_upvr_19.Playlist.Create(arg2.Music, GetShuffleMusic_upvr(arg2.MapSettings), module_upvr_19.SoundGroup.Music)
		arg1.Playlist = var218
	end
	var218 = module_upvr_11.LocalPolicyState.LootboxesEnabled
	if not var218 then
		var218 = arg2.Levels
		for _, v_20 in var218 do
			for _, v_21 in v_20.Triggers do
				if v_21.Name == "Lootbox" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					v_21.Parent = nil
				end
			end
		end
	end
	var218 = arg2.Dynamic
	for _, v_22 in var218 do
		for _, v_23 in v_22 do
			v_23.Parent = nil
		end
	end
	var218 = arg2.Levels
	for _, v_24 in var218 do
		if v_24.Directories.EnemySpawns then
			v_24.Directories.EnemySpawns.Parent = nil
		end
		for _, v_25 in v_24.ObjectSpawns do
			v_25.Parent = nil
		end
		for _, v_26 in v_24.Collectibles do
			for _, v_27 in v_26 do
				v_27.Parent = nil
			end
		end
	end
	var218 = arg1.LightingState
	if not var218 then
		var218 = LightingStateCreate_FromAssetStateObject_upvr(arg1)
		arg1.LightingState = var218
	end
	if arg1.Active then
		var218 = Levels_upvr
	else
		var218 = Folder_upvr
	end
	_PreloadThread_upvr.Parent = var218
	var218 = module_upvr_14.LoadObject
	var218(arg1)
	var218 = arg1.AssetSubscriptions
	for _, v_28 in var218 do
		AssetSubscriptionLoad_upvr(v_28)
	end
	var218 = IsAssetEager_upvr(arg1, tbl_6_upvr.Loading)
	if var218 then
		var218 = var77_upvw
		var218(arg1)
	end
	-- KONSTANTERROR: [112] 81. Error Block 130 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [443] 315. Error Block 71 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [443] 315. Error Block 71 end (CF ANALYSIS FAILED)
end
local function ProcessFetchFailure_upvr(arg1) -- Line 897, Named "ProcessFetchFailure"
	--[[ Upvalues[2]:
		[1]: module_upvr_14 (readonly)
		[2]: module_upvr_15 (readonly)
	]]
	if not module_upvr_14.IsLoaded(arg1) then
		for _, v_29 in table.clone(arg1.AssetSubscriptions), nil do
			module_upvr_15.External_UnloadLevel(v_29.Level.Data)
		end
	end
end
local function ProcessFetchResonse_upvr(arg1) -- Line 911, Named "ProcessFetchResonse"
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_14 (readonly)
		[3]: module_upvr_18 (readonly)
		[4]: ProcessFetchFailure_upvr (readonly)
	]]
	local _1 = arg1.Request.Args[1]
	tbl_3_upvr.RequestPending_ByLevelAssetId[_1] = nil
	if arg1.Response ~= module_upvr_14.ResponseType.Pending then
		local var237 = tbl_3_upvr.LevelAssetStates_ByLevelAsset[module_upvr_18.Data_ById[_1]]
		if var237 then
			ProcessFetchFailure_upvr(var237)
		end
	end
end
local module_upvr_16 = require(Modules:WaitForChild("NetworkRequestUtility"))
function module_upvr_15.Fetch(arg1) -- Line 929
	--[[ Upvalues[8]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_18 (readonly)
		[3]: module_upvr_14 (readonly)
		[4]: module_upvr_9 (readonly)
		[5]: LevelAssetStateLoad_upvr (readonly)
		[6]: module_upvr_16 (readonly)
		[7]: Level_upvr (readonly)
		[8]: ProcessFetchResonse_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Asset_2 = arg1.Asset
	local var247
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	var247 = arg1._IsFallback
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 22 start (CF ANALYSIS FAILED)
	var247 = tbl_3_upvr.RequestPending_ByLevelAssetId[Asset_2.Id]
	if var247 then
		-- KONSTANTERROR: [15] 11. Error Block 5 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [15] 11. Error Block 5 end (CF ANALYSIS FAILED)
	end
	var247 = nil
	if Asset_2.IsReplicatedAsset then
		local any_FetchLocalAsset_result1_2 = module_upvr_18.FetchLocalAsset(Asset_2)
		if any_FetchLocalAsset_result1_2 then
			local any_LevelMapCreate_result1, any_LevelMapCreate_result2 = module_upvr_18.LevelMapCreate(Asset_2, any_FetchLocalAsset_result1_2)
			var247 = any_LevelMapCreate_result1
			local var251 = any_LevelMapCreate_result2
			if not var247 and var251 then
				warn(module_upvr_14.FormatOutput("Failed to fetch local map for reason: %s", "LevelAssetLogic", nil, var251))
			end
		end
	end
	if var247 then
		module_upvr_9.RunFunction(LevelAssetStateLoad_upvr, arg1, var247)
	else
		tbl_3_upvr.RequestPending_ByLevelAssetId[Asset_2.Id] = true
		module_upvr_16.MakeRequest({
			Remote = Level_upvr;
			Request = module_upvr_14.LevelRequestType.GetAsset;
			Args = {Asset_2.Id};
			Callback = ProcessFetchResonse_upvr;
		})
		-- KONSTANTERROR: [8] 6. Error Block 22 end (CF ANALYSIS FAILED)
	end
end
function module_upvr_15.Create(arg1) -- Line 985
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_14 (readonly)
	]]
	local var254 = tbl_3_upvr.LevelAssetStates_ByLevelAsset[arg1]
	if var254 then
		return var254
	end
	local tbl_4 = {
		Active = false;
		Preloaded = false;
	}
	tbl_4.Asset = arg1
	tbl_4.AssetSubscriptions = {}
	tbl_4.Collectibles = {}
	tbl_4.DimensionStates_ByType = {}
	tbl_4.HazardConnections = {}
	local any_LoadableObjectCreate_result1 = module_upvr_14.LoadableObjectCreate(tbl_4)
	tbl_3_upvr.LevelAssetStates_ByLevelAsset[arg1] = any_LoadableObjectCreate_result1
	return any_LoadableObjectCreate_result1
end
function module_upvr_15.Subscribe(arg1) -- Line 1011
	--[[ Upvalues[1]:
		[1]: AssetSubscriptionCreate_upvr (readonly)
	]]
	if arg1.AssetSubscription == nil then
		local AssetState_3 = arg1.AssetState
		local AssetSubscriptionCreate_result1 = AssetSubscriptionCreate_upvr(arg1)
		arg1.AssetSubscription = AssetSubscriptionCreate_result1
		AssetState_3.AssetSubscriptions[#AssetState_3.AssetSubscriptions + 1] = AssetSubscriptionCreate_result1
	end
end
function module_upvr_15.Unsubscribe(arg1) -- Line 1026
	--[[ Upvalues[3]:
		[1]: AssetSubscriptionUnload_upvr (readonly)
		[2]: LevelAssetStateUnload_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local AssetSubscription_3 = arg1.AssetSubscription
	if AssetSubscription_3 then
		local AssetState_2 = AssetSubscription_3.AssetState
		local table_find_result1_2 = table.find(AssetState_2.AssetSubscriptions, AssetSubscription_3)
		if table_find_result1_2 then
			AssetSubscriptionUnload_upvr(AssetSubscription_3)
			table.remove(AssetState_2.AssetSubscriptions, table_find_result1_2)
			if #AssetState_2.AssetSubscriptions == 0 then
				LevelAssetStateUnload_upvr(AssetState_2)
				tbl_3_upvr.LevelAssetStates_ByLevelAsset[AssetState_2.Asset] = nil
			end
		end
	end
end
function module_upvr_15.Activate(arg1) -- Line 1050
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: AssetSubscriptionSetActive_upvr (readonly)
	]]
	tbl_3_upvr.HazardBadgePrimed = true
	local AssetSubscription_2 = arg1.AssetSubscription
	if AssetSubscription_2 then
		AssetSubscriptionSetActive_upvr(AssetSubscription_2, true)
	end
end
local function ClaimCollectible_upvr(arg1, arg2, arg3) -- Line 1068, Named "ClaimCollectible"
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [29.8]
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
local tbl_8_upvw = {}
module_upvr_11.Signals.CollectibleEarned:Connect(function(arg1, arg2, arg3) -- Line 1107, Named "ProcessEarnedCollectible"
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_8_upvw (readonly)
		[3]: ClaimCollectible_upvr (readonly)
	]]
	local var267 = tbl_3_upvr.LevelAssetStates_ByLevelAsset[arg1.LevelAsset]
	if var267 then
		local var268 = tbl_8_upvw[arg2]
		if var268 then
			var268(arg1, arg3)
		end
		ClaimCollectible_upvr(var267, arg2, arg3)
	end
end)
tbl_8_upvw = module_upvr_11.Signals.UniqueCollectibleDetailsChanged
tbl_8_upvw = tbl_8_upvw:Connect
tbl_8_upvw(function(arg1) -- Line 1130
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_14 (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	for _, v_30 in tbl_3_upvr.LevelAssetStates_ByLevelAsset do
		for _, v_31 in v_30.Collectibles do
			if v_31.Type == module_upvr_14.CollectibleType.Unique then
				if v_31.Identifiers[1] == arg1 then
					module_upvr_3.ApplyCosmeticModel(v_31)
					module_upvr_3.DetermineCollectability(v_31)
				end
			end
		end
	end
end)
function tbl_8_upvw(arg1) -- Line 1152, Named "AssertLoaded"
	--[[ Upvalues[2]:
		[1]: module_upvr_13 (readonly)
		[2]: module_upvr_14 (readonly)
	]]
	local AssetSubscription_4 = arg1.AssetSubscription
	if not AssetSubscription_4 then
		if module_upvr_13.IsStudio then
			warn(arg1)
		end
		error(module_upvr_14.FormatOutput("Missing AssetSubscription for level %s", "LevelAssetLogic", nil, arg1.Data.Id), 2)
	end
	local Map_4 = AssetSubscription_4.AssetState.Map
	if not Map_4 then
		if module_upvr_13.IsStudio then
			warn(arg1)
		end
		error(module_upvr_14.FormatOutput("Missing map for level %s", "LevelAssetLogic", nil, arg1.Data.Id), 2)
	end
	local LevelSpec = AssetSubscription_4.LevelSpec
	if not LevelSpec then
		if module_upvr_13.IsStudio then
			warn(arg1)
		end
		error(module_upvr_14.FormatOutput("Missing level spec for level %s, index %i", "LevelAssetLogic", nil, arg1.Data.Id, arg1.Data.LevelIndex or 1), 2)
	end
	return AssetSubscription_4, Map_4, LevelSpec
end
module_upvr_15.AssertLoaded = tbl_8_upvw
function tbl_8_upvw(arg1) -- Line 1187, Named "GetSpawnCFrame"
	--[[ Upvalues[2]:
		[1]: module_upvr_18 (readonly)
		[2]: module_upvr_14 (readonly)
	]]
	local identity = CFrame.identity
	local AssetSubscription = arg1.AssetSubscription
	if AssetSubscription then
		local Map_3 = AssetSubscription.AssetState.Map
		if Map_3 then
			identity = module_upvr_18.SpawnCFrameGet(Map_3, arg1.Data.LevelIndex or 1)
			return identity
		end
		warn(module_upvr_14.FormatOutput("Attempted to spawn into unloaded LevelId '%s'", "LevelAssetLogic", nil, arg1.Data.Id))
		return identity
	end
	warn(module_upvr_14.FormatOutput("Attempted to spawn into unscribed LevelId '%s'", "LevelAssetLogic", nil, arg1.Data.Id))
	return identity
end
module_upvr_15.GetSpawnCFrame = tbl_8_upvw
tbl_8_upvw = Remotes:WaitForChild("LevelAsset").OnClientEvent
tbl_8_upvw = tbl_8_upvw:Connect
tbl_8_upvw(function(arg1, arg2, arg3) -- Line 1251
	--[[ Upvalues[8]:
		[1]: module_upvr_18 (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: module_upvr_14 (readonly)
		[4]: module_upvr_9 (readonly)
		[5]: LevelAssetStateLoad_upvr (readonly)
		[6]: ProcessFetchFailure_upvr (readonly)
		[7]: module_upvr_11 (readonly)
		[8]: module_upvr_4 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var281 = module_upvr_18.Data_ById[arg1]
	local var282 = tbl_3_upvr.LevelAssetStates_ByLevelAsset[var281]
	local var283 = false
	if arg2 then
		if var282 then
			local any_LevelMapCreate_result1_3, any_LevelMapCreate_result2_2 = module_upvr_18.LevelMapCreate(var281, arg2:Clone(), true)
			local var286
			if not any_LevelMapCreate_result1_3 then
				var286 = nil
				warn(module_upvr_14.FormatOutput("Failed to process MapModel for reason: %*", "LevelAssetLogic", var286, any_LevelMapCreate_result2_2))
			else
				var283 = true
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if any_LevelMapCreate_result2_2 ~= module_upvr_14.ResponseType.Fallback then
					var286 = false
				else
					var286 = true
				end
				module_upvr_9.RunFunction(LevelAssetStateLoad_upvr, var282, any_LevelMapCreate_result1_3, var286)
			end
		end
	end
	if not var283 and var282 then
		ProcessFetchFailure_upvr(var282)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if any_LevelMapCreate_result2_2 == module_upvr_14.ResponseType.Failed and module_upvr_11.LocalCurrentLevel.LevelAsset == var281 then
		module_upvr_11.LocalPlayerStateCurrentLevelSet(module_upvr_4.DefaultLevel, true)
	end
end)
tbl_8_upvw = module_upvr_14.IsLoaded(module_upvr_11.LocalPolicyState)
if not tbl_8_upvw then
	tbl_8_upvw = nil
	tbl_8_upvw = module_upvr_11.LocalPolicyState.LoadStateChanged:Connect(function(arg1) -- Line 1309
		--[[ Upvalues[4]:
			[1]: module_upvr_14 (readonly)
			[2]: tbl_8_upvw (read and write)
			[3]: module_upvr_11 (readonly)
			[4]: tbl_3_upvr (readonly)
		]]
		if arg1 == module_upvr_14.LoadState.Loaded then
			tbl_8_upvw:Disconnect()
			if not module_upvr_11.LocalPolicyState.LootboxesEnabled then return end
			for _, v_32 in tbl_3_upvr.LevelAssetStates_ByLevelAsset do
				if module_upvr_14.IsLoaded(v_32) and v_32.Map then
					for _, v_33 in v_32.Map.Levels do
						for _, v_34 in v_33.Triggers do
							if v_34.Name == "Lootbox" then
								v_34.Parent = v_33.Directories.Triggers
							end
						end
					end
				end
			end
		end
	end)
end
if not module_upvr_11.Flags.LocalSaveDataLoaded then
	local var295_upvw
	var295_upvw = module_upvr_11.Signals.SaveDataLoaded:Connect(function(arg1) -- Line 1338
		--[[ Upvalues[5]:
			[1]: var295_upvw (read and write)
			[2]: tbl_3_upvr (readonly)
			[3]: module_upvr_4 (readonly)
			[4]: module_upvr_14 (readonly)
			[5]: ClaimCollectible_upvr (readonly)
		]]
		if var295_upvw.Connected then
			var295_upvw:Disconnect()
			for _, v_35 in tbl_3_upvr.LevelAssetStates_ByLevelAsset do
				local var302 = module_upvr_4.Levels_ByLevelAsset_ByIndex[v_35.Asset]
				if var302 then
					for _, v_36 in var302 do
						local any_SaveDataGetLevelStats_result1 = module_upvr_14.SaveDataGetLevelStats(arg1, v_36.Id)
						if any_SaveDataGetLevelStats_result1 then
							for _, v_37 in any_SaveDataGetLevelStats_result1.S do
								ClaimCollectible_upvr(v_35, module_upvr_14.CollectibleType.Star, {v_37})
							end
						end
					end
				end
			end
		end
	end)
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module_upvr_15.RenderStepped(arg1, arg2) -- Line 1376
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_11 (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: module_upvr_14 (readonly)
	]]
	if tbl_3_upvr.LoadedStatesDirty or module_upvr_11.Flags.CurrentLevelsDirty then
		for i_38, v_38 in module_upvr_11.PlayerState_ByPlayer do
			local var316
			if tbl_3_upvr.LoadedStatesDirty or v_38.CurrentLevelDirty then
				var316 = tbl_3_upvr.LevelAssetStates_ByLevelAsset
				local var317 = var316[v_38.CurrentLevel.LevelAsset]
				var316 = true
				local var318 = var316
				if i_38 ~= LocalPlayer_upvr then
					var318 = false
					if var317 ~= nil then
						var318 = var317.Active
						if var318 then
							var318 = module_upvr_14.IsLoaded(var317)
						end
					end
				end
				if var318 ~= v_38.VisibilityState.LevelLoaded then
					v_38.VisibilityState.Dirty = true
					v_38.VisibilityState.LevelLoaded = var318
				end
			end
		end
		tbl_3_upvr.LoadedStatesDirty = false
	end
end
function module_upvr_15.PostSimulation(arg1, arg2) -- Line 1411
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	for _, v_39 in tbl_3_upvr.LevelAssetStates_ByLevelAsset do
		if v_39.Active then
			local Collectibles = v_39.Collectibles
			for i_40 = #Collectibles, 1, -1 do
				local var323 = Collectibles[i_40]
				if module_upvr_3.Update(var323, arg1, arg2) then
					module_upvr_3.Destroy(var323)
					table.remove(Collectibles, i_40)
				end
			end
		end
	end
end
return module_upvr_15