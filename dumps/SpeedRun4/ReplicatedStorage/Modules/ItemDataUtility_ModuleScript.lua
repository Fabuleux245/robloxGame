-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:37
-- Luau version 6, Types version 3
-- Time taken: 0.025513 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_11_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_7_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_15_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_5_upvr = require(Modules:WaitForChild("Dimensions"))
local module_3_upvr = require(Modules:WaitForChild("GameBalanceUtility"))
local module_12_upvr = require(Modules:WaitForChild("Gamepasses"))
local module_4 = require(Modules:WaitForChild("Pets"))
local module_6_upvr = require(Modules:WaitForChild("Products"))
local module_13_upvr = require(Modules:WaitForChild("Utility"))
local module_10_upvr = require(Modules:WaitForChild("Worlds"))
module_11_upvr.TransactionType = {
	Invalid = 1;
	Currency = 2;
	Gamepass = 3;
	Product = 4;
}
module_11_upvr.ItemTypeOrder = {module_7_upvr.ItemType.Egg, module_7_upvr.ItemType.Pet, module_7_upvr.ItemType.Trail, module_7_upvr.ItemType.Dance, module_7_upvr.ItemType.Sound, module_7_upvr.ItemType.World, module_7_upvr.ItemType.Level, module_7_upvr.ItemType.Dimension}
for _, v in module_7_upvr.ItemType do
	if not table.find(module_11_upvr.ItemTypeOrder, v) then
		error(module_7_upvr.FormatOutput("Missing ItemType '%s' in ItemTypeOrder array", "ItemDataUtilty", nil, v))
	end
end
local tbl_6 = {}
for _, v_2 in module_10_upvr.Level_ById do
	tbl_6[#tbl_6 + 1] = v_2
	local var81
end
table.sort(var81, module_7_upvr.SortItemData)
module_11_upvr.ItemModule_ByItemType = {
	[module_7_upvr.ItemType.Dance] = require(Modules:WaitForChild("Dances"));
	[module_7_upvr.ItemType.Dimension] = module_5_upvr;
	[module_7_upvr.ItemType.Egg] = table.freeze({
		DataArray = module_4.EggDataArray;
		Data_ById = module_4.EggData_ById;
	});
	[module_7_upvr.ItemType.Level] = table.freeze({
		DataArray = table.freeze(var81);
		Data_ById = module_10_upvr.Level_ById;
	});
	[module_7_upvr.ItemType.Pet] = table.freeze({
		DataArray = module_4.PetDataArray;
		Data_ById = module_4.PetData_ById;
	});
	[module_7_upvr.ItemType.Sound] = require(Modules:WaitForChild("Sounds"));
	[module_7_upvr.ItemType.Trail] = require(Modules:WaitForChild("Trails"));
	[module_7_upvr.ItemType.World] = module_10_upvr;
}
module_11_upvr.ItemModule_ByItemKey = {}
for i_3, v_3 in module_11_upvr.ItemModule_ByItemType do
	local var86 = module_7_upvr.ItemKey_ByItemType[i_3]
	if var86 then
		module_11_upvr.ItemModule_ByItemKey[var86] = v_3
	end
end
module_11_upvr.ItemType_ByItemData = {}
for i_4, v_4 in module_11_upvr.ItemModule_ByItemType do
	i_3 = nil
	for _, v_5 in v_4.DataArray, nil, i_3 do
		module_11_upvr.ItemType_ByItemData[v_5] = i_4
	end
end
module_11_upvr.AwardedCurrencyType_ByItemType = {
	[module_7_upvr.ItemType.Dance] = module_7_upvr.CurrencyType.MemePoints;
	[module_7_upvr.ItemType.Sound] = module_7_upvr.CurrencyType.MemePoints;
}
module_11_upvr.BuyRandomCost_ByItemType = {}
module_11_upvr.RandomCostCurrency_ByItemType = {}
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 170, Named "ApplyExponentialSpec"
	--[[ Upvalues[1]:
		[1]: module_13_upvr (readonly)
	]]
	return module_13_upvr.BeautifyNumber(arg2 * arg1.Base ^ arg3 ^ arg1.Scale, arg4 or 4, arg5 or 0.5)
end
function module_11_upvr.GetProductInfo(arg1, arg2) -- Line 184
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: module_12_upvr (readonly)
		[3]: module_7_upvr (readonly)
	]]
	local var88
	if arg1.ProductId then
		var88 = module_6_upvr.ProductGetProductInfo(arg1, arg2)
		return var88
	end
	if arg1.GamepassId then
		var88 = module_12_upvr.GamepassGetProductInfo(arg1, arg2)
		return var88
	end
	error(module_7_upvr.FormatOutput("Product is not valid", "ItemDataUtilty"), 2)
	return var88
end
function module_11_upvr.GetProductInfoAsync(arg1, arg2, arg3) -- Line 207
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: module_12_upvr (readonly)
		[3]: module_7_upvr (readonly)
	]]
	if arg1.ProductId then
		module_6_upvr.ProductGetProductInfoAsync(arg1, arg2, arg3)
	else
		if arg1.GamepassId then
			module_12_upvr.GamepassGetProductInfoAsync(arg1, arg2, arg3)
			return
		end
		error(module_7_upvr.FormatOutput("Product is not valid", "ItemDataUtilty"), 2)
	end
end
module_11_upvr.RandomItemPools_ByItemType = {}
for i_6, v_6 in module_11_upvr.ItemModule_ByItemType do
	local tbl_4 = {}
	i_3 = {}
	tbl_4.Array = i_3
	i_3 = {}
	tbl_4.ById = i_3
	i_3 = v_6.DataArray
	for _, v_7 in i_3 do
		if module_7_upvr.CanRoll(v_7) then
			tbl_4.Array[#tbl_4.Array + 1] = v_7
			tbl_4.ById[v_7.Id] = v_7
		end
	end
	i_3 = module_11_upvr.RandomItemPools_ByItemType
	i_3[i_6] = tbl_4
end
local function GetUnownedRandomItems_Internal_upvr(arg1, arg2) -- Line 250, Named "GetUnownedRandomItems_Internal"
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var106 = module_11_upvr.RandomItemPools_ByItemType[arg2]
	if not var106 then
		error(module_7_upvr.FormatOutput("Received invalid ItemType '%s'", "ItemDataUtilty", nil, tostring(arg2)), 3)
	end
	for _, v_8 in arg1.Inventory[module_7_upvr.ItemKey_ByItemType[arg2]].Owned do
		table.clone(var106.ById)[v_8] = nil
		local var108
	end
	local table_create_result1 = table.create(#var106.Array)
	for _, v_9 in var108 do
		table_create_result1[#table_create_result1 + 1] = v_9
		local var110
	end
	return var110
end
function module_11_upvr.GetRandomUnownedItem(arg1, arg2) -- Line 281
	--[[ Upvalues[1]:
		[1]: GetUnownedRandomItems_Internal_upvr (readonly)
	]]
	local GetUnownedRandomItems_Internal_upvr_result1 = GetUnownedRandomItems_Internal_upvr(arg1, arg2)
	local var112
	if 0 < #GetUnownedRandomItems_Internal_upvr_result1 then
		var112 = GetUnownedRandomItems_Internal_upvr_result1[math.random(1, #GetUnownedRandomItems_Internal_upvr_result1)]
	end
	return var112
end
function module_11_upvr.ItemDataDetailsCreate(arg1, arg2) -- Line 298
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	local tbl = {}
	if arg1 then
		for i_10, v_10 in arg1 do
			local var118 = module_11_upvr.ItemModule_ByItemType[i_10]
			if not var118 then
				error(module_7_upvr.FormatOutput("Invalid ItemType '%*' in ItemDetails", "ItemDataUtilty", nil, i_10), 2)
			end
			local table_create_result1_2 = table.create(#v_10)
			for _, v_11 in v_10 do
				local var120 = var118.Data_ById[v_11]
				if var120 then
					table_create_result1_2[#table_create_result1_2 + 1] = var120
				elseif arg2 then
					local any_GetExceptionHandler_result1, any_GetExceptionHandler_result2 = module_7_upvr.GetExceptionHandler(arg2, module_7_upvr.FormatOutput("ItemId '%*' not found in data for ItemType '%s'", "ItemDataUtilty", nil, v_11, i_10), 2)
					any_GetExceptionHandler_result1(table.unpack(any_GetExceptionHandler_result2))
				end
			end
			tbl[i_10] = table_create_result1_2
		end
	end
	return {
		Dances = tbl[module_7_upvr.ItemType.Dance];
		Dimensions = tbl[module_7_upvr.ItemType.Dimension];
		Eggs = tbl[module_7_upvr.ItemType.Egg];
		Levels = tbl[module_7_upvr.ItemType.Level];
		Pets = tbl[module_7_upvr.ItemType.Pet];
		Sounds = tbl[module_7_upvr.ItemType.Sound];
		Trails = tbl[module_7_upvr.ItemType.Trail];
		Worlds = tbl[module_7_upvr.ItemType.World];
		ByType = tbl;
	}
end
function module_11_upvr.EnergyGetMultiplier(arg1, arg2, arg3, arg4, arg5) -- Line 369
	--[[ Upvalues[4]:
		[1]: module_11_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_15_upvr (readonly)
	]]
	local tbl_5 = {
		[module_11_upvr.ItemModule_ByItemType[module_7_upvr.ItemType.Pet]] = arg4.Equipped;
	}
	local var137
	for i_12, v_12 in arg1.Inventory do
		local var138 = module_11_upvr.ItemModule_ByItemKey[i_12]
		if var138 and var138 ~= module_5_upvr then
			tbl_5[var138] = v_12.Equipped
		end
	end
	for i_13, v_13 in tbl_5 do
		for _, v_14 in v_13 do
			local var139 = i_13.Data_ById[v_14]
			if var139 and var139.EnergyMultiplier then
				var137 += var139.EnergyMultiplier
			end
		end
	end
	if arg5 then
		v_13 = module_5_upvr
		i_13 = v_13.DimensionStateGetEnergyMultiplierBonus
		v_13 = arg3
		i_13 = i_13(v_13)
	end
	local var140
	if module_7_upvr.CarryStateIsCarried(arg2) then
		var140 *= module_15_upvr.EnergyCarriedPlayerMultiplier
	else
		local len = #arg2.Carrying
		if 0 < len then
			v_13 = module_15_upvr
			i_13 = v_13.EnergyCarryingPlayerMultiplier
			v_13 = module_15_upvr.EnergyCarryingAdditionalPlayerBonus * (len - 1)
			var140 *= i_13 + v_13
		end
	end
	return var140, var137
end
function module_11_upvr.EnergyGenerate(arg1, arg2) -- Line 447
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	return arg1 * module_15_upvr.EnergyGenerationPerSecond * arg2
end
local tbl_7_upvr = {
	Id = 1;
	Currency_ByType = {
		[module_7_upvr.CurrencyType.Cash] = {
			Dynamic = function(arg1) -- Line 491, Named "Dynamic"
				--[[ Upvalues[1]:
					[1]: module_15_upvr (readonly)
				]]
				return math.max(module_15_upvr.EnergyGenerationPerSecond * 15 * math.max(arg1.EnergyHighestMultiplier, 1), 100)
			end;
		};
	};
	Items = module_11_upvr.ItemDataDetailsCreate({
		[module_7_upvr.ItemType.Trail] = {"GrpRbx", "GrpRbxNeon", "GrpTUp"};
	}, module_7_upvr.ExceptionHandleType.Warn);
}
module_11_upvr.CurrentGroupReward = tbl_7_upvr
function module_11_upvr.GroupRewardHasClaimedCurrent(arg1) -- Line 510
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	local var147
	if table.find(arg1.GroupRewardIds, tbl_7_upvr.Id) == nil then
		var147 = false
	else
		var147 = true
	end
	return var147
end
function module_11_upvr.GroupRewardAvailable(arg1) -- Line 517
	--[[ Upvalues[2]:
		[1]: module_15_upvr (readonly)
		[2]: module_11_upvr (readonly)
	]]
	local GroupProvideMembershipReward = module_15_upvr.GroupProvideMembershipReward
	if GroupProvideMembershipReward then
		GroupProvideMembershipReward = not module_11_upvr.GroupRewardHasClaimedCurrent(arg1)
	end
	return GroupProvideMembershipReward
end
function module_11_upvr.GroupRewardGetCurrentRewardStrings(arg1) -- Line 525
	--[[ Upvalues[4]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_13_upvr (readonly)
	]]
	local module_14 = {}
	if tbl_7_upvr.Items then
		for _, v_15 in module_11_upvr.ItemTypeOrder do
			local var158 = tbl_7_upvr.Items.ByType[v_15]
			local var159
			if var158 then
				local len_2 = #var158
				if len_2 ~= 1 then
					var159 = module_2_upvr.FrontEndNames.Items_ByItemType[v_15].Plural.Proper
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var159 = module_2_upvr.FrontEndNames.Items_ByItemType[v_15].Singular.Proper
				end
				module_14[#module_14 + 1] = string.format("%i exclusive %s", len_2, var159)
			end
		end
	end
	if tbl_7_upvr.Currency_ByType then
		for i_16, v_16 in tbl_7_upvr.Currency_ByType do
			var158 = v_16.Static or 0
			local var161 = var158
			if v_16.Dynamic then
				var161 += v_16.Dynamic(arg1)
			end
			module_14[#module_14 + 1] = string.format("a %s %s bonus", module_2_upvr.CurrencySymbolApply(module_13_upvr.FormatNumber(var161, module_13_upvr.FormatNumberOptions_PriceAbbreviation), i_16), module_2_upvr.FrontEndNames.Currency_ByCurrencyType[i_16].Singular.Proper)
		end
	end
	return module_14
end
tbl_7_upvr = {}
module_11_upvr.ItemsSold_ByLevelData = tbl_7_upvr
function tbl_7_upvr(arg1) -- Line 586, Named "GetItemDataDetails"
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local var162 = module_11_upvr.ItemsSold_ByLevelData[arg1]
	if not var162 then
		var162 = module_11_upvr.ItemDataDetailsCreate()
		module_11_upvr.ItemsSold_ByLevelData[arg1] = var162
	end
	return var162
end
for i_17, v_17 in module_4.EggsSold_ByLevelData do
	local var163 = module_11_upvr.ItemsSold_ByLevelData[i_17]
	if not var163 then
		var163 = module_11_upvr.ItemDataDetailsCreate()
		module_11_upvr.ItemsSold_ByLevelData[i_17] = var163
	end
	local var164 = var163
	if var164.Eggs then
		table.move(v_17, 1, #v_17, #var164.Eggs + 1, var164.Eggs)
	else
		var164.Eggs = v_17
		var164.ByType[module_7_upvr.ItemType.Egg] = v_17
	end
end
function tbl_7_upvr(arg1, arg2, arg3, arg4) -- Line 615, Named "GeneratePriceString"
	--[[ Upvalues[5]:
		[1]: module_11_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_12_upvr (readonly)
		[5]: module_2_upvr (readonly)
	]]
	local var165
	if arg1 ~= module_11_upvr.TransactionType.Invalid and arg2 then
		if arg1 == module_11_upvr.TransactionType.Currency then
			local var166 = (arg2 or 0) * (arg3 or 1)
			if var166 ~= 0 then
				var165 = module_13_upvr.FormatNumber(var166, arg4)
				return var165
			end
			var165 = "Free"
			return var165
		end
		var166 = nil
		local var167 = var166
		if arg1 == module_11_upvr.TransactionType.Product then
			var167 = module_6_upvr.ProductGetProductInfo(arg2)
		elseif arg1 == module_11_upvr.TransactionType.Gamepass then
			var167 = module_12_upvr.GamepassGetProductInfo(arg2)
		end
		var165 = module_13_upvr.FormatNumber(var167.PriceInRobux, arg4)..module_2_upvr.RobuxUnicode
	end
	return var165
end
module_11_upvr.GeneratePriceString = tbl_7_upvr
function tbl_7_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 662, Named "RunGeneratePriceStringAsync"
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	arg1(module_11_upvr.GeneratePriceString(arg2, arg3, arg4, arg5))
end
function module_11_upvr.GeneratePriceStringAsync(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 679
	--[[ Upvalues[2]:
		[1]: module_13_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	if module_13_upvr.RunFunction(tbl_7_upvr, arg1, arg3, arg4, arg5, arg6) and arg2 then
		arg1(arg2)
	end
end
local tbl_2_upvr = {
	[module_7_upvr.CounterType.SecretLevels] = {
		Cost = 50000;
		Spec = {
			Base = 3;
			Scale = 1;
		};
	};
}
local tbl_3_upvr = {
	[module_7_upvr.CounterType.MainLevels] = module_3_upvr.GetNextLevelPrice;
}
function module_11_upvr.GetCounterCost(arg1, arg2, arg3) -- Line 728
	--[[ Upvalues[4]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: module_11_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local maximum = math.max(arg3 or 1, 1)
	local var181 = tbl_2_upvr[arg1]
	if var181 then
		for _ = arg2, arg2 + maximum - 1 do
			local Spec = var181.Spec
			local var183
		end
		return module_11_upvr.TransactionType.Currency, var183, maximum
	end
	local var184 = tbl_3_upvr[arg1]
	local var185
	if var184 then
		var185 = 0
		for i_19 = arg2, arg2 + maximum - 1 do
			var185 += var184(i_19)
			local var186
		end
		return module_11_upvr.TransactionType.Currency, var185, maximum
	end
	return module_11_upvr.TransactionType.Invalid, nil, 0
end
function tbl_2_upvr(arg1) -- Line 770, Named "GetItemCost"
	--[[ Upvalues[4]:
		[1]: module_11_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_12_upvr (readonly)
	]]
	local assert_result1_2 = assert(module_11_upvr.ItemType_ByItemData[arg1], "Invalid ItemData")
	if module_7_upvr.CanPurchase(arg1) then
		local var192 = module_6_upvr.ProductItems_ByItemType[assert_result1_2]
		if var192 then
			local var193 = var192[arg1.Id]
			if var193 and not var193.Disabled then
				return module_11_upvr.TransactionType.Product, var193
			end
		end
		local var194 = module_12_upvr.GamepassItems_ByItemType[assert_result1_2]
		if var194 then
			local var195 = var194[arg1.Id]
			if var195 and not var195.Disabled then
				return module_11_upvr.TransactionType.Gamepass, var195
			end
		end
		return module_11_upvr.TransactionType.Currency, arg1.Price
	end
	return module_11_upvr.TransactionType.Invalid
end
module_11_upvr.GetItemCost = tbl_2_upvr
function tbl_2_upvr(arg1, arg2) -- Line 804, Named "GetLevelSkipCost_Currency"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: module_15_upvr (readonly)
	]]
	local var198 = 0
	local var199 = 0
	local var200 = arg1 + 1
	if arg2 < var200 then
		var199 = var200 - arg2
		for i_20 = arg2 + 1, var200 do
			var198 += module_3_upvr.GetNextLevelPrice(i_20)
		end
		var198 *= module_15_upvr.LevelsSkipCostFactor
	end
	return var198, var199
end
module_11_upvr.GetLevelSkipCost_Currency = tbl_2_upvr
tbl_2_upvr = {}
local var201_upvr = tbl_2_upvr
tbl_3_upvr = module_7_upvr.ItemType.Dance
var201_upvr[tbl_3_upvr] = {
	Base = 1.75;
	Scale = 0.875;
}
tbl_3_upvr = module_7_upvr.ItemType.World
var201_upvr[tbl_3_upvr] = {
	Base = 2.5;
	Scale = 1;
}
function tbl_3_upvr(arg1, arg2) -- Line 842, Named "GetRandomItemCost"
	--[[ Upvalues[5]:
		[1]: module_11_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: var201_upvr (readonly)
		[4]: GetUnownedRandomItems_Internal_upvr (readonly)
		[5]: module_13_upvr (readonly)
	]]
	local var209 = module_6_upvr.ProductRandomItem_ByItemType[arg2]
	local var210
	if var209 and not var209.Disabled then
		var210 = module_11_upvr.TransactionType.Product
		return var210, var209
	end
	local var211 = module_11_upvr.BuyRandomCost_ByItemType[arg2]
	if var211 then
		var210 = module_11_upvr.TransactionType.Currency
		local var212 = var201_upvr[arg2]
		local var213
		if var212 then
			if type(var211) ~= "number" then
				var213 = false
			else
				var213 = true
			end
			assert(var213)
			var213 = module_11_upvr.RandomItemPools_ByItemType[arg2].Array
			var213 = #var213 - #GetUnownedRandomItems_Internal_upvr(arg1, arg2)
			var211 = module_13_upvr.BeautifyNumber(var211 * var212.Base ^ var213 ^ var212.Scale, 4, 0.5)
		end
	end
	return var210, var211
end
module_11_upvr.GetRandomItemCost = tbl_3_upvr
var201_upvr = {}
local var214_upvr = var201_upvr
tbl_3_upvr = module_7_upvr.UnlockRequirementType.LevelCompletions
var214_upvr[tbl_3_upvr] = function(arg1, arg2, arg3) -- Line 891
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local var216 = 0
	local any_SaveDataGetLevelStats_result1 = module_7_upvr.SaveDataGetLevelStats(arg1, arg2)
	if any_SaveDataGetLevelStats_result1 then
		var216 = math.clamp((any_SaveDataGetLevelStats_result1.CT or 0) / arg3, 0, 1)
	end
	return var216
end
tbl_3_upvr = {}
local ItemDataUnlockRequirementGetStrings_upvr = tbl_3_upvr
ItemDataUnlockRequirementGetStrings_upvr[module_7_upvr.UnlockRequirementType.LevelCompletions] = function(arg1, arg2, arg3) -- Line 915
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_13_upvr (readonly)
	]]
	local any_SaveDataGetLevelStats_result1_2 = module_7_upvr.SaveDataGetLevelStats(arg1, arg2)
	local var221
	if any_SaveDataGetLevelStats_result1_2 and any_SaveDataGetLevelStats_result1_2.CT then
		var221 = any_SaveDataGetLevelStats_result1_2.CT
	end
	return string.format("%s / %s", module_13_upvr.FormatNumber(math.min(var221, arg3), module_13_upvr.FormatNumberOptions_AddCommas), module_13_upvr.FormatNumber(arg3, module_13_upvr.FormatNumberOptions_AddCommas))
end
function module_11_upvr.SaveDataFormatUnlockProgress(arg1, arg2) -- Line 937
	--[[ Upvalues[1]:
		[1]: ItemDataUnlockRequirementGetStrings_upvr (readonly)
	]]
	return ItemDataUnlockRequirementGetStrings_upvr[arg2.Type](arg1, table.unpack(arg2.Args))
end
function module_11_upvr.SaveDataFormatItemUnlockProgress(arg1, arg2) -- Line 950
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local module_9 = {}
	if arg2.UnlockRequirements then
		for i_21, v_18 in arg2.UnlockRequirements do
			module_9[i_21] = module_11_upvr.SaveDataFormatUnlockProgress(arg1, v_18)
		end
	end
	return module_9
end
function module_11_upvr.SaveDataGetUnlockProgress(arg1, arg2) -- Line 971
	--[[ Upvalues[1]:
		[1]: var214_upvr (readonly)
	]]
	return var214_upvr[arg2.Type](arg1, table.unpack(arg2.Args))
end
function module_11_upvr.SaveDataGetItemUnlockProgress(arg1, arg2) -- Line 984
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local module_8 = {}
	if arg2.UnlockRequirements then
		for i_22, v_19 in arg2.UnlockRequirements do
			module_8[i_22] = module_11_upvr.SaveDataGetUnlockProgress(arg1, v_19)
		end
	end
	return module_8
end
function module_11_upvr.SaveDataMeetsUnlockRequirement(arg1, arg2) -- Line 1005
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local var232
	if module_11_upvr.SaveDataGetUnlockProgress(arg1, arg2) ~= 1 then
		var232 = false
	else
		var232 = true
	end
	return var232
end
function module_11_upvr.SaveDataMeetsUnlockRequirements(arg1, arg2) -- Line 1013
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local var237 = true
	if arg2.UnlockRequirements then
		for _, v_20 in arg2.UnlockRequirements do
			if not module_11_upvr.SaveDataMeetsUnlockRequirement(arg1, v_20) then
				var237 = false
				return var237
			end
		end
	end
	return var237
end
function module_11_upvr.SaveDataGetFirstUnmetRequirement(arg1, arg2) -- Line 1039
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local var242
	local var243
	if arg2.UnlockRequirements then
		for _, v_21 in arg2.UnlockRequirements do
			local any_SaveDataGetUnlockProgress_result1 = module_11_upvr.SaveDataGetUnlockProgress(arg1, v_21)
			if any_SaveDataGetUnlockProgress_result1 < 1 then
				var242 = any_SaveDataGetUnlockProgress_result1
				var243 = v_21
				return var242, var243
			end
		end
	end
	return var242, var243
end
var214_upvr = {}
local var245_upvr = var214_upvr
ItemDataUnlockRequirementGetStrings_upvr = module_7_upvr.UnlockRequirementType.LevelCompletions
var245_upvr[ItemDataUnlockRequirementGetStrings_upvr] = function(arg1, arg2) -- Line 1073
	--[[ Upvalues[2]:
		[1]: module_10_upvr (readonly)
		[2]: module_13_upvr (readonly)
	]]
	local var247 = arg2
	if arg2 ~= 1 then
		var247 = 's'
	else
		var247 = ""
	end
	return string.format("Beat %s\n%s time%s.", module_10_upvr.LevelGetFormattedName(module_10_upvr.Level_ById[arg1], module_10_upvr.FormattedNameType.Number), module_13_upvr.FormatNumber(var247, module_13_upvr.FormatNumberOptions_AddCommas), var247)
end
function ItemDataUnlockRequirementGetStrings_upvr(arg1) -- Line 1096, Named "UnlockRequirementGetString"
	--[[ Upvalues[1]:
		[1]: var245_upvr (readonly)
	]]
	return var245_upvr[arg1.Type](table.unpack(arg1.Args))
end
module_11_upvr.UnlockRequirementGetString = ItemDataUnlockRequirementGetStrings_upvr
function ItemDataUnlockRequirementGetStrings_upvr(arg1) -- Line 1109, Named "ItemDataUnlockRequirementGetStrings"
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	local module = {}
	if arg1.UnlockRequirements then
		for i_25, v_22 in arg1.UnlockRequirements do
			module[i_25] = module_11_upvr.UnlockRequirementGetString(v_22)
		end
	end
	return module
end
module_11_upvr.ItemDataUnlockRequirementGetStrings = ItemDataUnlockRequirementGetStrings_upvr
var245_upvr = table.freeze
ItemDataUnlockRequirementGetStrings_upvr = {}
local SortItemData_ByUnlockRequirements_Internal_upvr = ItemDataUnlockRequirementGetStrings_upvr
SortItemData_ByUnlockRequirements_Internal_upvr[1] = module_7_upvr.UnlockRequirementType.LevelCompletions
var245_upvr = var245_upvr(SortItemData_ByUnlockRequirements_Internal_upvr)
module_11_upvr.UnlockRequirementOrder = var245_upvr
var245_upvr = {}
local SaveDataCanBuyEgg_upvr = var245_upvr
SortItemData_ByUnlockRequirements_Internal_upvr = module_7_upvr.UnlockRequirementType.LevelCompletions
SaveDataCanBuyEgg_upvr[SortItemData_ByUnlockRequirements_Internal_upvr] = function(arg1, arg2) -- Line 1138
	local var256
	if arg1[2] ~= arg2[2] then
		if arg1[2] >= arg2[2] then
			var256 = false
		else
			var256 = true
		end
	end
	return var256
end
function SortItemData_ByUnlockRequirements_Internal_upvr(arg1, arg2, arg3, arg4) -- Line 1153, Named "SortItemData_ByUnlockRequirements_Internal"
	--[[ Upvalues[4]:
		[1]: SaveDataCanBuyEgg_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: module_10_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
	local UnlockRequirements = arg1.UnlockRequirements
	local UnlockRequirements_2 = arg2.UnlockRequirements
	if not UnlockRequirements or not UnlockRequirements_2 then
		if UnlockRequirements or UnlockRequirements_2 then
			-- KONSTANTWARNING: GOTO [61] #48
		end
		-- KONSTANTWARNING: GOTO [61] #48
	end
	-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 57 start (CF ANALYSIS FAILED)
	local const_number = 1
	local var260 = UnlockRequirements[const_number]
	local var261 = UnlockRequirements_2[const_number]
	if not var260 or not var261 then
		if var260 or var261 then
			-- KONSTANTWARNING: GOTO [61] #48
		end
		-- KONSTANTWARNING: GOTO [61] #48
	end
	-- KONSTANTERROR: [11] 10. Error Block 57 end (CF ANALYSIS FAILED)
end
function module_11_upvr.SortItemData_ByUnlockRequirements(arg1, arg2, arg3) -- Line 1238
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: SortItemData_ByUnlockRequirements_Internal_upvr (readonly)
	]]
	local var262_upvr = arg3
	if not var262_upvr then
		var262_upvr = module_11_upvr.UnlockRequirementOrder
	end
	table.sort(arg1, function(arg1_2, arg2_2) -- Line 1248
		--[[ Upvalues[3]:
			[1]: SortItemData_ByUnlockRequirements_Internal_upvr (copied, readonly)
			[2]: var262_upvr (readonly)
			[3]: arg2 (readonly)
		]]
		return SortItemData_ByUnlockRequirements_Internal_upvr(arg1_2, arg2_2, var262_upvr, arg2)
	end)
end
function SaveDataCanBuyEgg_upvr(arg1, arg2) -- Line 1262, Named "SaveDataCanBuyEgg"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_11_upvr (readonly)
	]]
	local var264
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var264 = module_11_upvr.SaveDataMeetsUnlockRequirements(arg1, arg2)
		return var264
	end
	if not module_7_upvr.CanPurchase(arg2) or not INLINED() then
		var264 = module_7_upvr.SaveDataOwnsItem(arg1, module_7_upvr.ItemType.Egg, arg2.Id)
	end
	return var264
end
module_11_upvr.SaveDataCanBuyEgg = SaveDataCanBuyEgg_upvr
SaveDataCanBuyEgg_upvr = module_13_upvr.TableFreezeAll
SortItemData_ByUnlockRequirements_Internal_upvr = module_11_upvr
SaveDataCanBuyEgg_upvr(SortItemData_ByUnlockRequirements_Internal_upvr)
return module_11_upvr