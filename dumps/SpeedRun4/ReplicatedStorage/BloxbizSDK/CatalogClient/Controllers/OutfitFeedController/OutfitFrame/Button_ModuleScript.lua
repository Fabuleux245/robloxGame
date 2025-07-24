-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:55
-- Luau version 6, Types version 3
-- Time taken: 0.007489 seconds

local Utils = script.Parent.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = {
	Default = Color3.fromRGB(20, 20, 20);
	MouseDown = Color3.fromRGB(15, 15, 15);
	Hover = Color3.fromRGB(30, 30, 30);
	Selected = Color3.fromRGB(255, 255, 255);
}
local module_upvr_4 = {
	Disabled = Color3.fromRGB(155, 155, 155);
	Default = Color3.fromRGB(223, 223, 223);
}
local module_upvr_3 = require(Utils:WaitForChild("FusionProps"))
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
		[1]: module_upvr_3 (readonly)
		[2]: Value_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: module_upvr_4 (readonly)
		[7]: var2_2_upvr (readonly)
		[8]: TextService_upvr (readonly)
		[9]: New_upvr (readonly)
		[10]: Ref_upvr (readonly)
		[11]: module_upvr_2 (readonly)
		[12]: OnEvent_upvr (readonly)
		[13]: Children_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr_3.GetValues(arg1, {
		Parent = module_upvr_3.Nil;
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		LayoutOrder = 0;
		Visible = true;
		Text = "";
		Count = module_upvr_3.Nil;
		Icon = "";
		Alignment = "Left";
		Disabled = false;
		Padding = 8;
		Selected = false;
		OnClick = module_upvr_3.Callback;
		TextColor3 = Color3.new(0.7, 0.7, 0.7);
		IconSize = 0.5;
	})
	local var8_result1_upvr_3 = Value_upvr(false)
	local var8_result1_upvr = Value_upvr(false)
	local function _() -- Line 84
		--[[ Upvalues[3]:
			[1]: var8_result1_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: module_upvr_4 (copied, readonly)
		]]
		if var8_result1_upvr:get() or any_GetValues_result1_upvw.Disabled:get() then
			return module_upvr_4.Disabled
		end
		return module_upvr_4.Default
	end
	local var8_result1_upvr_2 = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr_3 = Computed_upvr(function() -- Line 95
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr_2 (readonly)
		]]
		local any_get_result1_2 = var8_result1_upvr_2:get()
		if not any_get_result1_2 then
			any_get_result1_2 = Vector2.zero
		end
		return any_get_result1_2
	end)
	local Computed_upvr_result1_upvr_2 = Computed_upvr(function() -- Line 99
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var2_2_upvr (copied, readonly)
		]]
		local var28
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var28 = var2_2_upvr.toLocaleNumber(any_GetValues_result1_upvw.Count:get())
			return var28
		end
		if not any_GetValues_result1_upvw.Count:get() or not INLINED() then
			var28 = ""
		end
		return var28
	end)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 103
		--[[ Upvalues[3]:
			[1]: TextService_upvr (copied, readonly)
			[2]: Computed_upvr_result1_upvr_2 (readonly)
			[3]: Computed_upvr_result1_upvr_3 (readonly)
		]]
		return TextService_upvr:GetTextSize(Computed_upvr_result1_upvr_2:get(), Computed_upvr_result1_upvr_3:get().Y / 2, Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge)).X
	end)
	local var10_result1_upvr = Computed_upvr(function() -- Line 109
		--[[ Upvalues[2]:
			[1]: Computed_upvr_result1_upvr_3 (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		return Computed_upvr_result1_upvr_3:get().Y * (1 - any_GetValues_result1_upvw.IconSize:get()) / 2
	end)
	local Spring_upvr_result1 = Spring_upvr(Computed_upvr(function() -- Line 113
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
		Size = Computed_upvr(function() -- Line 125
			--[[ Upvalues[4]:
				[1]: Computed_upvr_result1_upvr_3 (readonly)
				[2]: any_GetValues_result1_upvw (read and write)
				[3]: Computed_upvr_result1_upvr (readonly)
				[4]: var10_result1_upvr (readonly)
			]]
			local var38
			if not var38 then
				var38 = Vector2.zero
			end
			var38 = any_GetValues_result1_upvw.IconSize:get()
			if any_GetValues_result1_upvw.Count:get() then
				var38 = 3
			else
				var38 = 2
			end
			return UDim2.new(0, var38.Y * var38 + Computed_upvr_result1_upvr:get() + var10_result1_upvr:get() * var38 - 1, 1, 0)
		end);
		Visible = any_GetValues_result1_upvw.Visible;
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 64
			--[[ Upvalues[4]:
				[1]: any_GetValues_result1_upvw (read and write)
				[2]: module_upvr (copied, readonly)
				[3]: var8_result1_upvr (readonly)
				[4]: var8_result1_upvr_3 (readonly)
			]]
			if any_GetValues_result1_upvw.Selected:get() then
				return module_upvr.Selected
			end
			if not any_GetValues_result1_upvw.Disabled:get() then
				if var8_result1_upvr:get() then
					return module_upvr.MouseDown
				end
				if var8_result1_upvr_3:get() then
					return module_upvr.Hover
				end
				return module_upvr.Default
			end
			return module_upvr.Default
		end), 20);
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		BackgroundTransparency = Spring_upvr_result1;
		[Ref_upvr] = Value_upvr();
		[module_upvr_2.Out("AbsoluteSize")] = var8_result1_upvr_2;
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 141
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr (readonly)
			]]
			var8_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 145
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr (readonly)
			]]
			var8_result1_upvr:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 149
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr_3 (readonly)
			]]
			var8_result1_upvr_3:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 153
			--[[ Upvalues[2]:
				[1]: var8_result1_upvr_3 (readonly)
				[2]: var8_result1_upvr (readonly)
			]]
			var8_result1_upvr_3:set(false)
			var8_result1_upvr:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 158
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			local any_get_result1 = any_GetValues_result1_upvw.OnClick:get()
			if any_get_result1 and not any_GetValues_result1_upvw.Disabled:get() then
				any_get_result1()
			end
		end;
		[Children_upvr] = {New_upvr("UIListLayout")({
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = Computed_upvr(function() -- Line 171
				--[[ Upvalues[1]:
					[1]: var10_result1_upvr (readonly)
				]]
				return UDim.new(0, var10_result1_upvr:get())
			end);
		}), New_upvr("UIPadding")({
			PaddingLeft = Computed_upvr(function() -- Line 174
				--[[ Upvalues[1]:
					[1]: var10_result1_upvr (readonly)
				]]
				return UDim.new(0, var10_result1_upvr:get())
			end);
			PaddingRight = Computed_upvr(function() -- Line 175
				--[[ Upvalues[1]:
					[1]: var10_result1_upvr (readonly)
				]]
				return UDim.new(0, var10_result1_upvr:get())
			end);
		}), New_upvr("ImageLabel")({
			Name = "Icon";
			Image = any_GetValues_result1_upvw.Icon;
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Position = Computed_upvr(function() -- Line 183
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_3 (readonly)
				]]
				return UDim2.new(0, Computed_upvr_result1_upvr_3:get().Y / 2, 0.5, 0)
			end);
			Size = Computed_upvr(function() -- Line 186
				--[[ Upvalues[2]:
					[1]: Computed_upvr_result1_upvr_3 (readonly)
					[2]: any_GetValues_result1_upvw (read and write)
				]]
				return UDim2.new(0, Computed_upvr_result1_upvr_3:get().Y * any_GetValues_result1_upvw.IconSize:get(), 0, Computed_upvr_result1_upvr_3:get().Y * any_GetValues_result1_upvw.IconSize:get())
			end);
			ImageTransparency = Spring_upvr_result1;
		}), New_upvr("TextLabel")({
			Visible = Computed_upvr(function() -- Line 193
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				local var56
				if any_GetValues_result1_upvw.Count:get() == nil then
					var56 = false
				else
					var56 = true
				end
				return var56
			end);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			AnchorPoint = Vector2.new(0, 0.5);
			Size = Computed_upvr(function() -- Line 197
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr (readonly)
				]]
				return UDim2.new(0, Computed_upvr_result1_upvr:get(), 0.5, 0)
			end);
			Text = Computed_upvr_result1_upvr_2;
			TextSize = Computed_upvr(function() -- Line 202
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_3 (readonly)
				]]
				local any_get_result1_3 = Computed_upvr_result1_upvr_3:get()
				if not any_get_result1_3 then
					any_get_result1_3 = Vector2.zero
				end
				return any_get_result1_3.Y / 2
			end);
			Font = Enum.Font.GothamMedium;
			TextColor3 = Spring_upvr(Computed_upvr(function() -- Line 206
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