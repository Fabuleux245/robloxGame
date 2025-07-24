-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:54
-- Luau version 6, Types version 3
-- Time taken: 0.008782 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr_2 = {
	Default = Color3.fromRGB(41, 43, 48);
	Collapsed = Color3.fromRGB(0, 0, 0);
	MouseDown = Color3.fromRGB(15, 15, 15);
	Hover = Color3.fromRGB(30, 30, 30);
}
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_2_upvr.Value
local Computed_upvr = module_2_upvr.Computed
local Spring_upvr = module_2_upvr.Spring
local New_upvr = module_2_upvr.New
local Ref_upvr = module_2_upvr.Ref
local Out_upvr = module_2_upvr.Out
local OnEvent_upvr = module_2_upvr.OnEvent
local Children_upvr = module_2_upvr.Children
return function(arg1) -- Line 34, Named "CategorySearchBar"
	--[[ Upvalues[11]:
		[1]: module_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: Spring_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: Ref_upvr (readonly)
		[9]: Out_upvr (readonly)
		[10]: OnEvent_upvr (readonly)
		[11]: Children_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		OnSearch = module_upvr.Nil;
		PlaceholderText = "Search keyword";
		Query = "";
		SearchBoxText = "";
		Visible = true;
		Disabled = false;
		Toggleable = false;
		Toggle = true;
	})
	local Value_upvr_result1_upvr_2 = Value_upvr(Vector2.zero)
	local Value_upvr_result1_upvr = Value_upvr()
	local var5_result1_upvr_3 = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 58
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr_3 (readonly)
		]]
		return var5_result1_upvr_3:get().Y
	end)
	local any_Computed_result1_upvr = module_2_upvr.Computed(function() -- Line 64
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		if any_GetValues_result1_upvw.Toggleable:get() then
			return any_GetValues_result1_upvw.Toggle:get()
		end
		return true
	end)
	local Size_upvr = any_GetValues_result1_upvw.Size
	local any_Computed_result1_upvr_2 = module_2_upvr.Computed(function() -- Line 73
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: Computed_upvr_result1_upvr (readonly)
		]]
		return UDim2.new(UDim.new(0, Computed_upvr_result1_upvr:get() * 1.04), any_GetValues_result1_upvw.Size:get().Y)
	end)
	local var7_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 90
		--[[ Upvalues[1]:
			[1]: any_Computed_result1_upvr (readonly)
		]]
		if any_Computed_result1_upvr:get() then
			return 0
		end
		return 1
	end), 20)
	local Computed_upvr_result1_upvr_2 = Computed_upvr(function() -- Line 97
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		if var7_result1_upvr:get() == 1 then
			return false
		end
		return true
	end)
	local var6_result1_upvr = Computed_upvr(function() -- Line 104
		--[[ Upvalues[2]:
			[1]: Computed_upvr_result1_upvr_2 (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_5 = Computed_upvr_result1_upvr_2:get()
		if any_get_result1_5 then
			if 0 >= #(any_GetValues_result1_upvw.Query:get() or "") then
				any_get_result1_5 = false
			else
				any_get_result1_5 = true
			end
		end
		return any_get_result1_5
	end)
	local var5_result1_upvr_2 = Value_upvr(false)
	local var5_result1_upvr = Value_upvr(false)
	local function search_upvr(arg1_2) -- Line 111, Named "search"
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_3 = any_GetValues_result1_upvw.OnSearch:get()
		local any_get_result1_2 = any_GetValues_result1_upvw.SearchBoxText:get()
		if any_GetValues_result1_upvw.Query.set then
			any_GetValues_result1_upvw.Query:set(any_get_result1_2)
		end
		any_GetValues_result1_upvw.SearchBoxText:set("")
		if any_get_result1_3 and (arg1_2 or 0 < #any_get_result1_2) then
			any_get_result1_3(any_get_result1_2)
		end
	end
	local module = {
		Name = "SearchBar";
		Text = "";
		BackgroundColor3 = module_2_upvr.Spring(module_2_upvr.Computed(function() -- Line 128
			--[[ Upvalues[4]:
				[1]: any_GetValues_result1_upvw (read and write)
				[2]: module_upvr_2 (copied, readonly)
				[3]: var5_result1_upvr (readonly)
				[4]: var5_result1_upvr_2 (readonly)
			]]
			if not any_GetValues_result1_upvw.Toggleable:get() or any_GetValues_result1_upvw.Toggle:get() then
				return module_upvr_2.Default
			end
			if var5_result1_upvr:get() then
				return module_upvr_2.MouseDown
			end
			if var5_result1_upvr_2:get() then
				return module_upvr_2.Hover
			end
			return module_upvr_2.Collapsed
		end));
		BorderSizePixel = 0;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		Position = any_GetValues_result1_upvw.Position;
		Size = Computed_upvr(function() -- Line 80
			--[[ Upvalues[4]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
				[2]: any_Computed_result1_upvr (readonly)
				[3]: Size_upvr (readonly)
				[4]: any_Computed_result1_upvr_2 (readonly)
			]]
			Value_upvr_result1_upvr_2:get()
			if any_Computed_result1_upvr:get() then
				return Size_upvr:get()
			end
			return any_Computed_result1_upvr_2:get()
		end);
		Parent = any_GetValues_result1_upvw.Parent;
		Visible = any_GetValues_result1_upvw.Visible;
		[Ref_upvr] = Value_upvr(nil);
		[Out_upvr("AbsoluteSize")] = var5_result1_upvr_3;
	}
	local any_connect_result1_upvr = game:GetService("RunService").RenderStepped:connect(function() -- Line 47
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
		]]
		if Value_upvr_result1_upvr_2:get() ~= workspace.Camera.ViewportSize then
			Value_upvr_result1_upvr_2:set(workspace.Camera.ViewportSize)
		end
	end)
	module[module_2_upvr.Cleanup] = function() -- Line 150
		--[[ Upvalues[2]:
			[1]: module_2_upvr (copied, readonly)
			[2]: any_connect_result1_upvr (readonly)
		]]
		module_2_upvr.cleanup(any_connect_result1_upvr)
	end
	module[OnEvent_upvr("MouseButton1Down")] = function() -- Line 154
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr (readonly)
		]]
		var5_result1_upvr:set(true)
	end
	module[OnEvent_upvr("MouseButton1Up")] = function() -- Line 158
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr (readonly)
		]]
		var5_result1_upvr:set(false)
	end
	module[OnEvent_upvr("MouseEnter")] = function() -- Line 162
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr_2 (readonly)
		]]
		var5_result1_upvr_2:set(true)
	end
	module[OnEvent_upvr("MouseLeave")] = function() -- Line 166
		--[[ Upvalues[2]:
			[1]: var5_result1_upvr_2 (readonly)
			[2]: var5_result1_upvr (readonly)
		]]
		var5_result1_upvr_2:set(false)
		var5_result1_upvr:set(false)
	end
	module[Children_upvr] = {New_upvr("ImageButton")({
		Name = "Icon";
		Image = "rbxassetid://10840634914";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = module_2_upvr.Computed(function() -- Line 178
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr (readonly)
			]]
			return UDim2.new(0, Computed_upvr_result1_upvr:get() / 2 * 1.04, 0.5, 0)
		end);
		Size = UDim2.fromScale(0.5, 0.5);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		ZIndex = 2;
		[OnEvent_upvr("Activated")] = function() -- Line 185
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			any_GetValues_result1_upvw.Toggle:set(not any_GetValues_result1_upvw.Toggle:get())
		end;
	}), New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.225, 0);
	}), New_upvr("UIStroke")({
		Name = "StandardStroke";
		Color = Color3.fromRGB(79, 84, 95);
		Thickness = 1.5;
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	}), New_upvr("TextBox")({
		Name = "SearchBox";
		FontFace = Font.fromEnum(Enum.Font.GothamMedium);
		PlaceholderColor3 = Color3.fromRGB(255, 255, 255);
		Text = any_GetValues_result1_upvw.SearchBoxText;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextScaled = true;
		TextSize = 24;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		AnchorPoint = Vector2.new(0, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		TextTransparency = var7_result1_upvr;
		Visible = Computed_upvr_result1_upvr_2;
		Position = module_2_upvr.Computed(function() -- Line 217
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr (readonly)
			]]
			return UDim2.new(0, Computed_upvr_result1_upvr:get() * 1.04, 0.5, 0)
		end);
		Size = module_2_upvr.Computed(function() -- Line 220
			--[[ Upvalues[2]:
				[1]: Computed_upvr_result1_upvr (readonly)
				[2]: var6_result1_upvr (readonly)
			]]
			local var55
			if var6_result1_upvr:get() then
				var55 = 1
			else
				var55 = 0.2
			end
			return UDim2.new(1, -Computed_upvr_result1_upvr:get() * (1.04 + var55), 0.5, 0)
		end);
		[Out_upvr("Text")] = any_GetValues_result1_upvw.SearchBoxText;
		[Ref_upvr] = Value_upvr_result1_upvr;
		[OnEvent_upvr("Focused")] = function() -- Line 228
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:get().TextSize = Value_upvr_result1_upvr:get().TextBounds.Y
			Value_upvr_result1_upvr:get().TextScaled = false
		end;
		[OnEvent_upvr("FocusLost")] = function(arg1_3) -- Line 233
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (readonly)
				[2]: search_upvr (readonly)
			]]
			Value_upvr_result1_upvr:get().TextScaled = true
			if arg1_3 then
				search_upvr()
			end
		end;
		[Children_upvr] = {New_upvr("TextLabel")({
			Name = "Placeholder";
			Text = module_2_upvr.Computed(function() -- Line 244
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				local any_get_result1_4 = any_GetValues_result1_upvw.Query:get()
				if #(any_get_result1_4 or "") == 0 then
					return any_GetValues_result1_upvw.PlaceholderText:get()
				end
				return any_get_result1_4
			end);
			Visible = module_2_upvr.Computed(function() -- Line 253
				--[[ Upvalues[2]:
					[1]: Computed_upvr_result1_upvr_2 (readonly)
					[2]: any_GetValues_result1_upvw (read and write)
				]]
				local any_get_result1 = Computed_upvr_result1_upvr_2:get()
				if any_get_result1 then
					if #any_GetValues_result1_upvw.SearchBoxText:get() ~= 0 then
						any_get_result1 = false
					else
						any_get_result1 = true
					end
				end
				return any_get_result1
			end);
			TextColor3 = Color3.fromRGB(149, 149, 149);
			TextScaled = true;
			TextSize = 14;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			TextTransparency = var7_result1_upvr;
			Size = UDim2.fromScale(1, 1);
		})};
	}), New_upvr("TextButton")({
		Name = "SearchButton";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextSize = 14;
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		TextTransparency = var7_result1_upvr;
		Size = UDim2.fromScale(1, 1);
		Visible = module_2_upvr.Computed(function() -- Line 278
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			if any_GetValues_result1_upvw.Toggleable:get() then
				return not any_GetValues_result1_upvw.Toggle:get()
			end
			return false
		end);
		ZIndex = 2;
		[Ref_upvr] = Value_upvr();
		[OnEvent_upvr("Activated")] = function() -- Line 289
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			any_GetValues_result1_upvw.Toggle:set(not any_GetValues_result1_upvw.Toggle:get())
		end;
	}), New_upvr("TextButton")({
		Name = "CancelButton";
		RichText = true;
		Text = "";
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextScaled = true;
		TextSize = 20;
		TextWrapped = true;
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		TextTransparency = var7_result1_upvr;
		Position = UDim2.fromScale(1, 0.5);
		Size = Computed_upvr(function() -- Line 307
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr (readonly)
			]]
			return UDim2.new(0, Computed_upvr_result1_upvr:get(), 1, 0)
		end);
		Visible = var6_result1_upvr;
		[Ref_upvr] = Value_upvr();
		[OnEvent_upvr("Activated")] = function() -- Line 314
			--[[ Upvalues[4]:
				[1]: any_GetValues_result1_upvw (read and write)
				[2]: var5_result1_upvr_2 (readonly)
				[3]: var5_result1_upvr (readonly)
				[4]: search_upvr (readonly)
			]]
			if any_GetValues_result1_upvw.Query.set then
				any_GetValues_result1_upvw.Query:set("")
			end
			any_GetValues_result1_upvw.SearchBoxText:set("")
			var5_result1_upvr_2:set(false)
			var5_result1_upvr:set(false)
			search_upvr(true)
		end;
		[Children_upvr] = {New_upvr("UISizeConstraint")({
			MaxSize = Vector2.new(100, math.huge);
		}), New_upvr("ImageLabel")({
			Name = "Icon";
			Image = "rbxassetid://14542644751";
			ImageColor3 = Color3.fromRGB(255, 255, 255);
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			ImageTransparency = var7_result1_upvr;
			Visible = Computed_upvr_result1_upvr_2;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.4, 0.4);
		})};
	})}
	return New_upvr("TextButton")(module)
end