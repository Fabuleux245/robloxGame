-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:43
-- Luau version 6, Types version 3
-- Time taken: 0.092014 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules_2 = ReplicatedStorage:WaitForChild("Modules")
local module_8_upvr = require(Modules_2:WaitForChild("Utility"))
local module_17_upvr = {
	AsyncDataRequestType = table.freeze({
		CarryDistance = "cd";
		CarryRequest = "cr";
		DonationNotification = "dn";
		EnemyClaimIds = "ec";
		GiftSent = "gs";
		LuckState = "ls";
		PermissionState = "ps";
		SessionRestore = "sr";
		UniqueCollectibleDetails = "uc";
		CharacterCaptured = "cc";
		DonationState = "ds";
		GetSpaceMap = "gm";
		LegacyVIPPrompt = "lvp";
		SubscriptionStatus = "ss";
	});
	CarryRequestType = table.freeze({
		Carry = 'c';
		Drop = 'd';
		Pair = 'p';
		Separate = 's';
		Unpair = 'u';
	});
	CollectibleType = table.freeze({
		Event = 'e';
		Star = 's';
		Unique = 'u';
	});
	CounterType = table.freeze({
		DonationsReceived = "dr";
		DonationsGame = "dg";
		DonationsPlayer = "dp";
		ForbiddenLevels = 'f';
		MainLevels = 'm';
		PetEquipLimit = 'p';
		PlayerClicks = 'c';
		SecretLevels = 's';
	});
	CurrencyType = table.freeze({
		Cash = 'c';
		Gems = 'g';
		MemePoints = 'm';
	});
	DataRequestType = table.freeze({
		Counter = "co";
		Currency = "cu";
		EnergyHighestMultiplier = "em";
		EquippedItems = "eq";
		GroupRewardClaimed = "gr";
		LevelEndUpdate = "le";
		OwnedItemsAdd = "oa";
		OwnedItemsRemove = "or";
		PetStock = "ps";
		Playtime = "pt";
		ProductCreditSpent = "pc";
		ProductPurchased = "pp";
		QuestCompletionCount = "qe";
		Snapshot = "sn";
		Star = "st";
		WorldEndUpdate = "we";
	});
	DurableStateType = table.freeze({
		PurchaseEligible = 'e';
		PurchaseIneligible = 'i';
		Owned = 'o';
	});
	DurableType = {
		Luck3x = "l3";
		Luck4x = "l4";
	};
	ExceptionHandleType = table.freeze({
		Print = 1;
		Warn = 2;
		Error = 3;
	});
	ItemAction = table.freeze({
		Buy = 'b';
		Equip = 'e';
		Unequip = 'u';
	});
	ItemType = table.freeze({
		Dance = "da";
		Dimension = "di";
		Egg = 'e';
		Level = 'l';
		Pet = 'p';
		Sound = 's';
		Trail = 't';
		World = 'w';
	});
	LeaderboardSort = table.freeze({
		Descending = 1;
		Ascending = 2;
		AscendingZerosLast = 3;
	});
	LeaderboardType = table.freeze({
		Donations = "do";
		LevelTimeBest = "lt";
		LevelCompletions = "lc";
		Playtime = "pt";
		StarCount = "sc";
		WorldTimeBest = "wt";
		WorldCompletions = "wc";
	});
	LevelRequestType = table.freeze({
		LevelEnd = "le";
		LevelStart = "ls";
		LevelTrigger = "lt";
		RestartLevel = "rl";
		GetAsset = "ga";
		HazardEncountered = "he";
		SkipLevel = "sl";
		CollectibleEarned = "ce";
	});
	LeaderstatsType = table.freeze({
		Currency = 'c';
		Stars = 's';
	});
	LoadState = table.freeze({
		Canceled = 1;
		Loading = 2;
		Loaded = 3;
	});
	PermissionType = table.freeze({
		EggsOpen3 = "e3";
		EggsOpen8 = "e8";
	});
	PetRequestType = table.freeze({
		Buy = 'b';
		Combine = 'c';
		Equip = 'e';
		EquipBest = "eb";
		Unequip = 'u';
	});
	QuestDifficulty = table.freeze({
		Unrated = 1;
	});
	QuestRequestType = table.freeze({
		Abandon = 'a';
		Begin = 'b';
		ClaimReward = 'c';
		PurchaseCompletion = 'p';
		QuestRemoved = 'r';
		QuestStarted = 's';
		QuestUpdated = 'u';
	});
	ResponseType = table.freeze({
		Success = 's';
		Failed = 'f';
		Unknown = 'u';
		AwaitingResponse = "ar";
		AwaitingUserInput = "ai";
		Pending = "pe";
		DataUnavailable = "du";
		Fallback = "fb";
		NotAuthorized = "na";
		TooManyRequests = "tm";
		AlreadyOwned = "ao";
		InsufficientFunds = "if";
		AlreadyCompleted = "ac";
		AlreadyStarted = "as";
		NotComplete = "nc";
		NotStarted = "ns";
	});
	SaveLoadState = table.freeze({
		Loading = 1;
		Loaded = 2;
		LoadFailed = 3;
		SessionLocked = 4;
		SessionReleasing = 5;
		SessionReleased = 6;
		MigrationInProcess = 7;
		MigrationFailure = 8;
		InvalidVersion = 9;
	});
	StateRequestType = table.freeze({
		Snapshot = 's';
		CarryState = "cs";
		EnemyState = "es";
		LeaderboardState = "ls";
		LevelChanged = "lc";
		MonetizationState = "ms";
		PetState = "ps";
		TutorialState = "ts";
		CounterIncrement = "ci";
		GroupRewardClaim = "gr";
		DurableBuy = "db";
		EggBuy = "eb";
		EggUnlock = "eu";
		EnergyExchange = "ee";
		ItemAction = "ia";
		ItemBuyRandom = "ib";
		ProductBuy = "pb";
		Teleport = "tp";
		TestLevelAsset = "ta";
		DanceChanged = "dc";
		DimensionState = "ds";
		LeaderstatsChanged = "ld";
		Response = 'r';
		TrailCreated = "tc";
		VIPStatusChanged = "vs";
	});
	SubscriptionStatus = table.freeze({
		Unknown = 'u';
		Active = 'a';
		Inactive = 'i';
		PaymentPending = 'p';
	});
	ToolRequestType = table.freeze({
		Snapshot = 's';
		Use = 'u';
	});
	ToolType = table.freeze({
		AdminCloud = "ca";
		Cloud = 'c';
		Dance = 'd';
		GravityCoil = "cg";
		Rifle = 'r';
		SpeedCoil = "cs";
		Sound = 's';
	});
	UnlockMethod = table.freeze({
		EventReward = 'e';
		Gamepass = 'g';
		Currency = 'c';
		Product = 'p';
		Stars = 's';
		UserRequest = 'u';
	});
	UnlockRequirementType = table.freeze({
		LevelCompletions = "lc";
	});
	DefaultWorldId = "Regular";
}
local var474 = "[[[ TEST WORLD ]]]"
module_17_upvr.TesterWorldId = var474
if module_2_upvr.EnergyEnabled then
	var474 = module_17_upvr.CurrencyType.Cash
else
	var474 = module_17_upvr.CurrencyType.Gems
end
module_17_upvr.PrimaryCurrencyType = var474
module_17_upvr.CurrencyType_ByItemType = table.freeze({
	[module_17_upvr.ItemType.Dance] = module_17_upvr.CurrencyType.MemePoints;
	[module_17_upvr.ItemType.Dimension] = module_17_upvr.PrimaryCurrencyType;
	[module_17_upvr.ItemType.Egg] = module_17_upvr.PrimaryCurrencyType;
	[module_17_upvr.ItemType.Sound] = module_17_upvr.CurrencyType.MemePoints;
	[module_17_upvr.ItemType.Trail] = module_17_upvr.PrimaryCurrencyType;
	[module_17_upvr.ItemType.World] = module_17_upvr.PrimaryCurrencyType;
})
module_17_upvr.CurrencyType_ByCounterType = table.freeze({
	[module_17_upvr.CounterType.MainLevels] = module_17_upvr.PrimaryCurrencyType;
	[module_17_upvr.CounterType.SecretLevels] = module_17_upvr.PrimaryCurrencyType;
})
module_17_upvr.ItemKey_ByItemType = table.freeze({
	[module_17_upvr.ItemType.Dance] = "Dances";
	[module_17_upvr.ItemType.Dimension] = "Dimensions";
	[module_17_upvr.ItemType.Egg] = "Eggs";
	[module_17_upvr.ItemType.Level] = "Levels";
	[module_17_upvr.ItemType.Sound] = "Sounds";
	[module_17_upvr.ItemType.Trail] = "Trails";
	[module_17_upvr.ItemType.World] = "Worlds";
})
module_17_upvr.CounterTypeMap = table.freeze({
	[module_17_upvr.CounterType.DonationsGame] = "Donations";
	[module_17_upvr.CounterType.DonationsPlayer] = "DonationsPlayer";
	[module_17_upvr.CounterType.DonationsReceived] = "DonationsReceived";
	[module_17_upvr.CounterType.ForbiddenLevels] = "ForbiddenLevels";
	[module_17_upvr.CounterType.PetEquipLimit] = "PetEquipLimit";
	[module_17_upvr.CounterType.PlayerClicks] = "PlayerClicks";
	[module_17_upvr.CounterType.MainLevels] = "MainLevels";
	[module_17_upvr.CounterType.SecretLevels] = "SecretLevels";
})
module_17_upvr.CurrencyTypeMap = table.freeze({
	[module_17_upvr.CurrencyType.Cash] = "Cash";
	[module_17_upvr.CurrencyType.Gems] = "Gems";
	[module_17_upvr.CurrencyType.MemePoints] = "MemePoints";
})
module_17_upvr.ItemTypeLookup = {}
for i, v in module_17_upvr.ItemKey_ByItemType do
	module_17_upvr.ItemTypeLookup[v] = i
end
table.freeze(module_17_upvr.ItemTypeLookup)
module_17_upvr.CollisionGroups = {
	Default = "Default";
	Hazard = "Hazard";
	Limb = "CharacterLimb";
	LimbSolid = "CharacterLimbSolid";
	Ragdoll = "CharacterRagdoll";
	RaycastCharacter = "CharacterOnly";
	RaycastCharacterWorld = "CharacterWorld";
	RaycastWorld = "WorldOnly";
	Root = "CharacterRoot";
	Technical = "Technical";
}
module_17_upvr.Tags = {
	EnemyHumanoid = "_EH";
	EnemyIgnore = "ZombieIgnore";
	HumanoidDescriptionApplied = "_H";
	HumanoidIgnoreTag = require(Modules_2:WaitForChild("HumanoidEngine"):WaitForChild("HumanoidProperties")).HumanoidIgnoreTag;
	ItemThemeColor = "IT_C";
	ItemThemeColorAccent = "IT_CA";
	ItemThemeTexture = "IT_T";
	ItemThemeTextureAccent = "IT_TA";
	MapperIgnore = "_M";
	MapperMap = "_MM";
	Trail = "_T";
}
module_17_upvr.TemplateSaveData = {
	Counters = {
		Donations = 0;
		DonationsPlayer = 0;
		DonationsReceived = 0;
		ForbiddenLevels = 0;
		PetEquipLimit = module_2_upvr.PetsMinEquippable;
		PlayerClicks = 0;
		MainLevels = 1;
		SecretLevels = 0;
	};
	Credit = {};
	Currency = {
		Cash = 0;
		Gems = 0;
		MemePoints = 0;
	};
	Durables = {};
	Energy = 0;
	EnergyTotal = 0;
	EnergyHighestMultiplier = 1;
	Gamepasses = {};
	GroupRewardIds = {};
	Inventory = {
		Dances = {
			Equipped = {};
			Owned = {};
		};
		Dimensions = {
			Equipped = {};
			Owned = {};
		};
		Eggs = {
			Equipped = {};
			Owned = {};
		};
		Levels = {
			Equipped = {};
			Owned = {};
		};
		Sounds = {
			Equipped = {};
			Owned = {};
		};
		Trails = {
			Equipped = {};
			Owned = {};
		};
		Worlds = {
			Equipped = {module_17_upvr.DefaultWorldId};
			Owned = {module_17_upvr.DefaultWorldId};
		};
	};
	LevelStats = {};
	MemePointsRank = 0;
	MemePointsExp = 0;
	Pets = {
		Owned = {};
	};
	Playtime = 0;
	Quests = {
		Completed = {};
		Started = {};
	};
	WorldStats = {};
}
function module_17_upvr.SortItemData(arg1, arg2) -- Line 1205
	local var497 = arg1.SortOrder or math.huge
	local SortOrder_2 = arg2.SortOrder
	local var499 = SortOrder_2 or math.huge
	if var497 ~= var499 then
		if var497 >= var499 then
			SortOrder_2 = false
		else
			SortOrder_2 = true
		end
		return SortOrder_2
	end
	local var500 = arg1.Price or (-math.huge)
	local var501 = arg2.Price or (-math.huge)
	if var500 ~= var501 then
		if var500 >= var501 then
		else
		end
		return true
	end
	local var502 = arg1.CreatedAt or math.huge
	local var503 = arg2.CreatedAt or math.huge
	if var502 ~= var503 then
		if var503 >= var502 then
		else
		end
		return true
	end
	if string.lower(arg1.Name) >= string.lower(arg2.Name) then
	else
	end
	return true
end
function module_17_upvr.CanPurchase(arg1) -- Line 1230
	local var504 = not arg1.Unownable
	if var504 then
		if arg1.Price == nil then
			var504 = false
		else
			var504 = true
		end
	end
	return var504
end
function module_17_upvr.CanRoll(arg1) -- Line 1236
	local var505 = not arg1.Unownable
	if var505 then
		var505 = not arg1.Unrollable
		if var505 then
			if arg1.UnlockRequirements ~= nil then
				var505 = false
			else
				var505 = true
			end
		end
	end
	return var505
end
function module_17_upvr.ItemInventoryIsUsingItem(arg1, arg2) -- Line 1243
	local var506
	if table.find(arg1.Equipped, arg2) == nil then
		var506 = false
	else
		var506 = true
	end
	return var506
end
function module_17_upvr.ItemInventoryOwnsItem(arg1, arg2) -- Line 1250
	local var507
	if table.find(arg1.Owned, arg2) == nil then
		var507 = false
	else
		var507 = true
	end
	return var507
end
function module_17_upvr.CanUse(arg1, arg2) -- Line 1257
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var508
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 8. Error Block 14 start (CF ANALYSIS FAILED)
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: [16] 11. Error Block 13 end (CF ANALYSIS FAILED)
		var508 = true
		-- KONSTANTERROR: [16] 11. Error Block 13 start (CF ANALYSIS FAILED)
		return arg1.UnlockRequirements ~= nil
	end
	if arg1.Price > 0 or INLINED_4() then
		-- KONSTANTERROR: [21] 14. Error Block 12 start (CF ANALYSIS FAILED)
		var508 = false
		if arg2 ~= nil then
			var508 = module_17_upvr.ItemInventoryOwnsItem(arg2, arg1.Id)
		end
		-- KONSTANTERROR: [21] 14. Error Block 12 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [11] 8. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 21. Error Block 10 start (CF ANALYSIS FAILED)
	do
		return var508
	end
	-- KONSTANTERROR: [31] 21. Error Block 10 end (CF ANALYSIS FAILED)
end
local module_6_upvr = require(Modules_2:WaitForChild("AnimatedTextureUtility"))
local function ApplyTexturesToParts_upvr(arg1, arg2, arg3) -- Line 1282, Named "ApplyTexturesToParts"
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: module_8_upvr (readonly)
	]]
	for _, v_2 in arg1 do
		local var522
		if arg3 then
			var522 = module_6_upvr.Create(v_2, arg2).Textures
		else
			var522 = module_8_upvr.TextureWrapPart(v_2, arg2)
		end
		local any_GetAttributes_result1 = v_2:GetAttributes()
		if typeof(any_GetAttributes_result1.TextureColor) == "Color3" then
			for _, v_3 in var522 do
				v_3.Color3 = any_GetAttributes_result1.TextureColor
				local _
			end
		end
		if typeof(any_GetAttributes_result1.TextureTransparency) == "number" then
			for _, v_4 in var522 do
				v_4.Transparency = any_GetAttributes_result1.TextureTransparency
				local _
			end
		end
	end
end
function module_17_upvr.ItemThemeApply(arg1, arg2, arg3) -- Line 1320
	--[[ Upvalues[2]:
		[1]: module_17_upvr (readonly)
		[2]: ApplyTexturesToParts_upvr (readonly)
	]]
	local tbl_44 = {
		[module_17_upvr.Tags.ItemThemeColor] = {};
		[module_17_upvr.Tags.ItemThemeColorAccent] = {};
		[module_17_upvr.Tags.ItemThemeTexture] = {};
		[module_17_upvr.Tags.ItemThemeTextureAccent] = {};
	}
	local tbl_8 = {
		[module_17_upvr.Tags.ItemThemeColor] = {};
		[module_17_upvr.Tags.ItemThemeColorAccent] = {};
	}
	for i_5, v_5 in arg1:GetDescendants() do
		if v_5:IsA("BasePart") then
			for i_6, v_6 in tbl_44 do
				if v_5:HasTag(i_6) then
					v_6[#v_6 + 1] = v_5
				end
			end
		elseif v_5:IsA("ParticleEmitter") then
			for i_26, v_26 in tbl_8 do
				if v_5:HasTag(i_26) then
					v_26[#v_26 + 1] = v_5
				end
			end
		end
	end
	if arg2.Color then
		v_5 = module_17_upvr
		i_5 = v_5.Tags
		i_5 = nil
		v_5 = nil
		for _, v_7 in tbl_44[i_5.ItemThemeColor], i_5, v_5 do
			v_7.Color = arg2.Color
			local var560
		end
		i_5 = var560
		v_5 = module_17_upvr.Tags.ItemThemeColor
		i_5 = tbl_8[v_5]
		v_5 = i_5
		for _, v_8 in v_5 do
			v_8.Color = ColorSequence.new(i_5)
			local _
		end
	end
	if arg2.ColorAccent then
		v_5 = module_17_upvr
		i_5 = v_5.Tags
		i_5 = nil
		v_5 = nil
		for _, v_9 in tbl_44[i_5.ItemThemeColorAccent], i_5, v_5 do
			v_9.Color = arg2.ColorAccent
			local var563
		end
		i_5 = var563
		v_5 = module_17_upvr.Tags.ItemThemeColorAccent
		i_5 = tbl_8[v_5]
		v_5 = i_5
		for _, v_10 in v_5 do
			v_10.Color = ColorSequence.new(i_5)
			local _
		end
	end
	if arg2.Texture then
		v_5 = module_17_upvr
		i_5 = v_5.Tags
		i_5 = tbl_44[i_5.ItemThemeTexture]
		v_5 = arg2.Texture
		ApplyTexturesToParts_upvr(i_5, v_5, arg3)
	end
	if arg2.TextureAccent then
		v_5 = module_17_upvr
		i_5 = v_5.Tags
		i_5 = tbl_44[i_5.ItemThemeTextureAccent]
		v_5 = arg2.TextureAccent
		ApplyTexturesToParts_upvr(i_5, v_5, false)
	end
end
ApplyTexturesToParts_upvr = {}
local CompareUserIds_upvr = ApplyTexturesToParts_upvr
CompareUserIds_upvr[0] = ""
CompareUserIds_upvr[1] = string.rep("[%s]", 1).." - "
CompareUserIds_upvr[2] = string.rep("[%s]", 2).." - "
function module_17_upvr.FormatOutput(arg1, arg2, arg3, ...) -- Line 1419
	--[[ Upvalues[1]:
		[1]: CompareUserIds_upvr (readonly)
	]]
	local module_9 = {}
	if arg2 then
		module_9[#module_9 + 1] = arg2
	end
	if arg3 then
		module_9[#module_9 + 1] = arg3.Name
	end
	local len_2 = #module_9
	local packed = table.pack(...)
	table.move(packed, 1, packed.n, len_2 + 1, module_9)
	return string.format(CompareUserIds_upvr[len_2]..arg1, table.unpack(module_9, 1, len_2 + packed.n))
end
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1450, Named "GetExceptionHandler"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local module_16 = {}
	module_16[1] = arg2
	if arg1 ~= module_17_upvr.ExceptionHandleType.Error then
		if arg1 == module_17_upvr.ExceptionHandleType.Print then
			return print, module_16
		end
		return warn, module_16
	end
	module_16[2] = arg3
	return error, module_16
end
module_17_upvr.GetExceptionHandler = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1477, Named "SaveDataAddEnergy"
	arg1.Energy += arg2
	arg1.EnergyTotal += arg2
end
module_17_upvr.SaveDataAddEnergy = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1486, Named "SaveDataCanAfford"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var570 = module_17_upvr.SaveDataGetCurrency(arg1, arg2) - arg3
	local var571 = true
	if 0 > var570 then
		if arg3 > 0 then
			var571 = false
		else
			var571 = true
		end
	end
	return var571, var570
end
module_17_upvr.SaveDataCanAfford = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1499, Named "SaveDataCreateLevelStats"
	local var572 = arg1.LevelStats[arg2]
	if not var572 then
		var572 = {
			S = {};
		}
		arg1.LevelStats[arg2] = var572
	end
	return var572
end
module_17_upvr.SaveDataCreateLevelStats = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1516, Named "SaveDataCreateWorldStats"
	local var574 = arg1.WorldStats[arg2]
	if not var574 then
		var574 = {}
		arg1.WorldStats[arg2] = var574
	end
	return var574
end
module_17_upvr.SaveDataCreateWorldStats = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3, arg4) -- Line 1533, Named "SaveDataGetAffordedUnits"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var575
	if 0 < arg4 then
		var575 = math.min(module_17_upvr.SaveDataGetCurrency(arg1, arg2) // arg4, arg3)
	else
		var575 = arg3
	end
	return var575, var575 * arg4
end
module_17_upvr.SaveDataGetAffordedUnits = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1554, Named "SaveDataGetCount"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	return arg1.Counters[assert(module_17_upvr.CounterTypeMap[arg2], "Invalid CounterType")]
end
module_17_upvr.SaveDataGetCount = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1565, Named "SaveDataGetCurrency"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	return arg1.Currency[assert(module_17_upvr.CurrencyTypeMap[arg2], "Invalid CurrencyType")]
end
module_17_upvr.SaveDataGetCurrency = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 1575, Named "SaveDataGetTotalDonations"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	return module_17_upvr.SaveDataGetCount(arg1, module_17_upvr.CounterType.DonationsGame) + module_17_upvr.SaveDataGetCount(arg1, module_17_upvr.CounterType.DonationsPlayer)
end
module_17_upvr.SaveDataGetTotalDonations = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1587, Named "SaveDataGetLevelStats"
	return arg1.LevelStats[arg2]
end
module_17_upvr.SaveDataGetLevelStats = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 1595, Named "SaveDataGetPetEquipLimit"
	--[[ Upvalues[2]:
		[1]: module_17_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	return math.clamp(module_17_upvr.SaveDataGetCount(arg1, module_17_upvr.CounterType.PetEquipLimit), module_2_upvr.PetsMinEquippable, module_2_upvr.PetsMaxEquippable)
end
module_17_upvr.SaveDataGetPetEquipLimit = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1609, Named "SaveDataGetPetStockCount"
	return arg1.Pets.Owned[arg2] or 0
end
module_17_upvr.SaveDataGetPetStockCount = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1619, Named "SaveDataGetProductCredit"
	local var580
	for _, v_11 in arg1.Credit do
		if v_11[1] == arg2 then
			var580 = v_11[2]
			return var580
		end
	end
	return var580
end
module_17_upvr.SaveDataGetProductCredit = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 1636, Named "SaveDataGetTotalStars"
	local var585 = 0
	for _, v_12 in arg1.LevelStats do
		var585 += #v_12.S
	end
	return var585
end
module_17_upvr.SaveDataGetTotalStars = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1649, Named "SaveDataGetQuestCompletions"
	return arg1.Quests.Completed[arg2] or 0
end
module_17_upvr.SaveDataGetQuestCompletions = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1659, Named "SaveDataGetWorldStats"
	return arg1.WorldStats[arg2]
end
module_17_upvr.SaveDataGetWorldStats = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1667, Named "SaveDataIncrementCounter"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var586
	if 0 > arg3 then
		var586 = false
	else
		var586 = true
	end
	assert(var586, "Addition must be non-negative")
	var586 = module_17_upvr.CounterTypeMap[arg2]
	local assert_result1 = assert(var586, "Invalid CounterType")
	var586 = arg1.Counters
	var586[assert_result1] += arg3
	var586 = arg1.Counters[assert_result1]
	return var586
end
module_17_upvr.SaveDataIncrementCounter = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1683, Named "SaveDataIncrementPetStockCount"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local any_SaveDataGetPetStockCount_result1_2 = module_17_upvr.SaveDataGetPetStockCount(arg1, arg2)
	if arg3 ~= 0 then
		any_SaveDataGetPetStockCount_result1_2 += arg3
		module_17_upvr.SaveDataSetPetsStockCount(arg1, arg2, any_SaveDataGetPetStockCount_result1_2)
	end
	return any_SaveDataGetPetStockCount_result1_2
end
module_17_upvr.SaveDataIncrementPetStockCount = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1699, Named "SaveDataIncrementProductCredit"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local any_SaveDataGetProductCredit_result1_2 = module_17_upvr.SaveDataGetProductCredit(arg1, arg2)
	if arg3 ~= 0 then
		any_SaveDataGetProductCredit_result1_2 += arg3
		module_17_upvr.SaveDataSetProductCredit(arg1, arg2, any_SaveDataGetProductCredit_result1_2)
	end
	return any_SaveDataGetProductCredit_result1_2
end
module_17_upvr.SaveDataIncrementProductCredit = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1715, Named "SaveDataOwnsItem"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	return module_17_upvr.ItemInventoryOwnsItem(arg1.Inventory[assert(module_17_upvr.ItemKey_ByItemType[arg2], "Invalid ItemType")], arg3)
end
module_17_upvr.SaveDataOwnsItem = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1727, Named "SaveDataSetCurrency"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	arg1.Currency[assert(module_17_upvr.CurrencyTypeMap[arg2], "Invalid CurrencyType")] = arg3
end
module_17_upvr.SaveDataSetCurrency = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1737, Named "SaveDataSetPetsStockCount"
	local var590 = arg1.Pets.Owned[arg2] or 0
	if arg3 ~= 0 then
		arg1.Pets.Owned[arg2] = arg3
		return var590
	end
	arg1.Pets.Owned[arg2] = nil
	return var590
end
module_17_upvr.SaveDataSetPetsStockCount = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1754, Named "SaveDataSetProductCredit"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 14. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 14. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.11]
	-- KONSTANTERROR: [8] 8. Error Block 2 end (CF ANALYSIS FAILED)
end
module_17_upvr.SaveDataSetProductCredit = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 1796, Named "IsLoaded"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var591
	if arg1.LoadState ~= module_17_upvr.LoadState.Loaded then
		var591 = false
	else
		var591 = true
	end
	return var591
end
module_17_upvr.IsLoaded = CompareUserIds_upvr
local module_14_upvr = require(Modules_2:WaitForChild("Signal"))
function CompareUserIds_upvr(arg1) -- Line 1800, Named "LoadableObjectCreate"
	--[[ Upvalues[2]:
		[1]: module_17_upvr (readonly)
		[2]: module_14_upvr (readonly)
	]]
	arg1.LoadState = module_17_upvr.LoadState.Loading
	arg1.LoadStateChanged = module_14_upvr.new()
	return arg1
end
module_17_upvr.LoadableObjectCreate = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1810, Named "SetLoadableObjectState"
	if arg1.LoadState ~= arg2 then
		arg1.LoadState = arg2
		arg1.LoadStateChanged:Fire(arg2)
	end
end
function module_17_upvr.LoadableObjectDestroy(arg1) -- Line 1821
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local Canceled_2 = module_17_upvr.LoadState.Canceled
	if arg1.LoadState ~= Canceled_2 then
		arg1.LoadState = Canceled_2
		arg1.LoadStateChanged:Fire(Canceled_2)
	end
	arg1.LoadStateChanged:DisconnectAll()
end
function module_17_upvr.LoadObject(arg1) -- Line 1827
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local Loaded = module_17_upvr.LoadState.Loaded
	if arg1.LoadState ~= Loaded then
		arg1.LoadState = Loaded
		arg1.LoadStateChanged:Fire(Loaded)
	end
end
function module_17_upvr.UnloadObject(arg1) -- Line 1831
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local Loading_2 = module_17_upvr.LoadState.Loading
	if arg1.LoadState ~= Loading_2 then
		arg1.LoadState = Loading_2
		arg1.LoadStateChanged:Fire(Loading_2)
	end
end
function module_17_upvr.RunWhenLoaded(arg1, arg2, ...) -- Line 1835
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	if module_17_upvr.IsLoaded(arg1) then
		task.spawn(arg2, ...)
		return nil
	end
	local packed_upvr = table.pack(...)
	return arg1.LoadStateChanged:Connect(function(arg1_4) -- Line 1847
		--[[ Upvalues[3]:
			[1]: module_17_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: packed_upvr (readonly)
		]]
		if arg1_4 == module_17_upvr.LoadState.Loaded then
			arg2(table.unpack(packed_upvr, 1, packed_upvr.n))
		end
	end)
end
function module_17_upvr.YieldUntilLoaded(arg1) -- Line 1857
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	if arg1.LoadState ~= module_17_upvr.LoadState.Loaded then
		local var599_upvw
		local current_thread_upvr_2 = coroutine.running()
		var599_upvw = arg1.LoadStateChanged:Connect(function(arg1_5) -- Line 1864
			--[[ Upvalues[3]:
				[1]: module_17_upvr (copied, readonly)
				[2]: var599_upvw (read and write)
				[3]: current_thread_upvr_2 (readonly)
			]]
			if arg1_5 == module_17_upvr.LoadState.Loaded then
				var599_upvw:Disconnect()
				if coroutine.status(current_thread_upvr_2) == "suspended" then
					task.spawn(current_thread_upvr_2)
				end
			end
		end)
		coroutine.yield()
	end
end
function CompareUserIds_upvr(arg1, arg2) -- Line 1884, Named "PlayerStateCreate"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local any_IsDescendantOf_result1_2 = arg1:IsDescendantOf(game)
	arg2.Player = arg1
	arg2.UserId = arg1.UserId
	arg2.IsInGame = any_IsDescendantOf_result1_2
	local os_time_result1_2 = os.time()
	arg2.SessionStart = os_time_result1_2
	if any_IsDescendantOf_result1_2 then
		os_time_result1_2 = nil
	else
		os_time_result1_2 = os.time()
	end
	arg2.SessionEnd = os_time_result1_2
	arg2.CharacterConnections = {}
	local tbl_7 = {}
	tbl_7.PlayerState = arg2
	tbl_7.Dirty = false
	tbl_7.Resolved = false
	tbl_7.CarryMax = 1
	tbl_7.PairMax = 1
	tbl_7.Carrying = {}
	tbl_7.Paired = {}
	tbl_7.Requests = {
		Incoming = {};
		Outgoing = {};
	}
	arg2.CarryState = tbl_7
	arg2.EnemyState = {
		Dirty = false;
		Defeated_ById = {};
		Dirty_ById = {};
	}
	arg2.PetState = {
		Dirty = false;
		Equipped = {};
	}
	arg2.PlayerData = {
		SaveLoadState = module_17_upvr.SaveLoadState.Loading;
	}
	arg2.PlayerIdentity = {}
	arg2.PolicyState = module_17_upvr.LoadableObjectCreate({
		LootboxesEnabled = false;
	})
	arg2.ToolStates = {
		Array = {};
		ById = {};
		ByTool = {};
		ByType = {};
	}
	arg2.TutorialState = {
		Dirty = false;
		Dirty_ById = {};
		Progress_ById = {};
		TutorialComplete_ById = {};
		TypeComplete_ByType = {};
	}
	return arg2
end
module_17_upvr.PlayerStateCreate = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 1960, Named "PlayerStateCanAfford"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var611 = false
	local var612 = 0
	local any_PlayerStateGetSaveData_result1_4 = module_17_upvr.PlayerStateGetSaveData(arg1)
	if any_PlayerStateGetSaveData_result1_4 then
		local any_SaveDataCanAfford_result1, any_SaveDataCanAfford_result2_2 = module_17_upvr.SaveDataCanAfford(any_PlayerStateGetSaveData_result1_4, arg2, arg3)
		var611 = any_SaveDataCanAfford_result1
		var612 = any_SaveDataCanAfford_result2_2
	end
	return var611, var612
end
module_17_upvr.PlayerStateCanAfford = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 1977, Named "PlayerStateEndSession"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.IsInGame = false
	arg1.SessionEnd = os.time()
	module_17_upvr.UnloadObject(arg1.PolicyState)
	for _, v_13 in arg1.CharacterConnections do
		v_13:Disconnect()
	end
	table.clear(arg1.CharacterConnections)
	local CarryState_2 = arg1.CarryState
	for _, v_14 in CarryState_2.Paired do
		module_17_upvr.CarryStatePerformAction(CarryState_2, v_14, module_17_upvr.CarryRequestType.Unpair)
		local _
	end
end
module_17_upvr.PlayerStateEndSession = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 1998, Named "PlayerStateGetCount"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var634
	local any_PlayerStateGetSaveData_result1_2 = module_17_upvr.PlayerStateGetSaveData(arg1)
	if any_PlayerStateGetSaveData_result1_2 then
		var634 = module_17_upvr.SaveDataGetCount(any_PlayerStateGetSaveData_result1_2, arg2)
	end
	return var634
end
module_17_upvr.PlayerStateGetCount = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2013, Named "PlayerStateGetRootRemoteState"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local CharacterState = arg1.CharacterState
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 6 end (CF ANALYSIS FAILED)
end
module_17_upvr.PlayerStateGetRootRemoteState = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 2052, Named "PlayerStateGetLivingSelfRootRemoteState"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var637
	if not module_17_upvr.CarryStateIsCarried(arg1.CarryState) then
		var637 = module_17_upvr.PlayerStateGetRootRemoteState(arg1, true)
	end
	return var637
end
module_17_upvr.PlayerStateGetLivingSelfRootRemoteState = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2068, Named "PlayerStateGetSaveData"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var638
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 8. Error Block 8 start (CF ANALYSIS FAILED)
	if arg2 then
		-- KONSTANTERROR: [13] 9. Error Block 6 start (CF ANALYSIS FAILED)
		var638 = arg1.PlayerData.Data
		-- KONSTANTERROR: [13] 9. Error Block 6 end (CF ANALYSIS FAILED)
	end
	do
		return var638
	end
	-- KONSTANTERROR: [12] 8. Error Block 8 end (CF ANALYSIS FAILED)
end
module_17_upvr.PlayerStateGetSaveData = CompareUserIds_upvr
local any_IsClient_result1_upvr = game:GetService("RunService"):IsClient()
local Players_upvr = game:GetService("Players")
local PolicyService_upvr_2 = game:GetService("PolicyService")
function CompareUserIds_upvr(arg1) -- Line 2086, Named "PlayerStateLoadPolicyState"
	--[[ Upvalues[4]:
		[1]: module_17_upvr (readonly)
		[2]: any_IsClient_result1_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: PolicyService_upvr_2 (readonly)
	]]
	local var642
	if not var642 then
		var642 = any_IsClient_result1_upvr
		if var642 then
			var642 = arg1.Player
			if var642 ~= Players_upvr.LocalPlayer then
				var642 = error
				var642("Cannot load policy for non-local player.", 2)
			end
		end
		var642 = nil
		while arg1.IsInGame do
			local pcall_result1, pcall_result2 = pcall(PolicyService_upvr_2.GetPolicyInfoForPlayerAsync, PolicyService_upvr_2, arg1.Player)
			if pcall_result1 then
				if pcall_result2 then
					var642 = pcall_result2
					break
				end
			end
			task.wait(2.5)
			local var645
		end
		if var642 then
			if var642.ArePaidRandomItemsRestricted ~= false then
				var645 = false
			else
				var645 = true
			end
			arg1.PolicyState.LootboxesEnabled = var645
			var645 = module_17_upvr
			var645 = arg1.PolicyState
			var645.LoadObject(var645)
		end
	end
end
module_17_upvr.PlayerStateLoadPolicyState = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 2122, Named "PlayerStateOwnsPets"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var650
	if 0 >= #arg1.PetState.Equipped then
		var650 = false
	else
		var650 = true
	end
	if not var650 then
		local any_PlayerStateGetSaveData_result1_3 = module_17_upvr.PlayerStateGetSaveData(arg1)
		if any_PlayerStateGetSaveData_result1_3 then
			for _, v_15 in any_PlayerStateGetSaveData_result1_3.Pets.Owned do
				if 0 < v_15 then
					var650 = true
					return var650
				end
			end
		end
	end
	return var650
end
module_17_upvr.PlayerStateOwnsPets = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2149, Named "CarryStateCanCarry"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var652 = not module_17_upvr.CarryStateIsCarried(arg1)
	if var652 then
		var652 = not module_17_upvr.CarryStateIsCarried(arg2)
		if var652 then
			var652 = module_17_upvr.CarryStateIsPaired(arg1, arg2)
			if var652 then
				var652 = arg3
				if not var652 then
					if #arg1.Carrying >= arg1.CarryMax then
						var652 = false
					else
						var652 = true
					end
				end
			end
		end
	end
	return var652
end
module_17_upvr.CarryStateCanCarry = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2165, Named "CarryStateCanPair"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var653 = false
	if arg1 ~= arg2 then
		var653 = not module_17_upvr.CarryStateIsPaired(arg1, arg2)
		if var653 then
			var653 = arg3
			if not var653 then
				var653 = false
				if #arg1.Paired < arg1.PairMax then
					if #arg2.Paired >= arg2.PairMax then
						var653 = false
					else
						var653 = true
					end
				end
			end
		end
	end
	return var653
end
module_17_upvr.CarryStateCanPair = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 2183, Named "CarryStateIsCarried"
	local var654
	if arg1.Carrier == nil then
		var654 = false
	else
		var654 = true
	end
	return var654
end
module_17_upvr.CarryStateIsCarried = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2190, Named "CarryStateIsCarrying"
	local var655
	if arg2 then
		if arg2.Carrier ~= arg1 then
			var655 = false
		else
			var655 = true
		end
		return var655
	end
	if 0 >= #arg1.Carrying then
		var655 = false
	else
		var655 = true
	end
	return var655
end
module_17_upvr.CarryStateIsCarrying = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2206, Named "CarryStateIsPaired"
	local var656
	if arg2 then
		if table.find(arg1.Paired, arg2) == nil then
			var656 = false
		else
			var656 = true
		end
		return var656
	end
	if 0 >= #arg1.Paired then
		var656 = false
	else
		var656 = true
	end
	return var656
end
module_17_upvr.CarryStateIsPaired = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2224, Named "Drop"
	local var657
	if arg2.Carrier ~= arg1 then
		var657 = false
	else
		var657 = true
	end
	if var657 then
		arg2.Carrier = nil
		local table_find_result1_2 = table.find(arg1.Carrying, arg2)
		if table_find_result1_2 then
			table.remove(arg1.Carrying, table_find_result1_2)
		end
	end
	return var657
end
local function CarryStateCompleteRequest_upvr(arg1, arg2) -- Line 2244, Named "Unpair"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var659 = arg1
	local any_CarryStateIsPaired_result1 = module_17_upvr.CarryStateIsPaired(var659, arg2)
	if any_CarryStateIsPaired_result1 then
		if arg2.Carrier ~= arg1 then
			var659 = false
		else
			var659 = true
		end
		if var659 then
			arg2.Carrier = nil
			local table_find_result1_6 = table.find(arg1.Carrying, arg2)
			if table_find_result1_6 then
				table.remove(arg1.Carrying, table_find_result1_6)
			end
		end
		if arg1.Carrier ~= arg2 then
			var659 = false
		else
			var659 = true
		end
		if var659 then
			arg1.Carrier = nil
			local table_find_result1_10 = table.find(arg2.Carrying, arg1)
			if table_find_result1_10 then
				table.remove(arg2.Carrying, table_find_result1_10)
			end
		end
		var659 = table.find(arg1.Paired, arg2)
		if var659 then
			table.remove(arg1.Paired, var659)
		end
		local table_find_result1_9 = table.find(arg2.Paired, arg1)
		if table_find_result1_9 then
			table.remove(arg2.Paired, table_find_result1_9)
		end
	end
	return any_CarryStateIsPaired_result1
end
local tbl_19_upvr = {
	[module_17_upvr.CarryRequestType.Carry] = function(arg1, arg2) -- Line 2277
		--[[ Upvalues[1]:
			[1]: module_17_upvr (readonly)
		]]
		local any_CarryStateCanCarry_result1_2 = module_17_upvr.CarryStateCanCarry(arg1, arg2)
		if any_CarryStateCanCarry_result1_2 then
			arg2.Carrier = arg1
			arg1.Carrying[#arg1.Carrying + 1] = arg2
		end
		return any_CarryStateCanCarry_result1_2
	end;
	[module_17_upvr.CarryRequestType.Drop] = CompareUserIds_upvr;
	[module_17_upvr.CarryRequestType.Pair] = function(arg1, arg2) -- Line 2295
		--[[ Upvalues[2]:
			[1]: module_17_upvr (readonly)
			[2]: CarryStateCompleteRequest_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local any_CarryStateCanPair_result1_2 = module_17_upvr.CarryStateCanPair(arg1, arg2, true)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [80] 62. Error Block 24 start (CF ANALYSIS FAILED)
		if any_CarryStateCanPair_result1_2 then
			arg1.Paired[#arg1.Paired + 1] = arg2
			arg2.Paired[#arg2.Paired + 1] = arg1
		end
		-- KONSTANTERROR: [80] 62. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [95] 73. Error Block 23 start (CF ANALYSIS FAILED)
		do
			return any_CarryStateCanPair_result1_2
		end
		-- KONSTANTERROR: [95] 73. Error Block 23 end (CF ANALYSIS FAILED)
	end;
	[module_17_upvr.CarryRequestType.Separate] = function(arg1, arg2) -- Line 2369
		--[[ Upvalues[2]:
			[1]: module_2_upvr (readonly)
			[2]: module_17_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 29 start (CF ANALYSIS FAILED)
		if arg2 ~= arg1 then
		else
		end
		-- KONSTANTERROR: [4] 4. Error Block 29 end (CF ANALYSIS FAILED)
	end;
	[module_17_upvr.CarryRequestType.Unpair] = CarryStateCompleteRequest_upvr;
}
function module_17_upvr.CarryStatePerformAction(arg1, arg2, arg3) -- Line 2404
	--[[ Upvalues[1]:
		[1]: tbl_19_upvr (readonly)
	]]
	local var670 = assert(tbl_19_upvr[arg3], "Invalid CarryRequestType")(arg1, arg2)
	if var670 then
		arg1.Dirty = true
		arg2.Dirty = true
	end
	return var670
end
function module_17_upvr.CarryStateDestroy(arg1) -- Line 2428
	--[[ Upvalues[1]:
		[1]: CarryStateCompleteRequest_upvr (readonly)
	]]
	for _, v_16 in arg1.Paired do
		CarryStateCompleteRequest_upvr(arg1, v_16)
	end
end
function CompareUserIds_upvr(arg1, arg2) -- Line 2439, Named "CarryStateResolve"
	for _, v_17 in {arg1.Requests.Incoming, arg1.Requests.Outgoing} do
		for i_18, v_18 in v_17 do
			if v_18.ExpiresAt <= arg2 then
				v_17[i_18] = nil
			end
		end
	end
	arg1.Dirty = false
end
module_17_upvr.CarryStateResolve = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2467, Named "CarryStateCanRequest"
	--[[ Upvalues[2]:
		[1]: module_17_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_CarryStateGetRequest_result1_4 = module_17_upvr.CarryStateGetRequest(arg1, arg2)
	local var679
	if any_CarryStateGetRequest_result1_4 == nil then
		var679 = true
		return var679, 0
	end
	if any_CarryStateGetRequest_result1_4.Sender == arg1 then
		local var680 = any_CarryStateGetRequest_result1_4.SentAt + module_2_upvr.CarryInteract_RequestCooldown
		if var680 > arg3 then
			var679 = false
		else
			var679 = true
		end
	end
	return var679, var680
end
module_17_upvr.CarryStateCanRequest = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 2493, Named "ClearRequest"
	arg1.Sender.Requests.Outgoing[arg1.Recipient] = nil
	arg1.Recipient.Requests.Incoming[arg1.Sender] = nil
end
function CarryStateCompleteRequest_upvr(arg1, arg2) -- Line 2500, Named "CarryStateCancelRequest"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local any_CarryStateGetRequest_result1 = module_17_upvr.CarryStateGetRequest(arg1, arg2)
	if any_CarryStateGetRequest_result1 then
		any_CarryStateGetRequest_result1.Sender.Requests.Outgoing[any_CarryStateGetRequest_result1.Recipient] = nil
		any_CarryStateGetRequest_result1.Recipient.Requests.Incoming[any_CarryStateGetRequest_result1.Sender] = nil
	end
	return any_CarryStateGetRequest_result1
end
module_17_upvr.CarryStateCancelRequest = CarryStateCompleteRequest_upvr
function CarryStateCompleteRequest_upvr(arg1, arg2) -- Line 2517, Named "CarryStateCompleteRequest"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var682 = false
	local any_CarryStateGetRequest_result1_6 = module_17_upvr.CarryStateGetRequest(arg1, arg2)
	if any_CarryStateGetRequest_result1_6 then
		if any_CarryStateGetRequest_result1_6.Sender == arg2 then
			var682 = true
			any_CarryStateGetRequest_result1_6.Sender.Requests.Outgoing[any_CarryStateGetRequest_result1_6.Recipient] = nil
			any_CarryStateGetRequest_result1_6.Recipient.Requests.Incoming[any_CarryStateGetRequest_result1_6.Sender] = nil
		end
	end
	return var682
end
module_17_upvr.CarryStateCompleteRequest = CarryStateCompleteRequest_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2541, Named "CarryStateGetRequest"
	local Requests = arg1.Requests
	local var685 = Requests.Incoming[arg2]
	if not var685 then
		var685 = Requests.Outgoing[arg2]
	end
	return var685
end
module_17_upvr.CarryStateGetRequest = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2555, Named "CarryStateMakeRequest"
	--[[ Upvalues[2]:
		[1]: module_17_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	local var686 = arg1
	local any_CarryStateGetRequest_result1_3 = module_17_upvr.CarryStateGetRequest(var686, arg2)
	if any_CarryStateGetRequest_result1_3 == nil then
		var686 = false
	else
		var686 = true
	end
	if any_CarryStateGetRequest_result1_3 then
		if any_CarryStateGetRequest_result1_3.Sender ~= arg1 then
			error("Cannot send pair request with outstanding incoming request.", 2)
			-- KONSTANTWARNING: GOTO [43] #31
		end
	else
		local tbl_73 = {}
		tbl_73.Recipient = arg2
		tbl_73.Sender = arg1
		tbl_73.SentAt = 0
		tbl_73.ExpiresAt = 0
		local var689 = tbl_73
		arg1.Requests.Outgoing[arg2] = var689
		arg2.Requests.Incoming[arg1] = var689
	end
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 31. Error Block 9 start (CF ANALYSIS FAILED)
	assert(var689)
	var689.SentAt = arg3
	var689.ExpiresAt = arg3 + module_2_upvr.CarryInteract_RequestExpiration
	do
		return var689, var686
	end
	-- KONSTANTERROR: [43] 31. Error Block 9 end (CF ANALYSIS FAILED)
end
module_17_upvr.CarryStateMakeRequest = CompareUserIds_upvr
function CompareUserIds_upvr() -- Line 2604, Named "MonetizationStateCreate"
	return {
		Dirty = false;
		DurableState_ByType = {};
		DurableStateDirty_ByType = {};
		GamepassOwned_ById = {};
		GamepassOwnedDirty_ById = {};
		ProductIneligible_ById = {};
		ProductIneligibleDirty_ById = {};
	}
end
module_17_upvr.MonetizationStateCreate = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2623, Named "MonetizationStateGetDurableState"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var691 = arg1.DurableState_ByType[arg2]
	if not var691 then
		var691 = module_17_upvr.DurableStateType.PurchaseIneligible
	end
	return var691
end
module_17_upvr.MonetizationStateGetDurableState = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2635, Named "MonetizationStateGetGamepassOwned"
	local var692
	if arg1.GamepassOwned_ById[arg2] ~= true then
		var692 = false
	else
		var692 = true
	end
	return var692
end
module_17_upvr.MonetizationStateGetGamepassOwned = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2645, Named "MonetizationStateGetProductEligibility"
	return not arg1.ProductIneligible_ById[arg2]
end
module_17_upvr.MonetizationStateGetProductEligibility = CompareUserIds_upvr
function CompareUserIds_upvr(arg1) -- Line 2655, Named "MonetizationStateResolve"
	if arg1.Dirty then
		table.clear(arg1.DurableStateDirty_ByType)
		table.clear(arg1.GamepassOwnedDirty_ById)
		table.clear(arg1.ProductIneligibleDirty_ById)
		arg1.Dirty = false
	end
end
module_17_upvr.MonetizationStateResolve = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2669, Named "MonetizationStateSetDurableState"
	local var693
	if arg1.DurableState_ByType[arg2] == arg3 then
		var693 = false
	else
		var693 = true
	end
	if var693 then
		arg1.Dirty = true
		arg1.DurableState_ByType[arg2] = arg3
		arg1.DurableStateDirty_ByType[arg2] = arg3
	end
	return var693
end
module_17_upvr.MonetizationStateSetDurableState = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2688, Named "MonetizationStateSetGamepassOwned"
	if arg3 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if arg1.GamepassOwned_ById[arg2] == true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if true then
		arg1.Dirty = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.GamepassOwned_ById[arg2] = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.GamepassOwnedDirty_ById[arg2] = true
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return true
end
module_17_upvr.MonetizationStateSetGamepassOwned = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2, arg3) -- Line 2709, Named "MonetizationStateSetProductEligibility"
	if arg3 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if not arg1.ProductIneligible_ById[arg2] == true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if true then
		arg1.Dirty = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			arg1.ProductIneligible_ById[arg2] = nil
			arg1.ProductIneligibleDirty_ById[arg2] = false
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return true
		end
		arg1.ProductIneligible_ById[arg2] = true
		arg1.ProductIneligibleDirty_ById[arg2] = true
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return true
end
module_17_upvr.MonetizationStateSetProductEligibility = CompareUserIds_upvr
function CompareUserIds_upvr(arg1, arg2) -- Line 2745, Named "CompareUserIds"
	local var698
	if arg1[1] >= arg2[1] then
		var698 = false
	else
		var698 = true
	end
	return var698
end
CarryStateCompleteRequest_upvr = {}
local SaveDataLeaderboardStatFetch_upvr = CarryStateCompleteRequest_upvr
tbl_19_upvr = module_17_upvr.LeaderboardSort.Descending
SaveDataLeaderboardStatFetch_upvr[tbl_19_upvr] = function(arg1, arg2) -- Line 2759
	local _2_4 = arg1[2]
	if _2_4 ~= arg2[2] then
		if arg2[2] >= arg1[2] then
			_2_4 = false
		else
			_2_4 = true
		end
		return _2_4
	end
	if arg1[1] >= arg2[1] then
		_2_4 = false
	else
		_2_4 = true
	end
	return _2_4
end
tbl_19_upvr = module_17_upvr.LeaderboardSort.Ascending
SaveDataLeaderboardStatFetch_upvr[tbl_19_upvr] = function(arg1, arg2) -- Line 2767
	local _2_2 = arg1[2]
	if _2_2 ~= arg2[2] then
		if arg1[2] >= arg2[2] then
			_2_2 = false
		else
			_2_2 = true
		end
		return _2_2
	end
	if arg1[1] >= arg2[1] then
		_2_2 = false
	else
		_2_2 = true
	end
	return _2_2
end
tbl_19_upvr = module_17_upvr.LeaderboardSort.AscendingZerosLast
SaveDataLeaderboardStatFetch_upvr[tbl_19_upvr] = function(arg1, arg2) -- Line 2775
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var705
	if arg1[2] ~= 0 then
		var705 = arg1[2]
	else
		var705 = math.huge
	end
	if arg2[2] ~= 0 then
		local _ = arg2[2]
	else
	end
	if var705 ~= math.huge then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if var705 >= math.huge then
		else
		end
		return true
	end
	if arg1[1] >= arg2[1] then
	else
	end
	return true
end
function tbl_19_upvr(arg1, arg2) -- Line 2788, Named "LeaderboardEntriesSort"
	--[[ Upvalues[1]:
		[1]: SaveDataLeaderboardStatFetch_upvr (readonly)
	]]
	local var707 = SaveDataLeaderboardStatFetch_upvr[arg2]
	if not var707 then
		error(string.format("Invalid LeaderboardSort value '%*'", arg2), 2)
	end
	table.sort(arg1, var707)
end
module_17_upvr.LeaderboardEntriesSort = tbl_19_upvr
tbl_19_upvr = setmetatable({
	[module_17_upvr.LeaderboardType.LevelTimeBest] = module_17_upvr.LeaderboardSort.AscendingZerosLast;
	[module_17_upvr.LeaderboardType.WorldTimeBest] = module_17_upvr.LeaderboardSort.AscendingZerosLast;
}, {
	__index = function() -- Line 2806, Named "__index"
		--[[ Upvalues[1]:
			[1]: module_17_upvr (readonly)
		]]
		return module_17_upvr.LeaderboardSort.Descending
	end;
})
module_17_upvr.LeaderboardRecommendedSort_ByLeaderboardType = tbl_19_upvr
CompareUserIds_upvr = {}
local ToolStateRemove_upvr = CompareUserIds_upvr
tbl_19_upvr = module_17_upvr.LeaderboardType
SaveDataLeaderboardStatFetch_upvr = tbl_19_upvr.Donations
function tbl_19_upvr(arg1) -- Line 2817
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	return module_17_upvr.SaveDataGetTotalDonations(arg1)
end
ToolStateRemove_upvr[SaveDataLeaderboardStatFetch_upvr] = tbl_19_upvr
tbl_19_upvr = module_17_upvr.LeaderboardType
SaveDataLeaderboardStatFetch_upvr = tbl_19_upvr.LevelCompletions
function tbl_19_upvr(arg1, arg2) -- Line 2822
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var713 = 0
	local any_SaveDataGetLevelStats_result1_2 = module_17_upvr.SaveDataGetLevelStats(arg1, arg2)
	if any_SaveDataGetLevelStats_result1_2 then
		var713 = any_SaveDataGetLevelStats_result1_2.CT or var713
	end
	return var713
end
ToolStateRemove_upvr[SaveDataLeaderboardStatFetch_upvr] = tbl_19_upvr
tbl_19_upvr = module_17_upvr.LeaderboardType
SaveDataLeaderboardStatFetch_upvr = tbl_19_upvr.LevelTimeBest
function tbl_19_upvr(arg1, arg2) -- Line 2843
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var716 = 0
	local any_SaveDataGetLevelStats_result1_3 = module_17_upvr.SaveDataGetLevelStats(arg1, arg2)
	if any_SaveDataGetLevelStats_result1_3 then
		var716 = any_SaveDataGetLevelStats_result1_3.TB or var716
	end
	return var716
end
ToolStateRemove_upvr[SaveDataLeaderboardStatFetch_upvr] = tbl_19_upvr
tbl_19_upvr = module_17_upvr.LeaderboardType
SaveDataLeaderboardStatFetch_upvr = tbl_19_upvr.Playtime
function tbl_19_upvr(arg1) -- Line 2857
	return arg1.Playtime
end
ToolStateRemove_upvr[SaveDataLeaderboardStatFetch_upvr] = tbl_19_upvr
tbl_19_upvr = module_17_upvr.LeaderboardType
SaveDataLeaderboardStatFetch_upvr = tbl_19_upvr.StarCount
tbl_19_upvr = module_17_upvr.SaveDataGetTotalStars
ToolStateRemove_upvr[SaveDataLeaderboardStatFetch_upvr] = tbl_19_upvr
tbl_19_upvr = module_17_upvr.LeaderboardType
SaveDataLeaderboardStatFetch_upvr = tbl_19_upvr.WorldCompletions
function tbl_19_upvr(arg1, arg2) -- Line 2863
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var720 = 0
	local any_SaveDataGetWorldStats_result1_2 = module_17_upvr.SaveDataGetWorldStats(arg1, arg2)
	if any_SaveDataGetWorldStats_result1_2 then
		var720 = any_SaveDataGetWorldStats_result1_2.CT or var720
	end
	return var720
end
ToolStateRemove_upvr[SaveDataLeaderboardStatFetch_upvr] = tbl_19_upvr
tbl_19_upvr = module_17_upvr.LeaderboardType
SaveDataLeaderboardStatFetch_upvr = tbl_19_upvr.WorldTimeBest
function tbl_19_upvr(arg1, arg2) -- Line 2884
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var723 = 0
	local any_SaveDataGetWorldStats_result1 = module_17_upvr.SaveDataGetWorldStats(arg1, arg2)
	if any_SaveDataGetWorldStats_result1 then
		var723 = any_SaveDataGetWorldStats_result1.TB or var723
	end
	return var723
end
ToolStateRemove_upvr[SaveDataLeaderboardStatFetch_upvr] = tbl_19_upvr
function SaveDataLeaderboardStatFetch_upvr(arg1, arg2, ...) -- Line 2900, Named "SaveDataLeaderboardStatFetch"
	--[[ Upvalues[1]:
		[1]: ToolStateRemove_upvr (readonly)
	]]
	return assert(ToolStateRemove_upvr[arg2], "Invalid LeaderboardType")(arg1, ...)
end
module_17_upvr.SaveDataLeaderboardStatFetch = SaveDataLeaderboardStatFetch_upvr
function ToolStateRemove_upvr(arg1, arg2, arg3) -- Line 2916, Named "LevelStatsUpdateProgress"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var725
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 6. Error Block 27 start (CF ANALYSIS FAILED)
	if arg3 then
		var725 = arg1.V
		if not var725 then
			-- KONSTANTERROR: [13] 9. Error Block 20 start (CF ANALYSIS FAILED)
			arg1.T = arg2
			arg1.V = arg3
			-- KONSTANTWARNING: GOTO [31] #20
			-- KONSTANTERROR: [13] 9. Error Block 20 end (CF ANALYSIS FAILED)
		end
	end
	var725 = arg1.T
	if var725 then
		var725 = math.min(arg1.T, arg2)
		arg1.T = var725
	end
	-- KONSTANTERROR: [9] 6. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 20. Error Block 23 start (CF ANALYSIS FAILED)
	if arg1.T == arg1.T then
		var725 = false
	else
		var725 = true
	end
	if arg1.V == arg1.V then
	else
	end
	do
		return var725, true
	end
	-- KONSTANTERROR: [31] 20. Error Block 23 end (CF ANALYSIS FAILED)
end
module_17_upvr.LevelStatsUpdateProgress = ToolStateRemove_upvr
function ToolStateRemove_upvr() -- Line 2956, Named "LuckStateCreate"
	return {
		Luck = 1;
		Source_ById = {};
	}
end
module_17_upvr.LuckStateCreate = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2, arg3) -- Line 2967, Named "LuckStateManageSource"
	local var731
	if arg1.Source_ById[arg2] == arg3 then
		var731 = false
	else
		var731 = true
		local var732
	end
	if var731 then
		var732 = arg1.Source_ById
		var732[arg2] = arg3
		var732 = 1
		for _, v_19 in arg1.Source_ById do
			if var732 < v_19 then
				var732 = v_19
			end
		end
		arg1.Luck = var732
	end
	return var731
end
module_17_upvr.LuckStateManageSource = ToolStateRemove_upvr
ToolStateRemove_upvr = module_2_upvr.MemePointsRankUp_Base
SaveDataLeaderboardStatFetch_upvr = module_2_upvr.MemePointsRankUp_LinearIncrease
tbl_19_upvr = module_2_upvr.MemePointsRankUp_ScalingIncrease
function module_17_upvr.MemePointsGetRankCost(arg1) -- Line 3002
	--[[ Upvalues[3]:
		[1]: ToolStateRemove_upvr (readonly)
		[2]: SaveDataLeaderboardStatFetch_upvr (readonly)
		[3]: tbl_19_upvr (readonly)
	]]
	return (ToolStateRemove_upvr + SaveDataLeaderboardStatFetch_upvr * arg1.MemePointsRank) * (1 + tbl_19_upvr * arg1.MemePointsRank)
end
function module_17_upvr.MemePointsAwardPoints(arg1, arg2) -- Line 3006
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	-- KONSTANTERROR: [42] 29. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 29. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [42.4293460040]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [42.2]
	if arg2 < nil then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [42.3]
	if nil <= nil then
		-- KONSTANTWARNING: GOTO [21] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 31. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return 0, nil
	end
	-- KONSTANTERROR: [44] 31. Error Block 12 end (CF ANALYSIS FAILED)
end
function ToolStateRemove_upvr() -- Line 3038, Named "PermissionStateCreate"
	return {
		HasPermission_ByType = {};
	}
end
module_17_upvr.PermissionStateCreate = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2, arg3) -- Line 3051, Named "PetStateCanEquip"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local var734 = false
	if #arg1.Equipped < module_17_upvr.SaveDataGetPetEquipLimit(arg2) then
		if 0 >= module_17_upvr.SaveDataGetPetStockCount(arg2, arg3) then
			var734 = false
		else
			var734 = true
		end
	end
	return var734
end
module_17_upvr.PetStateCanEquip = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2) -- Line 3064, Named "PetStateGetEquippedCount"
	local var739
	for _, v_20 in arg1.Equipped do
		if v_20 == arg2 then
			var739 += 1
		end
	end
	return var739
end
module_17_upvr.PetStateGetEquippedCount = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2, arg3) -- Line 3080, Named "PetStatePetEquip"
	--[[ Upvalues[1]:
		[1]: module_17_upvr (readonly)
	]]
	local any_PetStateCanEquip_result1 = module_17_upvr.PetStateCanEquip(arg1, arg2, arg3)
	if any_PetStateCanEquip_result1 then
		arg1.Equipped[#arg1.Equipped + 1] = arg3
		arg1.Dirty = true
	end
	return any_PetStateCanEquip_result1
end
module_17_upvr.PetStatePetEquip = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2) -- Line 3100, Named "PetStatePetIsEquipped"
	local var741
	if table.find(arg1.Equipped, arg2) == nil then
		var741 = false
	else
		var741 = true
	end
	return var741
end
module_17_upvr.PetStatePetIsEquipped = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2) -- Line 3108, Named "PetStatePetUnequip"
	local popped = table.remove(arg1.Equipped, arg2)
	if popped then
		arg1.Dirty = true
	end
	return popped
end
module_17_upvr.PetStatePetUnequip = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2) -- Line 3122, Named "PetStateSetEquipped"
	table.clear(arg1.Equipped)
	table.move(arg2, 1, #arg2, 1, arg1.Equipped)
	arg1.Dirty = true
end
module_17_upvr.PetStateSetEquipped = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1) -- Line 3140, Named "RootRemoteStateHasMoved"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var743 = false
	local var744 = 0
	if arg1.Dirty then
		if 0.01 < arg1.LastDistance then
			local any_Dot_result1_2 = arg1.ReceivedCFrame.XVector:Dot(arg1.LastDirection)
			local any_Dot_result1 = arg1.ReceivedCFrame.ZVector:Dot(arg1.LastDirection)
			local var747 = (any_Dot_result1_2 * any_Dot_result1_2 + any_Dot_result1 * any_Dot_result1) ^ 0.5
			local var748 = var747 / arg1.LastDuration
			if module_2_upvr.CharacterMovingSpeed_Minimum <= var748 and var748 <= module_2_upvr.CharacterMovingSpeed_Maximum then
				var743 = true
				var744 = var747
			end
		end
	end
	return var743, var744
end
module_17_upvr.RootRemoteStateHasMoved = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2) -- Line 3172, Named "ToolStateAdd"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local var749
	if table.find(arg1.Array, arg2) ~= nil then
		var749 = false
	else
		var749 = true
	end
	if var749 then
		arg1.Array[#arg1.Array + 1] = arg2
		arg1.ById[arg2.Id] = arg2
		arg1.ByTool[arg2.Tool] = arg2
		local any_TableBuildSub_result1 = module_8_upvr.TableBuildSub(arg1.ByType, arg2.Type)
		any_TableBuildSub_result1[#any_TableBuildSub_result1 + 1] = arg2
	end
	return var749
end
module_17_upvr.ToolStateAdd = ToolStateRemove_upvr
function ToolStateRemove_upvr(arg1, arg2) -- Line 3193, Named "ToolStateRemove"
	local table_find_result1_5 = table.find(arg1.Array, arg2)
	local var752
	if table_find_result1_5 == nil then
		var752 = false
	else
		var752 = true
	end
	if table_find_result1_5 then
		table.remove(arg1.Array, table_find_result1_5)
		arg1.ById[arg2.Id] = nil
		arg1.ByTool[arg2.Tool] = nil
		local var753 = arg1.ByType[arg2.Type]
		if var753 then
			local table_find_result1_4 = table.find(var753, arg2)
			if table_find_result1_4 then
				var752 = true
				table.remove(var753, table_find_result1_4)
				if #var753 == 0 then
					arg1.ByType[arg2.Type] = nil
				end
			end
		end
	end
	return var752
end
module_17_upvr.ToolStateRemove = ToolStateRemove_upvr
ToolStateRemove_upvr = {}
SaveDataLeaderboardStatFetch_upvr = module_17_upvr.ResponseType
tbl_19_upvr = nil
for _, v_21 in SaveDataLeaderboardStatFetch_upvr, tbl_19_upvr do
	ToolStateRemove_upvr[v_21] = true
	local var755
end
SaveDataLeaderboardStatFetch_upvr = module_17_upvr
tbl_19_upvr = nil
for i_22, v_22 in SaveDataLeaderboardStatFetch_upvr, tbl_19_upvr do
	if type(v_22) == "table" and type(i_22) == "string" then
		if string.find(i_22, "^[^_]*Type$") ~= nil then
			local tbl_10 = {}
			for i_23, v_23 in v_22 do
				if tbl_10[v_23] then
					error(string.format("Duplicate enum value '%s' in CommonData.%s", tostring(i_23), i_22))
				else
					tbl_10[v_23] = true
				end
			end
		end
		if string.find(i_22, "^[^_]+ResponseType$") ~= nil then
			for i_24, v_24 in v_22 do
				v_23 = var755[v_24]
				if v_23 then
					v_23 = error
					v_23(string.format("Enum value '%s' in CommonData.%s collides with CommonData.ResponseType", tostring(i_24), i_22))
				end
			end
		end
		local string_match_result1 = string.match(i_22, "(.+)Map$")
		if string_match_result1 then
			local var758 = module_17_upvr[string_match_result1]
			if type(var758) == "table" then
				for i_25, v_25 in var758 do
					if v_22[v_25] == nil then
						error(string.format("CommonData.%s.%s is missing from enum map CommonData.%s", string_match_result1, tostring(i_25), i_22))
					end
				end
			end
		end
	end
end
return module_17_upvr