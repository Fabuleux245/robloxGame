-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:36
-- Luau version 6, Types version 3
-- Time taken: 0.005091 seconds

local module_upvr_2 = require(script.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Computed_upvr = module_upvr_2.Computed
local Components = script.Parent.Parent.Components
local tbl_upvr_2 = {{
	X = 0;
	Y = 0;
	W = 2;
	H = 2;
}, {
	X = 2;
	Y = 0;
	W = 2;
	H = 1;
}, {
	X = 2;
	Y = 1;
	W = 2;
	H = 1;
}, {
	X = 4;
	Y = 0;
	W = 2;
	H = 2;
}, {
	X = 0;
	Y = 2;
	W = 3;
	H = 1;
}, {
	X = 3;
	Y = 2;
	W = 3;
	H = 1;
}}
local module_upvr = {}
module_upvr.__index = module_upvr
local New_upvr = module_upvr_2.New
local Value_upvr = module_upvr_2.Value
local ContentProvider_upvr = game:GetService("ContentProvider")
function module_upvr.new(arg1) -- Line 66
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: ContentProvider_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.CoreContainer = arg1
	setmetatable_result1_upvr.Container = New_upvr("Frame")({
		Name = "FeaturedCategories";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Parent = setmetatable_result1_upvr.CoreContainer.FrameContainer;
		Visible = false;
	})
	setmetatable_result1_upvr.Categories = Value_upvr({})
	setmetatable_result1_upvr.Loading = Computed_upvr(function() -- Line 79
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		local var19
		if #setmetatable_result1_upvr.Categories:get() ~= 0 then
			var19 = false
		else
			var19 = true
		end
		return var19
	end)
	module_upvr_2.Observer(setmetatable_result1_upvr.Categories):onChange(function() -- Line 83
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: ContentProvider_upvr (copied, readonly)
		]]
		for _, v in ipairs(setmetatable_result1_upvr.Categories:get()) do
			for _, v_2 in ipairs(v.items) do
				local var35
				if v_2.itemType == "Asset" then
					var35 = "Asset"
				else
					var35 = "BundleThumbnail"
				end
				table.insert({}, string.format("rbxthumb://type=%s&id=%s&w=420&h=420", var35, v_2.id))
			end
		end
		local tbl_upvr = {}
		task.spawn(function() -- Line 95
			--[[ Upvalues[2]:
				[1]: ContentProvider_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
			]]
			ContentProvider_upvr:PreloadAsync(tbl_upvr)
		end)
	end)
	return setmetatable_result1_upvr
end
local CatalogOnGetFeatured_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("CatalogOnGetFeatured")
local Hydrate_upvr = module_upvr_2.Hydrate
local LoadingFrame_upvr = require(Components.LoadingFrame)
local Grid_upvr = require(Components.Grid)
local ForPairs_upvr = module_upvr_2.ForPairs
local CategoryFrame_upvr = require(script.CategoryFrame)
function module_upvr.Init(arg1, arg2) -- Line 103
	--[[ Upvalues[9]:
		[1]: CatalogOnGetFeatured_upvr (readonly)
		[2]: Hydrate_upvr (readonly)
		[3]: LoadingFrame_upvr (readonly)
		[4]: Grid_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: ForPairs_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: CategoryFrame_upvr (readonly)
		[9]: module_upvr_2 (readonly)
	]]
	arg1.Controllers = arg2
	arg1.Enabled = arg1.Controllers.NavigationController:GetEnabledComputed("FeaturedController")
	task.spawn(function() -- Line 109
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: CatalogOnGetFeatured_upvr (copied, readonly)
		]]
		arg1.Categories:set(CatalogOnGetFeatured_upvr:InvokeServer())
	end)
	Hydrate_upvr(arg1.Container)({
		Visible = arg1.Enabled;
	})
	LoadingFrame_upvr({
		Parent = arg1.Container;
		Visible = arg1.Loading;
	})
	Grid_upvr({
		Parent = arg1.Container;
		Visible = Computed_upvr(function() -- Line 128
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var49
			if 0 >= #arg1.Categories:get() then
				var49 = false
			else
				var49 = true
			end
			return var49
		end);
		Size = UDim2.fromScale(1, 0.98);
		CellsX = 6;
		CellsY = 3;
		Padding = Computed_upvr(function() -- Line 135
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return UDim.new(0, math.ceil(arg1.Controllers.TopBarController.TopBarHeight:get() / 8) + 1)
		end);
		Content = ForPairs_upvr(arg1.Categories, function(arg1_2, arg2_2) -- Line 139
			--[[ Upvalues[4]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: CategoryFrame_upvr (copied, readonly)
				[3]: Computed_upvr (copied, readonly)
				[4]: arg1 (readonly)
			]]
			local var52 = tbl_upvr_2[arg1_2]
			if not var52 then
				return arg1_2, nil
			end
			return arg1_2, {
				X = var52.X;
				Y = var52.Y;
				Width = var52.W;
				Height = var52.H;
				Element = CategoryFrame_upvr({
					Category = arg2_2.name;
					Name = arg2_2.name;
					Color = arg2_2.bg_color;
					Items = arg2_2.items;
					Pause = Computed_upvr(function() -- Line 155
						--[[ Upvalues[1]:
							[1]: arg1 (copied, readonly)
						]]
						return not arg1.Enabled:get()
					end);
					OnClick = function() -- Line 158, Named "OnClick"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg2_2 (readonly)
						]]
						arg1.Controllers.TopBarController:SwitchToCategoryOrSearch(arg2_2.name)
					end;
					TopBarHeight = arg1.Controllers.TopBarController.TopBarHeight;
					CornerRadius = Computed_upvr(function() -- Line 162
						--[[ Upvalues[1]:
							[1]: arg1 (copied, readonly)
						]]
						return arg1.Controllers.TopBarController.TopBarHeight:get() / 5
					end);
				});
			}
		end, module_upvr_2.cleanup);
	})
end
function module_upvr.Enable(arg1) -- Line 173
end
function module_upvr.Disable(arg1) -- Line 177
end
return module_upvr