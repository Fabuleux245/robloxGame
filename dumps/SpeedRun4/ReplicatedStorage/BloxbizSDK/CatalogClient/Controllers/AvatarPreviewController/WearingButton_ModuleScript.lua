-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:44
-- Luau version 6, Types version 3
-- Time taken: 0.005159 seconds

local module_3 = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local function GetTableType_upvr(arg1) -- Line 20, Named "GetTableType"
	if next(arg1) == nil then return end
	for i, _ in pairs(arg1) do
		if typeof(i) ~= "number" or typeof(i) == "number" and (i % 1 ~= 0 or i < 0) then
			return "Dictionary"
		end
	end
	return "Array"
end
local function _(arg1) -- Line 33, Named "GetTableSize"
	--[[ Upvalues[1]:
		[1]: GetTableType_upvr (readonly)
	]]
	local GetTableType_result1 = GetTableType_upvr(arg1)
	if GetTableType_result1 == "Array" then
		do
			return #arg1
		end
		local var11
	end
	if GetTableType_result1 == "Dictionary" then
		var11 = 0
		for _ in arg1 do
			var11 += 1
		end
		return var11
	end
	return 0
end
local module_2_upvr = {
	Buttons = {
		Save = {
			Position = UDim2.fromScale(0.285, 1);
			AnchorPoint = Vector2.new(0, 1);
		};
		Reset = {
			Position = UDim2.fromScale(0.06, 1);
			AnchorPoint = Vector2.new(0, 1);
		};
		Redo = {
			Position = UDim2.fromScale(0.94, 1);
			AnchorPoint = Vector2.new(1, 1);
		};
		Undo = {
			Position = UDim2.fromScale(0.715, 1);
			AnchorPoint = Vector2.new(1, 1);
		};
	};
	Color = {
		Selected = Color3.new(1, 1, 1);
		Default = Color3.fromRGB(20, 20, 20);
		MouseDown = Color3.fromRGB(15, 15, 15);
		Hover = Color3.fromRGB(30, 30, 30);
	};
	TextColor = {
		Selected = Color3.new(0, 0, 0);
		Disabled = Color3.fromRGB(128, 128, 128);
		Default = Color3.fromRGB(255, 255, 255);
	};
}
local Value_upvr = module_3.Value
local Observer_upvr = module_3.Observer
local Spring_upvr = module_3.Spring
local Computed_upvr = module_3.Computed
local New_upvr = module_3.New
local Cleanup_upvr = module_3.Cleanup
local Children_upvr = module_3.Children
local Ref_upvr = module_3.Ref
local OnEvent_upvr = module_3.OnEvent
return function(arg1, arg2) -- Line 82, Named "WearingItems"
	--[[ Upvalues[11]:
		[1]: Value_upvr (readonly)
		[2]: Observer_upvr (readonly)
		[3]: GetTableType_upvr (readonly)
		[4]: Spring_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: New_upvr (readonly)
		[8]: Cleanup_upvr (readonly)
		[9]: Children_upvr (readonly)
		[10]: Ref_upvr (readonly)
		[11]: OnEvent_upvr (readonly)
	]]
	local var20_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr_2 = Value_upvr(false)
	local Value_upvr_result1_upvr_3 = Value_upvr()
	local module = {
		Name = "WearingItems";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		AutoButtonColor = false;
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 101
			--[[ Upvalues[4]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
				[2]: module_2_upvr (copied, readonly)
				[3]: Value_upvr_result1_upvr (readonly)
				[4]: var20_result1_upvr (readonly)
			]]
			if Value_upvr_result1_upvr_2:get() then
				return module_2_upvr.Color.Selected
			end
			if Value_upvr_result1_upvr:get() then
				return module_2_upvr.Color.MouseDown
			end
			if var20_result1_upvr:get() then
				return module_2_upvr.Color.Hover
			end
			return module_2_upvr.Color.Default
		end), 20, 1);
		LayoutOrder = 1;
		Position = UDim2.fromScale(0.5, 0);
		Size = UDim2.fromScale(0.5, 0.07);
		ZIndex = 3;
	}
	local any_onChange_result1_upvr = Observer_upvr(arg2):onChange(function() -- Line 92
		--[[ Upvalues[3]:
			[1]: Value_upvr_result1_upvr_3 (readonly)
			[2]: arg2 (readonly)
			[3]: GetTableType_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_get_result1 = arg2:get()
		local GetTableType_result1_2 = GetTableType_upvr(any_get_result1)
		local var40
		if GetTableType_result1_2 == "Array" then
			var40 = #any_get_result1
			local var41
		elseif GetTableType_result1_2 == "Dictionary" then
			var41 = 0
			for _ in any_get_result1 do
				var41 += 1
				local var42
			end
			var40 = var42
		else
			var40 = 0
		end
		if any_get_result1.BodyColors then
		else
		end
		var40 = string.format("Wearing %d items", var40 - 0)
		Value_upvr_result1_upvr_3:get().Text = var40
	end)
	module[Cleanup_upvr] = function() -- Line 169
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr (readonly)
		]]
		any_onChange_result1_upvr()
	end
	module[Children_upvr] = {New_upvr("TextLabel")({
		Name = "TextLabel";
		Text = "Loading Wearing Items";
		TextColor3 = Spring_upvr(Computed_upvr(function() -- Line 117
			--[[ Upvalues[3]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
				[2]: module_2_upvr (copied, readonly)
				[3]: Value_upvr_result1_upvr (readonly)
			]]
			if Value_upvr_result1_upvr_2:get() then
				return module_2_upvr.TextColor.Selected
			end
			if Value_upvr_result1_upvr:get() then
				return module_2_upvr.TextColor.Disabled
			end
			return module_2_upvr.TextColor.Default
		end), 20, 1);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.9, 0.5);
		Size = UDim2.fromScale(0.6, 0.6);
		[Ref_upvr] = Value_upvr_result1_upvr_3;
	}), New_upvr("ImageLabel")({
		Name = "Icon";
		Image = "rbxassetid://13733130817";
		ImageColor3 = Spring_upvr(Computed_upvr(function() -- Line 131
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			if Value_upvr_result1_upvr:get() then
				return module_2_upvr.TextColor.Disabled
			end
			return module_2_upvr.TextColor.Default
		end), 20, 1);
		AnchorPoint = Vector2.new(0, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.1, 0.5);
		Size = UDim2.fromScale(0.6, 0.6);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
	}), New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.225, 0);
	}), New_upvr("UIStroke")({
		Name = "StandardStroke";
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		Color = Spring_upvr(Computed_upvr(function() -- Line 143
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
			]]
			if Value_upvr_result1_upvr_2:get() then
				return Color3.new(0, 0, 0)
			end
			return Color3.fromRGB(79, 84, 95)
		end), 20, 1);
		Thickness = 1.5;
	})}
	module[OnEvent_upvr("Activated")] = function() -- Line 215
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		Value_upvr_result1_upvr_2:set(not Value_upvr_result1_upvr_2:get())
		arg1.Visible = not arg1.Visible
	end
	module[OnEvent_upvr("MouseButton1Down")] = function() -- Line 220
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr (readonly)
		]]
		Value_upvr_result1_upvr:set(true)
	end
	module[OnEvent_upvr("MouseButton1Up")] = function() -- Line 224
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr (readonly)
		]]
		Value_upvr_result1_upvr:set(false)
	end
	module[OnEvent_upvr("MouseEnter")] = function() -- Line 228
		--[[ Upvalues[1]:
			[1]: var20_result1_upvr (readonly)
		]]
		var20_result1_upvr:set(true)
	end
	module[OnEvent_upvr("MouseLeave")] = function() -- Line 232
		--[[ Upvalues[2]:
			[1]: var20_result1_upvr (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
		]]
		var20_result1_upvr:set(false)
		Value_upvr_result1_upvr:set(false)
	end
	return New_upvr("TextButton")(module)
end