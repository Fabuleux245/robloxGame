-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:28
-- Luau version 6, Types version 3
-- Time taken: 0.033957 seconds

local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local Parent = script.Parent.Parent.Parent
local var3_upvw
local var4_upvw
local var5_upvw
local var6_upvw
local var7_upvw
local var8_upvw
local var9_upvw
local var10_upvw
local var11_upvw
local CatalogShared = Parent.CatalogShared
local CatalogClient = Parent.CatalogClient
local FeedUtils_upvr = require(CatalogShared.FeedUtils)
local InventoryHandler_upvr = require(CatalogClient.Classes.InventoryHandler)
local Utils = Parent:FindFirstChild("Utils")
local Utils_2_upvr = require(Utils)
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr_2 = require(Utils:WaitForChild("Promise"))
local Components = script.Parent.Parent.Components
local EmptyState_upvr = require(Components.EmptyState)
local Feed = Components.Feed
local ContentFrame = Components.ContentFrame
local var24_upvw = true
local tbl_3_upvr = {
	Pants = 855781078;
	Shirt = 855766176;
}
local tbl_2_upvr = {
	keywords = "";
}
local module_4_upvr = {}
module_4_upvr.__index = module_4_upvr
function module_4_upvr.new(arg1, arg2) -- Line 132
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_4_upvr)
	setmetatable_result1.Container = arg1
	setmetatable_result1.Enabled = false
	setmetatable_result1.Observers = {}
	setmetatable_result1.Connections = {}
	setmetatable_result1.GuiObjects = {}
	setmetatable_result1.Feeds = {}
	setmetatable_result1.FeedsById = {}
	setmetatable_result1.Item = module_upvr.Value(nil)
	setmetatable_result1.Tabs = {
		Default = module_upvr.Value(nil);
		Current = module_upvr.Value(nil);
	}
	setmetatable_result1.States = {
		CurrentFeedId = module_upvr.Value(nil);
		Page = module_upvr.Value(1);
		Sort = module_upvr.Value("hot");
		Type = module_upvr.Value("all");
		OutfitOffset = module_upvr.Value(0);
		Loading = module_upvr.Value(false);
		SwitchingFeed = module_upvr.Value(false);
		OutOfContent = module_upvr.Value(false);
		Query = module_upvr.Value(tbl_2_upvr);
	}
	setmetatable_result1.OutfitsCache = {}
	setmetatable_result1.TaskId = 1
	setmetatable_result1.OutfitsCreated = 0
	setmetatable_result1.SelectedOutfit = module_upvr.Value()
	setmetatable_result1.GuiObjects.LoadingFrame = nil
	setmetatable_result1.LoadingPromises = {}
	return setmetatable_result1
end
function module_4_upvr.CancelLoading(arg1) -- Line 175
	for _, v in ipairs(arg1.LoadingPromises) do
		v:cancel()
	end
	arg1.LoadingPromises = {}
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local var37_upvw
local var38_upvw
local var39_upvw
local var40_upvw
local Frame_upvr = require(ContentFrame.Frame)
local ItemGrid_upvr = require(Components.ItemGrid)
local LoadingFrame_upvr = require(Components.LoadingFrame)
local Sort_upvr = require(ContentFrame.Sort)
local Dropdown_upvr = require(Components.Dropdown)
local SearchContext_upvr = require(Components.SearchContext)
function module_4_upvr.Init(arg1, arg2) -- Line 183
	--[[ Upvalues[25]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: var3_upvw (read and write)
		[3]: var4_upvw (read and write)
		[4]: var5_upvw (read and write)
		[5]: var6_upvw (read and write)
		[6]: var37_upvw (read and write)
		[7]: var7_upvw (read and write)
		[8]: var8_upvw (read and write)
		[9]: var38_upvw (read and write)
		[10]: var39_upvw (read and write)
		[11]: var9_upvw (read and write)
		[12]: var10_upvw (read and write)
		[13]: var11_upvw (read and write)
		[14]: var40_upvw (read and write)
		[15]: var24_upvw (read and write)
		[16]: Utils_2_upvr (readonly)
		[17]: module_upvr (readonly)
		[18]: Frame_upvr (readonly)
		[19]: ItemGrid_upvr (readonly)
		[20]: LoadingFrame_upvr (readonly)
		[21]: EmptyState_upvr (readonly)
		[22]: module_upvr_2 (readonly)
		[23]: Sort_upvr (readonly)
		[24]: Dropdown_upvr (readonly)
		[25]: SearchContext_upvr (readonly)
	]]
	local BloxbizRemotes = ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes")
	var3_upvw = BloxbizRemotes:WaitForChild("CatalogCategoryOpenedEvent")
	var4_upvw = BloxbizRemotes:WaitForChild("CatalogOnCreateFeed")
	var5_upvw = BloxbizRemotes:WaitForChild("CatalogOnGetFeed")
	var6_upvw = BloxbizRemotes:WaitForChild("CatalogOnFeedAction")
	var37_upvw = BloxbizRemotes:WaitForChild("CatalogOnRequestData")
	var7_upvw = BloxbizRemotes:WaitForChild("CatalogOnGetAllFeed")
	var8_upvw = BloxbizRemotes:WaitForChild("CatalogOnBoostFeed")
	var38_upvw = BloxbizRemotes:WaitForChild("CatalogOnBoostResult")
	var39_upvw = BloxbizRemotes:WaitForChild("CatalogOnGetFeeds")
	var9_upvw = BloxbizRemotes:WaitForChild("CatalogOnLoadOutfits")
	var10_upvw = BloxbizRemotes:WaitForChild("CatalogOnImpression")
	var11_upvw = BloxbizRemotes:WaitForChild("CatalogOnTryOn")
	var40_upvw = BloxbizRemotes:WaitForChild("CatalogOnRequestPermissionRemote")
	var24_upvw = var40_upvw:InvokeServer()
	local any_InvokeServer_result1_3 = var39_upvw:InvokeServer()
	arg1.Feeds = any_InvokeServer_result1_3.Feeds
	arg1.FeedsById = Utils_2_upvr.map(any_InvokeServer_result1_3.FeedsById, function(arg1_2) -- Line 206
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		arg1_2.ShouldRefresh = module_upvr.Value(false)
		arg1_2.LoadedOutfits = module_upvr.Value({})
		arg1_2.Page = module_upvr.Value(0)
		arg1_2.LoadedAll = module_upvr.Value(false)
		arg1_2.LastRefresh = module_upvr.Value(-1)
		arg1_2.ScrollY = module_upvr.Value(0)
		arg1_2.LoadFailed = module_upvr.Value(false)
		arg1_2.SwitchFailed = module_upvr.Value(false)
		arg1_2.ErrorType = module_upvr.Value(nil)
		return arg1_2
	end)
	var38_upvw.OnClientEvent:Connect(function(arg1_3, arg2_2) -- Line 223
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg2_2 then
			warn("[SuperBiz] Boost failed for outfit "..arg1_3)
		else
			local var51 = arg1.OutfitsCache[arg1_3]
			if var51 then
				var51.Boosts:set(var51.Boosts:get() + 1)
			end
		end
	end)
	arg1.Controllers = arg2
	local tbl_5 = {
		Name = "Outfit Feed";
		UtilitiesHolder = {};
		ScrollingFrame = {
			Position = UDim2.fromScale(0.5, 0);
			ScrollingDirection = Enum.ScrollingDirection.Y;
			Size = UDim2.fromScale(1, 1);
			Layout = {
				FillDirection = Enum.FillDirection.Horizontal;
				Type = "UIGridLayout";
				Padding = UDim2.fromScale(0.009, 0.012);
				Size = UDim2.fromScale(1, 0.19);
				SortOrder = Enum.SortOrder.LayoutOrder;
			};
			DragScrollDisabled = true;
		};
		SkipListLayout = false;
	}
	local Frame_upvr_result1 = Frame_upvr(tbl_5)
	local UtilitiesHolder = Frame_upvr_result1:WaitForChild("UtilitiesHolder")
	local Holder_2 = UtilitiesHolder:WaitForChild("Holder")
	Frame_upvr_result1:WaitForChild("ScrollingFrame"):Destroy()
	arg1.IsEmpty = module_upvr.Computed(function() -- Line 266
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.States.Loading:get() then
			return false
		end
		local var59 = arg1.FeedsById[arg1.States.CurrentFeedId:get()]
		if not var59 then
			return false
		end
		if #var59.LoadedOutfits:get() == 0 then
			return true
		end
	end)
	local ScrollingFrame_upvw = ItemGrid_upvr({
		Parent = Frame_upvr_result1;
		LayoutOrder = 2;
		Size = UDim2.fromScale(1, 0.9);
		Columns = 2;
		ItemRatio = 1.5;
		Gap = 8;
		Visible = module_upvr.Computed(function() -- Line 291
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var63
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var63 = arg1.FeedsById[arg1.States.CurrentFeedId:get()].LoadFailed:get()
				return var63
			end
			if not arg1.FeedsById[arg1.States.CurrentFeedId:get()] or not INLINED() then
				var63 = false
			end
			return not (var63 or arg1.IsEmpty:get())
		end);
		DragScroll = true;
	}).ScrollingFrame
	arg1.GuiObjects.Frame = Frame_upvr_result1
	arg1.GuiObjects.ScrollingFrame = ScrollingFrame_upvw
	arg1.GuiObjects.ItemFrame = ScrollingFrame_upvw.Content
	arg1.GuiObjects.FilterFrame = UtilitiesHolder
	UtilitiesHolder.ZIndex = 100
	Frame_upvr_result1.Visible = false
	Frame_upvr_result1.Parent = arg1.Container:WaitForChild("FrameContainer")
	local any_Computed_result1_upvr = module_upvr.Computed(function() -- Line 316
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var66 = arg1.FeedsById[arg1.States.CurrentFeedId:get()]
		if arg1.States.SwitchingFeed:get() or not var66 then
			return false
		end
		if #var66.LoadedOutfits:get() == 0 then
			return false
		end
		return true
	end)
	arg1.GuiObjects.LoadingFrame = LoadingFrame_upvr({
		Parent = module_upvr.Computed(function() -- Line 333
			--[[ Upvalues[2]:
				[1]: any_Computed_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			if any_Computed_result1_upvr:get() then
				return arg1.GuiObjects.ItemFrame
			end
			return arg1.GuiObjects.ScrollingFrame
		end, function() -- Line 339
		end);
		Visible = arg1.States.Loading;
		Text = module_upvr.Computed(function() -- Line 343
			--[[ Upvalues[1]:
				[1]: any_Computed_result1_upvr (readonly)
			]]
			if any_Computed_result1_upvr:get() then
				return "Loading more..."
			end
			return "Loading outfits..."
		end);
	})
	local tbl_4 = {
		Parent = arg1.GuiObjects.Frame;
		Size = UDim2.fromScale(1, 0.8);
		Visible = module_upvr.Computed(function() -- Line 357
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var74 = arg1.FeedsById[arg1.States.CurrentFeedId:get()]
			if not var74 then
				return false
			end
			return var74.LoadFailed:get() or var74.SwitchFailed:get()
		end);
		Text = module_upvr.Computed(function() -- Line 367
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Utils_2_upvr (copied, readonly)
			]]
			local var76 = arg1.FeedsById[arg1.States.CurrentFeedId:get()]
			if not var76 then
				return ""
			end
			local any_get_result1_7 = var76.ErrorType:get()
			if any_get_result1_7 == "rate_limit_exceeded" then
				return "You're searching too fast! Slow down."
			end
			Utils_2_upvr.pprint(any_get_result1_7)
			return "There was an issue loading outfits."
		end);
		ButtonText = "Retry";
	}
	local function Callback() -- Line 384
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_get_result1_3 = arg1.States.CurrentFeedId:get()
		local var79 = arg1.FeedsById[any_get_result1_3]
		if not var79 then
			return false
		end
		if var79.SwitchFailed:get() then
			arg1:SwitchToFeed(any_get_result1_3, true)
		else
			arg1:LoadNextPage()
		end
	end
	tbl_4.Callback = Callback
	arg1.GuiObjects.RetryFrame = EmptyState_upvr(tbl_4)
	ScrollingFrame_upvw:GetPropertyChangedSignal("CanvasPosition"):Connect(function() -- Line 402
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ScrollingFrame_upvw (read and write)
		]]
		local var81 = arg1.FeedsById[arg1.States.CurrentFeedId:get()]
		var81.ScrollY:set(ScrollingFrame_upvw.CanvasPosition.Y)
		local var82
		if math.round(ScrollingFrame_upvw.AbsoluteCanvasSize.Y - ScrollingFrame_upvw.AbsoluteWindowSize.Y) * 0.7 > math.round(ScrollingFrame_upvw.CanvasPosition.Y) then
			var82 = false
		else
			var82 = true
		end
		if var82 and not arg1.States.Loading:get() then
			if var81.LoadedAll:get() then return end
			arg1:LoadNextPage()
		end
	end)
	module_upvr.Observer(arg1.States.CurrentFeedId):onChange(function() -- Line 419
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		if not arg1.Enabled then
		else
			module_upvr_2.try(function() -- Line 424
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:SwitchToFeed(arg1.States.CurrentFeedId:get())
			end):andThen():catch(error)
		end
	end)
	local var85
	if tbl_5 and tbl_5.UtilitiesHolder and tbl_5.UtilitiesHolder.Padding then
		var85 = true
	else
		var85 = false
	end
	arg1.FilterTabs = module_upvr.Value(Utils_2_upvr.map(arg1.Feeds, function(arg1_4) -- Line 438
		local module_2 = {
			Text = arg1_4.Name;
			Data = {
				feed = arg1_4.Id;
			};
			Id = arg1_4.Id;
		}
		local Internal_2 = arg1_4.Internal
		if not Internal_2 then
			Internal_2 = arg1_4.SearchOnly
		end
		module_2.Hidden = Internal_2
		module_2.Internal = arg1_4.Internal
		module_2.Searchable = arg1_4.Searchable
		module_2.SearchOnly = arg1_4.SearchOnly
		return module_2
	end))
	local tbl_9 = {
		Size = UDim2.new(0.35, 0, 1, 0);
		Buttons = arg1.FilterTabs;
		Cooldown = module_upvr.Value(false);
		Selected = arg1.States.CurrentFeedId;
		UIListLayoutIncluded = var85;
	}
	table.insert(arg1.Observers, module_upvr.Observer(arg1.Tabs.Current):onChange(function() -- Line 464
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_get_result1_8 = arg1.Tabs.Current:get()
		local var93 = arg1
		var93.TaskId += 1
		if any_get_result1_8 then
			arg1:CancelLoading()
			arg1.States.CurrentFeedId:set(any_get_result1_8.Data.feed)
		end
	end))
	function tbl_9.OnButtonClick(arg1_5) -- Line 478
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_5 == arg1.States.CurrentFeedId:get() then
			arg1:SwitchToFeed(arg1_5, true)
		end
	end
	local var44_result1, var44_result2 = Sort_upvr(tbl_9)
	arg1.setSortTab = var44_result2
	var44_result1.Parent = Holder_2.Left
	arg1.ShowSearchBar = module_upvr.Value(false)
	arg1.ShowTopDropdown = module_upvr.Computed(function() -- Line 490
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var98
		if arg1.States.CurrentFeedId:get() ~= "top" then
			var98 = false
		else
			var98 = true
		end
		return var98
	end)
	arg1.TopDropdownOpen = module_upvr.Value(false)
	arg1.TopDropdownValue = module_upvr.Value("top_weekly")
	local any_Spring_result1_upvr = module_upvr.Spring(module_upvr.Computed(function() -- Line 497
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.ShowTopDropdown:get() then
			return UDim2.new(0.15, 0, 1, 0)
		end
		return UDim2.fromScale(0, 1)
	end), 25)
	Dropdown_upvr({
		Parent = Holder_2.Left;
		Size = any_Spring_result1_upvr;
		Visible = module_upvr.Computed(function() -- Line 504
			--[[ Upvalues[1]:
				[1]: any_Spring_result1_upvr (readonly)
			]]
			local var102
			if 0.01 > any_Spring_result1_upvr:get().X.Scale then
				var102 = false
			else
				var102 = true
			end
			return var102
		end);
		LayoutOrder = 2;
		Options = {{
			label = "This Week";
			value = "top_weekly";
		}, {
			label = "This Month";
			value = "top_monthly";
		}, {
			label = "All Time";
			value = "top";
		}};
		Value = arg1.TopDropdownValue;
		TrayOpen = arg1.TopDropdownOpen;
		TextTransparency = module_upvr.Spring(module_upvr.Computed(function() -- Line 529
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.ShowTopDropdown:get() then
				return 0
			end
			return 1
		end), 30);
	})
	SearchContext_upvr({
		Parent = Holder_2;
		AnchorPoint = Vector2.new(1, 0.5);
		Position = UDim2.fromScale(1, 0.5);
		Size = UDim2.new(0.5, -32, 0.6, 0);
		Visible = arg1.Controllers.TopBarController.ShowSearchContext;
		SearchTerm = arg1.Controllers.TopBarController.SearchQuery;
		SearchingIn = "Outfits";
		OnSearchAll = function() -- Line 547, Named "OnSearchAll"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.Controllers.TopBarController:SwitchToSearchAll()
		end;
	})
	module_upvr.Observer(arg1.TopDropdownValue):onChange(function() -- Line 553
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.States.CurrentFeedId:get() == "top" then
			arg1:SwitchToFeed("top", true)
		end
	end)
	module_upvr.Observer(arg1.States.Query):onChange(function() -- Line 559
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:UpdateFilters()
	end)
end
function module_4_upvr.MarkAllForRefresh(arg1, arg2) -- Line 564
	for _, v_2 in pairs(arg1.FeedsById) do
		if not arg2 or arg2(v_2) then
			v_2.ShouldRefresh:set(true)
		end
	end
end
function module_4_upvr.ResetFeed(arg1, arg2) -- Line 572
	local var121 = arg1.FeedsById[arg2]
	local OutfitsCache_2 = arg1.OutfitsCache
	for _, v_3 in ipairs(var121.LoadedOutfits:get()) do
		local var126
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var126 = v_3
			return var126
		end
		if type(v_3) ~= "string" or not INLINED_2() then
			var126 = v_3.guid
		end
		if OutfitsCache_2[var126] then
			OutfitsCache_2[var126].Frame:Destroy()
			OutfitsCache_2[var126].Frame = nil
			OutfitsCache_2[var126] = nil
		end
	end
	var121.Page:set(0)
	var121.LastRefresh:set(tick())
	var121.LoadedOutfits:set({})
	var121.LoadedAll:set(false)
	var121.ScrollY:set(0)
end
function module_4_upvr.SwitchToFeed(arg1, arg2, arg3) -- Line 594
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1:CancelLoading()
	local var127
	if arg2 ~= "top" then
		arg1.TopDropdownOpen:set(false)
	end
	arg1.States.Loading:set(true)
	arg1.States.SwitchingFeed:set(true)
	local var128_upvr = arg1.FeedsById[arg2]
	var128_upvr.SwitchFailed:set(false)
	var128_upvr.LoadFailed:set(false)
	if var128_upvr.ShouldRefresh:get() then
		var127 = true
	end
	if not var128_upvr.Searchable then
		arg1.States.Query:set(tbl_2_upvr)
	end
	if var127 or 60 < tick() - var128_upvr.LastRefresh:get() then
		var128_upvr.ShouldRefresh:set(false)
		arg1:ResetFeed(arg2)
	end
	local ScrollingFrame_upvr = arg1.GuiObjects.ScrollingFrame
	ScrollingFrame_upvr.CanvasPosition = Vector2.zero
	arg1:ClearWindow()
	task.wait(0.1)
	if not var127 or not {} then
		local any_get_result1_2 = var128_upvr.LoadedOutfits:get()
	end
	if 0 < #any_get_result1_2 then
		arg1:RenderOutfits(any_get_result1_2, 0, true):andThen(function() -- Line 632
			--[[ Upvalues[2]:
				[1]: ScrollingFrame_upvr (readonly)
				[2]: var128_upvr (readonly)
			]]
			ScrollingFrame_upvr.CanvasPosition = Vector2.new(0, var128_upvr.ScrollY:get() or 0)
		end):catch(function() -- Line 635
		end):finally(function() -- Line 637
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.States.Loading:set(false)
			arg1.States.SwitchingFeed:set(false)
		end)
	else
		arg1:LoadNextPage()
		ScrollingFrame_upvr.CanvasPosition = Vector2.new(0, 0)
	end
end
function module_4_upvr.UpdateFilters(arg1) -- Line 647
	--[[ Upvalues[1]:
		[1]: Utils_2_upvr (readonly)
	]]
	local keywords = arg1.States.Query:get().keywords
	local var139 = keywords
	if var139 then
		if 0 >= #keywords then
			var139 = false
		else
			var139 = true
		end
	end
	local any_deepCopy_result1 = Utils_2_upvr.deepCopy(arg1.FilterTabs:get())
	for var147, var151 in pairs(any_deepCopy_result1) do
		if var139 then
			local Internal = var151.Internal
			if not Internal then
				local Searchable = var151.Searchable
				if not Searchable then
					Searchable = var151.SearchOnly
				end
				Internal = not Searchable
			end
			any_deepCopy_result1[var147].Hidden = Internal
		else
			Internal = var151.Internal
			local var146 = Internal
			if not var146 then
				var146 = var151.SearchOnly
			end
			any_deepCopy_result1[var147].Hidden = var146
		end
	end
	arg1.FilterTabs:set(any_deepCopy_result1)
	arg1:MarkAllForRefresh()
	local any_get_result1_upvr = arg1.States.CurrentFeedId:get()
	function var147(arg1_6) -- Line 664
		--[[ Upvalues[1]:
			[1]: any_get_result1_upvr (readonly)
		]]
		local var149
		if arg1_6.Id ~= any_get_result1_upvr then
			var149 = false
		else
			var149 = true
		end
		return var149
	end
	local any_search_result1 = Utils_2_upvr.search(any_deepCopy_result1, var147)
	if arg1.Enabled and (not any_search_result1 or any_search_result1.Hidden) then
		var147 = Utils_2_upvr
		var147 = any_deepCopy_result1
		function var151(arg1_7) -- Line 667
			return not arg1_7.Hidden
		end
		local any_search_result1_2 = var147.search(var147, var151)
		var151 = arg1.States
		var147 = var151.CurrentFeedId:set
		var147(any_search_result1_2.Id)
		var147 = arg1:SwitchToFeed
		var147(any_search_result1_2.Id, true)
	end
end
function module_4_upvr.LoadNextPage(arg1) -- Line 673
	arg1.States.Loading:set(true)
	local var157 = arg1.FeedsById[arg1.States.CurrentFeedId:get()]
	var157.SwitchFailed:set(false)
	var157.LoadFailed:set(false)
	var157.Page:set(var157.Page:get() + 1)
	local any_get_result1 = var157.Page:get()
	local any_get_result1_6 = var157.LoadedOutfits:get()
	local any_GetOutfitsFromFeedId_result1, any_GetOutfitsFromFeedId_result2 = arg1:GetOutfitsFromFeedId(var157.Id, arg1.States.Query:get(), any_get_result1)
	if any_GetOutfitsFromFeedId_result1 then
		local var162
		if 0 < #any_GetOutfitsFromFeedId_result2 then
			if any_get_result1 ~= 1 then
				var162 = false
			else
				var162 = true
			end
			arg1:RenderOutfits(any_GetOutfitsFromFeedId_result2, #any_get_result1_6, var162):andThen(function() -- Line 691
			end):catch(function() -- Line 693
			end):finally(function() -- Line 695
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.States.Loading:set(false)
				arg1.States.SwitchingFeed:set(false)
			end)
			for _, v_5 in any_GetOutfitsFromFeedId_result2 do
				table.insert(any_get_result1_6, v_5)
			end
			var157.LoadedOutfits:set(any_get_result1_6)
		else
			var157.LoadedAll:set(true)
			arg1.States.Loading:set(false)
			arg1.States.SwitchingFeed:set(false)
		end
	end
	arg1.States.Loading:set(false)
	arg1.States.SwitchingFeed:set(false)
	local var166 = true
	var157.LoadFailed:set(var166)
	if any_get_result1 ~= 1 then
		var166 = false
	else
		var166 = true
	end
	var157.SwitchFailed:set(var166)
	var157.Page:set(any_get_result1 - 1)
	var157.ErrorType:set(any_GetOutfitsFromFeedId_result2.status)
end
function module_4_upvr.GetOutfitsFromFeedId(arg1, arg2, arg3, arg4) -- Line 721
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	if arg2 == "top" then
	end
	local any_InvokeServer_result1_2, any_InvokeServer_result2 = var9_upvw:InvokeServer(arg1.TopDropdownValue:get(), arg4, arg3)
	if any_InvokeServer_result1_2 then
		return true, any_InvokeServer_result2
	end
	warn(any_InvokeServer_result2.message)
	return false, any_InvokeServer_result2
end
local Payload_upvr = require(CatalogShared.FeedUtils.Payload)
function module_4_upvr.GetServerOutfit(arg1, arg2, arg3) -- Line 736
	--[[ Upvalues[4]:
		[1]: Utils_2_upvr (readonly)
		[2]: InventoryHandler_upvr (readonly)
		[3]: FeedUtils_upvr (readonly)
		[4]: Payload_upvr (readonly)
	]]
	local any_GetAccessories_result1_2 = arg3:GetAccessories(true)
	local any_defaultdict_result1 = Utils_2_upvr.defaultdict(function() -- Line 756
		return {}
	end, InventoryHandler_upvr.GetBatchItemDetails(Utils_2_upvr.concat(Utils_2_upvr.map(any_GetAccessories_result1_2, function(arg1_8) -- Line 741
		return arg1_8.AssetId
	end), Utils_2_upvr.filter({arg3.Shirt, arg3.Pants, arg3.Torso, arg3.RightArm, arg3.LeftArm, arg3.RightLeg, arg3.LeftLeg, arg3.Head, arg3.GraphicTShirt}, function(arg1_9) -- Line 752
		local var176 = arg1_9
		if var176 then
			if 0 >= arg1_9 then
				var176 = false
			else
				var176 = true
			end
		end
		return var176
	end))))
	local tbl_10 = {}
	table.sort(any_GetAccessories_result1_2, function(arg1_10, arg2_3) -- Line 762
		local Order = arg2_3.Order
		if (arg1_10.Order or 0) >= (Order or 0) then
			Order = false
		else
			Order = true
		end
		return Order
	end)
	for _, v_6 in pairs(any_GetAccessories_result1_2) do
		local any_GetAllowedSlot_result1 = FeedUtils_upvr.GetAllowedSlot(v_6.AccessoryType.Name)
		if any_GetAllowedSlot_result1 then
			table.insert(tbl_10, {
				slot = any_GetAllowedSlot_result1;
				id = v_6.AssetId;
				name = any_defaultdict_result1[v_6.AssetId].Name;
				price = any_defaultdict_result1[v_6.AssetId].Price;
			})
		end
	end
	table.insert(tbl_10, {
		id = arg3.Shirt;
		slot = Payload_upvr.Slots.Shirt;
		name = any_defaultdict_result1[arg3.Shirt].Name;
		price = any_defaultdict_result1[arg3.Shirt].Price;
	})
	table.insert(tbl_10, {
		id = arg3.Pants;
		slot = Payload_upvr.Slots.Pants;
		name = any_defaultdict_result1[arg3.Pants].Name;
		price = any_defaultdict_result1[arg3.Pants].Price;
	})
	table.insert(tbl_10, {
		id = arg3.Torso;
		slot = Payload_upvr.Slots.Torso;
		name = any_defaultdict_result1[arg3.Torso].Name;
		price = any_defaultdict_result1[arg3.Torso].Price;
	})
	table.insert(tbl_10, {
		id = arg3.RightArm;
		slot = Payload_upvr.Slots.RightArm;
		name = any_defaultdict_result1[arg3.RightArm].Name;
		price = any_defaultdict_result1[arg3.RightArm].Price;
	})
	table.insert(tbl_10, {
		id = arg3.RightLeg;
		slot = Payload_upvr.Slots.RightLeg;
		name = any_defaultdict_result1[arg3.RightLeg].Name;
		price = any_defaultdict_result1[arg3.RightLeg].Price;
	})
	table.insert(tbl_10, {
		id = arg3.LeftArm;
		slot = Payload_upvr.Slots.LeftArm;
		name = any_defaultdict_result1[arg3.LeftArm].Name;
		price = any_defaultdict_result1[arg3.LeftArm].Price;
	})
	table.insert(tbl_10, {
		id = arg3.LeftLeg;
		slot = Payload_upvr.Slots.LeftLeg;
		name = any_defaultdict_result1[arg3.LeftLeg].Name;
		price = any_defaultdict_result1[arg3.LeftLeg].Price;
	})
	table.insert(tbl_10, {
		id = arg3.Head;
		slot = Payload_upvr.Slots.Head;
		name = any_defaultdict_result1[arg3.Head].Name;
		price = any_defaultdict_result1[arg3.Head].Price;
	})
	local module_3 = {}
	module_3.name = arg2
	module_3.items = tbl_10
	module_3.head_color = arg3.HeadColor:ToHex()
	module_3.torso_color = arg3.TorsoColor:ToHex()
	module_3.left_arm_color = arg3.LeftArmColor:ToHex()
	module_3.right_arm_color = arg3.RightArmColor:ToHex()
	module_3.left_leg_color = arg3.LeftLegColor:ToHex()
	module_3.right_leg_color = arg3.RightLegColor:ToHex()
	return module_3
end
local ShareOutfitModal_upvr = require(Feed.ShareOutfitModal)
local TweenService_upvr = game:GetService("TweenService")
local ShareOutfit_upvr = require(Feed.ShareOutfit)
function module_4_upvr.Start(arg1) -- Line 865
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: ShareOutfitModal_upvr (readonly)
		[3]: var24_upvw (read and write)
		[4]: var4_upvw (read and write)
		[5]: TweenService_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: ShareOutfit_upvr (readonly)
		[8]: EmptyState_upvr (readonly)
	]]
	local any_Value_result1_upvr = module_upvr.Value(false)
	local var196_result1 = ShareOutfitModal_upvr({
		Creating = any_Value_result1_upvr;
		Enabled = module_upvr.Value(var24_upvw);
		CancelCallback = function() -- Line 872, Named "CancelCallback"
			--[[ Upvalues[1]:
				[1]: any_Value_result1_upvr (readonly)
			]]
			any_Value_result1_upvr:set(false)
		end;
		CreateCallback = function(arg1_11) -- Line 876, Named "CreateCallback"
			--[[ Upvalues[5]:
				[1]: any_Value_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: var4_upvw (copied, read and write)
				[4]: TweenService_upvr (copied, readonly)
				[5]: tbl_2_upvr (copied, readonly)
			]]
			any_Value_result1_upvr:set(false)
			task.spawn(function() -- Line 880
				--[[ Upvalues[5]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_11 (readonly)
					[3]: var4_upvw (copied, read and write)
					[4]: TweenService_upvr (copied, readonly)
					[5]: tbl_2_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [24] 19. Error Block 3 start (CF ANALYSIS FAILED)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.5]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTERROR: [24] 19. Error Block 3 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [111] 79. Error Block 9 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				warn(nil)
				-- KONSTANTERROR: [111] 79. Error Block 9 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [115] 82. Error Block 10 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [115] 82. Error Block 10 end (CF ANALYSIS FAILED)
			end)
		end;
	})
	local tbl_7 = {
		Creating = any_Value_result1_upvr;
		Enabled = module_upvr.Computed(function() -- Line 929
			--[[ Upvalues[2]:
				[1]: var24_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			local var205
			if not var205 then
				var205 = false
				return var205
			end
			if arg1.Controllers.AvatarPreviewController.EquippedCount:get() > 50 then
				var205 = false
			else
				var205 = true
			end
			return var205
		end);
		Visible = module_upvr.Computed(function() -- Line 936
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return not arg1.Controllers.TopBarController.ShowSearchContext:get()
		end);
	}
	local function Callback() -- Line 939
		--[[ Upvalues[2]:
			[1]: var24_upvw (copied, read and write)
			[2]: any_Value_result1_upvr (readonly)
		]]
		if var24_upvw then
			if not any_Value_result1_upvr:get() then
				any_Value_result1_upvr:set(true)
			else
			end
		end
	end
	tbl_7.Callback = Callback
	local Holder = arg1.GuiObjects.FilterFrame:WaitForChild("Holder")
	if Holder then
		ShareOutfit_upvr(tbl_7).Parent = Holder
	end
	arg1.GuiObjects.EmptyStateFrame = EmptyState_upvr({
		Parent = arg1.GuiObjects.Frame;
		Size = UDim2.fromScale(1, 0.8);
		Visible = module_upvr.Computed(function() -- Line 971
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var211
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var211 = arg1.FeedsById[arg1.States.CurrentFeedId:get()].LoadFailed:get()
				return var211
			end
			if not arg1.FeedsById[arg1.States.CurrentFeedId:get()] or not INLINED_3() then
				var211 = false
			end
			local any_get_result1_5 = arg1.IsEmpty:get()
			if any_get_result1_5 then
				any_get_result1_5 = not var211
			end
			return any_get_result1_5
		end);
		Text = "There's no outfits to show";
		ButtonText = "Clear Search";
		ButtonEnabled = module_upvr.Computed(function() -- Line 981
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var214
			if 0 >= #(arg1.Controllers.TopBarController.SearchQuery:get() or "") then
				var214 = false
			else
				var214 = true
			end
			return var214
		end);
		Callback = function() -- Line 987, Named "Callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.Controllers.TopBarController:ResetSearchBar()
			arg1:SearchFor(nil)
		end;
	})
	if var24_upvw then
		var196_result1.Parent = arg1.Container.Parent
	else
		var196_result1:Destroy()
	end
end
function module_4_upvr.Enable(arg1) -- Line 1000
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	if arg1.Enabled then
	else
		arg1.Enabled = true
		arg1.GuiObjects.Frame.Visible = true
		arg1.Controllers.CategoryController:Disable(true)
		arg1.Controllers.OutfitsController:Disable()
		arg1.Controllers.InventoryController:Disable()
		arg1.Controllers.BodyEditorController:Disable()
		var3_upvw:FireServer("Feed")
		local any_get_result1_4 = arg1.Controllers.TopBarController.SearchQuery:get()
		if any_get_result1_4 and 0 < #any_get_result1_4 then
			arg1:SearchFor(any_get_result1_4)
			return
		end
		if arg1.States.CurrentFeedId:get() == "hot" then
			arg1:SwitchToFeed("hot", true)
		else
			arg1.FeedsById.hot.ShouldRefresh:set(true)
			arg1.setSortTab("hot")
		end
		arg1:UpdateFilters()
	end
end
function module_4_upvr.Disable(arg1) -- Line 1030
	arg1.Enabled = false
	arg1.GuiObjects.Frame.Visible = false
	arg1.States.Query:set({
		keywords = nil;
	})
	arg1:CancelLoading()
end
function module_4_upvr.ClearWindow(arg1) -- Line 1039
	arg1.GuiObjects.ItemFrame.Visible = false
	local OutfitsCache = arg1.OutfitsCache
	for _, v_7 in ipairs(arg1.GuiObjects.ItemFrame:GetChildren()) do
		if v_7:IsA("Frame") then
			if OutfitsCache[v_7.Name] then
				OutfitsCache[v_7.Name].Frame = nil
				OutfitsCache[v_7.Name] = nil
			end
			v_7:Destroy()
		end
	end
	arg1.GuiObjects.ItemFrame.Visible = true
end
function module_4_upvr.GetFeedFromServer(arg1, arg2, arg3, arg4) -- Line 1055
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	arg1.States.Loading:set(true)
	if arg2 == 1 then
		arg1.GuiObjects.ScrollingFrame.CanvasPosition = Vector2.new(0, 0)
		arg1:ClearWindow()
	end
	local any_InvokeServer_result1_4, any_InvokeServer_result2_2 = var7_upvw:InvokeServer(arg3, arg2, arg4, 20)
	if any_InvokeServer_result1_4 then
		if 0 < #any_InvokeServer_result2_2 then
			arg1:RenderOutfits(any_InvokeServer_result2_2):andThen(function() -- Line 1068
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.States.Loading:set(false)
			end)
			-- KONSTANTWARNING: GOTO [55] #40
		end
	end
	arg1.States.Loading:set(false)
	local var230 = any_InvokeServer_result1_4
	if var230 then
		if 0 >= #any_InvokeServer_result2_2 then
			var230 = false
		else
			var230 = true
		end
	end
	return var230
end
function module_4_upvr.RenderOutfits(arg1, arg2, arg3, arg4) -- Line 1078
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: FeedUtils_upvr (readonly)
		[3]: InventoryHandler_upvr (readonly)
		[4]: Utils_2_upvr (readonly)
		[5]: AvatarEditorService_upvr (readonly)
	]]
	local var232_upvw = arg3 or 0
	local any_new_result1 = module_upvr_2.new(function(arg1_12, arg2_4) -- Line 1081
		--[[ Upvalues[9]:
			[1]: arg2 (readonly)
			[2]: FeedUtils_upvr (copied, readonly)
			[3]: InventoryHandler_upvr (copied, readonly)
			[4]: Utils_2_upvr (copied, readonly)
			[5]: AvatarEditorService_upvr (copied, readonly)
			[6]: module_upvr_2 (copied, readonly)
			[7]: arg1 (readonly)
			[8]: var232_upvw (read and write)
			[9]: arg4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_8_upvr = {}
		local _
		for _, v_8 in ipairs(arg2) do
			if type(v_8) ~= "string" then
				for _, v_9 in pairs(FeedUtils_upvr.GetOutfitFromServerData(v_8).Items) do
					if 0 < v_9.AssetId and not InventoryHandler_upvr.ItemDetailsCache[v_9.AssetId] then
						table.insert(tbl_8_upvr, v_9.AssetId)
					end
				end
			end
		end
		for _, v_10_upvr in ipairs(Utils_2_upvr.chunk(tbl_8_upvr, 100)) do
			Utils_2_upvr.pprint(string.format("Getting %s batch items", #v_10_upvr))
			local any_callWithRetry_result1, any_callWithRetry_result2 = Utils_2_upvr.callWithRetry(function() -- Line 1101
				--[[ Upvalues[3]:
					[1]: tbl_8_upvr (readonly)
					[2]: AvatarEditorService_upvr (copied, readonly)
					[3]: v_10_upvr (readonly)
				]]
				if 0 < #tbl_8_upvr then
					return AvatarEditorService_upvr:GetBatchItemDetails(v_10_upvr, 1)
				end
				return {}
			end, 2)
			Utils_2_upvr.pprint("done")
			if any_callWithRetry_result2 then
				for _, v_11 in pairs(any_callWithRetry_result1) do
					InventoryHandler_upvr.ItemDetailsCache[v_11.Id] = v_11
				end
			end
		end
		for i_12, v_12_upvr in ipairs(arg2) do
			local tbl_6_upvr = {}
			table.insert({}, module_upvr_2.new(function(arg1_13, arg2_5) -- Line 1123
				--[[ Upvalues[5]:
					[1]: module_upvr_2 (copied, readonly)
					[2]: v_12_upvr (readonly)
					[3]: arg1 (copied, readonly)
					[4]: tbl_6_upvr (readonly)
					[5]: Utils_2_upvr (copied, readonly)
				]]
				local var312_upvw = false
				module_upvr_2.try(function() -- Line 1126
					--[[ Upvalues[3]:
						[1]: v_12_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: tbl_6_upvr (copied, readonly)
					]]
					local var314
					if typeof(v_12_upvr) == "string" then
						var314 = arg1:RenderOutfit(v_12_upvr)
					elseif typeof(v_12_upvr) == "table" then
						var314 = arg1:RenderOutfit(v_12_upvr.guid, v_12_upvr)
					end
					if var314 then
						tbl_6_upvr[v_12_upvr.guid] = var314
						return var314
					end
				end):timeout(4):andThen(function() -- Line 1142
					--[[ Upvalues[2]:
						[1]: var312_upvw (read and write)
						[2]: arg1_13 (readonly)
					]]
					if not var312_upvw then
						arg1_13()
					end
				end):catch(function(arg1_14) -- Line 1147
					--[[ Upvalues[3]:
						[1]: Utils_2_upvr (copied, readonly)
						[2]: var312_upvw (read and write)
						[3]: arg1_13 (readonly)
					]]
					Utils_2_upvr.pprint("outfit load timed out", arg1_14)
					var312_upvw = true
					arg1_13(nil)
				end)
			end))
			local var317
		end
		local any_await_result1, any_await_result2 = module_upvr_2.all(var317):await()
		if not any_await_result1 then
			i_12 = any_await_result2
			arg2_4(i_12)
			i_12 = any_await_result2
			warn(i_12)
		else
			for i_14, v_14 in ipairs(arg2) do
				if typeof(v_14) == "string" then
				elseif typeof(v_14) == "table" then
				end
				if tbl_6_upvr[v_14.guid] then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_6_upvr[v_14.guid].LayoutOrder = var232_upvw + i_14
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_6_upvr[v_14.guid].Parent = arg1.GuiObjects.ItemFrame
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					table.insert({}, tbl_6_upvr[v_14.guid])
				else
				end
			end
			if 0.5 < (0 + 1) / #arg2 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				for _, v_15 in ipairs({}) do
					v_15:Destroy()
				end
				local var326 = arg1.FeedsById[arg1.States.CurrentFeedId:get()]
				var326.LoadFailed:set(true)
				var326.ErrorType:set("avatar")
				var326.Page:set(var326.Page:get() - 1)
				if arg4 then
					var326.SwitchFailed:set(true)
				end
			end
			arg1_12()
		end
	end)
	table.insert(arg1.LoadingPromises, any_new_result1)
	return any_new_result1
end
local OutfitFrame_upvr = require(script.OutfitFrame)
function module_4_upvr.RenderOutfit(arg1, arg2, arg3) -- Line 1208
	--[[ Upvalues[13]:
		[1]: var5_upvw (read and write)
		[2]: FeedUtils_upvr (readonly)
		[3]: InventoryHandler_upvr (readonly)
		[4]: Utils_2_upvr (readonly)
		[5]: AvatarEditorService_upvr (readonly)
		[6]: tbl_3_upvr (readonly)
		[7]: module_upvr (readonly)
		[8]: OutfitFrame_upvr (readonly)
		[9]: var24_upvw (read and write)
		[10]: var10_upvw (read and write)
		[11]: var11_upvw (read and write)
		[12]: var6_upvw (read and write)
		[13]: var8_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	warn("No ID passed to create new feed.")
	do
		return
	end
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
end
local AvatarHandler_upvr = require(CatalogClient.Classes.AvatarHandler)
function module_4_upvr.ProcessOutfit(arg1, arg2, arg3) -- Line 1347
	--[[ Upvalues[1]:
		[1]: AvatarHandler_upvr (readonly)
	]]
	local HumanoidDescription = Instance.new("HumanoidDescription")
	local any_GetAccessories_result1 = HumanoidDescription:GetAccessories(false)
	local module = {}
	local _, pairs_result2_2, pairs_result3_5 = pairs(arg3)
	local var340
	for i_13, v_13 in var340, pairs_result2_2, pairs_result3_5 do
		local any_BuildItemData_result1 = AvatarHandler_upvr.BuildItemData(v_13, true)
		if any_BuildItemData_result1 then
			local AssetType = any_BuildItemData_result1.AssetType
			if AssetType == "Shirt" then
				HumanoidDescription.Shirt = any_BuildItemData_result1.AssetId
			elseif AssetType == "TShirt" then
				HumanoidDescription.GraphicTShirt = any_BuildItemData_result1.AssetId
			elseif AssetType == "Pants" then
				HumanoidDescription.Pants = any_BuildItemData_result1.AssetId
			elseif AssetType == "Torso" then
				HumanoidDescription.Torso = any_BuildItemData_result1.AssetId
			elseif AssetType == "Head" or AssetType == "DynamicHead" or AssetType == 79 then
				HumanoidDescription.Head = any_BuildItemData_result1.AssetId
			elseif AssetType == "RightArm" then
				HumanoidDescription.RightArm = any_BuildItemData_result1.AssetId
			elseif AssetType == "LeftArm" then
				HumanoidDescription.LeftArm = any_BuildItemData_result1.AssetId
			elseif AssetType == "RightLeg" then
				HumanoidDescription.RightLeg = any_BuildItemData_result1.AssetId
			elseif AssetType == "LeftLeg" then
				HumanoidDescription.LeftLeg = any_BuildItemData_result1.AssetId
			else
				any_GetAccessories_result1[#any_GetAccessories_result1 + 1] = {
					AccessoryType = any_BuildItemData_result1.AssetType;
					AssetId = any_BuildItemData_result1.AssetId;
					Order = i_13;
				}
				HumanoidDescription:SetAccessories(any_GetAccessories_result1, true)
			end
		end
		local any_BuildItemData_result1_2 = AvatarHandler_upvr.BuildItemData(v_13, false)
		if any_BuildItemData_result1_2 then
			any_BuildItemData_result1_2.Order = i_13
			module[any_BuildItemData_result1_2.AssetId] = any_BuildItemData_result1_2
		end
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var340 = Color3.fromHex(arg2.Colors.Head)
		return var340
	end
	if not arg2.Colors.Head or not INLINED_4() then
		var340 = Color3.new()
	end
	HumanoidDescription.HeadColor = var340
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var340 = Color3.fromHex(arg2.Colors.Torso)
		return var340
	end
	if not arg2.Colors.Torso or not INLINED_5() then
		var340 = Color3.new()
	end
	HumanoidDescription.TorsoColor = var340
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var340 = Color3.fromHex(arg2.Colors.LeftArm)
		return var340
	end
	if not arg2.Colors.LeftArm or not INLINED_6() then
		var340 = Color3.new()
	end
	HumanoidDescription.LeftArmColor = var340
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		var340 = Color3.fromHex(arg2.Colors.LeftLeg)
		return var340
	end
	if not arg2.Colors.LeftLeg or not INLINED_7() then
		var340 = Color3.new()
	end
	HumanoidDescription.LeftLegColor = var340
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		var340 = Color3.fromHex(arg2.Colors.RightArm)
		return var340
	end
	if not arg2.Colors.RightArm or not INLINED_8() then
		var340 = Color3.new()
	end
	HumanoidDescription.RightArmColor = var340
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		var340 = Color3.fromHex(arg2.Colors.RightLeg)
		return var340
	end
	if not arg2.Colors.RightLeg or not INLINED_9() then
		var340 = Color3.new()
	end
	HumanoidDescription.RightLegColor = var340
	var340 = {}
	var340.HeadColor = HumanoidDescription.HeadColor
	var340.TorsoColor = HumanoidDescription.TorsoColor
	var340.LeftArmColor = HumanoidDescription.LeftArmColor
	var340.LeftLegColor = HumanoidDescription.LeftLegColor
	var340.RightArmColor = HumanoidDescription.RightArmColor
	var340.RightLegColor = HumanoidDescription.RightLegColor
	module.BodyColors = var340
	var340 = HumanoidDescription
	return var340, module, {}
end
function module_4_upvr.SearchFor(arg1, arg2) -- Line 1416
	local var345
	if arg2 and 0 < #arg2 then
		if #(arg1.States.Query:get().keywords or "") ~= 0 then
			var345 = false
		else
			var345 = true
		end
	end
	local tbl = {}
	tbl.keywords = arg2
	arg1.States.Query:set(tbl)
	arg1:MarkAllForRefresh(function(arg1_15) -- Line 1427
		return arg1_15.Searchable
	end)
	if var345 then
		arg1.States.CurrentFeedId:set("relevance")
		arg1:SwitchToFeed("relevance", true)
	else
		arg1:SwitchToFeed(arg1.States.CurrentFeedId:get(), true)
	end
end
return module_4_upvr