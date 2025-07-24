-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:18
-- Luau version 6, Types version 3
-- Time taken: 0.019545 seconds

local Parent = script.Parent.Parent.Parent.Parent
local BloxbizRemotes = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local module_4_upvr = require(script.Parent.Parent.Parent.Classes:WaitForChild("InventoryHandler"))
local module_5_upvr = require(Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local OnEvent_upvr = module_5_upvr.OnEvent
local Children_upvr = module_5_upvr.Children
local New_upvr = module_5_upvr.New
local Ref_upvr = module_5_upvr.Ref
local Computed_upvr = module_5_upvr.Computed
local Observer_upvr = module_5_upvr.Observer
local Spring_upvr = module_5_upvr.Spring
local Cleanup_upvr = module_5_upvr.Cleanup
local Value_upvr = module_5_upvr.Value
local module_7_upvr = {
	Default = Color3.fromRGB(20, 20, 20);
	Hover = Color3.fromRGB(30, 30, 30);
	MouseDown = Color3.fromRGB(0, 0, 0);
}
local module_3_upvr = {
	Color = {
		Default = Color3.fromRGB(79, 173, 116);
		MouseDown = Color3.fromRGB(57, 95, 73);
		Disabled = Color3.fromRGB(77, 121, 95);
	};
	Size = {
		Default = UDim2.fromScale(0.9, 0.2);
		Hover = UDim2.fromScale(0.925, 0.205);
	};
}
local tbl_5_upvr = {
	Color = {
		Default = Color3.fromRGB(255, 255, 255);
		MouseDown = Color3.fromRGB(153, 153, 153);
	};
	Size = {
		Default = UDim2.fromScale(0.9, 0.2);
		Hover = UDim2.fromScale(0.925, 0.205);
	};
}
local Font_new_result1_upvr = Font.new("rbxasset://fonts/families/GothamSSm.json")
local any_read_result1_upvr = require(Parent:WaitForChild("ConfigReader")):read("CatalogPurchaseBlockList")
local function GetPurchaseStatus_upvr(arg1, arg2, arg3, arg4) -- Line 77, Named "GetPurchaseStatus"
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: any_read_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var24
	if not arg3 then
		if arg2 == false then
			if arg4 then
				-- KONSTANTWARNING: GOTO [22] #20
			end
		else
		end
	else
	end
	if table.find(any_read_result1_upvr, arg1) then
		local var25
		var24 = false
	end
	if var24 then
	elseif not var25 then
	end
	return "Off-Sale", var25, false
end
local function _(arg1, arg2) -- Line 116, Named "GetItemPrice"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var29
	if not arg1.IsForSale and arg2 then
		if arg2.Price then
			var29 = arg2.Price
		end
	end
	if 0 >= var29 or not tostring(var29) then
	end
	if true then
	else
	end
	return "Free"..""
end
local function _(arg1, arg2) -- Line 132, Named "GetLimitedText"
	if arg1 == 1 then
		return string.format("<font color=\"rgb(23,188,81)\">LIMITED</font> <font color=\"#F2F51C\"><b>QTY: %d</b></font>", arg2)
	end
	return "<font color=\"rgb(23,188,81)\">LIMITED</font>"
end
local catalogItemPromptEvent_upvr = BloxbizRemotes:WaitForChild("catalogItemPromptEvent")
local CatalogOnPromptPurchase_upvr = BloxbizRemotes:WaitForChild("CatalogOnPromptPurchase")
local function BuyButton_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 143, Named "BuyButton"
	--[[ Upvalues[14]:
		[1]: Value_upvr (readonly)
		[2]: Observer_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: module_3_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: Cleanup_upvr (readonly)
		[8]: OnEvent_upvr (readonly)
		[9]: module_4_upvr (readonly)
		[10]: catalogItemPromptEvent_upvr (readonly)
		[11]: CatalogOnPromptPurchase_upvr (readonly)
		[12]: module_5_upvr (readonly)
		[13]: Children_upvr (readonly)
		[14]: Ref_upvr (readonly)
	]]
	local Value_upvr_result1_upvr_4 = Value_upvr(false)
	local var14_result1_upvr_2 = Value_upvr(false)
	local var14_result1_upvr_8 = Value_upvr(false)
	local var14_result1_upvr_7 = Value_upvr()
	local module_6 = {
		Name = "BuyButton";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		AutoButtonColor = false;
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 180
			--[[ Upvalues[4]:
				[1]: var14_result1_upvr_8 (readonly)
				[2]: arg2 (readonly)
				[3]: var14_result1_upvr_2 (readonly)
				[4]: module_3_upvr (copied, readonly)
			]]
			if var14_result1_upvr_8:get() == false then
				local var43
				if var43 then
					local function INLINED_4() -- Internal function, doesn't exist in bytecode
						var43 = module_3_upvr.Color.MouseDown
						return var43
					end
					if not var14_result1_upvr_2:get() or not INLINED_4() then
						var43 = module_3_upvr.Color.Default
					end
					return var43
				end
			end
			return module_3_upvr.Color.Disabled
		end), 40, 1);
	}
	module_6.BackgroundTransparency = arg6
	module_6.Position = UDim2.fromScale(0.5, 0.275)
	module_6.Size = Spring_upvr(Computed_upvr(function() -- Line 166
		--[[ Upvalues[4]:
			[1]: var14_result1_upvr_8 (readonly)
			[2]: arg2 (readonly)
			[3]: Value_upvr_result1_upvr_4 (readonly)
			[4]: module_3_upvr (copied, readonly)
		]]
		if var14_result1_upvr_8:get() == false then
			local var41
			if var41 then
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var41 = module_3_upvr.Size.Hover
					return var41
				end
				if not Value_upvr_result1_upvr_4:get() or not INLINED_3() then
					var41 = module_3_upvr.Size.Default
				end
				return var41
			end
		end
		return module_3_upvr.Size.Default
	end), 40, 1)
	local any_onChange_result1_upvr = Observer_upvr(var14_result1_upvr_8):onChange(function() -- Line 158
		--[[ Upvalues[2]:
			[1]: var14_result1_upvr_7 (readonly)
			[2]: var14_result1_upvr_8 (readonly)
		]]
		local any_get_result1 = var14_result1_upvr_7:get()
		local var38
		if any_get_result1 then
			if var14_result1_upvr_8:get() then
				var38 = "Owned"
			else
				var38 = "Buy"
			end
			any_get_result1.Text = var38
		end
	end)
	module_6[Cleanup_upvr] = function() -- Line 207
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr (readonly)
		]]
		any_onChange_result1_upvr()
	end
	module_6[OnEvent_upvr("Activated")] = function() -- Line 211
		--[[ Upvalues[8]:
			[1]: arg6 (readonly)
			[2]: arg2 (readonly)
			[3]: module_4_upvr (copied, readonly)
			[4]: catalogItemPromptEvent_upvr (copied, readonly)
			[5]: arg4 (readonly)
			[6]: CatalogOnPromptPurchase_upvr (copied, readonly)
			[7]: arg5 (readonly)
			[8]: var14_result1_upvr_8 (readonly)
		]]
		if arg6:get() < 0.1 and arg2 then
			if not module_4_upvr.ownsAsset(arg2) then
				catalogItemPromptEvent_upvr:FireServer(arg4)
				CatalogOnPromptPurchase_upvr:InvokeServer(arg2, arg5)
				return
			end
			var14_result1_upvr_8:set(true)
		end
	end
	module_6[Cleanup_upvr] = module_5_upvr.cleanup
	module_6[OnEvent_upvr("MouseButton1Down")] = function() -- Line 225
		--[[ Upvalues[1]:
			[1]: var14_result1_upvr_2 (readonly)
		]]
		var14_result1_upvr_2:set(true)
	end
	module_6[OnEvent_upvr("MouseButton1Up")] = function() -- Line 229
		--[[ Upvalues[1]:
			[1]: var14_result1_upvr_2 (readonly)
		]]
		var14_result1_upvr_2:set(false)
	end
	module_6[OnEvent_upvr("MouseEnter")] = function() -- Line 233
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_4 (readonly)
		]]
		Value_upvr_result1_upvr_4:set(true)
	end
	module_6[OnEvent_upvr("MouseLeave")] = function() -- Line 237
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_4 (readonly)
			[2]: var14_result1_upvr_2 (readonly)
		]]
		Value_upvr_result1_upvr_4:set(false)
		var14_result1_upvr_2:set(false)
	end
	local tbl_15 = {}
	local tbl_7 = {
		Name = "TextLabel";
	}
	tbl_7.Text = arg1
	tbl_7.TextColor3 = Color3.fromRGB(255, 255, 255)
	tbl_7.TextScaled = true
	tbl_7.TextSize = 14
	tbl_7.TextTransparency = arg6
	tbl_7.TextWrapped = true
	tbl_7.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_7.BackgroundTransparency = 1
	tbl_7.Position = UDim2.fromScale(0.5, 0.5)
	tbl_7.Size = UDim2.fromScale(0.8, 0.4)
	tbl_7[Ref_upvr] = var14_result1_upvr_7
	tbl_15[1] = New_upvr("TextLabel")(tbl_7)
	tbl_15[2] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.15, 0);
	})
	module_6[Children_upvr] = tbl_15
	return var14_result1_upvr_8, New_upvr("TextButton")(module_6)
end
local function UpdateItemButton_upvr(arg1, arg2) -- Line 271, Named "UpdateItemButton"
	--[[ Upvalues[9]:
		[1]: Value_upvr (readonly)
		[2]: Spring_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: OnEvent_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: Font_new_result1_upvr (readonly)
		[9]: Ref_upvr (readonly)
	]]
	local Value_upvr_result1_upvr_2 = Value_upvr(false)
	local var14_result1_upvr_4 = Value_upvr(false)
	local module_2 = {
		Name = "RemoveButton";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		AutoButtonColor = false;
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 286
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr_4 (readonly)
				[2]: tbl_5_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 5. Error Block 8 start (CF ANALYSIS FAILED)
			local MouseDown = tbl_5_upvr.Color.MouseDown
			if not MouseDown then
				-- KONSTANTERROR: [11] 9. Error Block 6 start (CF ANALYSIS FAILED)
				MouseDown = tbl_5_upvr.Color.Default
				-- KONSTANTERROR: [11] 9. Error Block 6 end (CF ANALYSIS FAILED)
			end
			do
				return MouseDown
			end
			-- KONSTANTERROR: [5] 5. Error Block 8 end (CF ANALYSIS FAILED)
		end), 40, 1);
	}
	module_2.BackgroundTransparency = arg2
	module_2.Position = UDim2.fromScale(0.5, 0.525)
	module_2.Size = Spring_upvr(Computed_upvr(function() -- Line 278
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
			[2]: tbl_5_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 8 start (CF ANALYSIS FAILED)
		local Hover = tbl_5_upvr.Size.Hover
		if not Hover then
			-- KONSTANTERROR: [11] 9. Error Block 6 start (CF ANALYSIS FAILED)
			Hover = tbl_5_upvr.Size.Default
			-- KONSTANTERROR: [11] 9. Error Block 6 end (CF ANALYSIS FAILED)
		end
		do
			return Hover
		end
		-- KONSTANTERROR: [5] 5. Error Block 8 end (CF ANALYSIS FAILED)
	end), 40, 1)
	module_2[OnEvent_upvr("Activated")] = function() -- Line 307
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1()
	end
	module_2[OnEvent_upvr("MouseButton1Down")] = function() -- Line 311
		--[[ Upvalues[1]:
			[1]: var14_result1_upvr_4 (readonly)
		]]
		var14_result1_upvr_4:set(true)
	end
	module_2[OnEvent_upvr("MouseButton1Up")] = function() -- Line 315
		--[[ Upvalues[1]:
			[1]: var14_result1_upvr_4 (readonly)
		]]
		var14_result1_upvr_4:set(false)
	end
	module_2[OnEvent_upvr("MouseEnter")] = function() -- Line 319
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
		]]
		Value_upvr_result1_upvr_2:set(true)
	end
	module_2[OnEvent_upvr("MouseLeave")] = function() -- Line 323
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
			[2]: var14_result1_upvr_4 (readonly)
		]]
		Value_upvr_result1_upvr_2:set(false)
		var14_result1_upvr_4:set(false)
	end
	local tbl_6 = {}
	local tbl_8 = {
		Name = "TextLabel";
		Text = "Remove";
		FontFace = Font_new_result1_upvr;
		TextColor3 = Color3.fromRGB(20, 20, 20);
		TextScaled = true;
		TextSize = 14;
	}
	tbl_8.TextTransparency = arg2
	tbl_8.TextWrapped = true
	tbl_8.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_8.BackgroundTransparency = 1
	tbl_8.Position = UDim2.fromScale(0.5, 0.5)
	tbl_8.Size = UDim2.fromScale(0.8, 0.4)
	tbl_8[Ref_upvr] = Value_upvr()
	tbl_6[1] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.15, 0);
	})
	tbl_6[2] = New_upvr("TextLabel")(tbl_8)
	module_2[Children_upvr] = tbl_6
	return New_upvr("TextButton")(module_2)
end
local function ItemPrice_upvr(arg1) -- Line 357, Named "ItemPrice"
	--[[ Upvalues[2]:
		[1]: New_upvr (readonly)
		[2]: Children_upvr (readonly)
	]]
	local module = {
		Name = "ItemPrice";
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.959);
		Size = UDim2.fromScale(0.9, 0.07);
	}
	local tbl_20 = {}
	local tbl_11 = {
		Name = "Amount";
	}
	tbl_11.Text = arg1
	tbl_11.TextColor3 = Color3.fromRGB(255, 255, 255)
	tbl_11.TextScaled = true
	tbl_11.TextSize = 14
	tbl_11.TextWrapped = true
	tbl_11.TextXAlignment = Enum.TextXAlignment.Left
	tbl_11.AnchorPoint = Vector2.new(1, 0.5)
	tbl_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_11.BackgroundTransparency = 1
	tbl_11.Position = UDim2.fromScale(1, 0.5)
	tbl_11.Size = UDim2.fromScale(0.85, 1)
	tbl_20[1] = New_upvr("TextLabel")(tbl_11)
	tbl_20[2] = New_upvr("ImageLabel")({
		Name = "Icon";
		Image = "rbxassetid://9764949186";
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
	})
	module[Children_upvr] = tbl_20
	return New_upvr("Frame")(module)
end
return function(arg1, arg2, arg3, arg4) -- Line 394
	--[[ Upvalues[15]:
		[1]: Value_upvr (readonly)
		[2]: Spring_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: module_7_upvr (readonly)
		[5]: Observer_upvr (readonly)
		[6]: GetPurchaseStatus_upvr (readonly)
		[7]: BuyButton_upvr (readonly)
		[8]: UpdateItemButton_upvr (readonly)
		[9]: ItemPrice_upvr (readonly)
		[10]: New_upvr (readonly)
		[11]: Cleanup_upvr (readonly)
		[12]: Children_upvr (readonly)
		[13]: Ref_upvr (readonly)
		[14]: Font_new_result1_upvr (readonly)
		[15]: OnEvent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	local var112
	if var112 == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	var112 = arg2.AssetId
	if not var112 then
		var112 = arg2.BundleId
	end
	local var14_result1_upvr_5 = Value_upvr(false)
	local var14_result1_upvr_10 = Value_upvr(false)
	local var14_result1_upvr = Value_upvr(false)
	local var12_result1_upvr_2 = Spring_upvr(Computed_upvr(function() -- Line 408
		--[[ Upvalues[1]:
			[1]: var14_result1_upvr (readonly)
		]]
		if var14_result1_upvr:get() then
			return 0
		end
		return 1
	end), 20, 1)
	local Value_upvr_result1_upvr = Value_upvr()
	local GetPurchaseStatus_upvr_result1_2, GetPurchaseStatus_result2, GetPurchaseStatus_upvr_result3 = GetPurchaseStatus_upvr(var112, arg2.IsForSale, true)
	local BuyButton_upvr_result1, BuyButton_result2 = BuyButton_upvr(GetPurchaseStatus_upvr_result1_2, GetPurchaseStatus_result2, arg2, arg1, GetPurchaseStatus_upvr_result3, var12_result1_upvr_2)
	local var128
	if not arg2.IsForSale and arg3 then
		if arg3.Price then
			var128 = arg3.Price
		end
	end
	if 0 >= var128 or not tostring(var128) then
	end
	if true then
		-- KONSTANTWARNING: GOTO [106] #94
	end
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [105] 93. Error Block 49 start (CF ANALYSIS FAILED)
	local tbl_3 = {
		Name = arg2.AssetId;
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 424
			--[[ Upvalues[3]:
				[1]: var14_result1_upvr_10 (readonly)
				[2]: module_7_upvr (copied, readonly)
				[3]: var14_result1_upvr_5 (readonly)
			]]
			if var14_result1_upvr_10:get() then
				return module_7_upvr.MouseDown
			end
			if var14_result1_upvr_5:get() then
				return module_7_upvr.Hover
			end
			return module_7_upvr.Default
		end), 20, 1);
		BackgroundTransparency = 0.35;
		Size = UDim2.fromOffset(100, 100);
		Visible = true;
	}
	local any_onChange_result1_upvr_2 = Observer_upvr(var12_result1_upvr_2):onChange(function() -- Line 440
		--[[ Upvalues[2]:
			[1]: var12_result1_upvr_2 (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
		]]
		if var12_result1_upvr_2:get() < 0.8 then
			Value_upvr_result1_upvr:get().Visible = true
		else
			Value_upvr_result1_upvr:get().Visible = false
		end
	end)
	tbl_3[Cleanup_upvr] = function() -- Line 464
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr_2 (readonly)
		]]
		any_onChange_result1_upvr_2()
	end
	local tbl_12 = {}
	local tbl_10 = {
		Name = "Limited";
		FontFace = Font_new_result1_upvr;
	}
	if arg2.IsLimited == 1 then
	else
	end
	tbl_10.Text = "<font color=\"rgb(23,188,81)\">LIMITED</font>"
	tbl_10.RichText = true
	tbl_10.TextColor3 = Color3.fromRGB(23, 188, 81)
	tbl_10.TextScaled = true
	tbl_10.TextSize = 14
	tbl_10.TextWrapped = true
	tbl_10.TextXAlignment = Enum.TextXAlignment.Left
	tbl_10.AnchorPoint = Vector2.new(0.5, 1)
	tbl_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_10.BackgroundTransparency = 1
	tbl_10.Position = UDim2.fromScale(0.5, 0.8)
	tbl_10.Size = UDim2.fromScale(0.9, 0.05)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not true then
		if 0 >= arg2.IsLimited then
		else
		end
	end
	tbl_10.Visible = true
	tbl_12[1] = New_upvr("ImageLabel")({
		Name = "Preview";
		Image = "rbxthumb://type=%s&id=%s&w=150&h=150":format("Asset", var112);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.4);
		Size = UDim2.fromScale(0.9, 0.9);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
	})
	tbl_12[2] = New_upvr("Frame")({
		Name = "HoverFrame";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = Spring_upvr(Computed_upvr(function() -- Line 416
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr (readonly)
			]]
			if var14_result1_upvr:get() then
				return 0.5
			end
			return 1
		end), 20, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		Visible = false;
		ZIndex = 2;
		[Ref_upvr] = Value_upvr_result1_upvr;
		[Children_upvr] = {New_upvr("UICorner")({
			Name = "UICorner";
			CornerRadius = UDim.new(0.05, 0);
		}), BuyButton_result2, UpdateItemButton_upvr(arg4.OnTry, var12_result1_upvr_2)};
	})
	tbl_12[3] = ItemPrice_upvr("Free".."")
	tbl_12[4] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.05, 0);
	})
	tbl_12[5] = New_upvr("TextLabel")({
		Name = "ItemName";
		Text = arg2.Name;
		AutoLocalize = false;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.875);
		Size = UDim2.fromScale(0.9, 0.07);
	})
	tbl_12[6] = New_upvr("TextLabel")(tbl_10)
	tbl_12[7] = New_upvr("TextButton")({
		Name = "Button";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextSize = 14;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 560
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_10 (readonly)
			]]
			var14_result1_upvr_10:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 564
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_10 (readonly)
			]]
			var14_result1_upvr_10:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 568
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			var14_result1_upvr_5:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 572
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: var14_result1_upvr_10 (readonly)
			]]
			var14_result1_upvr_5:set(false)
			var14_result1_upvr_10:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 577
			--[[ Upvalues[2]:
				[1]: arg4 (readonly)
				[2]: var14_result1_upvr (readonly)
			]]
			if arg4.OnActivated then
				arg4.OnActivated(var14_result1_upvr)
			end
		end;
	})
	tbl_3[Children_upvr] = tbl_12
	do
		return {
			Selected = var14_result1_upvr;
			Disabled = BuyButton_upvr_result1;
			Instance = New_upvr("Frame")(tbl_3);
		}
	end
	-- KONSTANTERROR: [105] 93. Error Block 49 end (CF ANALYSIS FAILED)
end