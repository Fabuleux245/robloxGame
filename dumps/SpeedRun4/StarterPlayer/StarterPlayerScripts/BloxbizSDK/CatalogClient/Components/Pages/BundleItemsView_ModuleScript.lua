-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:15
-- Luau version 6, Types version 3
-- Time taken: 0.006540 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local CatalogClient = Parent.CatalogClient
local Components = CatalogClient.Components
local module_5_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_upvr_2.Value
local Computed_upvr = module_upvr_2.Computed
local module_upvr = require(Utils:WaitForChild("Promise"))
local AssetService_upvr = game:GetService("AssetService")
local InventoryHandler_upvr = require(CatalogClient.Classes.InventoryHandler)
local Utils_2_upvr = require(Utils)
local AvatarHandler_upvr = require(CatalogClient.Classes.AvatarHandler)
local New_upvr = module_upvr_2.New
local Children_upvr = module_upvr_2.Children
local OnEvent_upvr = module_upvr_2.OnEvent
local ScaledText_upvr = require(Components.ScaledText)
local LoadingFrame_upvr = require(Components.LoadingFrame)
local ScrollingFrame_upvr = require(Components.Generic.ScrollingFrame)
local CatalogItem_upvr = require(Components.CatalogItem)
return function(arg1) -- Line 32
	--[[ Upvalues[16]:
		[1]: module_5_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: AssetService_upvr (readonly)
		[6]: InventoryHandler_upvr (readonly)
		[7]: Utils_2_upvr (readonly)
		[8]: AvatarHandler_upvr (readonly)
		[9]: module_upvr_2 (readonly)
		[10]: New_upvr (readonly)
		[11]: Children_upvr (readonly)
		[12]: OnEvent_upvr (readonly)
		[13]: ScaledText_upvr (readonly)
		[14]: LoadingFrame_upvr (readonly)
		[15]: ScrollingFrame_upvr (readonly)
		[16]: CatalogItem_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_5_upvr.GetValues(arg1, {
		Parent = module_5_upvr.Nil;
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.zero;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 100;
		Visible = true;
		HeaderHeight = 40;
		BundleId = -1;
		AvatarPreviewController = module_5_upvr.Nil;
		CurrentCategory = module_5_upvr.Nil;
		OnBack = module_5_upvr.Nil;
	})
	local var8_result1_upvr_3 = Value_upvr()
	local Value_upvr_result1_upvr = Value_upvr(nil)
	local var8_result1_upvr = Value_upvr()
	local var9_result1_upvr = Computed_upvr(function() -- Line 51
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
		]]
		local var28 = not Value_upvr_result1_upvr:get()
		if var28 then
			var28 = not var8_result1_upvr:get()
		end
		return var28
	end)
	local function loadBundle() -- Line 57
		--[[ Upvalues[9]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var8_result1_upvr_3 (readonly)
			[3]: var8_result1_upvr (readonly)
			[4]: module_upvr (copied, readonly)
			[5]: AssetService_upvr (copied, readonly)
			[6]: InventoryHandler_upvr (copied, readonly)
			[7]: Utils_2_upvr (copied, readonly)
			[8]: AvatarHandler_upvr (copied, readonly)
			[9]: Value_upvr_result1_upvr (readonly)
		]]
		local any_get_result1_2_upvr = any_GetValues_result1_upvw.BundleId:get()
		var8_result1_upvr_3:set(nil)
		var8_result1_upvr:set(nil)
		if not any_get_result1_2_upvr or any_get_result1_2_upvr <= 0 then
		else
			module_upvr.try(function() -- Line 66
				--[[ Upvalues[2]:
					[1]: AssetService_upvr (copied, readonly)
					[2]: any_get_result1_2_upvr (readonly)
				]]
				return AssetService_upvr:GetBundleDetailsAsync(any_get_result1_2_upvr)
			end):andThen(function(arg1_2) -- Line 69
				--[[ Upvalues[5]:
					[1]: var8_result1_upvr_3 (copied, readonly)
					[2]: InventoryHandler_upvr (copied, readonly)
					[3]: Utils_2_upvr (copied, readonly)
					[4]: AvatarHandler_upvr (copied, readonly)
					[5]: Value_upvr_result1_upvr (copied, readonly)
				]]
				var8_result1_upvr_3:set(arg1_2)
				for _, v in ipairs(arg1_2.Items) do
					local var41 = InventoryHandler_upvr.GetBatchItemDetails(Utils_2_upvr.map(arg1_2.Items, function(arg1_3) -- Line 73
						return arg1_3.Id
					end))[v.Id]
					local var42
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var42 = AvatarHandler_upvr.BuildItemData(var41)
						return var42
					end
					if not var41 or not INLINED() then
						var42 = nil
					end
					if var41 and var42 then
						table.insert({}, var42)
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				Value_upvr_result1_upvr:set({})
			end):catch(function(arg1_4) -- Line 88
				--[[ Upvalues[2]:
					[1]: Utils_2_upvr (copied, readonly)
					[2]: var8_result1_upvr (copied, readonly)
				]]
				Utils_2_upvr.debug_warn(arg1_4)
				var8_result1_upvr:set(arg1_4)
			end)
		end
	end
	task.spawn(loadBundle)
	local module_4_upvr = {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.new(0, 0);
		ScrollingDirection = Enum.ScrollingDirection.Y;
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		DragScrollDisabled = true;
		Layout = {
			Type = "UIGridLayout";
			FillDirection = Enum.FillDirection.Horizontal;
			Size = UDim2.fromScale(0.243, 0.3);
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim2.fromScale(0.009, 0.012);
		};
	}
	local module_3 = {
		Parent = any_GetValues_result1_upvw.Parent;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		ZIndex = any_GetValues_result1_upvw.ZIndex;
		Visible = any_GetValues_result1_upvw.Visible;
		BackgroundColor3 = Color3.fromRGB(20, 20, 20);
	}
	local any_onChange_result1_upvr = module_upvr_2.Observer(any_GetValues_result1_upvw.BundleId):onChange(loadBundle)
	module_3[module_upvr_2.Cleanup] = function() -- Line 127
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: any_onChange_result1_upvr (readonly)
		]]
		module_upvr_2.cleanup(any_onChange_result1_upvr)
	end
	local tbl = {}
	local tbl_2 = {
		Name = "Content";
		BackgroundTransparency = 1;
		Position = Computed_upvr(function() -- Line 213
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(0, 0, 0, any_GetValues_result1_upvw.HeaderHeight:get())
		end);
		Size = Computed_upvr(function() -- Line 216
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(1, 0, 1, -any_GetValues_result1_upvw.HeaderHeight:get())
		end);
	}
	local tbl_3 = {}
	local var8_result1_upvr_2 = Value_upvr()
	tbl_3[1] = LoadingFrame_upvr({
		Visible = var9_result1_upvr;
	})
	tbl_3[2] = Computed_upvr(function() -- Line 224
		--[[ Upvalues[11]:
			[1]: var9_result1_upvr (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: Value_upvr_result1_upvr (readonly)
			[4]: any_GetValues_result1_upvw (read and write)
			[5]: ScrollingFrame_upvr (copied, readonly)
			[6]: Utils_2_upvr (copied, readonly)
			[7]: module_4_upvr (readonly)
			[8]: Children_upvr (copied, readonly)
			[9]: module_upvr_2 (copied, readonly)
			[10]: CatalogItem_upvr (copied, readonly)
			[11]: var8_result1_upvr_2 (readonly)
		]]
		local any_get_result1 = Value_upvr_result1_upvr:get()
		if any_get_result1 then
			local module = {}
			local any_get_result1_4_upvr = any_GetValues_result1_upvw.AvatarPreviewController:get()
			module[Children_upvr] = module_upvr_2.ForValues(any_get_result1, function(arg1_5) -- Line 233
				--[[ Upvalues[4]:
					[1]: CatalogItem_upvr (copied, readonly)
					[2]: any_GetValues_result1_upvw (copied, read and write)
					[3]: any_get_result1_4_upvr (readonly)
					[4]: var8_result1_upvr_2 (copied, readonly)
				]]
				if arg1_5.AssetType == 1 then return end
				local module_2 = {
					AvatarPreviewController = any_GetValues_result1_upvw.AvatarPreviewController;
				}
				module_2.ItemData = arg1_5
				module_2.CategoryName = any_GetValues_result1_upvw.CurrentCategory
				module_2.SourceBundleInfo = arg1_5.Source
				function module_2.OnTry() -- Line 243
					--[[ Upvalues[3]:
						[1]: any_get_result1_4_upvr (copied, readonly)
						[2]: arg1_5 (readonly)
						[3]: any_GetValues_result1_upvw (copied, read and write)
					]]
					any_get_result1_4_upvr.AddChange(any_get_result1_4_upvr, arg1_5, any_GetValues_result1_upvw.CurrentCategory:get())
				end
				module_2.SelectedId = var8_result1_upvr_2
				return CatalogItem_upvr(module_2)
			end, module_upvr_2.cleanup)
			return ScrollingFrame_upvr(Utils_2_upvr.merge(module_4_upvr, module))
		end
	end, module_upvr_2.cleanup)
	tbl_2[Children_upvr] = tbl_3
	tbl[1] = New_upvr("Frame")({
		Name = "Header";
		BackgroundTransparency = 1;
		Size = Computed_upvr(function() -- Line 135
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.new(1, 0, 0, any_GetValues_result1_upvw.HeaderHeight:get() * 0.8)
		end);
		[Children_upvr] = {New_upvr("TextButton")({
			Name = "Back";
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.fromScale(0, 0.5);
			Size = UDim2.fromScale(0.2, 1);
			Text = "";
			[OnEvent_upvr("Activated")] = function() -- Line 149
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				local any_get_result1_3 = any_GetValues_result1_upvw.OnBack:get()
				if any_get_result1_3 then
					any_get_result1_3()
				end
			end;
			[Children_upvr] = {New_upvr("UIListLayout")({
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = Computed_upvr(function() -- Line 162
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					return UDim.new(0, any_GetValues_result1_upvw.HeaderHeight:get() / 5)
				end);
			}), New_upvr("ImageLabel")({
				BackgroundTransparency = 1;
				Image = "rbxassetid://15103716412";
				ImageColor3 = Color3.fromRGB(95, 166, 255);
				Size = Computed_upvr(function() -- Line 170
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					return UDim2.fromOffset(any_GetValues_result1_upvw.HeaderHeight:get() / 3, any_GetValues_result1_upvw.HeaderHeight:get() / 3)
				end);
			}), ScaledText_upvr({
				LayoutOrder = 2;
				Size = Computed_upvr(function() -- Line 179
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					return UDim2.new(1, -(any_GetValues_result1_upvw.HeaderHeight:get() * 0.5333333333333333), 0.6, 0)
				end);
				TextXAlignment = Enum.TextXAlignment.Left;
				Text = "Back";
				TextColor3 = Color3.fromRGB(95, 166, 255);
			})};
		}), ScaledText_upvr({
			Name = "Title";
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.5, 0.6);
			Text = Computed_upvr(function() -- Line 199
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr_3 (readonly)
				]]
				if var8_result1_upvr_3:get() then
					return var8_result1_upvr_3:get().Name
				end
				return ""
			end);
		})};
	})
	tbl[2] = New_upvr("Frame")(tbl_2)
	module_3[Children_upvr] = tbl
	return New_upvr("Frame")(module_3)
end