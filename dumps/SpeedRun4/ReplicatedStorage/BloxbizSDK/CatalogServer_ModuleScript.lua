-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:12
-- Luau version 6, Types version 3
-- Time taken: 0.013471 seconds

local module = {}
local Players_upvr = game:GetService("Players")
local HttpService_upvr = game:GetService("HttpService")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Utils_upvr = require(script.Parent.Utils)
local BatchHTTP_upvr = require(script.Parent.BatchHTTP)
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local RateLimiter_upvr = require(script.Parent.Utils.RateLimiter)
local DataManager_upvr = require(script.DataManager)
local SearchModule_upvr = require(script.SearchModule)
local tbl_2_upvr = {}
local tbl_upvr = {}
local tbl_upvr_2 = {"HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor"}
local tbl_upvr_3 = {
	SortType = {
		Proxy = {
			Relevance = 0;
			Favorited = 1;
			Sales = 2;
			Updated = 3;
			PriceAsc = 4;
			PriceDesc = 5;
		};
		Editor = {
			Relevance = Enum.CatalogSortType.Relevance;
			PriceDesc = Enum.CatalogSortType.PriceHighToLow;
			PriceAsc = Enum.CatalogSortType.PriceLowToHigh;
			Favorited = Enum.CatalogSortType.MostFavorited;
			Updated = Enum.CatalogSortType.RecentlyCreated;
			Sales = Enum.CatalogSortType.Bestselling;
		};
	};
	SaveOutfitLimit = 100;
	FetchCategoryRetries = 2;
	PersistentWear = ConfigReader_upvr:read("CatalogPersistentWear");
}
local function _() -- Line 64, Named "FetchCategories"
	--[[ Upvalues[4]:
		[1]: Utils_upvr (readonly)
		[2]: BatchHTTP_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: tbl_upvr_3 (readonly)
	]]
	local any_callWithRetry_result1 = Utils_upvr.callWithRetry(function() -- Line 65
		--[[ Upvalues[2]:
			[1]: BatchHTTP_upvr (copied, readonly)
			[2]: HttpService_upvr (copied, readonly)
		]]
		return HttpService_upvr:JSONDecode(HttpService_upvr:GetAsync(BatchHTTP_upvr.getNewUrl("catalog/categories")))
	end, tbl_upvr_3.FetchCategoryRetries)
	if type(any_callWithRetry_result1) == "table" then
		return any_callWithRetry_result1
	end
end
local function _(arg1) -- Line 77, Named "GetCategoryItems"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	return tbl_2_upvr[arg1]
end
local var21_upvw
local CategoryClass_upvr = require(script.CategoryClass)
local function InitCategoryItems_upvr() -- Line 81, Named "InitCategoryItems"
	--[[ Upvalues[8]:
		[1]: Utils_upvr (readonly)
		[2]: BatchHTTP_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: tbl_upvr_3 (readonly)
		[5]: var21_upvw (read and write)
		[6]: ReplicatedStorage_upvr (readonly)
		[7]: tbl_2_upvr (readonly)
		[8]: CategoryClass_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_callWithRetry_result1_2 = Utils_upvr.callWithRetry(function() -- Line 65
		--[[ Upvalues[2]:
			[1]: BatchHTTP_upvr (copied, readonly)
			[2]: HttpService_upvr (copied, readonly)
		]]
		return HttpService_upvr:JSONDecode(HttpService_upvr:GetAsync(BatchHTTP_upvr.getNewUrl("catalog/categories")))
	end, tbl_upvr_3.FetchCategoryRetries)
	local var41
	if type(any_callWithRetry_result1_2) == "table" then
		var41 = any_callWithRetry_result1_2
	else
		var41 = nil
	end
	if not var41 then
	end
	var21_upvw = require(script.Parent.CatalogClient.Categories)
	local RemoteFunction_5 = Instance.new("RemoteFunction")
	RemoteFunction_5.Parent = ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes")
	RemoteFunction_5.Name = "GetCatalogCategories"
	function RemoteFunction_5.OnServerInvoke() -- Line 90
		--[[ Upvalues[1]:
			[1]: var21_upvw (copied, read and write)
		]]
		return var21_upvw
	end
	for _, v in var21_upvw do
		for _, v_2 in v.subcategories do
			if v_2.query.Category then
				tbl_2_upvr[v_2.name] = CategoryClass_upvr.new(v_2)
			end
		end
	end
end
local function ItemsResponse_upvr(arg1, arg2) -- Line 105, Named "ItemsResponse"
	--[[ Upvalues[2]:
		[1]: RateLimiter_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then return end
	local Page = arg2.Page
	local Category = arg2.Category
	if type(Page) ~= "number" or type(Category) ~= "string" then return end
	local var46 = tbl_2_upvr[Category]
	if not var46 then return end
	return var46:GetItems(arg1, Page, arg2.SortType)
end
local function SearchItemsReponse_upvr(arg1, arg2) -- Line 126, Named "SearchItemsReponse"
	--[[ Upvalues[2]:
		[1]: RateLimiter_upvr (readonly)
		[2]: SearchModule_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then return end
	if type(arg2.Page) ~= "number" or type(arg2.Keyword) ~= "string" then return end
	return SearchModule_upvr.GetItems(arg1, arg2.Keyword, arg2.Page, arg2.SortType, arg2.AllowedTypes, arg2.CreatorFilter)
end
local InsertService_upvr = game:GetService("InsertService")
local function EmoteResponse_upvr(arg1, arg2) -- Line 151, Named "EmoteResponse"
	--[[ Upvalues[3]:
		[1]: RateLimiter_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: InsertService_upvr (readonly)
	]]
	if RateLimiter_upvr:checkRateLimiting(arg1) then return end
	if type(arg2) ~= "number" then return end
	if not ReplicatedStorage_upvr:FindFirstChild("BloxbizCatalogEmotes") then
		local Folder = Instance.new("Folder")
		Folder.Name = "BloxbizCatalogEmotes"
		Folder.Parent = ReplicatedStorage_upvr
	end
	local SOME = Folder:FindFirstChild(arg2)
	if not SOME then
		local any_LoadAsset_result1 = InsertService_upvr:LoadAsset(arg2)
		SOME = any_LoadAsset_result1:FindFirstChildWhichIsA("Animation", true)
		if SOME then
			SOME:ClearAllChildren()
			SOME.Name = arg2
			SOME.Parent = Folder
		end
		any_LoadAsset_result1:Destroy()
	end
	return SOME
end
local BodyScaleValues_upvr = require(script.Parent.CatalogClient.Libraries.BodyScaleValues)
local function ApplyToRealHumanoid_upvr(arg1, arg2) -- Line 183, Named "ApplyToRealHumanoid"
	--[[ Upvalues[5]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: BodyScaleValues_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 247, Named "GetDictionarySize"
	local var54 = 0
	for _ in arg1 do
		var54 += 1
	end
	return var54
end
local function IsValidOutfit_upvr(arg1, arg2, arg3) -- Line 255, Named "IsValidOutfit"
	local var63 = 0
	for _ in arg3 do
		var63 += 1
	end
	if var63 ~= arg1 then
		var63 = true
		return var63
	end
	var63 = arg3
	for i_5 in var63 do
		if i_5 == "BodyColors" then
			for i_6, v_3 in arg3.BodyColors do
				if arg2.BodyColors[i_6] ~= v_3 then
					return true
				end
			end
		elseif not arg2[tonumber(i_5)] then
			return true
		end
	end
	var63 = false
	return var63
end
local function DoesOutfitExist_upvr(arg1, arg2) -- Line 282, Named "DoesOutfitExist"
	--[[ Upvalues[2]:
		[1]: DataManager_upvr (readonly)
		[2]: IsValidOutfit_upvr (readonly)
	]]
	local var70 = 0
	for _ in arg2 do
		var70 += 1
	end
	var70 = DataManager_upvr.GetData(arg1).Outfits
	for _, v_4 in var70 do
		if not IsValidOutfit_upvr(var70, arg2, v_4) then
			return true
		end
	end
	var70 = false
	return var70
end
local function SaveOutfit_upvr(arg1, arg2, arg3) -- Line 295, Named "SaveOutfit"
	--[[ Upvalues[3]:
		[1]: DataManager_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: DoesOutfitExist_upvr (readonly)
	]]
	local var73
	if type(arg2) ~= "table" then return end
	local any_GetData_result1 = DataManager_upvr.GetData(arg1)
	if not any_GetData_result1 then return end
	var73 = 0
	for _ in any_GetData_result1.Outfits do
		var73 += 1
	end
	if tbl_upvr_3.SaveOutfitLimit < var73 + 1 then return end
	arg2.BodyColors = arg3
	if DoesOutfitExist_upvr(arg1, arg2) then return end
	DataManager_upvr.SetData(arg1, "OutfitsCount", any_GetData_result1.OutfitsCount + 1)
	local tbl_3 = {
		InnerKey = "Outfit"..any_GetData_result1.OutfitsCount;
	}
	tbl_3.InnerValue = arg2
	DataManager_upvr.SetData(arg1, "Outfits", tbl_3)
	return true
end
local function DeleteOutfit_upvr(arg1, arg2) -- Line 331, Named "DeleteOutfit"
	--[[ Upvalues[1]:
		[1]: DataManager_upvr (readonly)
	]]
	if type(arg2) ~= "string" then
	else
		if not DataManager_upvr.GetData(arg1) then return end
		local tbl = {}
		tbl.InnerKey = arg2
		tbl.InnerValue = nil
		DataManager_upvr.SetData(arg1, "Outfits", tbl)
	end
end
local function ApplyOutfit_upvr(arg1, arg2) -- Line 347, Named "ApplyOutfit"
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: Players_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if not tbl_upvr_3.PersistentWear then
	else
		if type(arg2) ~= "table" then return end
		local Character_2 = arg1.Character
		if not Character_2 then return end
		local Humanoid = Character_2:FindFirstChild("Humanoid")
		if not Humanoid then return end
		local HumanoidDescription = Instance.new("HumanoidDescription")
		HumanoidDescription:SetAccessories(arg2.Accessories, true)
		for i_11, v_6 in arg2 do
			if i_11 ~= "Accessories" then
				HumanoidDescription[i_11] = v_6
			end
		end
		if arg1:IsDescendantOf(Players_upvr) then
			Humanoid:ApplyDescription(HumanoidDescription)
			tbl_upvr[arg1] = HumanoidDescription
		end
	end
end
local function resetRealCharacterOutfit_upvr(arg1) -- Line 383, Named "resetRealCharacterOutfit"
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: Players_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if not tbl_upvr_3.PersistentWear then
	else
		local Character = arg1.Character
		if not Character then return end
		local Humanoid_2 = Character:FindFirstChild("Humanoid")
		if not Humanoid_2 then return end
		if arg1:IsDescendantOf(Players_upvr) then
			local any_GetHumanoidDescriptionFromUserId_result1 = Players_upvr:GetHumanoidDescriptionFromUserId(arg1.UserId)
			Humanoid_2:ApplyDescription(any_GetHumanoidDescriptionFromUserId_result1)
			tbl_upvr[arg1] = any_GetHumanoidDescriptionFromUserId_result1
		end
	end
end
local function PromptPurchase_upvr(arg1, arg2, arg3, arg4) -- Line 405, Named "PromptPurchase"
	--[[ Upvalues[2]:
		[1]: ConfigReader_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
	]]
	if table.find(ConfigReader_upvr:read("CatalogPurchaseBlockList"), arg2) then
		warn("Player "..arg1.Name.." fired PromptPurchase for blocked item")
	else
		if not arg4 then
		end
		if not arg3 then
			MarketplaceService_upvr:PromptPurchase(arg1, arg2)
			return
		end
		MarketplaceService_upvr:PromptBundlePurchase(arg1, arg2)
	end
end
local tbl_upvr_4 = {}
local CatalogAnalytics_upvr = require(script.CatalogAnalytics)
local OutfitFeed_upvr = require(script.OutfitFeed)
local FeaturedCategories_upvr = require(script.FeaturedCategories)
local AvatarPreview_upvr = require(script.AvatarPreview)
function module.Init() -- Line 425
	--[[ Upvalues[23]:
		[1]: InitCategoryItems_upvr (readonly)
		[2]: ItemsResponse_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: SearchItemsReponse_upvr (readonly)
		[5]: EmoteResponse_upvr (readonly)
		[6]: ApplyToRealHumanoid_upvr (readonly)
		[7]: ApplyOutfit_upvr (readonly)
		[8]: SaveOutfit_upvr (readonly)
		[9]: DeleteOutfit_upvr (readonly)
		[10]: resetRealCharacterOutfit_upvr (readonly)
		[11]: PromptPurchase_upvr (readonly)
		[12]: MarketplaceService_upvr (readonly)
		[13]: tbl_upvr_3 (readonly)
		[14]: tbl_upvr (readonly)
		[15]: Players_upvr (readonly)
		[16]: Utils_upvr (readonly)
		[17]: tbl_upvr_4 (readonly)
		[18]: SearchModule_upvr (readonly)
		[19]: DataManager_upvr (readonly)
		[20]: CatalogAnalytics_upvr (readonly)
		[21]: OutfitFeed_upvr (readonly)
		[22]: FeaturedCategories_upvr (readonly)
		[23]: AvatarPreview_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	InitCategoryItems_upvr()
	local RemoteFunction = Instance.new("RemoteFunction")
	RemoteFunction.Name = "CatalogOnItemsPageRequest"
	RemoteFunction.OnServerInvoke = ItemsResponse_upvr
	RemoteFunction.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteFunction_6 = Instance.new("RemoteFunction")
	RemoteFunction_6.Name = "CatalogOnSearchItemsRequest"
	RemoteFunction_6.OnServerInvoke = SearchItemsReponse_upvr
	RemoteFunction_6.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteFunction_2 = Instance.new("RemoteFunction")
	RemoteFunction_2.Name = "CatalogOnLoadEmoteRequest"
	RemoteFunction_2.OnServerInvoke = EmoteResponse_upvr
	RemoteFunction_2.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "CatalogOnApplyToRealHumanoid"
	RemoteEvent.OnServerEvent:Connect(ApplyToRealHumanoid_upvr)
	RemoteEvent.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteEvent_5 = Instance.new("RemoteEvent")
	RemoteEvent_5.Name = "CatalogOnApplyOutfit"
	RemoteEvent_5.OnServerEvent:Connect(ApplyOutfit_upvr)
	RemoteEvent_5.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteFunction_3 = Instance.new("RemoteFunction")
	RemoteFunction_3.Name = "CatalogOnSaveOutfit"
	RemoteFunction_3.OnServerInvoke = SaveOutfit_upvr
	RemoteFunction_3.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteEvent_3 = Instance.new("RemoteEvent")
	RemoteEvent_3.Name = "CatalogOnDeleteOutfit"
	RemoteEvent_3.OnServerEvent:Connect(DeleteOutfit_upvr)
	RemoteEvent_3.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteEvent_4 = Instance.new("RemoteEvent")
	RemoteEvent_4.Name = "CatalogOnResetOutfit"
	RemoteEvent_4.OnServerEvent:Connect(resetRealCharacterOutfit_upvr)
	RemoteEvent_4.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteFunction_4 = Instance.new("RemoteFunction")
	RemoteFunction_4.Name = "CatalogOnPromptPurchase"
	RemoteFunction_4.OnServerInvoke = PromptPurchase_upvr
	RemoteFunction_4.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	local RemoteEvent_2_upvr = Instance.new("RemoteEvent")
	RemoteEvent_2_upvr.Name = "CatalogOnPurchaseComplete"
	RemoteEvent_2_upvr.Parent = ReplicatedStorage_upvr.BloxbizRemotes
	MarketplaceService_upvr.PromptPurchaseFinished:Connect(function(arg1, arg2, arg3) -- Line 477, Named "afterPurchase"
		--[[ Upvalues[1]:
			[1]: RemoteEvent_2_upvr (readonly)
		]]
		RemoteEvent_2_upvr:FireClient(arg1, arg2, arg3)
	end)
	if tbl_upvr_3.PersistentWear then
		local function _(arg1) -- Line 485, Named "applyCachedHumDesc"
			--[[ Upvalues[2]:
				[1]: tbl_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
			]]
			local var108 = tbl_upvr[arg1]
			if not var108 then
			else
				task.wait()
				if arg1:IsDescendantOf(Players_upvr) then
					arg1.Character:WaitForChild("Humanoid"):ApplyDescription(var108)
				end
			end
		end
		local function onPlayerAdded(arg1) -- Line 500
			--[[ Upvalues[4]:
				[1]: tbl_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: Utils_upvr (copied, readonly)
				[4]: tbl_upvr_4 (copied, readonly)
			]]
			arg1.CharacterAdded:Connect(function() -- Line 501
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: tbl_upvr (copied, readonly)
					[3]: Players_upvr (copied, readonly)
				]]
				local var110 = arg1
				local var111 = tbl_upvr[var110]
				if not var111 then
				else
					task.wait()
					if var110:IsDescendantOf(Players_upvr) then
						var110.Character:WaitForChild("Humanoid"):ApplyDescription(var111)
					end
				end
			end)
			tbl_upvr_4[arg1] = Utils_upvr.callWithRetry(function() -- Line 505
				--[[ Upvalues[2]:
					[1]: Players_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				return Players_upvr:GetHumanoidDescriptionFromUserId(math.max(arg1.UserId, 1))
			end, 5)
		end
		Players_upvr.PlayerAdded:Connect(onPlayerAdded)
		for _, v_5 in Players_upvr:GetPlayers() do
			onPlayerAdded(v_5)
			local _
		end
	end
	Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 519
		--[[ Upvalues[3]:
			[1]: tbl_upvr (copied, readonly)
			[2]: tbl_upvr_4 (copied, readonly)
			[3]: SearchModule_upvr (copied, readonly)
		]]
		tbl_upvr[arg1] = nil
		tbl_upvr_4[arg1] = nil
		SearchModule_upvr.ResetPlayerCache(arg1)
	end)
	DataManager_upvr.Init()
	CatalogAnalytics_upvr.init()
	OutfitFeed_upvr.Init()
	FeaturedCategories_upvr.Init()
	AvatarPreview_upvr.Init()
end
return module