-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:54
-- Luau version 6, Types version 3
-- Time taken: 0.016536 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_upvr_6 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local UserId_upvr = LocalPlayer_upvr.UserId
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_7 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_5 = require(Modules:WaitForChild("Audio"))
local module = require(Modules:WaitForChild("Signal"))
local module_upvr = require(Modules:WaitForChild("Tutorials"))
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
local module_2_upvr = require(Modules:WaitForChild("Worlds"))
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
module_upvr_6.CharacterState_ByCharacter = {}
module_upvr_6.PlayerState_ByPlayer = {}
module_upvr_6.PlayerState_ByUserId = {}
module_upvr_6.Now = workspace:GetServerTimeNow()
module_upvr_6.LocalCurrentLevel = module_2_upvr.DefaultLevel
module_upvr_6.LocalCarryState = nil
module_upvr_6.LocalPetState = nil
module_upvr_6.LocalPlayerIdentity = nil
module_upvr_6.LocalPlayerState = nil
module_upvr_6.LocalPolicyState = nil
module_upvr_6.LocalToolStates = nil
module_upvr_6.LocalTutorialState = nil
module_upvr_6.LocalVisibilityState = nil
module_upvr_6.LocalCharacterState = nil
module_upvr_6.LocalSaveData = module_upvr_2.TableDeepCopy(module_upvr_3.TemplateSaveData)
module_upvr_6.LocalSaveVersion = 0
module_upvr_6.LevelDataRecentEnergyRewards = {}
module_upvr_6.PlaytimeUpdatedAt = module_upvr_6.Now
module_upvr_6.WorldDataPendingProgressConsumption = {}
module_upvr_6.Flags = {
	AttemptPreloadLevel = false;
	AutoProgressLevels = false;
	CarryDistanceDirty = false;
	CurrentLevelsDirty = false;
	ExplainCarryBlockedAction = false;
	Initialized = false;
	LevelActivationPending = false;
	LevelMenuOpen = false;
	LoadingScreenActive = false;
	LoadingScreenCovering = false;
	LoadingScreenTransitioning = false;
	LocalPlayerPendingTeleport = true;
	LocalPlayerTeleported = false;
	LocalSaveDataLoaded = false;
	LocalToolStatesDirty = false;
	LocalToolEquipped = false;
	MouseLockActive = false;
	MouseLockActiveDirty = false;
	MusicEnabled = true;
	PetScreenActive = false;
	PromptActive = false;
	StopLocalWalking = false;
	TimerResetPending = true;
}
module_upvr_6.ResetCameraToDirection = nil
module_upvr_6.Signals = {
	AppliedDimensionStateChanged = module.new(nil, true);
	CarryStateChanged = module.new();
	CollectibleEarned = module.new();
	CounterChanged = module.new();
	CurrencyChanged = module.new();
	CurrencyVoucherRedeemed = module.new();
	CurrencyVouchersCreated = module.new();
	CurrencyShopRequested = module.new();
	DanceChanged = module.new();
	DonationsPageRequested = module.new();
	DimensionInterfaceOpenRequested = module.new();
	DurableAdded = module.new();
	EggHatched = module.new();
	EnergyExchanged = module.new();
	EnergyRewardReceived = module.new();
	EventCollectibleClaimed = module.new();
	EventMenuOpenChanged = module.new();
	GamepassAdded = module.new();
	GroupRewardClaimed = module.new();
	InventoryEquippedChanged = module.new(nil, true);
	InventoryOwnedAdded = module.new(nil, true);
	InventoryOwnedRemoved = module.new(nil, true);
	LevelChanged = module.new();
	LevelEnded = module.new();
	LevelReloadedPromptRequested = module.new();
	LevelStarted = module.new();
	LevelStatsChanged = module.new();
	LoadedEventInstanceStateChanged = module.new();
	LocalTutorialProgressed = module.new(module.Mode.Deferred);
	LootboxInterfaceOpenRequested = module.new();
	LuckChanged = module.new(module.Mode.DeferredCombined);
	MouseLockActiveChanged = module.new();
	PermissionChanged = module.new();
	PetOwnedCountChanged = module.new();
	PetReminderRequested = module.new();
	PlayerIdentityChanged = module.new();
	PlayerStateInitialized = module.new();
	PolicyReady = module.new();
	ProductCreditChanged = module.new();
	ProductPurchased = module.new();
	SaveDataLoaded = module.new();
	SaveLoadStateChanged = module.new();
	StarsChanged = module.new();
	SystemInitialized = module.new(module.Mode.Spawned);
	UniqueCollectibleDetailsChanged = module.new();
	UnlockExplanationRequested = module.new();
	WorldProgressConsumed = module.new();
	WorldStatsChanged = module.new();
}
function module_upvr_6.ClientDataYieldUntilInitialized() -- Line 326
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	if not module_upvr_6.Flags.Initialized then
		module_upvr_6.Signals.SystemInitialized:Wait()
	end
end
function module_upvr_6.LocalPlayerCanBeTouched() -- Line 336
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	return not module_upvr_3.CarryStateIsCarried(module_upvr_6.LocalCarryState)
end
function module_upvr_6.LocalPlayerTouched(arg1) -- Line 341
	--[[ Upvalues[3]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	local var24 = false
	local var25
	local var26
	if module_upvr_6.LocalPlayerCanBeTouched() then
		local any_PlayerGetFromPart_result1, any_PlayerGetFromPart_result2, any_PlayerGetFromPart_result3 = module_upvr_2.PlayerGetFromPart(arg1, true)
		if any_PlayerGetFromPart_result1 ~= LocalPlayer_upvr then
			var24 = false
		else
			var24 = true
		end
		if var24 then
			var25 = any_PlayerGetFromPart_result2
			var26 = any_PlayerGetFromPart_result3
		end
	end
	return var24, var25, var26
end
local function _(arg1) -- Line 367, Named "MusicEnabledSet_Internal"
	--[[ Upvalues[3]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_7 (readonly)
	]]
	module_upvr_6.Flags.MusicEnabled = arg1
	local SoundGroup_3 = module_upvr_5.SoundGroup
	if arg1 then
		SoundGroup_3 = 1
	else
		SoundGroup_3 = 0
	end
	SoundGroup_3.Ambience.Volume = SoundGroup_3
	SoundGroup_3 = module_upvr_5.SoundGroup
	if arg1 then
		SoundGroup_3 = module_upvr_7.MusicVolumeModifier
	else
		SoundGroup_3 = 0
	end
	SoundGroup_3.Music.Volume = SoundGroup_3
end
function module_upvr_6.MusicEnabledSet(arg1) -- Line 376
	--[[ Upvalues[3]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_7 (readonly)
	]]
	if arg1 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if module_upvr_6.Flags.MusicEnabled ~= true then
		local var32 = true
		module_upvr_6.Flags.MusicEnabled = var32
		local SoundGroup_2 = module_upvr_5.SoundGroup
		if var32 then
			SoundGroup_2 = 1
		else
			SoundGroup_2 = 0
		end
		SoundGroup_2.Ambience.Volume = SoundGroup_2
		if var32 then
		else
		end
		module_upvr_5.SoundGroup.Music.Volume = 0
	end
end
local MusicEnabled = module_upvr_6.Flags.MusicEnabled
module_upvr_6.Flags.MusicEnabled = MusicEnabled
local SoundGroup = module_upvr_5.SoundGroup
if MusicEnabled then
	SoundGroup = 1
else
	SoundGroup = 0
end
SoundGroup.Ambience.Volume = SoundGroup
SoundGroup = module_upvr_5.SoundGroup
if MusicEnabled then
	SoundGroup = module_upvr_7.MusicVolumeModifier
else
	SoundGroup = 0
end
SoundGroup.Music.Volume = SoundGroup
function module_upvr_6.OnboardingComplete() -- Line 387
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	return module_upvr.TutorialStateCompletedType(module_upvr_6.LocalTutorialState, module_upvr.TutorialType.Onboarding)
end
module_upvr_6.CarryDistanceState = {
	Carried = {};
	WasCarriedBy = {};
}
function module_upvr_6.CarryDistanceGet(arg1, arg2) -- Line 408
	--[[ Upvalues[2]:
		[1]: UserId_upvr (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	local var37
	if arg1 == UserId_upvr then
		var37 = module_upvr_6.CarryDistanceState.Carried[arg2]
	else
		var37 = module_upvr_6.CarryDistanceState.WasCarriedBy[arg1]
	end
	return var37 or 0
end
function module_upvr_6.CarryDistanceSet(arg1, arg2, arg3) -- Line 424
	--[[ Upvalues[2]:
		[1]: UserId_upvr (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	if arg1 == UserId_upvr then
		module_upvr_6.CarryDistanceState.Carried[arg2] = arg3
	else
		module_upvr_6.CarryDistanceState.WasCarriedBy[arg1] = arg3
	end
end
module_upvr_6.UniqueCollectibleDetails_ById = {}
module_upvr_6.CurrencyVoucherDetails_ByCurrencyType = {}
for _, v in module_upvr_3.CurrencyType do
	module_upvr_6.CurrencyVoucherDetails_ByCurrencyType[v] = {
		Vouchers = {};
		Withdrawn = 0;
	}
end
function module_upvr_6.GetCurrencyLessVouchers(arg1) -- Line 464
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_6 (readonly)
	]]
	return module_upvr_3.SaveDataGetCurrency(module_upvr_6.LocalSaveData, arg1) - module_upvr_6.CurrencyVoucherDetails_ByCurrencyType[arg1].Withdrawn
end
function module_upvr_6.CurrencyVouchersCreate(arg1, arg2, arg3, arg4) -- Line 480
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: module_upvr_7 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var43
	if module_upvr_3.CurrencyTypeMap[arg1] == nil then
		var43 = false
	else
		var43 = true
	end
	assert(var43, "Invalid CurrencyType")
	var43 = module_upvr_6.CurrencyVoucherDetails_ByCurrencyType
	local var44 = var43[arg1]
	var43 = math.max((arg3 or 1) // 1, 1)
	local table_create_result1 = table.create(var43)
	local var46 = arg4
	if not var46 then
		var46 = module_upvr_7.CurrencyVoucherLifetimeDefault
	end
	for i_2 = 1, var43 do
		local tbl = {
			Amount = arg2 / var43;
		}
		tbl.CurrencyType = arg1
		tbl.ExpiresAt = os.clock() + var46
		table_create_result1[i_2] = tbl
		local _
	end
	var44.Withdrawn += arg2
	table.move(table_create_result1, 1, var43, #var44.Vouchers + 1, var44.Vouchers)
	module_upvr_6.Signals.CurrencyVouchersCreated:Fire(arg1, arg2, table_create_result1)
	return table_create_result1
end
function module_upvr_6.CurrencyVoucherRedeem(arg1) -- Line 522
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	local var51 = module_upvr_6.CurrencyVoucherDetails_ByCurrencyType[arg1.CurrencyType]
	if var51 then
		local table_find_result1_2 = table.find(var51.Vouchers, arg1)
		if table_find_result1_2 then
			table.remove(var51.Vouchers, table_find_result1_2)
			if #var51.Vouchers == 0 then
				var51.Withdrawn = 0
			else
				var51.Withdrawn -= arg1.Amount
			end
			module_upvr_6.Signals.CurrencyVoucherRedeemed:Fire(arg1)
		end
	end
end
function module_upvr_6.CurrencyVouchersRedeemExpired(arg1) -- Line 553
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	for _, v_2 in module_upvr_6.CurrencyVoucherDetails_ByCurrencyType do
		for i_4 = #v_2.Vouchers, 1, -1 do
			local var56 = v_2.Vouchers[i_4]
			if var56.ExpiresAt <= arg1 then
				module_upvr_6.CurrencyVoucherRedeem(var56)
			end
		end
	end
end
module_upvr_6.DanceState = {
	CurrentDanceId = nil;
}
module_upvr_6.CarrierDimensionState = nil
module_upvr_6.DimensionState = require(Modules:WaitForChild("Dimensions")).DimensionStateCreate()
module_upvr_6.LastLoadedLobbyAdjacentLevelData = nil
function module_upvr_6.GetLobbyAdjacentWorld() -- Line 591
	--[[ Upvalues[2]:
		[1]: module_upvr_6 (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var58
	if module_upvr_6.LastLoadedLobbyAdjacentLevelData then
		var58 = module_2_upvr.Data_ByLevel[module_upvr_6.LastLoadedLobbyAdjacentLevelData]
	end
	return module_2_upvr.WorldsGetOwnedLobbyAdjacentWorld(module_upvr_6.LocalSaveData, var58)
end
module_upvr_6.LuckState = module_upvr_3.LuckStateCreate()
module_upvr_6.MemePointsRankupsLastAction = 0
module_upvr_6.MemePointsRankCost = module_upvr_3.MemePointsGetRankCost(module_upvr_6.LocalSaveData)
module_upvr_6.LocalMonetizationState = module_upvr_3.MonetizationStateCreate()
module_upvr_6.LocalPermissionState = module_upvr_3.PermissionStateCreate()
function module_upvr_6.PlayerStateCurrentLevelSet(arg1, arg2) -- Line 634
	--[[ Upvalues[4]:
		[1]: module_upvr_6 (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	if arg1.CurrentLevel ~= arg2 then
		arg1.CurrentLevel = arg2
		arg1.CurrentLevelDirty = true
		module_upvr_6.Flags.CurrentLevelsDirty = true
		local var78
		if arg1.Player == var78 then
			var78 = module_2_upvr.Data_ByLevel
			local var79 = var78[arg2]
			local var80 = var79
			if var80 then
				var80 = var79.IsTechnical
			end
			if var80 == true then
				var78 = false
			else
				var78 = true
			end
			if var78 then
				module_upvr_3.SaveDataCreateLevelStats(module_upvr_6.LocalSaveData, arg2.Id)
				table.clear(module_upvr_6.LevelDataRecentEnergyRewards)
				if 0 < #module_upvr_6.WorldDataPendingProgressConsumption then
					for _, v_3 in module_upvr_6.WorldDataPendingProgressConsumption do
						module_2_upvr.WorldConsumeProgress(v_3, module_upvr_6.LocalSaveData)
						module_upvr_6.Signals.WorldProgressConsumed:Fire(v_3)
					end
					table.clear(module_upvr_6.WorldDataPendingProgressConsumption)
				end
			end
			if module_upvr_3.CarryStateIsCarried(module_upvr_6.LocalCarryState) then
				module_upvr_6.Flags.LocalPlayerPendingTeleport = true
			end
			module_upvr_6.LocalCurrentLevel = arg2
			module_upvr_6.Signals.LevelChanged:Fire(arg2)
		end
		for _, v_4 in arg1.CarryState.Carrying do
			module_upvr_6.PlayerStateCurrentLevelSet(v_4.PlayerState, arg2)
		end
	end
	return arg1.CurrentLevelDirty
end
local State_upvr = Remotes:WaitForChild("State")
local Level_upvr = Remotes:WaitForChild("Level")
local module_upvr_8 = require(Modules:WaitForChild("ItemDataUtility"))
function module_upvr_6.LocalPlayerStateCurrentLevelSet(arg1, arg2) -- Line 691
	--[[ Upvalues[8]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: module_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: State_upvr (readonly)
		[6]: Level_upvr (readonly)
		[7]: module_upvr_8 (readonly)
		[8]: module_upvr_7 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	module_upvr_6.Flags.ExplainCarryBlockedAction = true
	do
		return false
	end
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 13. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 13. Error Block 3 end (CF ANALYSIS FAILED)
end
module_upvr_6.SubscriptionStatus_ById = {}
local AsyncData_upvr = Remotes:WaitForChild("AsyncData")
local module_upvr_4 = require(Modules:WaitForChild("Subscriptions"))
function module_upvr_6.SubscriptionStatusGet(arg1, arg2) -- Line 773
	--[[ Upvalues[4]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: AsyncData_upvr (readonly)
		[4]: module_upvr_4 (readonly)
	]]
	local var91_upvw = module_upvr_6.SubscriptionStatus_ById[arg1.SubscriptionId]
	if not var91_upvw then
		var91_upvw = {
			Status = module_upvr_3.SubscriptionStatus.Unknown;
		}
		module_upvr_6.SubscriptionStatus_ById[arg1.SubscriptionId] = var91_upvw
	end
	if var91_upvw.Status == module_upvr_3.SubscriptionStatus.Unknown then
		AsyncData_upvr:FireServer(module_upvr_3.AsyncDataRequestType.SubscriptionStatus, arg1.NetworkId)
		if arg2 then
			local var94_upvw
			local current_thread_upvr_2 = coroutine.running()
			var94_upvw = module_upvr_4.SubscriptionStatusChanged:Connect(function(arg1_3, arg2_3, arg3) -- Line 802
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: var94_upvw (read and write)
					[3]: var91_upvw (read and write)
					[4]: current_thread_upvr_2 (readonly)
				]]
				if arg2_3 == arg1 and var94_upvw.Connected then
					var94_upvw:Disconnect()
					var91_upvw = arg3
					if coroutine.status(current_thread_upvr_2) == "suspended" then
						task.spawn(current_thread_upvr_2)
					end
				end
			end)
			coroutine.yield()
		end
	end
	return var91_upvw
end
module_upvr_6.QuestState = require(Modules:WaitForChild("Quests")).QuestStateCreate()
function module_upvr_6.SkipButtonShouldBeVisible() -- Line 832
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local var99 = false
	if not module_upvr_3.CarryStateIsCarried(module_upvr_6.LocalCarryState) then
		local LocalCurrentLevel = module_upvr_6.LocalCurrentLevel
		if not module_2_upvr.Data_ByLevel[LocalCurrentLevel].IsTechnical then
			local any_LevelGetNext_result1_2 = module_2_upvr.LevelGetNext(LocalCurrentLevel)
			if any_LevelGetNext_result1_2 and module_2_upvr.LevelCanUse(any_LevelGetNext_result1_2, module_upvr_6.LocalSaveData, true) then
				var99 = true
			end
		end
	end
	return var99
end
module_upvr_6.VisibilityType = table.freeze({
	Hidden = 1;
	TrailsHidden = 2;
	Full = 3;
})
function module_upvr_6.VisibilityStateCreate() -- Line 871
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	return {
		Dirty = true;
		LevelLoaded = false;
		Visibility = module_upvr_6.VisibilityType.Full;
	}
end
function module_upvr_6.WorldGetEquipped() -- Line 886
	--[[ Upvalues[2]:
		[1]: module_upvr_6 (readonly)
		[2]: module_2_upvr (readonly)
	]]
	return assert(module_2_upvr.Data_ById[assert(module_upvr_6.LocalSaveData.Inventory.Worlds.Equipped[1], "Missing equipped world")], "Invalid equipped world")
end
return module_upvr_6