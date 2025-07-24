-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:56
-- Luau version 6, Types version 3
-- Time taken: 0.006113 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_3_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_3_upvr.Value
local Computed_upvr = module_3_upvr.Computed
local var1_2_upvr = require(Utils)
local New_upvr = module_3_upvr.New
local OnChange_upvr = module_3_upvr.OnChange
local Children_upvr = module_3_upvr.Children
local OnEvent_upvr = module_3_upvr.OnEvent
local ScaledText_upvr = require(script.Parent.ScaledText)
local Spring_upvr = module_3_upvr.Spring
return function(arg1) -- Line 42
	--[[ Upvalues[11]:
		[1]: module_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: var1_2_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: OnChange_upvr (readonly)
		[8]: Children_upvr (readonly)
		[9]: OnEvent_upvr (readonly)
		[10]: ScaledText_upvr (readonly)
		[11]: Spring_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Parent = module_upvr.Nil;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.zero;
		LayoutOrder = 0;
		OnChange = module_upvr.Nil;
		LabelPrefix = module_upvr.Nil;
		Value = module_upvr.Nil;
		Placeholder = "Pick an option";
		Options = {};
		Disabled = false;
		Visible = true;
		TextTransparency = 0;
		TrayOpen = false;
		Colors = {
			Default = Color3.fromRGB(20, 20, 20);
			MouseDown = Color3.fromRGB(15, 15, 15);
			Hover = Color3.fromRGB(30, 30, 30);
		};
		TextColor = {
			Disabled = Color3.fromRGB(128, 128, 128);
			Default = Color3.fromRGB(255, 255, 255);
		};
	})
	local var5_result1_upvr_3 = Value_upvr(0)
	local Value_upvr_result1_upvr = Value_upvr()
	local var6_result1_upvr_4 = Computed_upvr(function() -- Line 91
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var1_2_upvr (copied, readonly)
		]]
		local any_get_result1_5_upvr = any_GetValues_result1_upvw.Value:get()
		return var1_2_upvr.filter(any_GetValues_result1_upvw.Options:get(), function(arg1_3) -- Line 95
			--[[ Upvalues[1]:
				[1]: any_get_result1_5_upvr (readonly)
			]]
			local var29
			if arg1_3.value == any_get_result1_5_upvr then
				var29 = false
			else
				var29 = true
			end
			return var29
		end)
	end)
	local var6_result1_upvr_2 = Computed_upvr(function() -- Line 103
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr_3 (readonly)
		]]
		return UDim.new(0, 0.225 * var5_result1_upvr_3:get())
	end)
	local var5_result1_upvr_2 = Value_upvr(false)
	local var5_result1_upvr = Value_upvr(false)
	local TrayOpen_upvr = any_GetValues_result1_upvw.TrayOpen
	local module_2 = {
		Name = "Dropdown";
		Parent = any_GetValues_result1_upvw.Parent;
		Size = any_GetValues_result1_upvw.Size;
		Position = any_GetValues_result1_upvw.Position;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		BackgroundTransparency = 1;
		Visible = any_GetValues_result1_upvw.Visible;
	}
	local any_onChange_result1_upvr = module_3_upvr.Observer(Value_upvr_result1_upvr):onChange(function() -- Line 75
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: var5_result1_upvr_3 (readonly)
		]]
		local any_get_result1_4 = Value_upvr_result1_upvr:get()
		if any_get_result1_4 then
			var5_result1_upvr_3:set(any_get_result1_4.AbsoluteSize.Y)
		end
	end)
	module_2[module_3_upvr.Cleanup] = function() -- Line 123
		--[[ Upvalues[2]:
			[1]: module_3_upvr (copied, readonly)
			[2]: any_onChange_result1_upvr (readonly)
		]]
		module_3_upvr.cleanup(any_onChange_result1_upvr)
	end
	module_2[OnChange_upvr("AbsoluteSize")] = function(arg1_4) -- Line 127
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr_3 (readonly)
		]]
		var5_result1_upvr_3:set(arg1_4.Y)
	end
	local tbl_5 = {}
	local tbl_3 = {
		Size = UDim2.fromScale(1, 1);
		Text = "";
		BackgroundColor3 = module_3_upvr.Spring(module_3_upvr.Computed(function() -- Line 134
			--[[ Upvalues[4]:
				[1]: any_GetValues_result1_upvw (read and write)
				[2]: var5_result1_upvr (readonly)
				[3]: TrayOpen_upvr (readonly)
				[4]: var5_result1_upvr_2 (readonly)
			]]
			if any_GetValues_result1_upvw.Disabled:get() then
				return any_GetValues_result1_upvw.Colors:get().Default
			end
			if var5_result1_upvr:get() then
				return any_GetValues_result1_upvw.Colors:get().MouseDown
			end
			if TrayOpen_upvr:get() or var5_result1_upvr_2:get() then
				return any_GetValues_result1_upvw.Colors:get().Hover
			end
			return any_GetValues_result1_upvw.Colors:get().Default
		end));
		[OnEvent_upvr("Activated")] = function() -- Line 149
			--[[ Upvalues[1]:
				[1]: TrayOpen_upvr (readonly)
			]]
			TrayOpen_upvr:set(not TrayOpen_upvr:get())
		end;
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 153
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr (readonly)
			]]
			var5_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 157
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr (readonly)
			]]
			var5_result1_upvr:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 161
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr_2 (readonly)
			]]
			var5_result1_upvr_2:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 165
			--[[ Upvalues[2]:
				[1]: var5_result1_upvr_2 (readonly)
				[2]: var5_result1_upvr (readonly)
			]]
			var5_result1_upvr_2:set(false)
			var5_result1_upvr:set(false)
		end;
	}
	local tbl = {}
	local tbl_4 = {
		Name = "Label";
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.fromScale(0.1, 0.5);
		Size = Computed_upvr(function() -- Line 191
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr_3 (readonly)
			]]
			return UDim2.new(0.9, -var5_result1_upvr_3:get(), 0.5, 0)
		end);
		TextTransparency = any_GetValues_result1_upvw.TextTransparency;
		RichText = true;
	}
	local var6_result1_upvr_3 = Computed_upvr(function() -- Line 82
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var1_2_upvr (copied, readonly)
		]]
		local any_get_result1_3_upvr = any_GetValues_result1_upvw.Value:get()
		if any_get_result1_3_upvr then
			return var1_2_upvr.search(any_GetValues_result1_upvw.Options:get(), function(arg1_2) -- Line 86
				--[[ Upvalues[1]:
					[1]: any_get_result1_3_upvr (readonly)
				]]
				local var25
				if arg1_2.value ~= any_get_result1_3_upvr then
					var25 = false
				else
					var25 = true
				end
				return var25
			end)
		end
	end)
	tbl_4.Text = Computed_upvr(function() -- Line 197
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr_3 (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_7 = var6_result1_upvr_3:get()
		if not any_get_result1_7 then
			local any_get_result1_6 = any_GetValues_result1_upvw.Placeholder:get()
			if not any_get_result1_6 then
				any_get_result1_6 = any_GetValues_result1_upvw.LabelPrefix:get()
			end
			return any_get_result1_6
		end
		local label = any_get_result1_7.label
		local any_get_result1_2 = any_GetValues_result1_upvw.LabelPrefix:get()
		if any_get_result1_2 then
			return string.format("<font color=\"#%s\">%s</font> %s", any_GetValues_result1_upvw.TextColor:get().Disabled:ToHex(), any_get_result1_2, label)
		end
		do
			return label
		end
		return any_get_result1_7.label
	end)
	local tbl_2 = {
		Name = "Tray";
		Position = UDim2.new(0, 0, 1, 8);
	}
	local var6_result1_upvr = Computed_upvr(function() -- Line 99
		--[[ Upvalues[1]:
			[1]: var6_result1_upvr_4 (readonly)
		]]
		return #var6_result1_upvr_4:get()
	end)
	tbl_2.Size = Computed_upvr(function() -- Line 247
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: var5_result1_upvr_3 (readonly)
		]]
		return UDim2.new(1, 0, 0, var6_result1_upvr:get() * var5_result1_upvr_3:get())
	end)
	tbl_2.Visible = TrayOpen_upvr
	tbl_2.ClipsDescendants = true
	tbl_2.BackgroundColor3 = any_GetValues_result1_upvw.Colors:get().Default
	tbl_2.ZIndex = 100
	tbl_2[Children_upvr] = {New_upvr("UICorner")({
		CornerRadius = var6_result1_upvr_2;
	}), New_upvr("UIStroke")({
		Name = "StandardStroke";
		Color = Color3.fromRGB(79, 84, 95);
		Thickness = 1.5;
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	}), New_upvr("UIListLayout")({
		SortOrder = Enum.SortOrder.LayoutOrder;
	}), module_3_upvr.ForPairs(var6_result1_upvr_4, function(arg1_5, arg2) -- Line 269
		--[[ Upvalues[8]:
			[1]: New_upvr (copied, readonly)
			[2]: var5_result1_upvr_3 (readonly)
			[3]: any_GetValues_result1_upvw (read and write)
			[4]: OnEvent_upvr (copied, readonly)
			[5]: TrayOpen_upvr (readonly)
			[6]: Children_upvr (copied, readonly)
			[7]: ScaledText_upvr (copied, readonly)
			[8]: var6_result1_upvr_2 (readonly)
		]]
		local module = {
			Name = arg2.value;
			Size = UDim2.new(1, 0, 0, var5_result1_upvr_3:get());
			BackgroundColor3 = any_GetValues_result1_upvw.Colors:get().Default;
			AutoButtonColor = true;
			Text = "";
		}
		module.LayoutOrder = arg1_5
		module[OnEvent_upvr("Activated")] = function() -- Line 279
			--[[ Upvalues[3]:
				[1]: any_GetValues_result1_upvw (copied, read and write)
				[2]: arg2 (readonly)
				[3]: TrayOpen_upvr (copied, readonly)
			]]
			any_GetValues_result1_upvw.Value:set(arg2.value)
			TrayOpen_upvr:set(false)
			local any_get_result1_8 = any_GetValues_result1_upvw.OnChange:get()
			if any_get_result1_8 then
				any_get_result1_8(arg2.value)
			end
		end
		module[Children_upvr] = {ScaledText_upvr({
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.8, 0.5);
			Text = arg2.label;
		}), New_upvr("UICorner")({
			CornerRadius = UDim.new(0, var6_result1_upvr_2:get().Offset + 1);
		})}
		return arg1_5, New_upvr("TextButton")(module)
	end, module_3_upvr.cleanup)}
	tbl[1] = New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.225, 0);
	})
	tbl[2] = New_upvr("UIStroke")({
		Name = "StandardStroke";
		Color = Color3.fromRGB(79, 84, 95);
		Thickness = 1.5;
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	})
	tbl[3] = ScaledText_upvr(tbl_4)
	tbl[4] = New_upvr("ImageLabel")({
		Name = "Arrow";
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = Computed_upvr(function() -- Line 220
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr_3 (readonly)
			]]
			return UDim2.new(1, -var5_result1_upvr_3:get() / 2, 0.5, 0)
		end);
		Size = Computed_upvr(function() -- Line 225
			--[[ Upvalues[1]:
				[1]: var5_result1_upvr_3 (readonly)
			]]
			local any_get_result1 = var5_result1_upvr_3:get()
			return UDim2.fromOffset(any_get_result1 / 4, any_get_result1 / 4 * 0.5981308411214953)
		end);
		BackgroundTransparency = 1;
		Image = "rbxassetid://14908359196";
		ImageColor3 = any_GetValues_result1_upvw.TextColor:get().Disabled;
		Rotation = Spring_upvr(Computed_upvr(function() -- Line 233
			--[[ Upvalues[1]:
				[1]: TrayOpen_upvr (readonly)
			]]
			if TrayOpen_upvr:get() then
				return 180
			end
			return 0
		end), 30);
	})
	tbl[5] = New_upvr("Frame")(tbl_2)
	tbl_3[Children_upvr] = tbl
	tbl_5[1] = New_upvr("TextButton")(tbl_3)
	module_2[Children_upvr] = tbl_5
	return New_upvr("Frame")(module_2)
end