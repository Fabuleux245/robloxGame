-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:55
-- Luau version 6, Types version 3
-- Time taken: 0.007846 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr_3 = {
	Buttons = {{
		Name = "Save";
		Image = "rbxassetid://13729958499";
		Position = UDim2.fromScale(0.285, 1);
		AnchorPoint = Vector2.new(0, 1);
	}, {
		Name = "Reset";
		Image = "rbxassetid://13729954132";
		Position = UDim2.fromScale(0.06, 1);
		AnchorPoint = Vector2.new(0, 1);
	}, {
		Name = "Undo";
		Image = "rbxassetid://13729949413";
		Position = UDim2.fromScale(0.715, 1);
		AnchorPoint = Vector2.new(1, 1);
	}, {
		Name = "Redo";
		Image = "rbxassetid://13729823355";
		Position = UDim2.fromScale(0.94, 1);
		AnchorPoint = Vector2.new(1, 1);
	}};
	Color = {
		Default = Color3.fromRGB(20, 20, 20);
		MouseDown = Color3.fromRGB(15, 15, 15);
		Hover = Color3.fromRGB(30, 30, 30);
	};
	TextColor = {
		Disabled = Color3.fromRGB(128, 128, 128);
		Default = Color3.fromRGB(255, 255, 255);
	};
}
local module_upvr_2 = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_upvr.Value
local Computed_upvr = module_upvr.Computed
local Spring_upvr = module_upvr.Spring
local New_upvr = module_upvr.New
local Children_upvr = module_upvr.Children
local OnEvent_upvr = module_upvr.OnEvent
return function(arg1) -- Line 74, Named "ActionButton"
	--[[ Upvalues[9]:
		[1]: module_upvr_2 (readonly)
		[2]: Value_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: Spring_upvr (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: New_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: OnEvent_upvr (readonly)
	]]
	local any_GetValues_result1_upvr = module_upvr_2.GetValues(arg1, {
		Disabled = false;
		LayoutOrder = 0;
		Stroke = false;
		Visible = true;
		Parent = module_upvr_2.Nil;
		Text = "";
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		AnchorPoint = Vector2.zero;
	})
	local Value_upvr_result1_upvr = Value_upvr(false)
	local var13_result1_upvr = Value_upvr(false)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 90
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvr (readonly)
		]]
		return not any_GetValues_result1_upvr.Disabled:get()
	end)
	local var15_result1 = Spring_upvr(Computed_upvr(function() -- Line 113
		--[[ Upvalues[3]:
			[1]: var13_result1_upvr (readonly)
			[2]: Computed_upvr_result1_upvr (readonly)
			[3]: module_upvr_3 (copied, readonly)
		]]
		if var13_result1_upvr:get() or not Computed_upvr_result1_upvr:get() then
			return module_upvr_3.TextColor.Disabled
		end
		return module_upvr_3.TextColor.Default
	end), 20, 1)
	return New_upvr("TextButton")({
		Name = any_GetValues_result1_upvr.Text;
		FontFace = Font.fromEnum(Enum.Font.GothamMedium);
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextScaled = true;
		TextSize = 20;
		TextWrapped = true;
		AutoButtonColor = false;
		AnchorPoint = any_GetValues_result1_upvr.AnchorPoint;
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 95
			--[[ Upvalues[4]:
				[1]: Computed_upvr_result1_upvr (readonly)
				[2]: var13_result1_upvr (readonly)
				[3]: module_upvr_3 (copied, readonly)
				[4]: Value_upvr_result1_upvr (readonly)
			]]
			if Computed_upvr_result1_upvr:get() then
				if var13_result1_upvr:get() then
					return module_upvr_3.Color.MouseDown
				end
				if Value_upvr_result1_upvr:get() then
					return module_upvr_3.Color.Hover
				end
				return module_upvr_3.Color.Default
			end
			return module_upvr_3.Color.Default
		end), 20, 1);
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		LayoutOrder = any_GetValues_result1_upvr.LayoutOrder;
		Position = UDim2.fromScale(0.94, 1);
		Visible = any_GetValues_result1_upvr.Visible;
		Parent = any_GetValues_result1_upvr.Parent;
		Size = any_GetValues_result1_upvr.Size;
		[Children_upvr] = {New_upvr("UICorner")({
			Name = "UICorner";
			CornerRadius = UDim.new(0.25, 0);
		}), New_upvr("ImageLabel")({
			Name = "Icon";
			Image = any_GetValues_result1_upvr.Image;
			AnchorPoint = module_upvr.Computed(function() -- Line 152
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvr (readonly)
				]]
				local any_get_result1 = any_GetValues_result1_upvr.Text:get()
				if any_get_result1 and 0 < #any_get_result1 then
					return Vector2.new(0, 0.5)
				end
				return Vector2.new(0.5, 0.5)
			end);
			Position = module_upvr.Computed(function() -- Line 160
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvr (readonly)
				]]
				local any_get_result1_2 = any_GetValues_result1_upvr.Text:get()
				if any_get_result1_2 and 0 < #any_get_result1_2 then
					return UDim2.fromScale(0.125, 0.5)
				end
				return UDim2.fromScale(0.5, 0.5)
			end);
			ImageColor3 = var15_result1;
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Size = UDim2.fromScale(1, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			[Children_upvr] = {New_upvr("UIAspectRatioConstraint")({
				Name = "UIAspectRatioConstraint";
			})};
		}), New_upvr("TextLabel")({
			Name = "Label";
			Text = any_GetValues_result1_upvr.Text;
			TextColor3 = var15_result1;
			TextScaled = true;
			TextSize = 20;
			TextWrapped = true;
			AnchorPoint = Vector2.new(1, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.875, 0.5);
			Size = UDim2.fromScale(0.5, 0.8);
			Visible = module_upvr.Computed(function() -- Line 197
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvr (readonly)
				]]
				local any_get_result1_3 = any_GetValues_result1_upvr.Text:get()
				local var41 = any_get_result1_3
				if var41 then
					if 0 >= #any_get_result1_3 then
						var41 = false
					else
						var41 = true
					end
				end
				return var41
			end);
		}), New_upvr("UIStroke")({
			Name = "StandardStroke";
			Color = Color3.fromRGB(79, 84, 95);
			Thickness = 1.5;
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		})};
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 211
			--[[ Upvalues[1]:
				[1]: var13_result1_upvr (readonly)
			]]
			var13_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 215
			--[[ Upvalues[1]:
				[1]: var13_result1_upvr (readonly)
			]]
			var13_result1_upvr:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 219
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 223
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (readonly)
				[2]: var13_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(false)
			var13_result1_upvr:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 228
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvr (readonly)
			]]
			if any_GetValues_result1_upvr.OnClick then
				any_GetValues_result1_upvr.OnClick:get()()
			end
		end;
	})
end