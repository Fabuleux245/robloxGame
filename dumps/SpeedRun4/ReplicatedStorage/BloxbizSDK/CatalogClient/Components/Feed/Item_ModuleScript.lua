-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:36
-- Luau version 6, Types version 3
-- Time taken: 0.004837 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Generic = Parent.CatalogClient.Components.Generic
local Button_upvr = require(Generic.Button)
local function GetButton_upvr(arg1, arg2, arg3, arg4) -- Line 28, Named "GetButton"
	--[[ Upvalues[1]:
		[1]: Button_upvr (readonly)
	]]
	local module = {}
	module.Name = arg1
	module.Text = arg1
	module.Size = {
		Default = UDim2.fromScale(0.8, 0.3);
		Hover = UDim2.fromScale(0.8, 0.3);
	}
	module.BackgroundColor3 = arg2
	module.TextColor3 = arg3
	local function Callback(arg1_2, arg2_2) -- Line 45
		--[[ Upvalues[1]:
			[1]: arg4 (readonly)
		]]
		arg4(arg1_2:get())
	end
	module.Callback = Callback
	return Button_upvr(module)
end
local module_2_upvr = require(Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Spring_upvr = require(Generic.Spring)
return function(arg1) -- Line 53
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: Button_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: GetButton_upvr (readonly)
	]]
	local tbl_upvr_2 = {
		Hovering = module_2_upvr.Value(false);
		HeldDown = module_2_upvr.Value(false);
		Selected = module_2_upvr.Value(false);
		Enabled = module_2_upvr.Value(true);
	}
	local tbl_upvr = {
		Selected = tbl_upvr_2.Selected;
	}
	local var4_result1 = Button_upvr({
		Name = tostring(arg1.AssetId);
		States = tbl_upvr_2;
		Size = UDim2.fromScale(1, 1);
		CornerRadius = UDim.new(0.065, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundColor3 = {
			Default = Color3.fromRGB(79, 84, 95);
			Selected = Color3.fromRGB(48, 51, 58);
		};
		BackgroundTransparency = {
			Default = 0;
			Hover = 0.2;
			Selected = 0.3;
			MouseDown = 0.4;
			Disabled = 0;
		};
		Callback = function(arg1_3, arg2) -- Line 85, Named "Callback"
			--[[ Upvalues[3]:
				[1]: tbl_upvr_2 (readonly)
				[2]: arg1 (readonly)
				[3]: tbl_upvr (readonly)
			]]
			if tbl_upvr_2.Enabled:get() then
				local any_get_result1 = arg1.CurrentButton:get()
				if any_get_result1 then
					any_get_result1.Selected:set(false)
					arg1.CurrentButton:set(nil)
					if any_get_result1.Selected == tbl_upvr_2.Selected then return end
				end
				arg1.CurrentButton:set(tbl_upvr)
				tbl_upvr.Selected:set(true)
			end
		end;
	})
	local any_Computed_result1_upvr = module_2_upvr.Computed(function() -- Line 126
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		for i, _ in pairs(arg1.EquippedItems:get()) do
			if tostring(arg1.AssetId) == tostring(i) then
				return true
			end
		end
		return false
	end)
	module_2_upvr.New("ImageLabel")({
		Name = "Preview";
		Image = string.format("rbxthumb://type=Asset&id=%d&w=150&h=150", arg1.AssetId);
		ImageTransparency = Spring_upvr(tbl_upvr_2, {
			Default = 0;
			Hover = 0.3;
			Selected = 0.6;
			MouseDown = 0.5;
			Disabled = 0;
		}, 20, 1);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(79, 84, 95);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
	}).Parent = var4_result1
	module_2_upvr.New("Frame")({
		Name = "InteractableLayer";
		Size = UDim2.fromScale(1, 1);
		Transparency = 1;
		BackgroundColor3 = Color3.fromRGB();
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Visible = module_2_upvr.Computed(function() -- Line 149
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			return tbl_upvr_2.Selected:get()
		end);
		[module_2_upvr.Children] = {module_2_upvr.New("UIListLayout")({
			Name = "UIListLayout";
			Padding = UDim.new(0.05, 0);
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		}), GetButton_upvr("Buy", {
			Default = Color3.fromRGB(79, 173, 116);
			MouseDown = Color3.fromRGB(57, 95, 73);
			Disabled = Color3.fromRGB(77, 121, 95);
		}, {
			Default = Color3.fromRGB(255, 255, 255);
			Disabled = Color3.fromRGB(120, 125, 136);
		}, function(arg1_4) -- Line 168
			--[[ Upvalues[2]:
				[1]: tbl_upvr_2 (readonly)
				[2]: arg1 (readonly)
			]]
			if tbl_upvr_2.Selected:get() and tbl_upvr_2.Enabled:get() then
				arg1.BuyCallback()
			end
		end), GetButton_upvr(module_2_upvr.Computed(function() -- Line 138
			--[[ Upvalues[1]:
				[1]: any_Computed_result1_upvr (readonly)
			]]
			if any_Computed_result1_upvr:get() then
				return "Remove"
			end
			return "Try"
		end), {
			Default = Color3.fromRGB(255, 255, 255);
			MouseDown = Color3.fromRGB(153, 153, 153);
		}, {
			Default = Color3.fromRGB(0, 0, 0);
			Disabled = Color3.fromRGB(120, 125, 136);
		}, function(arg1_5) -- Line 179
			--[[ Upvalues[2]:
				[1]: tbl_upvr_2 (readonly)
				[2]: arg1 (readonly)
			]]
			if tbl_upvr_2.Selected:get() and tbl_upvr_2.Enabled:get() then
				arg1.TryCallback()
			end
		end)};
	}).Parent = var4_result1
	return var4_result1
end