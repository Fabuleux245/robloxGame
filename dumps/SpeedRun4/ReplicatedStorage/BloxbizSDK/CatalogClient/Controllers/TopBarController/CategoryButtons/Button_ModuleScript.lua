-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:53
-- Luau version 6, Types version 3
-- Time taken: 0.007002 seconds

local Utils = script.Parent.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr_2 = {
	TextColor = {
		Default = Color3.fromRGB(255, 255, 255);
		MouseDown = Color3.fromRGB(60, 60, 60);
		Hover = Color3.fromRGB(255, 255, 255);
		Selected = Color3.fromRGB(0, 0, 0);
	};
	BackgroundColor = {
		Default = Color3.fromRGB(41, 43, 48);
		Hover = Color3.fromRGB(88, 92, 102);
		MouseDown = Color3.fromRGB(196, 204, 224);
		Selected = Color3.new(1, 1, 1);
	};
}
local module_upvr_3 = require(Utils:WaitForChild("FusionProps"))
local Computed_upvr = module_upvr.Computed
local TextService_upvr = game:GetService("TextService")
local Value_upvr = module_upvr.Value
local Spring_upvr = module_upvr.Spring
local New_upvr = module_upvr.New
local Out_upvr = module_upvr.Out
local Children_upvr = module_upvr.Children
local OnEvent_upvr = module_upvr.OnEvent
local TouchEnabled_upvr = game:GetService("UserInputService").TouchEnabled
local mouse_upvr = game:GetService("Players").LocalPlayer:GetMouse()
return function(arg1) -- Line 47
	--[[ Upvalues[13]:
		[1]: module_upvr_3 (readonly)
		[2]: Computed_upvr (readonly)
		[3]: TextService_upvr (readonly)
		[4]: Value_upvr (readonly)
		[5]: Spring_upvr (readonly)
		[6]: module_upvr_2 (readonly)
		[7]: New_upvr (readonly)
		[8]: Out_upvr (readonly)
		[9]: Children_upvr (readonly)
		[10]: module_upvr (readonly)
		[11]: OnEvent_upvr (readonly)
		[12]: TouchEnabled_upvr (readonly)
		[13]: mouse_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr_3.GetValues(arg1, {
		Parent = module_upvr_3.Nil;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.zero;
		Visible = true;
		Id = 0;
		SelectedId = -1;
		OnClick = module_upvr_3.Nil;
		Icon = module_upvr_3.Nil;
		Text = "";
		LayoutOrder = 1;
		SizeRef = Vector2.zero;
	})
	local SizeRef_upvr = any_GetValues_result1_upvw.SizeRef
	local Computed_upvr_result1_upvr_4 = Computed_upvr(function() -- Line 64
		--[[ Upvalues[1]:
			[1]: SizeRef_upvr (readonly)
		]]
		return SizeRef_upvr:get().Y / 2
	end)
	local Computed_upvr_result1_upvr_2 = Computed_upvr(function() -- Line 67
		--[[ Upvalues[3]:
			[1]: TextService_upvr (copied, readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: Computed_upvr_result1_upvr_4 (readonly)
		]]
		return TextService_upvr:GetTextSize(any_GetValues_result1_upvw.Text:get(), Computed_upvr_result1_upvr_4:get(), Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge)).X
	end)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 70
		--[[ Upvalues[1]:
			[1]: SizeRef_upvr (readonly)
		]]
		return SizeRef_upvr:get().Y / 2
	end)
	local Value_upvr_result1_upvr = Value_upvr(false)
	local var12_result1_upvr = Value_upvr(false)
	local IsSelected_upvr = any_GetValues_result1_upvw.IsSelected
	if not IsSelected_upvr then
		IsSelected_upvr = Computed_upvr
		IsSelected_upvr = IsSelected_upvr(function() -- Line 90
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			local var36
			if any_GetValues_result1_upvw.SelectedId:get() ~= any_GetValues_result1_upvw.Id:get() then
				var36 = false
			else
				var36 = true
			end
			return var36
		end)
	end
	local Spring_upvr_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 111
		--[[ Upvalues[4]:
			[1]: IsSelected_upvr (readonly)
			[2]: module_upvr_2 (copied, readonly)
			[3]: Value_upvr_result1_upvr (readonly)
			[4]: var12_result1_upvr (readonly)
		]]
		if IsSelected_upvr:get() then
			return module_upvr_2.TextColor.Selected
		end
		if Value_upvr_result1_upvr:get() then
			return module_upvr_2.TextColor.Hover
		end
		if var12_result1_upvr:get() then
			return module_upvr_2.TextColor.MouseDown
		end
		return module_upvr_2.TextColor.Default
	end), 20, 1)
	local var40_upvw
	local module = {
		Name = any_GetValues_result1_upvw.Id:get() or "feed";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		AutoButtonColor = false;
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 95
			--[[ Upvalues[4]:
				[1]: IsSelected_upvr (readonly)
				[2]: module_upvr_2 (copied, readonly)
				[3]: Value_upvr_result1_upvr (readonly)
				[4]: var12_result1_upvr (readonly)
			]]
			if IsSelected_upvr:get() then
				return module_upvr_2.BackgroundColor.Selected
			end
			if Value_upvr_result1_upvr:get() then
				return module_upvr_2.BackgroundColor.Hover
			end
			if var12_result1_upvr:get() then
				return module_upvr_2.BackgroundColor.MouseDown
			end
			return module_upvr_2.BackgroundColor.Default
		end), 20, 1);
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		Position = any_GetValues_result1_upvw.Position;
	}
	local Computed_upvr_result1_upvr_3 = Computed_upvr(function() -- Line 74
		--[[ Upvalues[4]:
			[1]: Computed_upvr_result1_upvr_4 (readonly)
			[2]: Computed_upvr_result1_upvr_2 (readonly)
			[3]: any_GetValues_result1_upvw (read and write)
			[4]: Computed_upvr_result1_upvr (readonly)
		]]
		local var31 = Computed_upvr_result1_upvr_4:get() + Computed_upvr_result1_upvr_2:get()
		if any_GetValues_result1_upvw.Icon:get() then
			var31 += Computed_upvr_result1_upvr:get()
			if 0 < #any_GetValues_result1_upvw.Text:get() then
				var31 += Computed_upvr_result1_upvr_4:get() / 2
			end
		end
		return var31
	end)
	module.Size = Computed_upvr(function() -- Line 143
		--[[ Upvalues[1]:
			[1]: Computed_upvr_result1_upvr_3 (readonly)
		]]
		return UDim2.new(0, Computed_upvr_result1_upvr_3:get(), 1, 0)
	end)
	module.SizeConstraint = Enum.SizeConstraint.RelativeYY
	module.Visible = any_GetValues_result1_upvw.Visible
	module[Out_upvr("AbsoluteSize")] = SizeRef_upvr
	module[Children_upvr] = {New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.21, 0);
	}), New_upvr("UIPadding")({
		PaddingLeft = Computed_upvr(function() -- Line 157
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr_4 (readonly)
			]]
			return UDim.new(0, Computed_upvr_result1_upvr_4:get())
		end);
		PaddingRight = Computed_upvr(function() -- Line 158
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr_4 (readonly)
			]]
			return UDim.new(0, Computed_upvr_result1_upvr_4:get())
		end);
	}), New_upvr("UIListLayout")({
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = Computed_upvr(function() -- Line 165
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr_4 (readonly)
			]]
			return UDim.new(0, Computed_upvr_result1_upvr_4:get() / 2)
		end);
	}), Computed_upvr(function() -- Line 169
		--[[ Upvalues[5]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: New_upvr (copied, readonly)
			[3]: Computed_upvr (copied, readonly)
			[4]: Computed_upvr_result1_upvr (readonly)
			[5]: Spring_upvr_result1_upvr (readonly)
		]]
		if any_GetValues_result1_upvw.Icon:get() then
			return New_upvr("ImageLabel")({
				Name = "Icon";
				Size = Computed_upvr(function() -- Line 173
					--[[ Upvalues[1]:
						[1]: Computed_upvr_result1_upvr (copied, readonly)
					]]
					return UDim2.fromOffset(Computed_upvr_result1_upvr:get(), Computed_upvr_result1_upvr:get())
				end);
				BackgroundTransparency = 1;
				ImageColor3 = Spring_upvr_result1_upvr;
				Image = any_GetValues_result1_upvw.Icon:get();
			})
		end
	end, module_upvr.cleanup), New_upvr("TextLabel")({
		LayoutOrder = 2;
		Text = any_GetValues_result1_upvw.Text;
		TextColor3 = Spring_upvr_result1_upvr;
		TextSize = Computed_upvr_result1_upvr_4;
		TextWrapped = false;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = Computed_upvr(function() -- Line 191
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr_2 (readonly)
			]]
			return UDim2.new(0, Computed_upvr_result1_upvr_2:get(), 1, 0)
		end);
		Visible = Computed_upvr(function() -- Line 194
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			local var57
			if 0 >= #any_GetValues_result1_upvw.Text:get() then
				var57 = false
			else
				var57 = true
			end
			return var57
		end);
	})}
	module[OnEvent_upvr("Activated")] = function() -- Line 200
		--[[ Upvalues[2]:
			[1]: TouchEnabled_upvr (copied, readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		if TouchEnabled_upvr then
			local any_get_result1_2 = any_GetValues_result1_upvw.OnClick:get()
			if any_get_result1_2 then
				any_get_result1_2()
			end
		end
	end
	module[OnEvent_upvr("MouseButton1Down")] = function() -- Line 209
		--[[ Upvalues[4]:
			[1]: TouchEnabled_upvr (copied, readonly)
			[2]: var12_result1_upvr (readonly)
			[3]: var40_upvw (read and write)
			[4]: mouse_upvr (copied, readonly)
		]]
		if not TouchEnabled_upvr then
			var12_result1_upvr:set(true)
			var40_upvw = mouse_upvr.X
		end
	end
	module[OnEvent_upvr("MouseButton1Up")] = function() -- Line 216
		--[[ Upvalues[6]:
			[1]: var40_upvw (read and write)
			[2]: TouchEnabled_upvr (copied, readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: Value_upvr_result1_upvr (readonly)
			[5]: mouse_upvr (copied, readonly)
			[6]: any_GetValues_result1_upvw (read and write)
		]]
		if var40_upvw then
			if not TouchEnabled_upvr then
				var12_result1_upvr:set(false)
				if Value_upvr_result1_upvr:get() then
					if math.abs(var40_upvw - mouse_upvr.X) < 30 then
						local any_get_result1_4 = any_GetValues_result1_upvw.OnClick:get()
						if any_get_result1_4 then
							any_get_result1_4()
						end
					end
				end
			end
		end
	end
	module[OnEvent_upvr("MouseEnter")] = function() -- Line 229
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr (readonly)
		]]
		Value_upvr_result1_upvr:set(true)
	end
	module[OnEvent_upvr("MouseLeave")] = function() -- Line 233
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: var12_result1_upvr (readonly)
		]]
		Value_upvr_result1_upvr:set(false)
		var12_result1_upvr:set(false)
	end
	return New_upvr("TextButton")(module)
end