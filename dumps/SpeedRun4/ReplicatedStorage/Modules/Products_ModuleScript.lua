-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:17
-- Luau version 6, Types version 3
-- Time taken: 0.015830 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_3_upvr = {}
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_2_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local module_5 = require(ReplicatedStorage:WaitForChild("Theme"))
local ResolveProductId = module_upvr.ResolveProductId
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_4_upvr = require(Modules:WaitForChild("Utility"))
local tbl_upvr = {
	CachedProductInfo_ByProduct = {};
	SortedProductDataDonations = {
		Thread = nil;
		YieldedThreads = {};
	};
}
module_3_upvr.ProductType = table.freeze({
	CompleteQuest = 1;
	CurrencyDynamic = 2;
	CurrencyStatic = 3;
	Donation = 4;
	Durable = 5;
	GiftGamepass = 6;
	GiftProduct = 7;
	IncrementCounter = 8;
	RandomItem = 9;
	SkipLevel = 10;
	UnlockEgg = 11;
})
module_3_upvr.Products = {}
module_3_upvr.Data_ByType = {}
module_3_upvr.Data_ById = {}
local function ProcessProductArray(arg1, arg2, arg3) -- Line 127
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local table_create_result1 = table.create(#arg2)
	local any_TableBuildSub_result1 = module_4_upvr.TableBuildSub(module_3_upvr.Data_ByType, arg1)
	for _, v in arg2 do
		if v.ProductId then
			v.Type = arg1
			if module_3_upvr.Data_ById[v.ProductId] and module_3_upvr.Data_ById[v.ProductId] ~= v then
				error(module_2_upvr.FormatOutput("Duplicate entries for Developer Product '%i'", "Products", nil, v.ProductId))
			end
			module_3_upvr.Data_ById[v.ProductId] = v
			if not table.find(any_TableBuildSub_result1, v) then
				any_TableBuildSub_result1[#any_TableBuildSub_result1 + 1] = v
			end
			table_create_result1[#table_create_result1 + 1] = v
		end
	end
	if arg3 then
		for _, v_2 in table_create_result1 do
			v_2.RequiresHandling = true
		end
	end
	return table_create_result1
end
local function OrganizeCurrencyProducts(arg1, arg2) -- Line 180
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1[1] then
		return {}
	end
	table.sort(arg1, function(arg1_2, arg2_2) -- Line 189
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local CurrencyType = arg1_2.CurrencyType
		if CurrencyType ~= arg2_2.CurrencyType then
			if arg1_2.CurrencyType >= arg2_2.CurrencyType then
				CurrencyType = false
			else
				CurrencyType = true
			end
			return CurrencyType
		end
		if arg1_2[arg2] >= arg2_2[arg2] then
			CurrencyType = false
		else
			CurrencyType = true
		end
		return CurrencyType
	end)
	for _, v_3 in arg1 do
		local any_TableBuildSub_result1_2 = module_4_upvr.TableBuildSub({}, v_3.CurrencyType)
		any_TableBuildSub_result1_2[#any_TableBuildSub_result1_2 + 1] = v_3
		local var103
	end
	return var103
end
module_3_upvr.Products.CompleteQuest = ProcessProductArray(module_3_upvr.ProductType.CompleteQuest, {{
	ProductId = ResolveProductId(1756050653, nil, nil, nil);
	Difficulty = module_2_upvr.QuestDifficulty.Unrated;
}}, true)
module_3_upvr.ProductCompleteQuest_ByDifficulty = {}
for _, v_4 in module_3_upvr.Products.CompleteQuest do
	module_3_upvr.ProductCompleteQuest_ByDifficulty[v_4.Difficulty] = v_4
end
module_3_upvr.Products.CurrencyDynamic = ProcessProductArray(module_3_upvr.ProductType.CurrencyDynamic, {{
	ProductId = ResolveProductId(1845065839, 1905293989, 1925285730, 1931771479);
	GiftId = ResolveProductId(1914601862, 1914608423, 1925223977, 1931769995);
	Disabled = not module_upvr.EnergyEnabled;
	Order = 1;
	CurrencyType = module_2_upvr.CurrencyType.Cash;
}, {
	ProductId = ResolveProductId(1845067597, 1905294271, 1925286091, 1931771290);
	GiftId = ResolveProductId(1914602059, 1914608629, 1925223433, 1931769742);
	Disabled = not module_upvr.EnergyEnabled;
	Order = 2;
	CurrencyType = module_2_upvr.CurrencyType.Cash;
}, {
	ProductId = ResolveProductId(1845067598, 1905294538, 1925286318, 1931771165);
	GiftId = ResolveProductId(1914602209, 1914608741, 1925223198, 1931769653);
	Disabled = not module_upvr.EnergyEnabled;
	Order = 3;
	CurrencyType = module_2_upvr.CurrencyType.Cash;
}, {
	ProductId = ResolveProductId(1845067595, 1905294755, 1925286506, 1931771014);
	GiftId = ResolveProductId(1914602378, 1914608845, 1925223025, 1931769574);
	Disabled = not module_upvr.EnergyEnabled;
	Order = 4;
	CurrencyType = module_2_upvr.CurrencyType.Cash;
}, {
	ProductId = ResolveProductId(1845067596, 1905295031, 1925286708, 1931770882);
	GiftId = ResolveProductId(1914602619, 1914608978, 1925222571, 1931769363);
	Disabled = not module_upvr.EnergyEnabled;
	Order = 5;
	CurrencyType = module_2_upvr.CurrencyType.Cash;
}})
module_3_upvr.ProductCurrencyDynamicArray_ByType = OrganizeCurrencyProducts(module_3_upvr.Products.CurrencyDynamic, "Order")
module_3_upvr.Products.CurrencyStatic = ProcessProductArray(module_3_upvr.ProductType.CurrencyStatic, {{
	ProductId = ResolveProductId(161920178, nil, nil, nil);
	Disabled = module_upvr.EnergyEnabled;
	Amount = 500;
	CurrencyType = module_2_upvr.CurrencyType.Gems;
}, {
	ProductId = ResolveProductId(161920311, nil, nil, nil);
	Disabled = module_upvr.EnergyEnabled;
	Amount = 1500;
	CurrencyType = module_2_upvr.CurrencyType.Gems;
}, {
	ProductId = ResolveProductId(161920402, nil, nil, nil);
	Disabled = module_upvr.EnergyEnabled;
	Amount = 10000;
	CurrencyType = module_2_upvr.CurrencyType.Gems;
}, {
	ProductId = ResolveProductId(161920449, nil, nil, nil);
	Disabled = module_upvr.EnergyEnabled;
	Amount = 100000;
	CurrencyType = module_2_upvr.CurrencyType.Gems;
}, {
	ProductId = ResolveProductId(161920621, nil, nil, nil);
	Disabled = module_upvr.EnergyEnabled;
	Amount = 1000000;
	CurrencyType = module_2_upvr.CurrencyType.Gems;
}})
module_3_upvr.ProductCurrencyStaticArray_ByType = OrganizeCurrencyProducts(module_3_upvr.Products.CurrencyStatic, "Amount")
module_3_upvr.Products.Donation = ProcessProductArray(module_3_upvr.ProductType.Donation, {{
	ProductId = ResolveProductId(1817442591, 1905295176, 1925285194, 1931768474);
}, {
	ProductId = ResolveProductId(1817442590, 1905295267, 1925285302, 1931768524);
}, {
	ProductId = ResolveProductId(1817442593, 1905295414, 1925285388, 1931768398);
}})
module_3_upvr.Products.Durable = ProcessProductArray(module_3_upvr.ProductType.Durable, {{
	ProductId = ResolveProductId(1916077130, 1916076370, 1925296416, 1931768151);
	GiftId = ResolveProductId(1914598988, 1914605444, 1925220892, 1931768782);
	FallbackImageId = module_5.ScrapeImageId(module_5.PassIcon_Luck3x);
	DurableType = module_2_upvr.DurableType.Luck3x;
}, {
	ProductId = ResolveProductId(1916077324, 1916076678, 1925296588, 1931768300);
	GiftId = ResolveProductId(1914599197, 1914605606, 1925221329, 1931768871);
	FallbackImageId = module_5.ScrapeImageId(module_5.PassIcon_Luck4x);
	DurableType = module_2_upvr.DurableType.Luck4x;
}})
module_3_upvr.ProductDataDurable_ByDurableType = {}
for _, v_5 in module_3_upvr.Products.Durable do
	module_3_upvr.ProductDataDurable_ByDurableType[v_5.DurableType] = v_5
end
module_3_upvr.Products.IncrementCounter = ProcessProductArray(module_3_upvr.ProductType.IncrementCounter, {{
	ProductId = ResolveProductId(1792481124, 1905327141, 1925289357, 1931772659);
	GiftId = ResolveProductId(1914603806, 1914609612, 1925222392, 1931769263);
	FallbackImageId = module_5.ScrapeImageId(module_5.PortalIcon_Forbidden);
	Amount = 1;
	CounterType = module_2_upvr.CounterType.ForbiddenLevels;
}, {
	ProductId = ResolveProductId(1792479542, 1905326931, 1925289477, 1931773038);
	GiftId = ResolveProductId(1914603945, 1914609717, 1925223822, 1931769906);
	FallbackImageId = module_5.ScrapeImageId(module_5.PortalIcon_Secret);
	Amount = 1;
	CounterType = module_2_upvr.CounterType.SecretLevels;
}, {
	ProductId = ResolveProductId(1864659267, 1905293068, 1925285041, 1931767763);
	Amount = 2;
	CounterType = module_2_upvr.CounterType.PetEquipLimit;
}}, true)
module_3_upvr.ProductIncrementCounter_ByCounterType = {}
for _, v_6 in module_3_upvr.Products.IncrementCounter do
	module_3_upvr.ProductIncrementCounter_ByCounterType[v_6.CounterType] = v_6
end
module_3_upvr.Products.RandomItem = ProcessProductArray(module_3_upvr.ProductType.RandomItem, {{
	ProductId = ResolveProductId(1914581277, 1914582347, 1925287669, 1931771553);
	GiftId = ResolveProductId(1914603055, 1914609215, 1925224714, 1931770435);
	ItemType = module_2_upvr.ItemType.Dance;
}, {
	ProductId = ResolveProductId(164590133, 1905296810, 1925287893, 1931771711);
	GiftId = ResolveProductId(1914603228, 1914609309, 1925224889, 1931770536);
	ItemType = module_2_upvr.ItemType.Trail;
}, {
	ProductId = ResolveProductId(1914581832, 1905296604, 1925288053, 1931771790);
	GiftId = ResolveProductId(1914603418, 1914609398, 1925225120, 1931770612);
	ItemType = module_2_upvr.ItemType.World;
}}, true)
module_3_upvr.ProductRandomItem_ByItemType = {}
for _, v_7 in module_3_upvr.Products.RandomItem do
	module_3_upvr.ProductRandomItem_ByItemType[v_7.ItemType] = v_7
end
module_3_upvr.Products.SkipLevel = ProcessProductArray(module_3_upvr.ProductType.SkipLevel, {{
	ProductId = ResolveProductId(24287336, 1905296187, 1925287357, 1931771373);
}}, true)
module_3_upvr.Products.UnlockEgg = ProcessProductArray(module_3_upvr.ProductType.UnlockEgg, {{
	ProductId = ResolveProductId(1865631777, 1905296975, 1925288378, 1931772279);
	Index = 2;
}, {
	ProductId = ResolveProductId(1865631778, 1905297113, 1925288477, 1931772333);
	Index = 3;
}, {
	ProductId = ResolveProductId(1865631780, 1905297261, 1925288562, 1931772398);
	Index = 4;
}, {
	ProductId = ResolveProductId(1865631783, 1905297548, 1925288650, 1931772478);
	Index = 5;
}, {
	ProductId = ResolveProductId(1865631784, 1905297673, 1925288761, 1931772531);
	Index = 6;
}, {
	ProductId = ResolveProductId(1865631781, 1905297844, 1925288844, 1931772588);
	Index = 7;
}}, true)
module_3_upvr.ProductUnlockEgg_ByUnlockIndex = {}
for _, v_8 in module_3_upvr.Products.UnlockEgg do
	module_3_upvr.ProductUnlockEgg_ByUnlockIndex[v_8.Index] = v_8
end
module_3_upvr.ProductItems_ByItemType = {}
module_3_upvr.ProductGiftGamepass_ById = {}
module_3_upvr.ProductGiftProduct_ById = {}
local function GenerateGiftProducts(arg1) -- Line 479
	local module = {}
	for _, v_9 in arg1 do
		if v_9.GiftId and not v_9.Disabled then
			module[#module + 1] = {
				ProductId = v_9.GiftId;
				Data = v_9;
			}
		end
	end
	return module
end
module_3_upvr.Products.GiftProduct = ProcessProductArray(module_3_upvr.ProductType.GiftProduct, GenerateGiftProducts(module_3_upvr.Data_ById), true)
for _, v_10 in module_3_upvr.Products.GiftProduct do
	module_3_upvr.ProductGiftProduct_ById[v_10.Data.ProductId] = v_10
end
module_3_upvr.Products.GiftGamepass = ProcessProductArray(module_3_upvr.ProductType.GiftGamepass, GenerateGiftProducts(require(Modules:WaitForChild("Gamepasses")).Data_ById), true)
for _, v_11 in module_3_upvr.Products.GiftGamepass do
	module_3_upvr.ProductGiftGamepass_ById[v_11.Data.GamepassId] = v_11
end
function module_3_upvr.ProductIsGift(arg1) -- Line 518
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var146 = true
	if arg1.Type ~= module_3_upvr.ProductType.GiftGamepass then
		if arg1.Type ~= module_3_upvr.ProductType.GiftProduct then
			var146 = false
		else
			var146 = true
		end
	end
	return var146
end
function module_3_upvr.ProductGetProductInfo(arg1, arg2) -- Line 531
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var147
	if not var147 or arg2 then
		repeat
			local pcall_result1, pcall_result2 = pcall(MarketplaceService_upvr.GetProductInfo, MarketplaceService_upvr, arg1.ProductId, Enum.InfoType.Product)
			local var150 = pcall_result1
			var147 = pcall_result2
			local var151 = var147
			if not var150 then
				task.wait(module_upvr.MarketplaceFetchRetryDelay)
			end
		until not var150 or var151
		assert(var151)
		if var151.IconImageAssetId == 0 and arg1.FallbackImageId then
			var151.IconImageAssetId = arg1.FallbackImageId
		end
		tbl_upvr.CachedProductInfo_ByProduct[arg1] = var151
	end
	return var151
end
local function RunProductGetProductInfoAsync_upvr(arg1, arg2, arg3) -- Line 568, Named "RunProductGetProductInfoAsync"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	arg1(module_3_upvr.ProductGetProductInfo(arg2, arg3))
end
function module_3_upvr.ProductGetProductInfoAsync(arg1, arg2, arg3) -- Line 577
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: RunProductGetProductInfoAsync_upvr (readonly)
	]]
	module_4_upvr.RunFunction(RunProductGetProductInfoAsync_upvr, arg2, arg1, arg3)
end
for _, v_12 in module_3_upvr do
	if type(v_12) == "table" then
		module_4_upvr.TableFreezeAll(v_12)
	end
end
local tbl_upvr_4 = {
	[module_2_upvr.CurrencyType.Cash] = 0.00036;
}
local tbl_upvr_2 = {
	[module_2_upvr.CurrencyType.Cash] = function(arg1) -- Line 607
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return (arg1.EnergyHighestMultiplier) * (module_upvr.EnergyGenerationPerSecond * 15)
	end;
}
local function ProductGetCurrencyValue_Internal_upvr(arg1, arg2, arg3) -- Line 621, Named "ProductGetCurrencyValue_Internal"
	--[[ Upvalues[5]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_upvr_4 (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_4_upvr (readonly)
	]]
	local var155
	if arg1.Type == module_3_upvr.ProductType.CurrencyDynamic then
		assert(arg3)
		local var156 = tbl_upvr_4[arg1.CurrencyType]
		local var157 = tbl_upvr_2[arg1.CurrencyType]
		if not var156 or not var157 then
			error(module_2_upvr.FormatOutput("CurrencyType '%s' not supported for dynamic allotment", "Products", nil, arg1.CurrencyType))
		end
		var155 = (var157(arg2)) * (arg3 * (1 + var156) ^ arg3) // 1
	elseif arg1.Type == module_3_upvr.ProductType.CurrencyStatic then
		var155 = arg1.Amount
	else
		error(module_2_upvr.FormatOutput("ProductId '%i' is not a currency product", "Products", nil, arg1.ProductId), 3)
	end
	return module_4_upvr.BeautifyNumber(var155, 3, 1, true)
end
function module_3_upvr.ProductGetCurrencyValue(arg1, arg2, arg3) -- Line 666
	--[[ Upvalues[1]:
		[1]: ProductGetCurrencyValue_Internal_upvr (readonly)
	]]
	return ProductGetCurrencyValue_Internal_upvr(arg1, arg2, arg3)
end
function module_3_upvr.ProductGetCurrencyValueBlocking(arg1, arg2) -- Line 682
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: ProductGetCurrencyValue_Internal_upvr (readonly)
	]]
	local var158
	if arg1.Type == module_3_upvr.ProductType.CurrencyDynamic then
		var158 = module_3_upvr.ProductGetProductInfo(arg1).PriceInRobux
	end
	return ProductGetCurrencyValue_Internal_upvr(arg1, arg2, var158)
end
function tbl_upvr_4() -- Line 705, Named "FetchAndSortDonations"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local tbl_upvr_3 = {}
	local clone = table.clone(module_3_upvr.Products.Donation)
	for _, v_13 in clone do
		tbl_upvr_3[v_13] = module_3_upvr.ProductGetProductInfo(v_13)
	end
	table.sort(clone, function(arg1, arg2) -- Line 716
		--[[ Upvalues[1]:
			[1]: tbl_upvr_3 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var170 = tbl_upvr_3[arg1]
		local var171 = tbl_upvr_3[arg2]
		local var172
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var172 = var170.PriceInRobux
			return var172
		end
		if not var170 or not INLINED() then
			var172 = math.huge
		end
		if not var171 or not var171.PriceInRobux then
		end
		if var172 >= math.huge then
		else
		end
		return true
	end)
	tbl_upvr.SortedProductDataDonations.Data = table.freeze(clone)
	table.clear(tbl_upvr.SortedProductDataDonations.YieldedThreads)
	for _, v_14 in table.clone(tbl_upvr.SortedProductDataDonations.YieldedThreads), nil do
		if coroutine.status(v_14) == "suspended" then
			task.spawn(v_14, clone)
		end
	end
end
function tbl_upvr_2() -- Line 739, Named "ProductsGetSortedDonationsBlocking"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_4 (readonly)
	]]
	local Data = tbl_upvr.SortedProductDataDonations.Data
	if not Data then
		if not tbl_upvr.SortedProductDataDonations.Thread then
			tbl_upvr.SortedProductDataDonations.Thread = task.defer(tbl_upvr_4)
		end
		local YieldedThreads = tbl_upvr.SortedProductDataDonations.YieldedThreads
		YieldedThreads[#YieldedThreads + 1] = coroutine.running()
		Data = coroutine.yield()
	end
	return Data
end
module_3_upvr.ProductsGetSortedDonationsBlocking = tbl_upvr_2
tbl_upvr_2 = module_3_upvr
ProductGetCurrencyValue_Internal_upvr = nil
for _, v_15 in tbl_upvr_2, ProductGetCurrencyValue_Internal_upvr do
	if type(v_15) == "table" then
		module_4_upvr.TableFreezeAll(v_15)
	end
end
tbl_upvr_2 = require(Modules:WaitForChild("Signal")).new()
module_3_upvr.PromptProductPurchaseFinished = tbl_upvr_2
tbl_upvr_2 = table.freeze
ProductGetCurrencyValue_Internal_upvr = module_3_upvr
tbl_upvr_2(ProductGetCurrencyValue_Internal_upvr)
tbl_upvr_2 = MarketplaceService_upvr.PromptProductPurchaseFinished
tbl_upvr_2 = tbl_upvr_2:Connect
tbl_upvr_2(function(arg1, arg2, arg3) -- Line 770
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var176 = module_3_upvr.Data_ById[arg2]
	if var176 then
		module_3_upvr.PromptProductPurchaseFinished:Fire(arg1, var176, arg3)
	end
end)
return module_3_upvr