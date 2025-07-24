-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:42
-- Luau version 6, Types version 3
-- Time taken: 0.021666 seconds

local var5_upvw
local var6_upvw
local Categories_upvw = require(script.Parent.Parent.Categories)
local AvatarHandler_upvr = require(script.Parent.Parent.Classes.AvatarHandler)
local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local var9_2_upvr = require(Utils)
local module_3_upvr = require(Utils:WaitForChild("Fusion"))
local Components = script.Parent.Parent.Components
local tbl_7_upvr = {}
local tbl_11 = {
	Text = "Relevance";
	SortType = "Relevance";
}
tbl_7_upvr[1] = tbl_11
tbl_7_upvr[2] = {
	Text = "New";
	SortType = "Updated";
}
tbl_7_upvr[3] = {
	Text = "Favs";
	SortType = "Favorited";
}
tbl_7_upvr[4] = {
	Text = "Sales";
	SortType = "Sales";
}
tbl_7_upvr[5] = {
	Text = "Cheap";
	SortType = "PriceAsc";
}
tbl_11 = {}
local var19_upvr = tbl_11
for _, v in ipairs(tbl_7_upvr) do
	var19_upvr[v.SortType] = v
end
local tbl_3_upvr = {
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
}
local tbl_9_upvr = {}
local function GetItemDataTableFromPage_upvr(arg1, arg2) -- Line 82, Named "GetItemDataTableFromPage"
	--[[ Upvalues[1]:
		[1]: AvatarHandler_upvr (readonly)
	]]
	local any_GetCurrentPage_result1 = arg1:GetCurrentPage()
	for i_2 = 1, #any_GetCurrentPage_result1 do
		local var31 = any_GetCurrentPage_result1[i_2]
		local var32
		if var32 == "table" then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var32 = AvatarHandler_upvr.BuildBundleData(var31)
				return var32
			end
			if not arg2 or not INLINED() then
				var32 = AvatarHandler_upvr.BuildItemData(var31)
			end
			table.insert({}, var32)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}, arg1.IsFinished
end
local function SearchFromAssetId_upvr(arg1) -- Line 101, Named "SearchFromAssetId"
	--[[ Upvalues[1]:
		[1]: AvatarHandler_upvr (readonly)
	]]
	local module = {}
	local any_match_result1 = arg1:match("%d+")
	if any_match_result1 then
		local any_GetItemDataTable_result1 = AvatarHandler_upvr.GetItemDataTable(any_match_result1, 2)
		if not any_GetItemDataTable_result1 or not any_GetItemDataTable_result1.AssetType then
			return module
		end
		if not AvatarHandler_upvr.IsValidAssetType(any_GetItemDataTable_result1.AssetType) then
			return module
		end
		table.insert(module, any_GetItemDataTable_result1)
		return module
	end
	return module
end
local function GetCategoryIndex_upvr(arg1) -- Line 122, Named "GetCategoryIndex"
	--[[ Upvalues[1]:
		[1]: Categories_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _, _, _ = pairs(Categories_upvw)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [8.6]
	local _, _, _ = pairs(nil.subcategories)
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 137, Named "GetSubcategoryIndex"
	--[[ Upvalues[1]:
		[1]: Categories_upvw (read and write)
	]]
	for _, v_2 in pairs(Categories_upvw[arg1].subcategories) do
		if v_2.query.Category then
			return v_2.name
		end
	end
	return nil
end
local function _(arg1) -- Line 148, Named "GetCategory"
	--[[ Upvalues[2]:
		[1]: tbl_9_upvr (readonly)
		[2]: Categories_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var47
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 12 start (CF ANALYSIS FAILED)
	local var48
	if var48 then
		var47 = tbl_9_upvr[var48]
	end
	-- KONSTANTERROR: [21] 16. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 9 start (CF ANALYSIS FAILED)
	do
		return var47
	end
	-- KONSTANTERROR: [25] 20. Error Block 9 end (CF ANALYSIS FAILED)
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1, arg2) -- Line 163
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: Categories_upvw (read and write)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.Container = arg1
	setmetatable_result1_upvr.Enabled = false
	setmetatable_result1_upvr.Observers = {}
	local tbl_5 = {}
	tbl_5.LoadingFrame = arg2
	setmetatable_result1_upvr.GuiObjects = tbl_5
	setmetatable_result1_upvr.Debounces = {}
	setmetatable_result1_upvr.CurrentSort = module_3_upvr.Value("Relevance")
	setmetatable_result1_upvr.CurrentCategoryId = module_3_upvr.Value(nil)
	setmetatable_result1_upvr.CurrentCategoryName = module_3_upvr.Computed(function() -- Line 175
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: Categories_upvw (copied, read and write)
		]]
		local any_get_result1_2 = setmetatable_result1_upvr.CurrentCategoryId:get()
		if any_get_result1_2 == "feed" then
			return "Outfits"
		end
		if any_get_result1_2 then
			return Categories_upvw[any_get_result1_2].name
		end
		return nil
	end)
	setmetatable_result1_upvr.SearchFailed = module_3_upvr.Value(false)
	setmetatable_result1_upvr.NoResults = module_3_upvr.Value(false)
	setmetatable_result1_upvr.ViewingBundleId = module_3_upvr.Value(nil)
	setmetatable_result1_upvr.SelectedItemId = module_3_upvr.Value(nil)
	setmetatable_result1_upvr.OpenCategory = nil
	return setmetatable_result1_upvr
end
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local CategoryLoader_upvr = require(script.CategoryLoader)
local Frame_upvr = require(Components.ContentFrame.Frame)
local EmptyState_upvr = require(Components.EmptyState)
local SearchContext_upvr = require(Components.SearchContext)
local Sort_upvr = require(Components.ContentFrame.Sort)
local Observer_upvr = module_3_upvr.Observer
local BundleItemsView_upvr = require(Components.Pages.BundleItemsView)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module_upvr.Init(arg1, arg2) -- Line 197
	--[[ Upvalues[17]:
		[1]: BloxbizRemotes_upvr (readonly)
		[2]: Categories_upvw (read and write)
		[3]: tbl_9_upvr (readonly)
		[4]: CategoryLoader_upvr (readonly)
		[5]: module_3_upvr (readonly)
		[6]: Frame_upvr (readonly)
		[7]: EmptyState_upvr (readonly)
		[8]: SearchContext_upvr (readonly)
		[9]: var9_2_upvr (readonly)
		[10]: tbl_7_upvr (readonly)
		[11]: Sort_upvr (readonly)
		[12]: Observer_upvr (readonly)
		[13]: var19_upvr (readonly)
		[14]: BundleItemsView_upvr (readonly)
		[15]: LocalPlayer_upvr (readonly)
		[16]: var5_upvw (read and write)
		[17]: var6_upvw (read and write)
	]]
	arg1.Controllers = arg2
	local any_GetEnabledComputed_result1_upvr = arg1.Controllers.NavigationController:GetEnabledComputed("CategoryController")
	Categories_upvw = BloxbizRemotes_upvr:WaitForChild("GetCatalogCategories"):InvokeServer()
	for _, v_3 in pairs(Categories_upvw) do
		for _, v_4 in v_3.subcategories do
			if v_4.query.Category then
				tbl_9_upvr[v_4.name] = CategoryLoader_upvr.new(v_4)
			end
		end
	end
	table.insert(arg1.Observers, module_3_upvr.Observer(arg1.CurrentCategoryName):onChange(function() -- Line 220
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.ViewingBundleId:set(nil)
		local any_get_result1_5 = arg1.CurrentCategoryId:get()
		if any_get_result1_5 and any_get_result1_5 ~= "feed" then
			arg1:LoadCategory(any_get_result1_5)
			arg1.CurrentSort:set("Relevance")
			local any_get_result1_7 = arg1.Controllers.TopBarController.SearchQuery:get()
			if any_get_result1_7 and 0 < #any_get_result1_7 then
				arg1:SearchFor(any_get_result1_7)
			end
		end
	end))
	local Frame_upvr_result1 = Frame_upvr({
		Name = "Category Frame";
		UtilitiesHolder = {};
		SkipListLayout = false;
	})
	local UtilitiesHolder = Frame_upvr_result1:WaitForChild("UtilitiesHolder")
	local Holder = UtilitiesHolder:WaitForChild("Holder")
	local ScrollingFrame_2_upvr = Frame_upvr_result1:WaitForChild("ScrollingFrame")
	arg1.GuiObjects.Frame = Frame_upvr_result1
	arg1.GuiObjects.ScrollingFrame = ScrollingFrame_2_upvr
	arg1.GuiObjects.ItemFrame = ScrollingFrame_2_upvr:WaitForChild("ItemFrame")
	arg1.GuiObjects.FilterFrame = UtilitiesHolder
	Frame_upvr_result1.Parent = arg1.Container:WaitForChild("FrameContainer")
	ScrollingFrame_2_upvr.LayoutOrder = 2
	EmptyState_upvr({
		Parent = ScrollingFrame_2_upvr;
		LayoutOrder = 1;
		Size = UDim2.fromScale(1, 0.7);
		BackgroundTransparency = 1;
		Text = module_3_upvr.Computed(function() -- Line 267
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.SearchFailed:get() then
				return string.format("No results for \"%s\"", arg1.Controllers.TopBarController.SearchQuery:get() or "")
			end
			return "There's no items to show."
		end);
		ButtonText = "Clear Search";
		ButtonEnabled = arg1.SearchFailed;
		Visible = module_3_upvr.Computed(function() -- Line 277
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_get_result1_3 = arg1.SearchFailed:get()
			if not any_get_result1_3 then
				any_get_result1_3 = arg1.NoResults:get()
			end
			return any_get_result1_3
		end);
		Callback = function() -- Line 280, Named "Callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.SearchFailed:get() then
			else
				arg1.Controllers.TopBarController:ResetSearchBar()
				if not arg1.CurrentCategoryName:get() then
					arg1.Controllers.NavigationController:SwitchTo("Featured")
					return
				end
				arg1:SearchFor(nil)
			end
		end;
	})
	local var86_upvw = false
	table.insert(arg1.Observers, ScrollingFrame_2_upvr:GetPropertyChangedSignal("CanvasPosition"):Connect(function() -- Line 301
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ScrollingFrame_2_upvr (readonly)
			[3]: var86_upvw (read and write)
		]]
		local var87
		if var87 then
			if math.round(ScrollingFrame_2_upvr.AbsoluteCanvasSize.Y - ScrollingFrame_2_upvr.AbsoluteWindowSize.Y) * 0.7 > math.round(ScrollingFrame_2_upvr.CanvasPosition.Y) then
				var87 = false
			else
				var87 = true
			end
			if var87 and not var86_upvw then
				var86_upvw = true
				local CurrentCategory_3 = arg1.CurrentCategory
				CurrentCategory_3.Page += 1
				arg1:LoadItems()
				var86_upvw = nil
			end
		end
	end))
	SearchContext_upvr({
		Parent = Holder;
		AnchorPoint = Vector2.new(1, 0.5);
		Position = UDim2.fromScale(1, 0.5);
		Size = UDim2.fromScale(0.5, 0.6);
		Visible = arg1.Controllers.TopBarController.ShowSearchContext;
		SearchTerm = arg1.Controllers.TopBarController.SearchQuery;
		SearchingIn = arg1.CurrentCategoryName;
		OnSearchAll = function() -- Line 328, Named "OnSearchAll"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.Controllers.TopBarController:SwitchToSearchAll()
		end;
	})
	arg1.CurrentSort:set("Relevance")
	arg1.SortTabs = Sort_upvr({
		Parent = Holder;
		Selected = arg1.CurrentSort;
		Size = UDim2.fromScale(0.45, 1);
		Cooldown = false;
		Buttons = var9_2_upvr.map(tbl_7_upvr, function(arg1_2) -- Line 334
			arg1_2.Id = arg1_2.SortType
			arg1_2.Hidden = false
			arg1_2.Data = arg1_2.SortType
			return arg1_2
		end);
		Alignment = "Left";
	})
	table.insert(arg1.Observers, Observer_upvr(arg1.CurrentSort):onChange(function() -- Line 355
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var19_upvr (copied, readonly)
		]]
		task.spawn(function() -- Line 356
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: var19_upvr (copied, readonly)
			]]
			if not arg1.CurrentCategory then
			else
				arg1:LoadSorting(var19_upvr[arg1.CurrentSort:get()].SortType)
			end
		end)
	end))
	module_3_upvr.New("Frame")({
		Name = "BundleItemsView";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Parent = Frame_upvr_result1.Parent;
		Visible = module_3_upvr.Computed(function() -- Line 374
			--[[ Upvalues[2]:
				[1]: any_GetEnabledComputed_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			local any_get_result1_6 = any_GetEnabledComputed_result1_upvr:get()
			if any_get_result1_6 then
				if arg1.ViewingBundleId:get() == nil then
					any_get_result1_6 = false
				else
					any_get_result1_6 = true
				end
			end
			return any_get_result1_6
		end);
		[module_3_upvr.Children] = {module_3_upvr.Computed(function() -- Line 379
			--[[ Upvalues[3]:
				[1]: any_GetEnabledComputed_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: BundleItemsView_upvr (copied, readonly)
			]]
			if any_GetEnabledComputed_result1_upvr:get() and arg1.ViewingBundleId:get() ~= nil then
				return BundleItemsView_upvr({
					BundleId = arg1.ViewingBundleId;
					AvatarPreviewController = arg1.Controllers.AvatarPreviewController;
					CurrentCategory = arg1.CurrentCategoryName;
					HeaderHeight = arg1.Controllers.TopBarController.TopBarHeight;
					OnBack = function() -- Line 386, Named "OnBack"
						--[[ Upvalues[1]:
							[1]: arg1 (copied, readonly)
						]]
						arg1.ViewingBundleId:set(nil)
					end;
				})
			end
		end, module_3_upvr.cleanup)};
	})
	local tbl_2 = {}
	local any_GetEnabledComputed_result1_upvr_2 = arg1.Controllers.NavigationController:GetEnabledComputed("CategoryController")
	tbl_2.Visible = module_3_upvr.Computed(function() -- Line 397
		--[[ Upvalues[2]:
			[1]: any_GetEnabledComputed_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		local any_get_result1 = any_GetEnabledComputed_result1_upvr_2:get()
		if any_get_result1 then
			if arg1.ViewingBundleId:get() ~= nil then
				any_get_result1 = false
			else
				any_get_result1 = true
			end
		end
		return any_get_result1
	end)
	module_3_upvr.Hydrate(Frame_upvr_result1)(tbl_2)
	LocalPlayer_upvr:WaitForChild("PlayerGui"):GetPropertyChangedSignal("CurrentScreenOrientation"):Connect(function() -- Line 406
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.CurrentSort:set(arg1.CurrentSort:get(), true)
	end)
	var5_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnSearchItemsRequest")
	var6_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogCategoryOpenedEvent")
end
function module_upvr.GetCategoryId(arg1, arg2) -- Line 415
	--[[ Upvalues[2]:
		[1]: var9_2_upvr (readonly)
		[2]: Categories_upvw (read and write)
	]]
	if arg2:lower() == "feed" then
		return "feed"
	end
	return var9_2_upvr.find(Categories_upvw, function(arg1_3) -- Line 420
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var106
		if arg1_3.name:lower() ~= arg2:lower() then
			var106 = false
		else
			var106 = true
		end
		return var106
	end)
end
function module_upvr.SwitchToCategoryOrSearch(arg1, arg2) -- Line 425
	local any_GetCategoryId_result1 = arg1:GetCategoryId(arg2)
	if any_GetCategoryId_result1 then
		arg1:SwitchToCategoryId(any_GetCategoryId_result1)
	else
		task.spawn(function() -- Line 431
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.Controllers.TopBarController:SearchFor(arg2)
		end)
	end
end
function module_upvr.Reset(arg1) -- Line 437
	arg1:SwitchToCategoryId(arg1.CurrentCategoryId.Default)
	arg1.Resetting = true
end
function module_upvr.Enable(arg1) -- Line 442
	arg1.Enabled = true
	arg1.GuiObjects.Frame.Visible = true
	for _, v_5 in pairs(arg1.Controllers) do
		if v_5 ~= arg1 then
			if v_5.Disable then
				v_5:Disable()
			end
		end
	end
end
function module_upvr.Disable(arg1, arg2) -- Line 456
	arg1.Enabled = false
	arg1.GuiObjects.Frame.Visible = false
	arg1.ViewingBundleId:set(nil)
	arg1.SelectedItemId:set(nil)
	if not arg2 then
		arg1:Deselect()
	end
end
function module_upvr.Deselect(arg1) -- Line 467
	arg1.CurrentCategoryId:set(nil)
end
local var114_upvw
function module_upvr.LoadCategory(arg1, arg2, arg3, arg4) -- Line 473
	--[[ Upvalues[6]:
		[1]: GetCategoryIndex_upvr (readonly)
		[2]: Categories_upvw (read and write)
		[3]: tbl_9_upvr (readonly)
		[4]: var114_upvw (read and write)
		[5]: var6_upvw (read and write)
		[6]: var9_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.GuiObjects.LoadingFrame.Visible = true
	arg1:Enable()
	arg1:ClearItemFrame()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 13. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 13. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_upvr.SearchFor(arg1, arg2) -- Line 545
	--[[ Upvalues[1]:
		[1]: Categories_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.ViewingBundleId:set(nil)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
	local const_number = 0
	-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 20. Error Block 24 start (CF ANALYSIS FAILED)
	local tbl_4 = {
		Categories = {};
		Subcategories = {};
		AssetTypes = {};
	}
	for _, v_6 in pairs(const_number) do
		local query = v_6.query
		if query then
			if query.AssetTypeId then
				table.insert(tbl_4.AssetTypes, query.AssetTypeId)
			end
			if query.Subcategory then
				table.insert(tbl_4.Subcategories, query.Subcategory)
			end
			if query.Category then
				table.insert(tbl_4.Categories, query.Category)
			end
		end
	end
	arg1:LoadCategory(arg1.CurrentCategory.Name, arg2, tbl_4)
	do
		return
	end
	-- KONSTANTERROR: [28] 20. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 62. Error Block 14 start (CF ANALYSIS FAILED)
	arg1:LoadCategory(arg1.CurrentCategory.Name)
	arg1.CurrentSort:set("Relevance")
	-- KONSTANTERROR: [97] 62. Error Block 14 end (CF ANALYSIS FAILED)
end
function module_upvr.LoadSorting(arg1, arg2) -- Line 585
	arg1.GuiObjects.LoadingFrame.Visible = true
	arg1.CurrentCategory.SortType = arg2
	arg1.CurrentCategory.Page = 1
	arg1:ClearItemFrame()
	arg1:LoadItems()
	arg1.GuiObjects.LoadingFrame.Visible = false
end
local module_2_upvr = require(Utils:WaitForChild("SearchFilters"))
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local CatalogItem_upvr = require(Components.CatalogItem)
function module_upvr.LoadItems(arg1) -- Line 597
	--[[ Upvalues[9]:
		[1]: module_2_upvr (readonly)
		[2]: SearchFromAssetId_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: AvatarEditorService_upvr (readonly)
		[5]: GetItemDataTableFromPage_upvr (readonly)
		[6]: var5_upvw (read and write)
		[7]: var9_2_upvr (readonly)
		[8]: CatalogItem_upvr (readonly)
		[9]: AvatarHandler_upvr (readonly)
	]]
	arg1.SearchFailed:set(false)
	arg1.NoResults:set(false)
	local tbl_12 = {}
	local CurrentCategory = arg1.CurrentCategory
	local any_getCreatorFilter_result1, any_getCreatorFilter_result2 = module_2_upvr.getCreatorFilter(CurrentCategory.Keyword)
	local var146 = any_getCreatorFilter_result1
	if var146 and var146 ~= "KEY_INCATEGORY" and not CurrentCategory.AllowedTypes and not any_getCreatorFilter_result2 then
		if arg1.CurrentCategory.Page == 1 then
			tbl_12 = SearchFromAssetId_upvr(var146)
			local var147
			if #tbl_12 == 0 then
				local CatalogSearchParams_new_result1_upvr = CatalogSearchParams.new()
				CatalogSearchParams_new_result1_upvr.SearchKeyword = var146
				CatalogSearchParams_new_result1_upvr.SortType = tbl_3_upvr.SortType.Editor[CurrentCategory.SortType]
				CatalogSearchParams_new_result1_upvr.IncludeOffSale = true
				local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 619
					--[[ Upvalues[2]:
						[1]: AvatarEditorService_upvr (copied, readonly)
						[2]: CatalogSearchParams_new_result1_upvr (readonly)
					]]
					return AvatarEditorService_upvr:SearchCatalog(CatalogSearchParams_new_result1_upvr)
				end)
				if not pcall_result1_2 then
					arg1.SearchFailed:set(true)
					return
				end
				;({})[1] = Enum.BundleType.Animations
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[2] = Enum.BundleType.BodyParts
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				CatalogSearchParams_new_result1_upvr.BundleTypes = {}
				local GetItemDataTableFromPage_upvr_result1, GetItemDataTableFromPage_result2_2 = GetItemDataTableFromPage_upvr(pcall_result2_3, false)
				local GetItemDataTableFromPage_result1, GetItemDataTableFromPage_result2 = GetItemDataTableFromPage_upvr(AvatarEditorService_upvr:SearchCatalog(CatalogSearchParams_new_result1_upvr), true)
				local tbl = {}
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var147 = pcall_result2_3
					return var147
				end
				if GetItemDataTableFromPage_result2_2 or not INLINED_2() then
					var147 = nil
				end
				tbl.AssetPages = var147
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var147 = AvatarEditorService_upvr:SearchCatalog(CatalogSearchParams_new_result1_upvr)
					return var147
				end
				if GetItemDataTableFromPage_result2 or not INLINED_3() then
					var147 = nil
				end
				tbl.BundlePages = var147
				arg1.SearchPages = tbl
				local tbl_10 = {}
				var147 = table.unpack(GetItemDataTableFromPage_result1)
				tbl_10[1] = var147
				tbl_12 = tbl_10
				var147 = GetItemDataTableFromPage_upvr_result1
				for _, v_7 in pairs(var147) do
					table.insert(tbl_12, v_7)
				end
				-- KONSTANTWARNING: GOTO [259] #180
			end
		else
			CatalogSearchParams_new_result1_upvr = arg1.SearchPages
			local pairs_result1_2, pairs_result2_7, pairs_result3_3 = pairs(CatalogSearchParams_new_result1_upvr)
			for i_9, v_8 in pairs_result1_2, pairs_result2_7, pairs_result3_3 do
				if not v_8.IsFinished then
					v_8:AdvanceToNextPageAsync()
				end
			end
			tbl_12 = {}
			pairs_result2_7 = arg1.SearchPages
			if pairs_result2_7.BundlePages then
				pairs_result2_7 = arg1.SearchPages.BundlePages
				local GetItemDataTableFromPage_upvr_result1_2, GetItemDataTableFromPage_result2_4 = GetItemDataTableFromPage_upvr(pairs_result2_7, true)
				if GetItemDataTableFromPage_result2_4 then
					i_9 = nil
					arg1.SearchPages.BundlePages = i_9
				end
				local tbl_6 = {}
				v_8 = GetItemDataTableFromPage_upvr_result1_2
				i_9 = table.unpack(v_8)
				tbl_6[1] = i_9
				tbl_12 = tbl_6
			end
			GetItemDataTableFromPage_result2_4 = arg1.SearchPages
			if GetItemDataTableFromPage_result2_4.AssetPages then
				GetItemDataTableFromPage_result2_4 = arg1.SearchPages.AssetPages
				local GetItemDataTableFromPage_result1_2, GetItemDataTableFromPage_result2_3 = GetItemDataTableFromPage_upvr(GetItemDataTableFromPage_result2_4, false)
				if GetItemDataTableFromPage_result2_3 then
					i_9 = nil
					arg1.SearchPages.AssetPages = i_9
				end
				i_9 = GetItemDataTableFromPage_result1_2
				local pairs_result1_5, pairs_result2, pairs_result3 = pairs(i_9)
				for _, v_9 in pairs_result1_5, pairs_result2, pairs_result3 do
					table.insert(tbl_12, v_9)
				end
				-- KONSTANTWARNING: GOTO [259] #180
			end
		end
	else
		pairs_result2 = tbl_3_upvr
		GetItemDataTableFromPage_result2_3 = pairs_result2.SortType.Proxy
		GetItemDataTableFromPage_result2_3 = CurrentCategory.Loader
		if GetItemDataTableFromPage_result2_3 then
			GetItemDataTableFromPage_result2_3 = CurrentCategory.Loader
			pairs_result2 = CurrentCategory.Page
			pairs_result3 = GetItemDataTableFromPage_result2_3[CurrentCategory.SortType]
			GetItemDataTableFromPage_result2_3 = GetItemDataTableFromPage_result2_3:GetItems(pairs_result2, pairs_result3)
			tbl_12 = GetItemDataTableFromPage_result2_3
		else
			GetItemDataTableFromPage_result2_3 = var5_upvw
			pairs_result2 = {}
			local var172 = pairs_result2
			pairs_result3 = CurrentCategory.Page
			var172.Page = pairs_result3
			var172.SortType = GetItemDataTableFromPage_result2_3[CurrentCategory.SortType]
			pairs_result3 = CurrentCategory.AllowedTypes
			var172.AllowedTypes = pairs_result3
			var172.Keyword = var146
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var172.CreatorFilter = any_getCreatorFilter_result2
			GetItemDataTableFromPage_result2_3 = GetItemDataTableFromPage_result2_3:InvokeServer(var172)
			tbl_12 = GetItemDataTableFromPage_result2_3
		end
	end
	GetItemDataTableFromPage_result2_3 = tbl_12
	if type(GetItemDataTableFromPage_result2_3) == "string" and tbl_12 == "No more pages" then
		GetItemDataTableFromPage_result2_3 = var9_2_upvr
		GetItemDataTableFromPage_result2_3 = tbl_12
		GetItemDataTableFromPage_result2_3.pprint(GetItemDataTableFromPage_result2_3)
	else
		if not tbl_12 or #tbl_12 == 0 then
			GetItemDataTableFromPage_result2_3 = arg1.CurrentCategory
			if GetItemDataTableFromPage_result2_3.Page == 1 then
				if CurrentCategory.Keyword then
					arg1.SearchFailed:set(true)
					return
				end
				arg1.NoResults:set(true)
			end
			return
		end
		GetItemDataTableFromPage_result2_3 = arg1.Controllers
		GetItemDataTableFromPage_result2_3 = pairs(tbl_12)
		for _, v_11_upvr in pairs(tbl_12) do
			v_9 = CatalogItem_upvr
			local tbl_8 = {
				Parent = arg1.GuiObjects.ItemFrame;
				AvatarPreviewController = arg1.Controllers.AvatarPreviewController;
				ItemData = v_11_upvr;
				CategoryName = arg1.CurrentCategoryName;
				SourceBundleInfo = CurrentCategory.Source;
				SelectedId = arg1.SelectedItemId;
			}
			local AvatarPreviewController_upvr = GetItemDataTableFromPage_result2_3.AvatarPreviewController
			function tbl_8.OnTry() -- Line 721
				--[[ Upvalues[6]:
					[1]: v_11_upvr (readonly)
					[2]: AvatarEditorService_upvr (copied, readonly)
					[3]: var9_2_upvr (copied, readonly)
					[4]: AvatarHandler_upvr (copied, readonly)
					[5]: AvatarPreviewController_upvr (readonly)
					[6]: arg1 (readonly)
				]]
				local var185 = v_11_upvr
				if v_11_upvr.BundleType == 4 then
					local pcall_result1, pcall_result2 = pcall(function() -- Line 728
						--[[ Upvalues[2]:
							[1]: AvatarEditorService_upvr (copied, readonly)
							[2]: v_11_upvr (copied, readonly)
						]]
						return AvatarEditorService_upvr:GetItemDetails(v_11_upvr.BundleId, Enum.AvatarItemType.Bundle)
					end)
					if pcall_result1 and pcall_result2 then
						if pcall_result2.BundledItems then
							local any_search_result1 = var9_2_upvr.search(pcall_result2.BundledItems, function(arg1_5) -- Line 732
								local var190 = false
								if arg1_5.Type == "Asset" then
									var190 = arg1_5.Name:match("Head")
								end
								return var190
							end)
							if any_search_result1 then
								var185 = AvatarHandler_upvr.BuildItemData(AvatarEditorService_upvr:GetItemDetails(any_search_result1.Id, Enum.AvatarItemType.Asset))
							end
						end
					end
				end
				AvatarPreviewController_upvr.AddChange(AvatarPreviewController_upvr, var185, arg1.CurrentCategoryName:get())
			end
			function tbl_8.OnSeeItems(arg1_6) -- Line 744
				--[[ Upvalues[2]:
					[1]: var9_2_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				var9_2_upvr.pprint("View bundle", arg1_6)
				arg1.ViewingBundleId:set(arg1_6)
			end
			v_9 = v_9(tbl_8)
			local var192 = v_9
			if var192 then
				table.insert(arg1.CurrentCategory.Content, var192)
			end
		end
	end
end
function module_upvr.ClearItemFrame(arg1) -- Line 757
	local ScrollingFrame = arg1.GuiObjects.ScrollingFrame
	if ScrollingFrame then
		ScrollingFrame.Visible = false
		ScrollingFrame.CanvasPosition = Vector2.new(0, 0)
		local CurrentCategory_2 = arg1.CurrentCategory
		if CurrentCategory_2 then
			for _, v_10 in pairs(CurrentCategory_2.Content) do
				v_10.Parent = nil
			end
			if CurrentCategory_2.Selected then
				CurrentCategory_2.Selected:set(false)
				CurrentCategory_2.Selected = nil
			end
		end
		ScrollingFrame.Visible = true
	end
end
function module_upvr.GetCurrentCategory(arg1) -- Line 779
	return arg1.CurrentCategory
end
local module_upvr_2 = {}
function module_upvr.GetAvatarItemCache(arg1, arg2) -- Line 783
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	return module_upvr_2[arg2]
end
function module_upvr.OnOpen(arg1) -- Line 787
end
return module_upvr