-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:38
-- Luau version 6, Types version 3
-- Time taken: 0.006453 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local tbl = {
	Color = {
		Default = Color3.fromRGB(121, 121, 121);
		Selected = Color3.fromRGB(255, 255, 255);
		Hover = Color3.fromRGB(150, 150, 150);
		MouseDown = Color3.fromRGB(130, 130, 130);
	};
	UnderlineThickness = 1;
}
local Spring_upvr = require(script.Parent.Parent.Generic.Spring)
local function Button_upvr(arg1) -- Line 31, Named "Button"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: Spring_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Cooldown = false;
		Selected = false;
		TotalWidth = module_upvr.Nil;
		Id = module_upvr.Nil;
		Data = module_upvr.Nil;
		OnClick = module_upvr.Nil;
		Parent = module_upvr.Nil;
		Text = "";
		TextSize = 30;
		TextScaled = false;
		Alignment = "Left";
	})
	local tbl_upvr = {
		Hovering = module_upvr_2.Value(false);
		HeldDown = module_upvr_2.Value(false);
		Selected = any_GetValues_result1_upvw.Selected;
		Enabled = module_upvr_2.Computed(function() -- Line 50
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return not any_GetValues_result1_upvw.Cooldown:get()
		end, module_upvr_2.cleanup);
	}
	return module_upvr_2.New("TextButton")({
		Name = any_GetValues_result1_upvw.Id;
		Parent = any_GetValues_result1_upvw.Parent;
		Text = any_GetValues_result1_upvw.Text;
		TextScaled = false;
		TextWrapped = false;
		TextColor3 = Spring_upvr(tbl_upvr, {
			Default = Color3.fromRGB(121, 121, 121);
			Selected = Color3.fromRGB(255, 255, 255);
			Hover = Color3.fromRGB(150, 150, 150);
			MouseDown = Color3.fromRGB(130, 130, 130);
			Disabled = Color3.fromRGB(130, 130, 130);
		}, 40);
		TextSize = any_GetValues_result1_upvw.TextSize;
		AutoButtonColor = false;
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		LayoutOrder = 14;
		Position = UDim2.fromScale(-4.88e-08, 0);
		Size = any_GetValues_result1_upvw.Size;
		[module_upvr_2.OnEvent("Activated")] = function() -- Line 81
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			local any_get_result1 = any_GetValues_result1_upvw.OnClick:get()
			if any_get_result1 then
				any_get_result1(any_GetValues_result1_upvw.Id:get())
			end
		end;
		[module_upvr_2.OnEvent("MouseButton1Down")] = function() -- Line 89
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.HeldDown:set(true)
		end;
		[module_upvr_2.OnEvent("MouseButton1Up")] = function() -- Line 93
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.HeldDown:set(false)
		end;
		[module_upvr_2.OnEvent("MouseEnter")] = function() -- Line 97
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.Hovering:set(true)
		end;
		[module_upvr_2.OnEvent("MouseLeave")] = function() -- Line 101
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			tbl_upvr.Hovering:set(false)
			tbl_upvr.HeldDown:set(false)
		end;
	})
end
local Value_upvr = module_upvr_2.Value
local Computed_upvr = module_upvr_2.Computed
local TextService_upvr = game:GetService("TextService")
local New_upvr = module_upvr_2.New
return function(arg1) -- Line 108
	--[[ Upvalues[7]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: TextService_upvr (readonly)
		[6]: Button_upvr (readonly)
		[7]: New_upvr (readonly)
	]]
	local any_GetValues_result1_upvw_2 = module_upvr.GetValues(arg1, {
		Parent = module_upvr.Nil;
		Buttons = {};
		UIListLayoutIncluded = false;
		Selected = module_upvr.Nil;
		OnButtonClick = module_upvr.Nil;
		Cooldown = false;
		Alignment = "Left";
	})
	local function _() -- Line 125
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw_2 (read and write)
		]]
		return any_GetValues_result1_upvw_2.Size:get().Y
	end
	local function _() -- Line 129
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw_2 (read and write)
		]]
		return any_GetValues_result1_upvw_2.Size:get().X
	end
	local var20_result1_upvr = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 136
		--[[ Upvalues[1]:
			[1]: var20_result1_upvr (readonly)
		]]
		return var20_result1_upvr:get().Y / 1.5
	end)
	local Computed_upvr_result1_upvr_2 = Computed_upvr(function() -- Line 139
		--[[ Upvalues[1]:
			[1]: Computed_upvr_result1_upvr (readonly)
		]]
		return Computed_upvr_result1_upvr:get() / 2
	end)
	local var21_result1_upvr = Computed_upvr(function() -- Line 147
		--[[ Upvalues[4]:
			[1]: any_GetValues_result1_upvw_2 (read and write)
			[2]: TextService_upvr (copied, readonly)
			[3]: Computed_upvr_result1_upvr (readonly)
			[4]: Computed_upvr_result1_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var46
		for _, v in ipairs(any_GetValues_result1_upvw_2.Buttons:get()) do
			if not v.Hidden then
				var46 += 1
			end
		end
		return 0 + TextService_upvr:GetTextSize(v.Text, Computed_upvr_result1_upvr:get(), Enum.Font.Gotham, Vector2.new(math.huge, math.huge)).X + Computed_upvr_result1_upvr_2:get() * (var46 - 1)
	end)
	local var21_result1_upvr_2 = Computed_upvr(function() -- Line 143
		--[[ Upvalues[1]:
			[1]: var20_result1_upvr (readonly)
		]]
		return var20_result1_upvr:get().X
	end)
	local module = {
		Name = "SortSelector";
		AnchorPoint = Vector2.new(0, 0.5);
		BackgroundColor3 = Color3.fromRGB(20, 20, 20);
		Position = UDim2.fromScale(0, 0.5);
		Size = any_GetValues_result1_upvw_2.Size;
		Parent = any_GetValues_result1_upvw_2.Parent;
		[module_upvr_2.Ref] = Value_upvr();
		[module_upvr_2.Out("AbsoluteSize")] = var20_result1_upvr;
		[module_upvr_2.Out("Parent")] = Value_upvr();
	}
	local tbl_upvr_2 = {}
	module[module_upvr_2.Cleanup] = function() -- Line 218
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: tbl_upvr_2 (readonly)
		]]
		module_upvr_2.cleanup(tbl_upvr_2)
	end
	module[module_upvr_2.Children] = {module_upvr_2.New("Frame")({
		AnchorPoint = Vector2.new(0, 0.5);
		Name = "Holder";
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0, 0.5);
		Size = UDim2.fromScale(1, 1);
		[module_upvr_2.Ref] = module_upvr_2.Value(nil);
		[module_upvr_2.Children] = {New_upvr("UIScale")({
			Scale = Computed_upvr(function() -- Line 164
				--[[ Upvalues[2]:
					[1]: var21_result1_upvr_2 (readonly)
					[2]: var21_result1_upvr (readonly)
				]]
				return math.min(var21_result1_upvr_2:get() / var21_result1_upvr:get(), 1)
			end);
		}), module_upvr_2.New("UIListLayout")({
			Name = "UIListLayout";
			Padding = Computed_upvr(function() -- Line 239
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_2 (readonly)
				]]
				return UDim.new(0, Computed_upvr_result1_upvr_2:get())
			end);
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		}), module_upvr_2.ForValues(any_GetValues_result1_upvw_2.Buttons, function(arg1_2) -- Line 168
			--[[ Upvalues[6]:
				[1]: any_GetValues_result1_upvw_2 (read and write)
				[2]: var21_result1_upvr (readonly)
				[3]: TextService_upvr (copied, readonly)
				[4]: Computed_upvr_result1_upvr (readonly)
				[5]: Button_upvr (copied, readonly)
				[6]: Computed_upvr (copied, readonly)
			]]
			any_GetValues_result1_upvw_2.Selected:get()
			any_GetValues_result1_upvw_2.Buttons:get()
			var21_result1_upvr:get()
			if not arg1_2.Hidden then
				return Button_upvr({
					Id = arg1_2.Id;
					Text = arg1_2.Text;
					Data = arg1_2.Data;
					Cooldown = any_GetValues_result1_upvw_2.Cooldown;
					Selected = Computed_upvr(function() -- Line 181
						--[[ Upvalues[2]:
							[1]: any_GetValues_result1_upvw_2 (copied, read and write)
							[2]: arg1_2 (readonly)
						]]
						local var53
						if any_GetValues_result1_upvw_2.Selected:get() ~= arg1_2.Id then
							var53 = false
						else
							var53 = true
						end
						return var53
					end);
					TextSize = Computed_upvr_result1_upvr;
					Alignment = any_GetValues_result1_upvw_2.Alignment;
					OnClick = function() -- Line 186, Named "OnClick"
						--[[ Upvalues[2]:
							[1]: any_GetValues_result1_upvw_2 (copied, read and write)
							[2]: arg1_2 (readonly)
						]]
						local any_get_result1_2 = any_GetValues_result1_upvw_2.OnButtonClick:get()
						if any_get_result1_2 then
							any_get_result1_2(arg1_2.Id)
						end
						task.wait()
						if any_GetValues_result1_upvw_2.Selected:get() ~= arg1_2.Id then
							any_GetValues_result1_upvw_2.Selected:set(arg1_2.Id)
						end
					end;
					Size = UDim2.new(0, TextService_upvr:GetTextSize(arg1_2.Text, Computed_upvr_result1_upvr:get(), Enum.Font.Gotham, Vector2.new(math.huge, math.huge)).X, 1, 0);
				})
			end
		end, module_upvr_2.cleanup)};
	})}
	return module_upvr_2.New("Frame")(module), function(arg1_3) -- Line 202, Named "setSelected"
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw_2 (read and write)
		]]
		any_GetValues_result1_upvw_2.Selected:set(arg1_3)
	end
end