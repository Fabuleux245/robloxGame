-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:09
-- Luau version 6, Types version 3
-- Time taken: 0.006189 seconds

local Parent = script.Parent.Parent.Parent.Parent
local BloxbizRemotes = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local module = require(Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local module_3_upvr = require(Parent:FindFirstChild("CatalogClient").Classes:WaitForChild("InventoryHandler"))
local module_2_upvr = {
	DefaultFont = Font.new("rbxasset://fonts/families/GothamSSm.json");
	ItemColor = {
		Default = Color3.fromRGB(79, 84, 95);
		Hover = Color3.fromRGB(107, 114, 129);
		MouseDown = Color3.fromRGB(76, 80, 90);
	};
	ButtonColor = {
		Default = Color3.fromRGB(79, 173, 116);
		MouseDown = Color3.fromRGB(57, 95, 73);
		Disabled = Color3.fromRGB(77, 121, 95);
	};
	TextColor = {
		Enabled = Color3.fromRGB(255, 255, 255);
		Disabled = Color3.fromRGB(120, 125, 136);
	};
	Size = {
		Default = UDim2.fromScale(0.9, 0.2);
		Hover = UDim2.fromScale(0.925, 0.205);
	};
}
local any_read_result1_upvr = require(Parent:WaitForChild("ConfigReader")):read("CatalogPurchaseBlockList")
local function GetPurchaseStatus_upvr(arg1, arg2, arg3, arg4) -- Line 58, Named "GetPurchaseStatus"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: any_read_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12
	if not arg3 then
		if arg2 == false then
			if arg4 then
				-- KONSTANTWARNING: GOTO [23] #21
			end
		else
		end
	else
	end
	if table.find(any_read_result1_upvr, arg1) then
		local var13
		var12 = false
	end
	if var12 then
	elseif not var13 then
	end
	return "Off-Sale", var13, false
end
local Value_upvr = module.Value
local Observer_upvr = module.Observer
local Spring_upvr = module.Spring
local Computed_upvr = module.Computed
local catalogItemPromptEvent_upvr = BloxbizRemotes:WaitForChild("catalogItemPromptEvent")
local CatalogOnPromptPurchase_upvr = BloxbizRemotes:WaitForChild("CatalogOnPromptPurchase")
local ItemButton_upvr = require(script.Parent.Parent.ItemButton)
return function(arg1, arg2, arg3, arg4) -- Line 103
	--[[ Upvalues[10]:
		[1]: GetPurchaseStatus_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Observer_upvr (readonly)
		[4]: Spring_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: module_3_upvr (readonly)
		[8]: catalogItemPromptEvent_upvr (readonly)
		[9]: CatalogOnPromptPurchase_upvr (readonly)
		[10]: ItemButton_upvr (readonly)
	]]
	local var22
	if arg1.BundleId == nil then
		var22 = false
	else
		var22 = true
	end
	local AssetId = arg1.AssetId
	if not AssetId then
		AssetId = arg1.BundleId
	end
	local GetPurchaseStatus_result1, GetPurchaseStatus_upvr_result2_upvr, GetPurchaseStatus_result3_upvr = GetPurchaseStatus_upvr(AssetId, arg1.IsForSale, var22, arg3)
	local var15_result1_upvr_2 = Value_upvr(false)
	local Value_upvr_result1_upvr = Value_upvr(false)
	local var15_result1_upvr = Value_upvr(false)
	local var31_upvw
	local tbl = {}
	tbl.TextTransparency = arg4
	tbl.ButtonBackgroundColor = Spring_upvr(Computed_upvr(function() -- Line 142
		--[[ Upvalues[4]:
			[1]: var15_result1_upvr (readonly)
			[2]: GetPurchaseStatus_upvr_result2_upvr (readonly)
			[3]: Value_upvr_result1_upvr (readonly)
			[4]: module_2_upvr (copied, readonly)
		]]
		if var15_result1_upvr:get() == false then
			local var37
			if var37 then
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var37 = module_2_upvr.ButtonColor.MouseDown
					return var37
				end
				if not Value_upvr_result1_upvr:get() or not INLINED_3() then
					var37 = module_2_upvr.ButtonColor.Default
				end
				return var37
			end
		end
		return module_2_upvr.ButtonColor.Disabled
	end), 40, 1)
	tbl.ButtonSize = Spring_upvr(Computed_upvr(function() -- Line 128
		--[[ Upvalues[4]:
			[1]: var15_result1_upvr (readonly)
			[2]: GetPurchaseStatus_upvr_result2_upvr (readonly)
			[3]: var15_result1_upvr_2 (readonly)
			[4]: module_2_upvr (copied, readonly)
		]]
		if var15_result1_upvr:get() == false then
			local var35
			if var35 then
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var35 = module_2_upvr.Size.Hover
					return var35
				end
				if not var15_result1_upvr_2:get() or not INLINED_2() then
					var35 = module_2_upvr.Size.Default
				end
				return var35
			end
		end
		return module_2_upvr.Size.Default
	end), 40, 1)
	local any_onChange_result1_upvr = Observer_upvr(var15_result1_upvr):onChange(function() -- Line 121
		--[[ Upvalues[2]:
			[1]: var31_upvw (read and write)
			[2]: var15_result1_upvr (readonly)
		]]
		local var32
		if var31_upvw then
			if var15_result1_upvr:get() then
				var32 = "Owned"
			else
				var32 = "Buy"
			end
			var31_upvw.Text = var32
		end
	end)
	local var21_result1, var21_result2 = ItemButton_upvr(GetPurchaseStatus_result1, Color3.new(1, 1, 1), tbl, {
		Held = Value_upvr_result1_upvr;
		Hovering = var15_result1_upvr_2;
	}, function() -- Line 178, Named "cleanUpCallback"
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr (readonly)
		]]
		any_onChange_result1_upvr()
	end, function() -- Line 166, Named "purchaseCallback"
		--[[ Upvalues[8]:
			[1]: arg4 (readonly)
			[2]: GetPurchaseStatus_upvr_result2_upvr (readonly)
			[3]: module_3_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: catalogItemPromptEvent_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: CatalogOnPromptPurchase_upvr (copied, readonly)
			[8]: GetPurchaseStatus_result3_upvr (readonly)
		]]
		if arg4:get() < 0.1 and GetPurchaseStatus_upvr_result2_upvr then
			if module_3_upvr.ownsAsset(GetPurchaseStatus_upvr_result2_upvr) then
				module_3_upvr.requestToWear(arg1)
				return
			end
			catalogItemPromptEvent_upvr:FireServer(arg2)
			CatalogOnPromptPurchase_upvr:InvokeServer(GetPurchaseStatus_upvr_result2_upvr, GetPurchaseStatus_result3_upvr)
		end
	end)
	var31_upvw = var21_result2
	return var15_result1_upvr, var21_result1
end