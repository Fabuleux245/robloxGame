-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:45
-- Luau version 6, Types version 3
-- Time taken: 0.006919 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr_2 = {
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
local Value_upvr = module_upvr.Value
local Spring_upvr = module_upvr.Spring
local Computed_upvr = module_upvr.Computed
local Observer_upvr = module_upvr.Observer
local New_upvr = module_upvr.New
local Ref_upvr = module_upvr.Ref
local OnChange_upvr = module_upvr.OnChange
local OnEvent_upvr = module_upvr.OnEvent
local Children_upvr = module_upvr.Children
local ScaledText_upvr = require(Parent.CatalogClient.Components.ScaledText)
return function(arg1) -- Line 39
	--[[ Upvalues[14]:
		[1]: module_upvr_4 (readonly)
		[2]: Value_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: Observer_upvr (readonly)
		[8]: New_upvr (readonly)
		[9]: Ref_upvr (readonly)
		[10]: OnChange_upvr (readonly)
		[11]: module_upvr (readonly)
		[12]: OnEvent_upvr (readonly)
		[13]: Children_upvr (readonly)
		[14]: ScaledText_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr_4.GetValues(arg1, {
		Parent = module_upvr_4.Nil;
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		Visible = true;
		Text = "";
		Count = module_upvr_4.Nil;
		Icon = "";
		Alignment = "Left";
		Disabled = false;
		Padding = 8;
		Selected = false;
		OnClick = module_upvr_4.Nil;
		IconSize = 0.6;
	})
	local Value_upvr_result1_upvr = Value_upvr(false)
	local var8_result1_upvr_3 = Value_upvr(false)
	local function _() -- Line 81
		--[[ Upvalues[3]:
			[1]: var8_result1_upvr_3 (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: module_upvr_3 (copied, readonly)
		]]
		if var8_result1_upvr_3:get() or any_GetValues_result1_upvw.Disabled:get() then
			return module_upvr_3.Disabled
		end
		return module_upvr_3.Default
	end
	local var8_result1_upvr_4 = Value_upvr()
	local var8_result1_upvr_2 = Value_upvr(0)
	local var8_result1_upvr = Value_upvr(0)
	local Spring_upvr_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 111
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		if any_GetValues_result1_upvw.Disabled:get() then
			return 0.5
		end
		return 0.1
	end), 30)
	local module = {
		Parent = any_GetValues_result1_upvw.Parent;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		Visible = any_GetValues_result1_upvw.Visible;
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 61
			--[[ Upvalues[4]:
				[1]: any_GetValues_result1_upvw (read and write)
				[2]: module_upvr_2 (copied, readonly)
				[3]: var8_result1_upvr_3 (readonly)
				[4]: Value_upvr_result1_upvr (readonly)
			]]
			if any_GetValues_result1_upvw.Selected:get() then
				return module_upvr_2.Selected
			end
			if not any_GetValues_result1_upvw.Disabled:get() then
				if var8_result1_upvr_3:get() then
					return module_upvr_2.MouseDown
				end
				if Value_upvr_result1_upvr:get() then
					return module_upvr_2.Hover
				end
				return module_upvr_2.Default
			end
			return module_upvr_2.Default
		end), 20);
		LayoutOrder = Computed_upvr(function() -- Line 127
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			if any_GetValues_result1_upvw.Alignment:get() == "Left" then
				return 1
			end
			return 2
		end);
		BackgroundTransparency = Spring_upvr_result1_upvr;
		[Ref_upvr] = var8_result1_upvr_4;
		[OnChange_upvr("AbsoluteSize")] = function(arg1_2) -- Line 138
			--[[ Upvalues[2]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: var8_result1_upvr (readonly)
			]]
			var8_result1_upvr_2:set(arg1_2.X)
			var8_result1_upvr:set(arg1_2.Y)
		end;
	}
	local any_onChange_result1_upvr = Observer_upvr(var8_result1_upvr_4):onChange(function() -- Line 94
		--[[ Upvalues[3]:
			[1]: var8_result1_upvr_4 (readonly)
			[2]: var8_result1_upvr_2 (readonly)
			[3]: var8_result1_upvr (readonly)
		]]
		local any_get_result1_2 = var8_result1_upvr_4:get()
		if any_get_result1_2 then
			var8_result1_upvr_2:set(any_get_result1_2.AbsoluteSize.X)
			var8_result1_upvr:set(any_get_result1_2.AbsoluteSize.Y)
		end
	end)
	module[module_upvr.Cleanup] = function() -- Line 142
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: any_onChange_result1_upvr (readonly)
		]]
		module_upvr.cleanup(any_onChange_result1_upvr)
	end
	module[OnEvent_upvr("MouseButton1Down")] = function() -- Line 146
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr_3 (readonly)
		]]
		var8_result1_upvr_3:set(true)
	end
	module[OnEvent_upvr("MouseButton1Up")] = function() -- Line 150
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr_3 (readonly)
		]]
		var8_result1_upvr_3:set(false)
	end
	module[OnEvent_upvr("MouseEnter")] = function() -- Line 154
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr (readonly)
		]]
		Value_upvr_result1_upvr:set(true)
	end
	module[OnEvent_upvr("MouseLeave")] = function() -- Line 158
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: var8_result1_upvr_3 (readonly)
		]]
		Value_upvr_result1_upvr:set(false)
		var8_result1_upvr_3:set(false)
	end
	module[OnEvent_upvr("Activated")] = function() -- Line 163
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1 = any_GetValues_result1_upvw.OnClick:get()
		if any_get_result1 and not any_GetValues_result1_upvw.Disabled:get() then
			any_get_result1()
		end
	end
	module[Children_upvr] = {Computed_upvr(function() -- Line 172
		--[[ Upvalues[6]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: New_upvr (copied, readonly)
			[3]: Computed_upvr (copied, readonly)
			[4]: var8_result1_upvr (readonly)
			[5]: Spring_upvr_result1_upvr (readonly)
			[6]: Children_upvr (copied, readonly)
		]]
		if type(any_GetValues_result1_upvw.Icon:get()) == "string" then
			return New_upvr("ImageLabel")({
				Name = "Icon";
				Image = any_GetValues_result1_upvw.Icon;
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Position = Computed_upvr(function() -- Line 179
					--[[ Upvalues[1]:
						[1]: var8_result1_upvr (copied, readonly)
					]]
					return UDim2.new(0, var8_result1_upvr:get() / 2, 0.5, 0)
				end);
				Size = Computed_upvr(function() -- Line 182
					--[[ Upvalues[2]:
						[1]: var8_result1_upvr (copied, readonly)
						[2]: any_GetValues_result1_upvw (copied, read and write)
					]]
					return UDim2.new(0, var8_result1_upvr:get() * any_GetValues_result1_upvw.IconSize:get(), 0, var8_result1_upvr:get() * any_GetValues_result1_upvw.IconSize:get())
				end);
				ImageTransparency = Spring_upvr_result1_upvr;
			})
		end
		return New_upvr("Frame")({
			Name = "Icon";
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = Computed_upvr(function() -- Line 192
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr (copied, readonly)
				]]
				return UDim2.new(0, var8_result1_upvr:get() / 2, 0.5, 0)
			end);
			Size = Computed_upvr(function() -- Line 195
				--[[ Upvalues[2]:
					[1]: var8_result1_upvr (copied, readonly)
					[2]: any_GetValues_result1_upvw (copied, read and write)
				]]
				return UDim2.new(0, var8_result1_upvr:get() * any_GetValues_result1_upvw.IconSize:get(), 0, var8_result1_upvr:get() * any_GetValues_result1_upvw.IconSize:get())
			end);
			[Children_upvr] = any_GetValues_result1_upvw.Icon:get()();
		})
	end, module_upvr.cleanup), ScaledText_upvr({
		Visible = Computed_upvr(function() -- Line 204
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			local var53
			if any_GetValues_result1_upvw.Count:get() == nil then
				var53 = false
			else
				var53 = true
			end
			return var53
		end);
		AnchorPoint = Vector2.new(0, 0.5);
		Position = Computed_upvr(function() -- Line 206
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr (readonly)
			]]
			return UDim2.new(0, var8_result1_upvr:get() - 3, 0.5, 0)
		end);
		Size = Computed_upvr(function() -- Line 209
			--[[ Upvalues[2]:
				[1]: var8_result1_upvr_2 (readonly)
				[2]: var8_result1_upvr (readonly)
			]]
			return UDim2.new(0, var8_result1_upvr_2:get() - var8_result1_upvr:get() - 5, 0.5, 0)
		end);
		Text = Computed_upvr(function() -- Line 212
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return tostring(any_GetValues_result1_upvw.Count:get())
		end);
		TextColor3 = Spring_upvr(Computed_upvr(function() -- Line 215
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			if any_GetValues_result1_upvw.Selected:get() then
				return Color3.new(0, 0, 0)
			end
			return Color3.new(1, 1, 1)
		end), 30);
	}), New_upvr("UIAspectRatioConstraint")({
		AspectRatio = Computed_upvr(function() -- Line 103
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			if any_GetValues_result1_upvw.Count:get() then
				return 1.8
			end
			return 1
		end);
		DominantAxis = Enum.DominantAxis.Height;
	}), New_upvr("UIStroke")({
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		Color = Color3.fromRGB(79, 84, 95);
		Thickness = 1.5;
	}), New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.25, 0);
	})}
	return New_upvr("TextButton")(module)
end