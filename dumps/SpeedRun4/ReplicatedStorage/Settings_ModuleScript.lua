-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:44
-- Luau version 6, Types version 3
-- Time taken: 0.039776 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local any_IsStudio_result1_upvr_3 = game:GetService("RunService"):IsStudio()
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Utility"))
local tbl_37 = {
	SpeedRun4 = 1;
	Roll = 2;
	HelicopterChase = 3;
	ScaryRun = 4;
}
local tbl_11 = {
	Live = 1;
	Test = 2;
	Dev = 3;
}
local tbl_24 = {-- : First try: K:0: attempt to index nil with 't'

local var178_upvr
for i, v in tbl_24, var178_upvr do
	if v.IsPrimaryHost then
		local any_TableBuildSub_result1_2 = module_upvr_2.TableBuildSub({}, v.GameType)
		if any_TableBuildSub_result1_2[v.HostType] then
			error(string.format("Duplicate primary host for GameType '%*,' HostType '%*'", module_upvr_2.TableGetKeyFromValue(tbl_37, v.GameType), module_upvr_2.TableGetKeyFromValue(tbl_11, v.HostType)))
		else
			any_TableBuildSub_result1_2[v.HostType] = i
		end
	end
end
var178_upvr = tbl_24[game.PlaceId]
local var180 = var178_upvr or {
	GameType = tbl_37.SpeedRun4;
	HostType = tbl_11.Dev;
}
if var180.HostType ~= tbl_11.Live then
	var178_upvr = false
else
	var178_upvr = true
end
if var180.HostType ~= tbl_11.Test then
	-- KONSTANTWARNING: GOTO [400] #265
end
local var181_upvr = true
if var180.HostType ~= tbl_11.Dev then
	-- KONSTANTWARNING: GOTO [408] #270
end
local var182 = true
local var183_upvr
if any_IsStudio_result1_upvr_3 and var182 then
	local GameTypeOverride_2 = script:GetAttribute("GameTypeOverride")
	if GameTypeOverride_2 then
		var183_upvr = GameTypeOverride_2
		if module_upvr_2.TableGetKeyFromValue(tbl_37, var183_upvr) then
			var180.GameType = GameTypeOverride_2
		end
	end
end
if var180.GameType ~= tbl_37.Roll then
	local _ = false
	-- KONSTANTWARNING: Skipped task `defvar` above
else
end
var183_upvr = tbl_37.HelicopterChase
if var180.GameType ~= var183_upvr then
	-- KONSTANTWARNING: GOTO [441] #293
end
local var186_upvr = true
var183_upvr = var180.GameType
if var183_upvr ~= tbl_37.ScaryRun then
	-- KONSTANTWARNING: GOTO [449] #298
end
local var187_upvr = true
if var180.GameType ~= tbl_37.SpeedRun4 then
	var183_upvr = false
else
	var183_upvr = true
end
if not var183_upvr then
	if not var186_upvr then
		local var188 = var187_upvr
	end
end
local function _(arg1) -- Line 229, Named "ExperimentalFeatureEnabled"
	--[[ Upvalues[3]:
		[1]: var178_upvr (readonly)
		[2]: var181_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	local var189
	if var178_upvr then
		var189 = arg1.InLiveGame
	elseif var181_upvr then
		var189 = arg1.InTestGame
	else
		var189 = arg1.InDevGame
	end
	if not var189 or not var178_upvr then
		local tbl_10 = {}
		if arg1.InDevGame then
			tbl_10[#tbl_10 + 1] = "Dev Game"
		end
		if arg1.InTestGame then
			tbl_10[#tbl_10 + 1] = "Test Game"
		end
		if arg1.InLiveGame then
			tbl_10[#tbl_10 + 1] = "Live Game"
		end
		if 0 < #tbl_10 then
			warn(string.format("Feature \"%s\" is only enabled in the %s.", arg1.Name, module_upvr_2.FormatArray_OxfordComma(tbl_10)))
		end
	end
	return var189
end
local module = {
	IsHelicopterChase = var186_upvr;
	IsRollGame = true;
	IsScaryRun = var187_upvr;
	IsSpeedRun4 = var183_upvr;
	IsDevGame = var182;
	IsLiveGame = var178_upvr;
	IsTestGame = var181_upvr;
	IsStudio = any_IsStudio_result1_upvr_3;
	UseSpeedRun4Character = var188;
	BUAEnabled = var187_upvr;
	AudioMusicAmbienceMutedInStudio = false;
	MarketplaceFetchRetryDelay = 1;
	PrimaryDevHostId = nil;
	PrimaryLiveHostId = nil;
	PrimaryTestHostId = nil;
	CarryInteract_Enabled = true;
	CarryInteract_GrabDistance = 16;
	CarryInteract_MaxDistance = 200;
	CarryInteract_PopupTime = 5;
	CarryInteract_ProximityPromptDistance = 37;
	CarryInteract_ProximityPromptPopupCount = 10;
	CarryInteract_RequestCooldown = 9;
	CarryInteract_RequestExpiration = 30;
	CarryInteract_SeparateEnabled = false;
	CharacterFastLoading = false;
	CharacterMass = 20;
	CharacterMovingSpeed_Maximum = 180;
	CharacterMovingSpeed_Minimum = 1;
	CollectibleRadius_Event = 3;
	CollectibleRadius_Star = 3;
	CurrencyVoucherExpiredCleanPeriod = 3;
	CurrencyVoucherLifetimeDefault = 15;
	DancesEnabled = var188;
	DebugMonitorFFlagValues = false;
	DimensionsPurgeEquippedOnLoad = true;
	EnergyCarryingPlayerMultiplier = 1.25;
	EnergyCarryingAdditionalPlayerBonus = 0.125;
	EnergyCarriedPlayerMultiplier = 0.5;
	EnergyEnabled = true;
	EnergyExchangeMaxParticles = 50;
	EnergyExchangeMinParticles = 3;
	EnergyExchangeParticleRate = 0.75;
	EnergyGenerationPerSecond = 2.125;
	EnergyLevelRewardTime = 3;
	EventsEnabled = true;
	GemsBaseAwardAmount = 2;
	GroupGroupId = 4914205;
}
local var192 = not var183_upvr
if not var192 then
	var192 = not var178_upvr
	if not var192 then
		var192 = not var180.IsPrimaryHost
	end
end
module.GroupProvideMembershipReward = var192
module.GroupQueryLifetimePeriod = 15
module.GroupQueryRetryPeriod = 1
module.InputMovementIsDigitized = false
module.InputMobileThumbstickDeadzoneMaximum = 60
module.InputMobileThumbstickDeadzoneMinimum = 10
module.InputMobileThumbstickSizeSmall = 105
module.InputMobileThumbstickSizeLarge = 140
module.InputRaycastLength = 1000
module.ItemsEquippedDancesLimit = 3
module.ItemsEquippedDimensionsLimit = math.huge
module.ItemsEquippedSoundsLimit = 3
module.ItemsEquippedTrailsLimit = 1
module.LeaderboardGlobalRecordsShown = 100
module.LevelsCacheRemoteModels = true
module.LevelsDisableLighting = var187_upvr
module.LevelsPreloadNext = true
module.LevelsPreloadSpawnExtents = 20
module.LevelsPromptPurchaseDistanceDisengage = 45
module.LevelsPromptPurchaseDistanceInitiate = 30
module.LevelsRequestCooldown = 0.5
module.LevelsServerMapsOpenSpace = true
module.LevelsSpaceMappingEnabled = var186_upvr
module.LevelsSkipCostFactor = 20
module.MapTestLoadFailedMessage = nil
module.MemePointsAwardPeriod = 3
module.MemePointsRankUp_Base = 100
module.MemePointsRankUp_LinearIncrease = 10
module.MemePointsRankUp_ScalingIncrease = 0.5
module.MusicVolumeModifier = ({
	[tbl_37.SpeedRun4] = 1;
	[tbl_37.Roll] = 1;
	[tbl_37.HelicopterChase] = 1;
	[tbl_37.ScaryRun] = 1.1;
})[var180.GameType] or 1
module.PathChaserNPCCanNetworkCaptures = var187_upvr
module.PathChaserNPCMinimumSpeed = 16
module.PathChaserNPCRadius = 6
module.PetsCombineCount = 5
module.PetsCombineValueContribution = 0.75
module.PetsMaxEquippable = 25
module.PetsMinEquippable = 3
module.PetsPurchaseCooldownAuto = 6.5
module.PetsPurchaseCooldownMinimum = 3
module.PetsRemindPlayerAfterLevelIndex = 5
module.PriceLootboxDance = 300
module.PriceLootboxSound = 200
module.PriceLootboxWorld = 1200
module.ScaryRunAudioPlaybackModdedOnAllLevels = true
module.ScaryRunAudioFadeDelay = 3
module.ScaryRunAudioFadeDuration = 4
module.ScaryRunAudioPlaybackSpeedMod = 0.5
module.ScaryRunPausingResetsStrength = true
module.ScaryRunSpawnProtectionTime = 3
module.SellerNPCGreetRange = 75
module.SellerNPCDistanceDisengage = 25
module.SellerNPCDistanceInitiate = 20
module.SellerNPCPromptDistance = 120
module.SellerNPCScale = 1.75
module.SubscriptionsQueryRetryPeriod = 1
module.SubscriptionsQueryMinimumDelay = 15
module.TutorialsUserCanSkipOnboarding = false
module.UIBackpackHotbarTiles = 10
module.UIBackpackMaxHeightPixels = 90
module.UIBackpackMaxHeightScreenFactor = 0.15
module.UIBackpackMaxWidthScreenFactor = 0.8
module.UIBackpackMinHeightPixels = 60
module.UIMaxEmSize = 22
module.UIMaxEmSizeConsole = 36
module.UIScreenScalingConsole = 1
module.UIScreenScalingLarge = 0.035
module.UIScreenScalingSmall = 0.035
local var193 = true
module.UISpoofDefaultCursor = var193
if var188 then
	var193 = 25
else
	var193 = 60
end
module.WalkSpeedDefault = var193
if var188 then
	-- KONSTANTWARNING: GOTO [818] #545
end
module.WalkSpeedRunning = 120
module.WorldFeaturedInLobbyId = "FD"
module.WorldFeaturedShowsNewTag = false
if ({
	[tbl_37.SpeedRun4] = false;
	[tbl_37.Roll] = false;
	[tbl_37.HelicopterChase] = false;
	[tbl_37.ScaryRun] = false;
})[var180.GameType] ~= true then
else
end
module.WorldMainWorldUsesLevelLocks = true
if game:GetService("GuiService"):IsTenFootInterface() then
	module.UIMaxEmSize = module.UIMaxEmSizeConsole
end
if var182 then
	module.MapTestLoadFailedMessage = "Could not load test map. If this problem persists, the root cause is likely asset ownership.\nIf you are the map asset owner, ensure you are testing in Studio.\nIf Vurse owns the map asset, ensure you are testing from a Live Server.\n"
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
local var194 = ({})[var180.GameType]
if var194 then
	module.PrimaryDevHostId = var194[tbl_11.Dev]
	module.PrimaryLiveHostId = var194[tbl_11.Live]
	module.PrimaryTestHostId = var194[tbl_11.Test]
end
local var195_upvr = true
local function GenerateProductResolver(arg1) -- Line 852
	--[[ Upvalues[5]:
		[1]: var186_upvr (readonly)
		[2]: var195_upvr (readonly)
		[3]: var187_upvr (readonly)
		[4]: var183_upvr (readonly)
		[5]: any_IsStudio_result1_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var204
	if not arg1 and not any_IsStudio_result1_upvr_3 then
		local GameId_2 = game.GameId
		if GameId_2 ~= 6504723463 then
		else
		end
		if GameId_2 ~= 6403969458 then
		else
		end
		if GameId_2 ~= 6541749038 then
		else
		end
		if GameId_2 ~= 83858907 then
			var204 = false
		else
			var204 = true
		end
	end
	local tbl_20 = {var204, true, true, true}
	for i_2_upvw, v_2 in tbl_20 do
		if v_2 then
		end
	end
	local len_upvr_2 = #tbl_20
	local function ResolveId(...) -- Line 899
		--[[ Upvalues[2]:
			[1]: len_upvr_2 (readonly)
			[2]: i_2_upvw (read and write)
		]]
		if select('#', ...) ~= len_upvr_2 then
			error("Argument count mismatch", 2)
		end
		local var208
		if i_2_upvw then
			var208 = select(i_2_upvw, ...)
		end
		return var208
	end
	return ResolveId
end
module.ResolveGamepassId = GenerateProductResolver(true)
module.ResolveProductId = GenerateProductResolver(false)
GenerateProductResolver = not any_IsStudio_result1_upvr_3
local var209 = GenerateProductResolver
if var209 then
	if game.CreatorType ~= Enum.CreatorType.User then
		var209 = false
	else
		var209 = true
	end
end
if var209 then
else
end
local var210_upvr = 2
function module.ResolveAnimationId(...) -- Line 939, Named "ResolveId"
	--[[ Upvalues[1]:
		[1]: var210_upvr (readonly)
	]]
	if select('#', ...) ~= 2 then
		error("Argument count mismatch", 2)
	end
	local var211, var212 = ...
	local selected_arg = select(var210_upvr, ...)
	if not selected_arg then
		selected_arg = var211
		if not selected_arg then
			selected_arg = var212
			if not selected_arg then
				selected_arg = 0
			end
		end
	end
	return "rbxassetid://"..selected_arg
end
var210_upvr = module
module_upvr_2.TableFreezeAll(var210_upvr)
return module