-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:34
-- Luau version 6, Types version 3
-- Time taken: 0.002712 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local New_upvr = module_2_upvr.New
local Computed_upvr = module_2_upvr.Computed
local OnEvent_upvr = module_2_upvr.OnEvent
local Children_upvr = module_2_upvr.Children
local InteractionFrame_upvr = require(script.Parent.InteractionFrame)
local Button_upvr = require(Parent:WaitForChild("CatalogClient").Components.Button)
return function(arg1) -- Line 30
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: OnEvent_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: InteractionFrame_upvr (readonly)
		[8]: Button_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		AssetId = module_upvr.Required;
		SelectedId = module_upvr.Nil;
		OnTry = module_upvr.Callback;
		OnBuy = module_upvr.Callback;
		EquippedItems = module_upvr.Required;
		CornerRadius = 3;
		BackgroundColor3 = Color3.fromHex("373B43");
	})
	local any_Computed_result1_upvr = module_2_upvr.Computed(function() -- Line 42
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local var16
		if any_GetValues_result1_upvw.SelectedId:get() ~= any_GetValues_result1_upvw.AssetId:get() then
			var16 = false
		else
			var16 = true
		end
		return var16
	end)
	local module = {
		Size = UDim2.fromScale(1, 1);
		BackgroundColor3 = any_GetValues_result1_upvw.BackgroundColor3;
		AutoButtonColor = Computed_upvr(function() -- Line 62
			--[[ Upvalues[1]:
				[1]: any_Computed_result1_upvr (readonly)
			]]
			return not any_Computed_result1_upvr:get()
		end);
		[OnEvent_upvr("Activated")] = function() -- Line 66
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			any_GetValues_result1_upvw.SelectedId:set(any_GetValues_result1_upvw.AssetId:get())
		end;
	}
	local tbl = {}
	local tbl_4 = {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}
	local tbl_6 = {}
	local tbl_3 = {
		Selected = any_Computed_result1_upvr;
	}
	local tbl_2 = {}
	local tbl_5 = {
		LayoutOrder = 2;
		Size = UDim2.fromScale(0.8, 0.35);
	}
	local any_Computed_result1_upvr_2 = module_2_upvr.Computed(function() -- Line 46
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		for i, _ in pairs(any_GetValues_result1_upvw.EquippedItems:get()) do
			if tostring(any_GetValues_result1_upvw.AssetId:get()) == tostring(i) then
				return true
			end
		end
		return false
	end)
	tbl_5.Text = Computed_upvr(function() -- Line 114
		--[[ Upvalues[1]:
			[1]: any_Computed_result1_upvr_2 (readonly)
		]]
		if any_Computed_result1_upvr_2:get() then
			return "Remove"
		end
		return "Try"
	end)
	tbl_5.OnClick = any_GetValues_result1_upvw.OnTry
	tbl_2[1] = Button_upvr({
		Size = UDim2.fromScale(0.8, 0.35);
		Text = "Buy";
		OnClick = any_GetValues_result1_upvw.OnBuy;
		BackgroundColor3 = Color3.fromRGB(79, 173, 116);
		TextColor3 = Color3.new(1, 1, 1);
	})
	tbl_2[2] = Button_upvr(tbl_5)
	tbl_3[Children_upvr] = tbl_2
	tbl_6[1] = New_upvr("UICorner")({
		CornerRadius = Computed_upvr(function() -- Line 82
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim.new(0, any_GetValues_result1_upvw.CornerRadius:get())
		end);
	})
	tbl_6[2] = New_upvr("ImageLabel")({
		Image = Computed_upvr(function() -- Line 89
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return string.format("rbxthumb://type=Asset&id=%s&w=150&h=150", any_GetValues_result1_upvw.AssetId:get())
		end);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	})
	tbl_6[3] = InteractionFrame_upvr(tbl_3)
	tbl_4[Children_upvr] = tbl_6
	tbl[1] = New_upvr("UICorner")({
		CornerRadius = Computed_upvr(function() -- Line 72
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim.new(0, any_GetValues_result1_upvw.CornerRadius:get())
		end);
	})
	tbl[2] = New_upvr("CanvasGroup")(tbl_4)
	module[Children_upvr] = tbl
	return New_upvr("TextButton")(module)
end