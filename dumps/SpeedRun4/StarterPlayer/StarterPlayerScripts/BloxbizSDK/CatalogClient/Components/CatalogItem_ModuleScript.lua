-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:00
-- Luau version 6, Types version 3
-- Time taken: 0.009639 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local New_upvr = module_2_upvr.New
local Children_upvr = module_2_upvr.Children
local Computed_upvr = module_2_upvr.Computed
local module_5_upvr = {
	Color = {
		Default = Color3.fromRGB(79, 84, 95);
		Hover = Color3.fromRGB(107, 114, 129);
		MouseDown = Color3.fromRGB(76, 80, 90);
	};
	PreviewFormat = "rbxthumb://type=%s&id=%s&w=150&h=150";
	Font = Font.new("rbxasset://fonts/families/GothamSSm.json");
}
local function ItemPrice_upvr(arg1, arg2) -- Line 41, Named "ItemPrice"
	--[[ Upvalues[3]:
		[1]: New_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: module_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var17
	if not arg1.IsForSale and arg2 then
		if arg2.Price then
			var17 = arg2.Price
		end
	end
	if 0 >= var17 or not tostring(var17) then
	end
	if true then
	else
	end
	return New_upvr("Frame")({
		Name = "ItemPrice";
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.959);
		Size = UDim2.fromScale(0.9, 0.07);
		[Children_upvr] = {New_upvr("TextLabel")({
			Name = "Amount";
			Text = "Free".."";
			FontFace = module_5_upvr.Font;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 14;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			AnchorPoint = Vector2.new(1, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(1, 0.5);
			Size = UDim2.fromScale(0.85, 1);
		}), New_upvr("ImageLabel")({
			Name = "Icon";
			Image = "rbxassetid://9764949186";
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
		})};
	})
end
local function ItemPreview_upvr(arg1) -- Line 94, Named "ItemPreview"
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: module_5_upvr (readonly)
	]]
	local module_3 = {
		Name = "Preview";
	}
	local any_GetValues_result1_upvw_3 = module_upvr.GetValues(arg1, {
		IsBundle = false;
		AssetId = module_upvr.Required;
	})
	module_3.Image = Computed_upvr(function() -- Line 102
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw_3 (read and write)
			[2]: module_5_upvr (copied, readonly)
		]]
		local any_get_result1_3 = any_GetValues_result1_upvw_3.AssetId:get()
		local var27
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var27 = module_5_upvr.PreviewFormat:format("BundleThumbnail", any_get_result1_3)
			return var27
		end
		if not any_GetValues_result1_upvw_3.IsBundle:get() or not INLINED_2() then
			var27 = module_5_upvr.PreviewFormat:format("Asset", any_get_result1_3)
		end
		return var27
	end)
	module_3.AnchorPoint = Vector2.new(0.5, 0.5)
	module_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	module_3.BackgroundTransparency = 1
	module_3.Position = UDim2.fromScale(0.5, 0.4)
	module_3.Size = UDim2.fromScale(0.9, 0.9)
	module_3.SizeConstraint = Enum.SizeConstraint.RelativeXX
	return New_upvr("ImageLabel")(module_3)
end
local function LimitedText_upvr(arg1) -- Line 117, Named "LimitedText"
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: module_5_upvr (readonly)
	]]
	local any_GetValues_result1_upvw_2 = module_upvr.GetValues(arg1, {
		LimitedType = 0;
		Quantity = module_upvr.Nil;
		IsBundle = false;
	})
	return New_upvr("TextLabel")({
		Name = "Limited";
		FontFace = module_5_upvr.Font;
		Text = Computed_upvr(function() -- Line 124
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw_2 (read and write)
			]]
			if any_GetValues_result1_upvw_2.LimitedType:get() == 1 then
				return string.format("<font color=\"rgb(23,188,81)\">LIMITED</font> <font color=\"#F2F51C\"><b>QTY: %d</b></font>", any_GetValues_result1_upvw_2.Quantity:get())
			end
			return "<font color=\"rgb(23,188,81)\">LIMITED</font>"
		end);
		RichText = true;
		TextColor3 = Color3.fromRGB(23, 188, 81);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.8);
		Size = UDim2.fromScale(0.9, 0.05);
		Visible = Computed_upvr(function() -- Line 153
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw_2 (read and write)
			]]
			local var33 = not any_GetValues_result1_upvw_2.IsBundle:get()
			if var33 then
				if 0 >= any_GetValues_result1_upvw_2.LimitedType:get() then
					var33 = false
				else
					var33 = true
				end
			end
			return var33
		end);
	})
end
local function ItemName_upvr(arg1) -- Line 159, Named "ItemName"
	--[[ Upvalues[2]:
		[1]: New_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	local module = {
		Name = "ItemName";
	}
	module.Text = arg1
	module.FontFace = module_5_upvr.Font
	module.TextColor3 = Color3.fromRGB(255, 255, 255)
	module.TextScaled = true
	module.TextSize = 14
	module.TextWrapped = true
	module.TextXAlignment = Enum.TextXAlignment.Left
	module.AnchorPoint = Vector2.new(0.5, 1)
	module.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	module.BackgroundTransparency = 1
	module.Position = UDim2.fromScale(0.5, 0.875)
	module.Size = UDim2.fromScale(0.9, 0.07)
	module.AutoLocalize = false
	return New_upvr("TextLabel")(module)
end
local Value_upvr = module_2_upvr.Value
local Spring_upvr = module_2_upvr.Spring
local InteractionFrame_upvr = require(script.InteractionFrame)
local BuyButton_upvr = require(script.InteractionFrame.BuyButton)
local TryButton_upvr = require(script.InteractionFrame.TryButton)
local SeeItemsButton_upvr = require(script.InteractionFrame.SeeItemsButton)
local OnEvent_upvr = module_2_upvr.OnEvent
return function(arg1) -- Line 178
	--[[ Upvalues[17]:
		[1]: module_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: Spring_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: ItemName_upvr (readonly)
		[9]: ItemPreview_upvr (readonly)
		[10]: ItemPrice_upvr (readonly)
		[11]: module_2_upvr (readonly)
		[12]: LimitedText_upvr (readonly)
		[13]: InteractionFrame_upvr (readonly)
		[14]: BuyButton_upvr (readonly)
		[15]: TryButton_upvr (readonly)
		[16]: SeeItemsButton_upvr (readonly)
		[17]: OnEvent_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Parent = module_upvr.Nil;
		LayoutOrder = 1;
		Size = UDim2.fromOffset(100, 100);
		AvatarPreviewController = module_upvr.Required;
		ItemData = module_upvr.Required;
		CategoryName = module_upvr.Required;
		SourceBundleInfo = module_upvr.Nil;
		InventoryVariant = module_upvr.Nil;
		SelectedId = module_upvr.Nil;
		OnTry = module_upvr.Nil;
		OnSeeItems = module_upvr.Callback;
		BackgroundColor3 = Color3.fromRGB(79, 84, 95);
		BackgroundTransparency = 0;
	})
	local var7_result1_upvr = Computed_upvr(function() -- Line 198
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local var46
		if any_GetValues_result1_upvw.ItemData:get().BundleId == nil then
			var46 = false
		else
			var46 = true
		end
		return var46
	end)
	local var7_result1_upvr_3 = Computed_upvr(function() -- Line 201
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local AssetId = any_GetValues_result1_upvw.ItemData:get().AssetId
		if not AssetId then
			AssetId = any_GetValues_result1_upvw.ItemData:get().BundleId
		end
		return AssetId
	end)
	local var36_result1_upvr = Value_upvr(false)
	local var36_result1_upvr_2 = Value_upvr(false)
	local module_6 = {
		Parent = any_GetValues_result1_upvw.Parent;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		Name = Computed_upvr(function() -- Line 232
			--[[ Upvalues[1]:
				[1]: var7_result1_upvr_3 (readonly)
			]]
			return tostring(var7_result1_upvr_3:get())
		end);
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 215
			--[[ Upvalues[4]:
				[1]: var36_result1_upvr_2 (readonly)
				[2]: module_5_upvr (copied, readonly)
				[3]: var36_result1_upvr (readonly)
				[4]: any_GetValues_result1_upvw (read and write)
			]]
			if var36_result1_upvr_2:get() then
				return module_5_upvr.Color.MouseDown
			end
			if var36_result1_upvr:get() then
				return module_5_upvr.Color.Hover
			end
			return any_GetValues_result1_upvw.BackgroundColor3:get()
		end), 20, 1);
		BackgroundTransparency = any_GetValues_result1_upvw.BackgroundTransparency;
		Size = any_GetValues_result1_upvw.Size;
		Visible = true;
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
	}
	local tbl_6 = {}
	local tbl_5 = {
		Selected = Computed_upvr(function() -- Line 260
			--[[ Upvalues[2]:
				[1]: var7_result1_upvr_3 (readonly)
				[2]: any_GetValues_result1_upvw (read and write)
			]]
			local var66
			if var7_result1_upvr_3:get() ~= any_GetValues_result1_upvw.SelectedId:get() then
				var66 = false
			else
				var66 = true
			end
			return var66
		end);
	}
	local tbl = {}
	local var7_result1_upvr_2 = Computed_upvr(function() -- Line 208
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var7_result1_upvr_3 (readonly)
		]]
		return not not any_GetValues_result1_upvw.AvatarPreviewController:get().EquippedItems:get()[tostring(var7_result1_upvr_3:get())]
	end)
	tbl[1] = Computed_upvr(function() -- Line 264
		--[[ Upvalues[2]:
			[1]: BuyButton_upvr (copied, readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		return BuyButton_upvr(any_GetValues_result1_upvw.ItemData:get(), any_GetValues_result1_upvw.CategoryName:get(), any_GetValues_result1_upvw.SourceBundleInfo:get())
	end, module_2_upvr.cleanup)
	tbl[2] = Computed_upvr(function() -- Line 271
		--[[ Upvalues[3]:
			[1]: TryButton_upvr (copied, readonly)
			[2]: var7_result1_upvr_2 (readonly)
			[3]: any_GetValues_result1_upvw (read and write)
		]]
		return TryButton_upvr(var7_result1_upvr_2, function() -- Line 274
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (copied, read and write)
			]]
			local any_get_result1_2 = any_GetValues_result1_upvw.OnTry:get()
			if any_get_result1_2 then
				any_get_result1_2()
			else
				local any_get_result1 = any_GetValues_result1_upvw.AvatarPreviewController:get()
				any_get_result1.AddChange(any_get_result1, any_GetValues_result1_upvw.ItemData:get(), any_GetValues_result1_upvw.CategoryName:get())
			end
		end)
	end, module_2_upvr.cleanup)
	tbl[3] = Computed_upvr(function() -- Line 286
		--[[ Upvalues[4]:
			[1]: var7_result1_upvr (readonly)
			[2]: SeeItemsButton_upvr (copied, readonly)
			[3]: any_GetValues_result1_upvw (read and write)
			[4]: var7_result1_upvr_3 (readonly)
		]]
		if var7_result1_upvr:get() then
			return SeeItemsButton_upvr(function() -- Line 288
				--[[ Upvalues[2]:
					[1]: any_GetValues_result1_upvw (copied, read and write)
					[2]: var7_result1_upvr_3 (copied, readonly)
				]]
				any_GetValues_result1_upvw.OnSeeItems:get()(var7_result1_upvr_3:get())
			end)
		end
	end, module_2_upvr.cleanup)
	tbl_5[Children_upvr] = tbl
	tbl_6[1] = ItemName_upvr(Computed_upvr(function() -- Line 242
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		return any_GetValues_result1_upvw.ItemData:get().Name
	end))
	tbl_6[2] = ItemPreview_upvr({
		AssetId = var7_result1_upvr_3;
		IsBundle = var7_result1_upvr;
	})
	tbl_6[3] = Computed_upvr(function() -- Line 249
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: ItemPrice_upvr (copied, readonly)
		]]
		if not any_GetValues_result1_upvw.InventoryVariant:get() then
			return ItemPrice_upvr(any_GetValues_result1_upvw.ItemData:get(), any_GetValues_result1_upvw.SourceBundleInfo:get())
		end
	end, module_2_upvr.cleanup)
	tbl_6[4] = LimitedText_upvr({
		LimitedType = Computed_upvr(function() -- Line 255
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return any_GetValues_result1_upvw.ItemData:get().IsLimited
		end);
		Quantity = Computed_upvr(function() -- Line 256
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return any_GetValues_result1_upvw.ItemData:get().Available
		end);
		IsBundle = var7_result1_upvr;
	})
	tbl_6[5] = InteractionFrame_upvr(tbl_5)
	tbl_6[6] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.05, 0);
	})
	tbl_6[7] = New_upvr("TextButton")({
		Name = "Button";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextSize = 14;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		AutoLocalize = false;
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 312
			--[[ Upvalues[1]:
				[1]: var36_result1_upvr_2 (readonly)
			]]
			var36_result1_upvr_2:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 316
			--[[ Upvalues[1]:
				[1]: var36_result1_upvr_2 (readonly)
			]]
			var36_result1_upvr_2:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 320
			--[[ Upvalues[1]:
				[1]: var36_result1_upvr (readonly)
			]]
			var36_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 324
			--[[ Upvalues[2]:
				[1]: var36_result1_upvr (readonly)
				[2]: var36_result1_upvr_2 (readonly)
			]]
			var36_result1_upvr:set(false)
			var36_result1_upvr_2:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 329
			--[[ Upvalues[2]:
				[1]: any_GetValues_result1_upvw (read and write)
				[2]: var7_result1_upvr_3 (readonly)
			]]
			if any_GetValues_result1_upvw.SelectedId:get() == var7_result1_upvr_3:get() then
				any_GetValues_result1_upvw.SelectedId:set(nil)
			else
				any_GetValues_result1_upvw.SelectedId:set(var7_result1_upvr_3:get())
			end
		end;
	})
	module_6[Children_upvr] = tbl_6
	return New_upvr("Frame")(module_6)
end