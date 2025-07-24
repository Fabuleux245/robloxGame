-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:21
-- Luau version 6, Types version 3
-- Time taken: 0.004572 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local Value_upvr = module_upvr.Value
local var4_result1_upvr_2 = Value_upvr(Vector2.new(1280, 720))
game:GetService("RunService").RenderStepped:Connect(function() -- Line 32
	--[[ Upvalues[1]:
		[1]: var4_result1_upvr_2 (readonly)
	]]
	if workspace.Camera.ViewportSize ~= var4_result1_upvr_2:get() then
		var4_result1_upvr_2:set(workspace.Camera.ViewportSize)
	end
end)
local module_3_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module_upvr.Children
local New_upvr = module_upvr.New
local Computed_upvr = module_upvr.Computed
local Out_upvr = module_upvr.Out
local ForValues_upvr = module_upvr.ForValues
local CatalogItem_upvr = require(Parent.CatalogClient.Components.CatalogItem)
return function(arg1) -- Line 41, Named "AvatarPreviewFrame"
	--[[ Upvalues[9]:
		[1]: module_3_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: Out_upvr (readonly)
		[7]: ForValues_upvr (readonly)
		[8]: CatalogItem_upvr (readonly)
		[9]: module_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_3_upvr.GetValues(arg1, {
		Parent = module_3_upvr.Nil;
		ZIndex = 100;
		AnchorPoint = Vector2.zero;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		ButtonHeight = 16;
		EquippedItems = {};
		ShowItems = false;
		CategoryName = "";
		AvatarPreviewController = module_3_upvr.Nil;
		Scene = {
			Image = "http://www.roblox.com/asset/?id=10393363412";
			Color = Color3.new(1, 1, 1);
		};
		[Children_upvr] = {};
	})
	local var4_result1_upvr_4 = Value_upvr(Vector2.zero)
	local var4_result1_upvr_3 = Value_upvr(Vector2.zero)
	local module = {
		Parent = any_GetValues_result1_upvw.Parent;
		Name = "PreviewFrame";
		ZIndex = any_GetValues_result1_upvw.ZIndex;
		BackgroundColor3 = Color3.fromRGB(79, 84, 95);
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
	}
	local tbl_2 = {}
	local tbl = {
		Name = "ListFrame";
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		CanvasSize = Computed_upvr(function() -- Line 79
			--[[ Upvalues[1]:
				[1]: var4_result1_upvr_3 (readonly)
			]]
			return UDim2.new(1, -12, 0, var4_result1_upvr_3:get().Y + 10)
		end);
		ScrollBarThickness = 0;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		Active = true;
		BackgroundTransparency = 1;
		Position = Computed_upvr(function() -- Line 89
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(0, 12, 0, any_GetValues_result1_upvw.ButtonHeight:get() + 8)
		end);
		Size = Computed_upvr(function() -- Line 92
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(1, -12, 1, -any_GetValues_result1_upvw.ButtonHeight:get() * 2 - 20)
		end);
		Visible = any_GetValues_result1_upvw.ShowItems;
		ZIndex = 30;
		[Out_upvr("AbsoluteSize")] = var4_result1_upvr_4;
	}
	local tbl_3 = {}
	local var4_result1_upvr = Value_upvr()
	tbl_3[1] = New_upvr("UIGridLayout")({
		Name = "UIGridLayout";
		CellPadding = UDim2.fromScale(0.04, 0.03);
		CellSize = Computed_upvr(function() -- Line 104
			--[[ Upvalues[1]:
				[1]: var4_result1_upvr_4 (readonly)
			]]
			return UDim2.new(0.48, 0, 0, var4_result1_upvr_4:get().X * 0.48 * 1.1)
		end);
		SortOrder = Enum.SortOrder.LayoutOrder;
		[Out_upvr("AbsoluteContentSize")] = var4_result1_upvr_3;
	})
	tbl_3[2] = ForValues_upvr(any_GetValues_result1_upvw.EquippedItems, function(arg1_2) -- Line 111
		--[[ Upvalues[3]:
			[1]: CatalogItem_upvr (copied, readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: var4_result1_upvr (readonly)
		]]
		if not arg1_2.AssetId then return end
		local module_2 = {
			AvatarPreviewController = any_GetValues_result1_upvw.AvatarPreviewController;
		}
		module_2.ItemData = arg1_2
		module_2.CategoryName = any_GetValues_result1_upvw.CategoryName
		module_2.SelectedId = var4_result1_upvr
		module_2.BackgroundColor3 = Color3.new(0, 0, 0)
		module_2.BackgroundTransparency = 0.5
		return CatalogItem_upvr(module_2)
	end, module_upvr.cleanup)
	tbl[Children_upvr] = tbl_3
	tbl_2[1] = New_upvr("ScrollingFrame")(tbl)
	tbl_2[2] = New_upvr("ImageLabel")({
		Name = "Background";
		Image = Computed_upvr(function() -- Line 131
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return any_GetValues_result1_upvw.Scene:get().Image
		end);
		ImageColor3 = Computed_upvr(function() -- Line 134
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return any_GetValues_result1_upvw.Scene:get().Color
		end);
		ScaleType = Enum.ScaleType.Crop;
		BackgroundColor3 = Computed_upvr(function() -- Line 138
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return any_GetValues_result1_upvw.Scene:get().Color
		end);
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0, -0.1);
		Size = UDim2.fromScale(1.05, 1.1);
	})
	tbl_2[3] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.02, 0);
	})
	tbl_2[4] = any_GetValues_result1_upvw[Children_upvr]
	module[Children_upvr] = tbl_2
	return New_upvr("Frame")(module)
end