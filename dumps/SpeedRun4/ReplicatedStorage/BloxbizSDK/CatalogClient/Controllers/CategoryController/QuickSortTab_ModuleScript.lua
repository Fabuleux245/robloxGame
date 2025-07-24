-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:49
-- Luau version 6, Types version 3
-- Time taken: 0.009245 seconds

local module_upvr_2 = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local New_upvr = module_upvr_2.New
local Value_upvr = module_upvr_2.Value
local Spring_upvr = module_upvr_2.Spring
local Computed_upvr = module_upvr_2.Computed
local Children_upvr = module_upvr_2.Children
local Ref_upvr = module_upvr_2.Ref
local module_upvr = {
	Color = {
		Default = Color3.fromRGB(121, 121, 121);
		Selected = Color3.fromRGB(255, 255, 255);
		Hover = Color3.fromRGB(150, 150, 150);
		MouseDown = Color3.fromRGB(130, 130, 130);
	};
	UnderlineThickness = 1;
}
local function _(arg1, arg2) -- Line 53, Named "OffsetToScale"
	local AbsoluteSize_3 = arg1.AbsoluteSize
	if AbsoluteSize_3 == Vector2.zero then
		AbsoluteSize_3 = Vector2.new(1, 1)
	end
	return Vector2.new(arg2.X / AbsoluteSize_3.X, arg2.Y / AbsoluteSize_3.Y)
end
local function GetUnderline_upvr(arg1, arg2, arg3) -- Line 62, Named "GetUnderline"
	local Parent = arg2.Parent
	if Parent then
		local AbsolutePosition = arg3.AbsolutePosition
		local AbsoluteSize_4 = arg3.AbsoluteSize
		local var16 = Vector2.new(AbsolutePosition.X + AbsoluteSize_4.X / 2, AbsolutePosition.Y + AbsoluteSize_4.Y) - Parent.AbsolutePosition
		local AbsoluteSize_2 = arg1.AbsoluteSize
		if AbsoluteSize_2 == Vector2.zero then
			AbsoluteSize_2 = Vector2.new(1, 1)
		end
		local vector2 = Vector2.new(var16.X / AbsoluteSize_2.X, var16.Y / AbsoluteSize_2.Y)
		return UDim2.fromScale(vector2.X, vector2.Y)
	end
	return UDim2.fromScale(0, 0)
end
local TextService_upvr = game:GetService("TextService")
local function GetTextSize_upvr(arg1, arg2) -- Line 79, Named "GetTextSize"
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local vector2_3 = Vector2.new(TextService_upvr:GetTextSize(arg2.Text, arg2.TextSize, arg2.Font, Vector2.new(arg2.Size.X.Offset, arg2.Size.Y.Offset)).X, module_upvr.UnderlineThickness)
	local AbsoluteSize = arg1.AbsoluteSize
	if AbsoluteSize == Vector2.zero then
		AbsoluteSize = Vector2.new(1, 1)
	end
	local vector2_2 = Vector2.new(vector2_3.X / AbsoluteSize.X, vector2_3.Y / AbsoluteSize.Y)
	return UDim2.fromScale(vector2_2.X, vector2_2.Y)
end
local OnEvent_upvr = module_upvr_2.OnEvent
local function QuickAccessButton_upvr(arg1, arg2, arg3, arg4) -- Line 92, Named "QuickAccessButton"
	--[[ Upvalues[8]:
		[1]: Value_upvr (readonly)
		[2]: Spring_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Ref_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: OnEvent_upvr (readonly)
	]]
	local Value_upvr_result1_upvr_6 = Value_upvr(false)
	local Value_upvr_result1_upvr_7 = Value_upvr(false)
	local Value_upvr_result1_upvr_3 = Value_upvr(false)
	local Value_upvr_result1_upvr_5 = Value_upvr(nil)
	local Value_upvr_result1_upvr = Value_upvr(nil)
	local Value_upvr_result1_upvr_2 = Value_upvr(nil)
	local var7_result1 = Computed_upvr(function() -- Line 112
		--[[ Upvalues[4]:
			[1]: Value_upvr_result1_upvr_3 (readonly)
			[2]: module_upvr (copied, readonly)
			[3]: Value_upvr_result1_upvr_7 (readonly)
			[4]: Value_upvr_result1_upvr_6 (readonly)
		]]
		if Value_upvr_result1_upvr_3:get() then
			return module_upvr.Color.Selected
		end
		if Value_upvr_result1_upvr_7:get() then
			return module_upvr.Color.MouseDown
		end
		if Value_upvr_result1_upvr_6:get() then
			return module_upvr.Color.Hover
		end
		return module_upvr.Color.Default
	end)
	if 5 < string.len(arg1) then
		var7_result1 = 0.24
	else
		var7_result1 = 0.15
	end
	local tbl_8 = {}
	tbl_8.Name = arg1
	tbl_8.Text = ""
	tbl_8.TextScaled = true
	tbl_8.TextSize = 14
	tbl_8.TextWrapped = true
	tbl_8.AutoButtonColor = false
	tbl_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_8.BackgroundTransparency = 1
	tbl_8.LayoutOrder = 14
	tbl_8.Position = UDim2.fromScale(-4.88e-08, 0)
	tbl_8.Size = UDim2.fromScale(var7_result1, 1)
	tbl_8[Ref_upvr] = Value_upvr_result1_upvr_5
	local tbl_4 = {}
	local tbl_3 = {
		Name = "TextLabel";
	}
	tbl_3.Text = arg1
	tbl_3.TextColor3 = Spring_upvr(var7_result1, 40, 1)
	tbl_3.TextSize = 27
	tbl_3.TextScaled = true
	tbl_3.TextWrapped = true
	tbl_3.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	tbl_3.BackgroundTransparency = 1
	tbl_3.Position = UDim2.fromScale(0.5, 0.5)
	tbl_3.Size = UDim2.fromScale(1, 0.8)
	tbl_3[Ref_upvr] = Value_upvr_result1_upvr_2
	tbl_3[Children_upvr] = {New_upvr("UITextSizeConstraint")({
		Name = "UITextSizeConstraint";
		MaxTextSize = 35;
	})}
	tbl_4[1] = New_upvr("Frame")({
		Name = "Underline";
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 1);
		Size = UDim2.new(1, 0, 0, 2);
		ZIndex = 3;
		[Ref_upvr] = Value_upvr_result1_upvr;
	})
	tbl_4[2] = New_upvr("TextLabel")(tbl_3)
	tbl_8[Children_upvr] = tbl_4
	tbl_8[OnEvent_upvr("Activated")] = function() -- Line 181
		--[[ Upvalues[6]:
			[1]: arg3 (readonly)
			[2]: Value_upvr_result1_upvr_3 (readonly)
			[3]: arg2 (readonly)
			[4]: Value_upvr_result1_upvr (readonly)
			[5]: Value_upvr_result1_upvr_2 (readonly)
			[6]: Value_upvr_result1_upvr_5 (readonly)
		]]
		local any_get_result1_3 = arg3:get()
		if not any_get_result1_3 or any_get_result1_3 and any_get_result1_3.SelectedValue ~= Value_upvr_result1_upvr_3 then
			if any_get_result1_3 then
				any_get_result1_3.SelectedValue:set(false)
			end
			local tbl_5 = {
				SelectedValue = Value_upvr_result1_upvr_3;
			}
			tbl_5.SortType = arg2
			tbl_5.UnderlineAnchor = Value_upvr_result1_upvr:get()
			tbl_5.TextLabel = Value_upvr_result1_upvr_2:get()
			tbl_5.Button = Value_upvr_result1_upvr_5:get()
			arg3:set(tbl_5)
			Value_upvr_result1_upvr_3:set(true)
		end
	end
	tbl_8[OnEvent_upvr("MouseButton1Down")] = function() -- Line 199
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_7 (readonly)
		]]
		Value_upvr_result1_upvr_7:set(true)
	end
	tbl_8[OnEvent_upvr("MouseButton1Up")] = function() -- Line 203
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_7 (readonly)
		]]
		Value_upvr_result1_upvr_7:set(false)
	end
	tbl_8[OnEvent_upvr("MouseEnter")] = function() -- Line 207
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_6 (readonly)
		]]
		Value_upvr_result1_upvr_6:set(true)
	end
	tbl_8[OnEvent_upvr("MouseLeave")] = function() -- Line 211
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_6 (readonly)
			[2]: Value_upvr_result1_upvr_7 (readonly)
		]]
		Value_upvr_result1_upvr_6:set(false)
		Value_upvr_result1_upvr_7:set(false)
	end
	local var45 = New_upvr("TextButton")(tbl_8)
	if arg4 then
		local module = {
			SelectedValue = Value_upvr_result1_upvr_3;
		}
		module.SortType = arg2
		module.UnderlineAnchor = Value_upvr_result1_upvr:get()
		module.TextLabel = Value_upvr_result1_upvr_2:get()
		module.Button = Value_upvr_result1_upvr_5:get()
		return var45, module
	end
	return var45
end
local ForValues_upvr = module_upvr_2.ForValues
return function(arg1) -- Line 231
	--[[ Upvalues[11]:
		[1]: Value_upvr (readonly)
		[2]: Spring_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: GetUnderline_upvr (readonly)
		[5]: GetTextSize_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: Ref_upvr (readonly)
		[9]: ForValues_upvr (readonly)
		[10]: QuickAccessButton_upvr (readonly)
		[11]: module_upvr_2 (readonly)
	]]
	local var5_result1_upvr = Value_upvr(nil)
	local Value_upvr_result1_upvr_4 = Value_upvr()
	local var5_result1_upvr_2 = Value_upvr(nil)
	local var52_upvw
	local tbl_6 = {
		Name = "Quick";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(20, 20, 20);
		Position = UDim2.fromScale(0.17, 0.5);
		Size = UDim2.fromScale(0.45, 1);
	}
	local tbl_2 = {}
	local tbl_7 = {
		Name = "Holder";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		[Ref_upvr] = var5_result1_upvr;
	}
	local tbl = {}
	local var65_upvw = true
	tbl[1] = New_upvr("UIListLayout")({
		Name = "UIListLayout";
		Padding = UDim.new(0.02, 0);
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	tbl[2] = ForValues_upvr(arg1, function(arg1_2) -- Line 311
		--[[ Upvalues[4]:
			[1]: QuickAccessButton_upvr (copied, readonly)
			[2]: var5_result1_upvr_2 (readonly)
			[3]: var65_upvw (read and write)
			[4]: var52_upvw (read and write)
		]]
		local QuickAccessButton_upvr_result1, QuickAccessButton_result2 = QuickAccessButton_upvr(arg1_2.Text, arg1_2.SortType, var5_result1_upvr_2, var65_upvw)
		if var65_upvw then
			var65_upvw = false
			var52_upvw = QuickAccessButton_result2
		end
		return QuickAccessButton_upvr_result1
	end, module_upvr_2.cleanup)
	tbl_7[Children_upvr] = tbl
	tbl_2[1] = New_upvr("UIStroke")({
		Name = "StandardStroke";
		Color = Color3.fromRGB(79, 84, 95);
		Thickness = 1.5;
	})
	tbl_2[2] = New_upvr("Frame")({
		Name = "Underline";
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Position = Spring_upvr(Computed_upvr(function() -- Line 240
			--[[ Upvalues[4]:
				[1]: var5_result1_upvr_2 (readonly)
				[2]: var5_result1_upvr (readonly)
				[3]: Value_upvr_result1_upvr_4 (readonly)
				[4]: GetUnderline_upvr (copied, readonly)
			]]
			local any_get_result1 = var5_result1_upvr_2:get()
			if any_get_result1 and var5_result1_upvr:get() and Value_upvr_result1_upvr_4:get() and any_get_result1.Button then
				return GetUnderline_upvr(var5_result1_upvr:get(), Value_upvr_result1_upvr_4:get(), any_get_result1.Button)
			end
			return UDim2.new(0.147, 0, 1, 0)
		end), 40, 1);
		Size = Spring_upvr(Computed_upvr(function() -- Line 253
			--[[ Upvalues[3]:
				[1]: var5_result1_upvr_2 (readonly)
				[2]: var5_result1_upvr (readonly)
				[3]: GetTextSize_upvr (copied, readonly)
			]]
			local any_get_result1_2 = var5_result1_upvr_2:get()
			if any_get_result1_2 and var5_result1_upvr:get() and any_get_result1_2.TextLabel then
				return GetTextSize_upvr(var5_result1_upvr:get(), any_get_result1_2.TextLabel)
			end
			return UDim2.new(0, 0, 0, 0)
		end), 40, 1);
		ZIndex = 3;
		[Ref_upvr] = Value_upvr_result1_upvr_4;
	})
	tbl_2[3] = New_upvr("Frame")(tbl_7)
	tbl_2[4] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.225, 0);
	})
	tbl_6[Children_upvr] = tbl_2
	return {
		Instance = New_upvr("Frame")(tbl_6);
		CurrentSelectedQuickSort = var5_result1_upvr_2;
		DefaultSelection = var52_upvw;
	}
end