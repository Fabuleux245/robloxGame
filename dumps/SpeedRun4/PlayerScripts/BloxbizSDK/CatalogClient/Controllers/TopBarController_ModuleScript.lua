-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:45
-- Luau version 6, Types version 3
-- Time taken: 0.006691 seconds

local Parent = script.Parent.Parent.Parent
local module_upvr = require(Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Value_upvr = module_upvr.Value
local module_upvr_3 = {}
module_upvr_3.__index = module_upvr_3
local module_upvr_2 = require(Parent:WaitForChild("ConfigReader"))
function module_upvr_3.new(arg1) -- Line 24
	--[[ Upvalues[4]:
		[1]: module_upvr_3 (readonly)
		[2]: Value_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: module_upvr_2 (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr_3)
	setmetatable_result1_upvr.Container = arg1
	setmetatable_result1_upvr.Observers = {}
	setmetatable_result1_upvr.GuiObjects = {}
	setmetatable_result1_upvr.Debounces = {}
	setmetatable_result1_upvr.TopBarHeight = Value_upvr(0)
	setmetatable_result1_upvr.TopBarY = Value_upvr(0)
	setmetatable_result1_upvr.SearchQuery = Value_upvr("")
	setmetatable_result1_upvr.SearchBoxText = Value_upvr("")
	setmetatable_result1_upvr._OnSearch = Instance.new("BindableEvent")
	setmetatable_result1_upvr.OnSearch = setmetatable_result1_upvr._OnSearch.Event
	setmetatable_result1_upvr.SearchInCategory = Value_upvr(true)
	setmetatable_result1_upvr.ShowSearchContext = module_upvr.Computed(function() -- Line 43
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		local any_get_result1_4 = setmetatable_result1_upvr.SearchQuery:get()
		local any_get_result1 = setmetatable_result1_upvr.SearchInCategory:get()
		if any_get_result1 then
			any_get_result1 = any_get_result1_4
			if any_get_result1 then
				if 0 >= #any_get_result1_4 then
					any_get_result1 = false
				else
					any_get_result1 = true
				end
			end
		end
		return any_get_result1
	end)
	setmetatable_result1_upvr.ScreenSize = Value_upvr(Vector2.zero)
	module_upvr.Hydrate(workspace.Camera, {
		[module_upvr.Out("ViewportSize")] = setmetatable_result1_upvr.ScreenSize;
	})
	setmetatable_result1_upvr.CurrentCategory = Value_upvr()
	setmetatable_result1_upvr.DefaultCategory = Value_upvr()
	if module_upvr_2:read("CatalogOutfitFeedEnabled") then
		setmetatable_result1_upvr.DefaultCategory:set("feed")
		return setmetatable_result1_upvr
	end
	setmetatable_result1_upvr.DefaultCategory:set(1)
	return setmetatable_result1_upvr
end
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local TopBarFrame_upvr = require(script.TopBarFrame)
local Button_upvr = require(script.CategoryButtons.Button)
local SearchBar_upvr = require(script.Parent.Parent.Components.SearchBar)
local CategoryButtons_upvr = require(script.CategoryButtons)
function module_upvr_3.Init(arg1, arg2) -- Line 67
	--[[ Upvalues[7]:
		[1]: BloxbizRemotes_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: TopBarFrame_upvr (readonly)
		[5]: Button_upvr (readonly)
		[6]: SearchBar_upvr (readonly)
		[7]: CategoryButtons_upvr (readonly)
	]]
	arg1.Controllers = arg2
	local any_Spring_result1_upvr = module_upvr.Spring(module_upvr.Computed(function() -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if #(arg1.SearchBoxText:get() or "") + #(arg1.SearchQuery:get() or "") == 0 then
			return UDim2.new(0.15, 0, 1, 0)
		end
		return UDim2.new(0.3, 0, 1, 0)
	end), 25)
	local any_Computed_result1_upvr = module_upvr.Computed(function() -- Line 84
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.TopBarHeight:get() / 8 + 1
	end)
	local Value_upvr_result1_upvr = Value_upvr(Vector2.zero)
	local TopBarFrame_upvr_result1_upvr = TopBarFrame_upvr({
		Parent = arg1.Container;
		Padding = any_Computed_result1_upvr;
		[module_upvr.Children] = {Button_upvr({
			LayoutOrder = 1;
			IsSelected = arg1.Controllers.NavigationController:GetEnabledComputed("Featured");
			OnClick = function() -- Line 103, Named "OnClick"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.Controllers.NavigationController:SwitchTo("Featured")
			end;
			Icon = "rbxassetid://15120083610";
			SizeRef = Value_upvr_result1_upvr;
		}), SearchBar_upvr({
			LayoutOrder = 2;
			Size = any_Spring_result1_upvr;
			Position = UDim2.fromScale(0, 0);
			Query = arg1.SearchQuery;
			PlaceholderText = "Search";
			SearchBoxText = arg1.SearchBoxText;
			OnSearch = function(arg1_2) -- Line 117, Named "OnSearch"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local any_get_result1_3 = arg1.Controllers.NavigationController.Enabled:get()
				local var29
				if not any_get_result1_3.OutfitFeedController and not any_get_result1_3.CategoryController then
					arg1.SearchInCategory:set(false)
				end
				if arg1.SearchInCategory:get() then
					if var29 and #var29 == 0 then
						var29 = nil
					end
					if arg1.CurrentCategory:get() == "feed" then
						arg1.Controllers.OutfitFeedController:SearchFor(var29)
					else
						arg1.Controllers.CategoryController:SearchFor(var29)
					end
				end
				if var29 and 0 < #var29 then
					arg1:SearchAllItems(var29)
				else
					arg1.SearchInCategory:set(true)
					arg1.Controllers.NavigationController:SwitchTo("Featured")
				end
			end;
		}), CategoryButtons_upvr({
			LayoutOrder = 3;
			Categories = BloxbizRemotes_upvr:WaitForChild("GetCatalogCategories"):InvokeServer();
			Size = module_upvr.Computed(function() -- Line 90
				--[[ Upvalues[3]:
					[1]: any_Spring_result1_upvr (readonly)
					[2]: any_Computed_result1_upvr (readonly)
					[3]: Value_upvr_result1_upvr (readonly)
				]]
				return UDim2.new(1 - any_Spring_result1_upvr:get().X.Scale, -any_Computed_result1_upvr:get() * 2 - Value_upvr_result1_upvr:get().X, 1, 0)
			end);
			CurrentCategory = arg1.CurrentCategory;
			OnChange = function(arg1_3) -- Line 149, Named "OnChange"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:OnCategoryClick(arg1_3)
			end;
		})};
	})
	arg1.GuiObjects.Frame = TopBarFrame_upvr_result1_upvr
	arg1.TopBarHeight:set(TopBarFrame_upvr_result1_upvr.AbsoluteSize.Y)
	arg1.TopBarY:set(TopBarFrame_upvr_result1_upvr.AbsolutePosition.Y)
	TopBarFrame_upvr_result1_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 159
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TopBarFrame_upvr_result1_upvr (readonly)
		]]
		arg1.TopBarHeight:set(TopBarFrame_upvr_result1_upvr.AbsoluteSize.Y)
	end)
	TopBarFrame_upvr_result1_upvr:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 162
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TopBarFrame_upvr_result1_upvr (readonly)
		]]
		arg1.TopBarY:set(TopBarFrame_upvr_result1_upvr.AbsolutePosition.Y)
	end)
end
function module_upvr_3.SwitchToSearchAll(arg1) -- Line 167
	arg1.SearchInCategory:set(false)
	arg1:SearchAllItems(arg1.SearchQuery:get())
end
function module_upvr_3.OnCategoryClick(arg1, arg2) -- Line 172
	arg1.CurrentCategory:set(arg2)
	arg1.SearchInCategory:set(true)
	if arg2 == "feed" then
		arg1.Controllers.NavigationController:SwitchTo("OutfitFeed")
	else
		arg1.Controllers.CategoryController.CurrentCategoryId:set(arg2, true)
		arg1.Controllers.NavigationController:SwitchTo("CategoryController")
	end
end
function module_upvr_3.SearchAllItems(arg1, arg2) -- Line 184
	if arg2 and #arg2 == 0 then
		local var34
	end
	if var34 then
		arg1.CurrentCategory:set(nil)
		arg1.Controllers.NavigationController:SwitchTo("CategoryController")
		arg1.Controllers.CategoryController:LoadCategory("Search", var34)
	else
		arg1:OnCategoryClick(arg1.DefaultCategory)
	end
end
function module_upvr_3.Reset(arg1) -- Line 198
	arg1:ResetSearchBar()
	arg1.CurrentCategory:set(nil)
end
function module_upvr_3.ResetSearchBar(arg1) -- Line 203
	arg1.SearchQuery:set(nil)
end
function module_upvr_3.SearchFor(arg1, arg2) -- Line 207
	arg1.SearchInCategory:set(false)
	arg1.SearchQuery:set(arg2)
	arg1:SearchAllItems(arg2)
end
function module_upvr_3.GetButton(arg1, arg2) -- Line 213
	return arg1.GuiObjects.Buttons[arg2]
end
function module_upvr_3.SwitchToCategoryOrSearch(arg1, arg2) -- Line 217
	if arg2:lower() == "outfits" or arg2:lower() == "feed" then
		arg1:OnCategoryClick("feed")
	else
		local any_GetCategoryId_result1 = arg1.Controllers.CategoryController:GetCategoryId(arg2)
		if any_GetCategoryId_result1 then
			arg1:OnCategoryClick(any_GetCategoryId_result1)
			return
		end
		arg1:SearchFor(arg2)
	end
end
function module_upvr_3.OnOpen(arg1) -- Line 232
	arg1.SearchQuery:set(nil)
	task.spawn(function() -- Line 235
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.OpenCategory then
			arg1.OpenCategory = nil
			arg1:SwitchToCategoryOrSearch(arg1.OpenCategory)
		else
			if arg1.CurrentCategory:get() then
				arg1:OnCategoryClick(arg1.CurrentCategory:get())
				return
			end
			arg1.Controllers.NavigationController:SwitchTo("Featured")
		end
	end)
end
return module_upvr_3