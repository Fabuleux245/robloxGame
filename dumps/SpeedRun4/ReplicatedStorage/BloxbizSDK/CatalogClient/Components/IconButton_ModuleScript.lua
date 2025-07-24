-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:30
-- Luau version 6, Types version 3
-- Time taken: 0.006111 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = {
	Default = Color3.fromRGB(20, 20, 20);
	MouseDown = Color3.fromRGB(15, 15, 15);
	Hover = Color3.fromRGB(30, 30, 30);
	Selected = Color3.fromRGB(255, 255, 255);
}
local module_upvr_3 = {
	Disabled = Color3.fromRGB(155, 155, 155);
	Default = Color3.fromRGB(223, 223, 223);
}
local module_upvr_4 = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_upvr_2.Value
local Spring_upvr = module_upvr_2.Spring
local Computed_upvr = module_upvr_2.Computed
local var2_2_upvr = require(Utils)
local TextService_upvr = game:GetService("TextService")
local New_upvr = module_upvr_2.New
local Ref_upvr = module_upvr_2.Ref
local OnEvent_upvr = module_upvr_2.OnEvent
local Children_upvr = module_upvr_2.Children
return function(arg1) -- Line 40
	--[[ Upvalues[13]:
		[1]: module_upvr_4 (readonly)
		[2]: Value_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: var2_2_upvr (readonly)
		[8]: TextService_upvr (readonly)
		[9]: New_upvr (readonly)
		[10]: Ref_upvr (readonly)
		[11]: module_upvr_2 (readonly)
		[12]: OnEvent_upvr (readonly)
		[13]: Children_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr_4.GetValues(arg1, {
		Parent = module_upvr_4.Nil;
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		LayoutOrder = 0;
		Visible = true;
		Text = module_upvr_4.Nil;
		Count = module_upvr_4.Nil;
		Icon = "";
		Alignment = "Left";
		Disabled = false;
		Padding = 8;
		Selected = false;
		OnClick = module_upvr_4.Callback;
		TextColor3 = Color3.new(1, 1, 1);
		IconSize = 0.5;
	})
	local var8_result1_upvr_2 = Value_upvr(false)
	local Value_upvr_result1_upvr = Value_upvr(false)
	local function _() -- Line 84
		--[[ Upvalues[3]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: module_upvr_3 (copied, readonly)
		]]
		if Value_upvr_result1_upvr:get() or any_GetValues_result1_upvw.Disabled:get() then
			return module_upvr_3.Disabled
		end
		return module_upvr_3.Default
	end
	local var8_result1_upvr = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr_3 = Computed_upvr(function() -- Line 95
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		local any_get_result1_3 = var8_result1_upvr:get()
		if not any_get_result1_3 then
			any_get_result1_3 = Vector2.zero
		end
		return any_get_result1_3
	end)
	local Computed_upvr_result1_upvr_2 = Computed_upvr(function() -- Line 99
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var2_2_upvr (copied, readonly)
		]]
		local any_get_result1 = any_GetValues_result1_upvw.Count:get()
		local any_get_result1_4 = any_GetValues_result1_upvw.Text:get()
		local var30
		if any_get_result1_4 then
			return any_get_result1_4
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var30 = var2_2_upvr.toLocaleNumber(any_get_result1)
			return var30
		end
		if not any_get_result1 or not INLINED() then
			var30 = nil
		end
		return var30
	end)
	local Computed_upvr_result1_upvr_4 = Computed_upvr(function() -- Line 110
		--[[ Upvalues[3]:
			[1]: TextService_upvr (copied, readonly)
			[2]: Computed_upvr_result1_upvr_2 (readonly)
			[3]: Computed_upvr_result1_upvr_3 (readonly)
		]]
		return TextService_upvr:GetTextSize(Computed_upvr_result1_upvr_2:get(), Computed_upvr_result1_upvr_3:get().Y / 2, Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge)).X
	end)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 116
		--[[ Upvalues[2]:
			[1]: Computed_upvr_result1_upvr_3 (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		return Computed_upvr_result1_upvr_3:get().Y * (1 - any_GetValues_result1_upvw.IconSize:get()) / 2
	end)
	local Spring_upvr_result1 = Spring_upvr(Computed_upvr(function() -- Line 120
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		if any_GetValues_result1_upvw.Disabled:get() then
			return 0.5
		end
		return 0.1
	end), 30)
	return New_upvr("TextButton")({
		Parent = any_GetValues_result1_upvw.Parent;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		Position = any_GetValues_result1_upvw.Position;
		Size = Computed_upvr(function() -- Line 132
			--[[ Upvalues[5]:
				[1]: Computed_upvr_result1_upvr_3 (readonly)
				[2]: any_GetValues_result1_upvw (read and write)
				[3]: Computed_upvr_result1_upvr_4 (readonly)
				[4]: Computed_upvr_result1_upvr (readonly)
				[5]: Computed_upvr_result1_upvr_2 (readonly)
			]]
			local var40
			if not var40 then
				var40 = Vector2.zero
			end
			var40 = any_GetValues_result1_upvw.IconSize:get()
			if Computed_upvr_result1_upvr_2:get() then
				var40 = 3.5
			else
				var40 = 2
			end
			return UDim2.new(0, var40.Y * var40 + Computed_upvr_result1_upvr_4:get() + Computed_upvr_result1_upvr:get() * var40 - 1, 1, 0)
		end);
		Visible = any_GetValues_result1_upvw.Visible;
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 64
			--[[ Upvalues[4]:
				[1]: any_GetValues_result1_upvw (read and write)
				[2]: module_upvr (copied, readonly)
				[3]: Value_upvr_result1_upvr (readonly)
				[4]: var8_result1_upvr_2 (readonly)
			]]
			if any_GetValues_result1_upvw.Selected:get() then
				return module_upvr.Selected
			end
			if not any_GetValues_result1_upvw.Disabled:get() then
				if Value_upvr_result1_upvr:get() then
					return module_upvr.MouseDown
				end
				if var8_result1_upvr_2:get() then
					return module_upvr.Hover
				end
				return module_upvr.Default
			end
			return module_upvr.Default
		end), 20);
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		BackgroundTransparency = Spring_upvr_result1;
		[Ref_upvr] = Value_upvr();
		[module_upvr_2.Out("AbsoluteSize")] = var8_result1_upvr;
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 148
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 152
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 156
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr_2 (readonly)
			]]
			var8_result1_upvr_2:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 160
			--[[ Upvalues[2]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: Value_upvr_result1_upvr (readonly)
			]]
			var8_result1_upvr_2:set(false)
			Value_upvr_result1_upvr:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 165
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			local any_get_result1_2 = any_GetValues_result1_upvw.OnClick:get()
			if any_get_result1_2 and not any_GetValues_result1_upvw.Disabled:get() then
				any_get_result1_2()
			end
		end;
		[Children_upvr] = {New_upvr("UIListLayout")({
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = Computed_upvr(function() -- Line 178
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr (readonly)
				]]
				return UDim.new(0, Computed_upvr_result1_upvr:get())
			end);
		}), New_upvr("UIPadding")({
			PaddingLeft = Computed_upvr(function() -- Line 181
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr (readonly)
				]]
				return UDim.new(0, Computed_upvr_result1_upvr:get())
			end);
			PaddingRight = Computed_upvr(function() -- Line 182
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr (readonly)
				]]
				return UDim.new(0, Computed_upvr_result1_upvr:get())
			end);
		}), New_upvr("ImageLabel")({
			Name = "Icon";
			Image = any_GetValues_result1_upvw.Icon;
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Position = Computed_upvr(function() -- Line 190
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_3 (readonly)
				]]
				return UDim2.new(0, Computed_upvr_result1_upvr_3:get().Y / 2, 0.5, 0)
			end);
			Size = Computed_upvr(function() -- Line 193
				--[[ Upvalues[2]:
					[1]: Computed_upvr_result1_upvr_3 (readonly)
					[2]: any_GetValues_result1_upvw (read and write)
				]]
				return UDim2.new(0, Computed_upvr_result1_upvr_3:get().Y * any_GetValues_result1_upvw.IconSize:get(), 0, Computed_upvr_result1_upvr_3:get().Y * any_GetValues_result1_upvw.IconSize:get())
			end);
			ImageTransparency = Spring_upvr_result1;
		}), New_upvr("TextLabel")({
			Visible = Computed_upvr(function() -- Line 200
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_2 (readonly)
				]]
				local var58
				if Computed_upvr_result1_upvr_2:get() == nil then
					var58 = false
				else
					var58 = true
				end
				return var58
			end);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			AnchorPoint = Vector2.new(0, 0.5);
			Size = Computed_upvr(function() -- Line 204
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_4 (readonly)
				]]
				return UDim2.new(0, Computed_upvr_result1_upvr_4:get(), 0.5, 0)
			end);
			Text = Computed_upvr_result1_upvr_2;
			TextSize = Computed_upvr(function() -- Line 209
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_3 (readonly)
				]]
				local any_get_result1_5 = Computed_upvr_result1_upvr_3:get()
				if not any_get_result1_5 then
					any_get_result1_5 = Vector2.zero
				end
				return any_get_result1_5.Y / 2
			end);
			Font = Enum.Font.GothamMedium;
			TextColor3 = Spring_upvr(Computed_upvr(function() -- Line 213
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				if any_GetValues_result1_upvw.Selected:get() then
					return Color3.new(0, 0, 0)
				end
				return any_GetValues_result1_upvw.TextColor3:get()
			end), 30);
		}), New_upvr("UIStroke")({
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			Color = Color3.fromRGB(79, 84, 95);
			Thickness = 1.5;
		}), New_upvr("UICorner")({
			Name = "UICorner";
			CornerRadius = UDim.new(0.25, 0);
		})};
	})
end