-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:32
-- Luau version 6, Types version 3
-- Time taken: 0.006279 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local BloxbizRemotes = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local Utils = Parent:FindFirstChild("Utils")
local module_upvr_3 = require(Utils:WaitForChild("Fusion"))
local module_upvr_2 = {
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
local function GetPurchaseStatus_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 58, Named "GetPurchaseStatus"
	--[[ Upvalues[1]:
		[1]: any_read_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12
	if not arg3 then
		if arg2 == false then
			if arg5 then
				-- KONSTANTWARNING: GOTO [18] #17
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
	return {
		text = "Off-Sale";
		purchaseId = var13;
		purchaseBundle = false;
	}
end
local module_upvr = require(Parent:FindFirstChild("CatalogClient").Classes:WaitForChild("InventoryHandler"))
local Computed_upvr = module_upvr_3.Computed
local Value_upvr = module_upvr_3.Value
local Spring_upvr = module_upvr_3.Spring
local catalogItemPromptEvent_upvr = BloxbizRemotes:WaitForChild("catalogItemPromptEvent")
local Utils_2_upvr = require(Utils)
local CatalogOnPromptPurchase_upvr = BloxbizRemotes:WaitForChild("CatalogOnPromptPurchase")
local ItemButton_upvr = require(script.Parent.Parent.ItemButton)
return function(arg1, arg2, arg3, arg4) -- Line 107
	--[[ Upvalues[11]:
		[1]: module_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: GetPurchaseStatus_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: Value_upvr (readonly)
		[6]: Spring_upvr (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: catalogItemPromptEvent_upvr (readonly)
		[9]: Utils_2_upvr (readonly)
		[10]: CatalogOnPromptPurchase_upvr (readonly)
		[11]: ItemButton_upvr (readonly)
	]]
	local var24_upvr
	if arg1.BundleId == nil then
		var24_upvr = false
	else
		var24_upvr = true
	end
	local AssetId_2 = arg1.AssetId
	if not AssetId_2 then
		AssetId_2 = arg1.BundleId
	end
	local any_ownsAssetComputed_result1_upvr = module_upvr.ownsAssetComputed(AssetId_2)
	local var17_result1_upvr = Computed_upvr(function() -- Line 117
		--[[ Upvalues[5]:
			[1]: GetPurchaseStatus_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var24_upvr (readonly)
			[4]: any_ownsAssetComputed_result1_upvr (readonly)
			[5]: arg3 (readonly)
		]]
		local AssetId = arg1.AssetId
		if not AssetId then
			AssetId = arg1.BundleId
		end
		return GetPurchaseStatus_upvr(AssetId, arg1.IsForSale, var24_upvr, any_ownsAssetComputed_result1_upvr:get(), arg3)
	end, module_upvr_3.cleanup)
	local var18_result1_upvr = Value_upvr(false)
	local var18_result1_upvr_2 = Value_upvr(false)
	local Value_upvr_result1_upvr = Value_upvr(false)
	local tbl = {}
	tbl.TextTransparency = arg4
	tbl.ButtonBackgroundColor = Spring_upvr(Computed_upvr(function() -- Line 143
		--[[ Upvalues[4]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: var17_result1_upvr (readonly)
			[3]: var18_result1_upvr_2 (readonly)
			[4]: module_upvr_2 (copied, readonly)
		]]
		if Value_upvr_result1_upvr:get() == false then
			local var37
			if var37 then
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var37 = module_upvr_2.ButtonColor.MouseDown
					return var37
				end
				if not var18_result1_upvr_2:get() or not INLINED_3() then
					var37 = module_upvr_2.ButtonColor.Default
				end
				return var37
			end
		end
		return module_upvr_2.ButtonColor.Disabled
	end), 40, 1)
	tbl.ButtonSize = Spring_upvr(Computed_upvr(function() -- Line 129
		--[[ Upvalues[4]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: var17_result1_upvr (readonly)
			[3]: var18_result1_upvr (readonly)
			[4]: module_upvr_2 (copied, readonly)
		]]
		if Value_upvr_result1_upvr:get() == false then
			local var35
			if var35 then
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var35 = module_upvr_2.Size.Hover
					return var35
				end
				if not var18_result1_upvr:get() or not INLINED_2() then
					var35 = module_upvr_2.Size.Default
				end
				return var35
			end
		end
		return module_upvr_2.Size.Default
	end), 40, 1)
	local var23_result1, ItemButton_upvr_result2 = ItemButton_upvr(Computed_upvr(function() -- Line 183
		--[[ Upvalues[1]:
			[1]: var17_result1_upvr (readonly)
		]]
		return var17_result1_upvr:get().text
	end), Color3.new(1, 1, 1), tbl, {
		Held = var18_result1_upvr_2;
		Hovering = var18_result1_upvr;
	}, function() -- Line 180, Named "cleanUpCallback"
	end, function() -- Line 167, Named "purchaseCallback"
		--[[ Upvalues[8]:
			[1]: var17_result1_upvr (readonly)
			[2]: any_ownsAssetComputed_result1_upvr (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: catalogItemPromptEvent_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: Utils_2_upvr (copied, readonly)
			[8]: CatalogOnPromptPurchase_upvr (copied, readonly)
		]]
		if var17_result1_upvr:get().purchaseId then
			if any_ownsAssetComputed_result1_upvr:get() then
				module_upvr.requestToWear(arg1)
				return
			end
			catalogItemPromptEvent_upvr:FireServer(arg2)
			Utils_2_upvr.pprint("prompted in", arg2)
			CatalogOnPromptPurchase_upvr:InvokeServer(var17_result1_upvr:get().purchaseId, var17_result1_upvr:get().purchaseBundle)
		end
	end)
	return var23_result1
end