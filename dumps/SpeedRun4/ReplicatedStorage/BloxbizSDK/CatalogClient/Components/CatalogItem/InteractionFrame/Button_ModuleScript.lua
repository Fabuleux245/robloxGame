-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:25
-- Luau version 6, Types version 3
-- Time taken: 0.006132 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
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
		Default = Color3.fromRGB(255, 255, 255);
		Hover = Color3.fromRGB(240, 240, 240);
		MouseDown = Color3.fromRGB(225, 225, 225);
	};
	TextColor = {
		Disabled = Color3.fromRGB(100, 100, 100);
		Default = Color3.fromRGB(0, 0, 0);
	};
}
local module_upvr_2 = require(Utils:WaitForChild("FusionProps"))
local Computed_upvr = module_upvr.Computed
local Value_upvr = module_upvr.Value
local Spring_upvr = module_upvr.Spring
local New_upvr = module_upvr.New
local Children_upvr = module_upvr.Children
local ScaledText_upvr = require(Parent.CatalogClient.Components.ScaledText)
local OnEvent_upvr = module_upvr.OnEvent
return function(arg1) -- Line 76, Named "ActionButton"
	--[[ Upvalues[10]:
		[1]: module_upvr_2 (readonly)
		[2]: Computed_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: Value_upvr (readonly)
		[5]: Spring_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: ScaledText_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: OnEvent_upvr (readonly)
	]]
	local any_GetValues_result1_upvr = module_upvr_2.GetValues(arg1, {
		Disabled = false;
		LayoutOrder = 0;
		Stroke = false;
		Visible = true;
		Parent = module_upvr_2.Nil;
		Text = "";
		TextColor = module_upvr_2.Nil;
		OnClick = module_upvr_2.Nil;
	})
	local Value_upvr_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr_2 = Value_upvr(false)
	local var13_result1_upvr = Computed_upvr(function() -- Line 101
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvr (readonly)
		]]
		return not any_GetValues_result1_upvr.Disabled:get()
	end)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 88
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvr (readonly)
			[2]: module_upvr_3 (copied, readonly)
		]]
		if any_GetValues_result1_upvr.TextColor:get() then
			return {
				Default = any_GetValues_result1_upvr.TextColor:get();
				Disabled = module_upvr_3.TextColor.Disabled;
			}
		end
		return module_upvr_3.TextColor
	end)
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
		BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 106
			--[[ Upvalues[4]:
				[1]: var13_result1_upvr (readonly)
				[2]: Value_upvr_result1_upvr_2 (readonly)
				[3]: module_upvr_3 (copied, readonly)
				[4]: Value_upvr_result1_upvr (readonly)
			]]
			if var13_result1_upvr:get() then
				if Value_upvr_result1_upvr_2:get() then
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
		}), ScaledText_upvr({
			Name = "Label";
			Text = any_GetValues_result1_upvr.Text;
			TextColor3 = Spring_upvr(Computed_upvr(function() -- Line 124
				--[[ Upvalues[3]:
					[1]: Value_upvr_result1_upvr_2 (readonly)
					[2]: var13_result1_upvr (readonly)
					[3]: Computed_upvr_result1_upvr (readonly)
				]]
				if Value_upvr_result1_upvr_2:get() or not var13_result1_upvr:get() then
					return Computed_upvr_result1_upvr:get().Disabled
				end
				return Computed_upvr_result1_upvr:get().Default
			end), 20, 1);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.9, 0.4);
			Visible = module_upvr.Computed(function() -- Line 167
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvr (readonly)
				]]
				local any_get_result1 = any_GetValues_result1_upvr.Text:get()
				local var37 = any_get_result1
				if var37 then
					if 0 >= #any_get_result1 then
						var37 = false
					else
						var37 = true
					end
				end
				return var37
			end);
		})};
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 181
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
			]]
			Value_upvr_result1_upvr_2:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 185
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
			]]
			Value_upvr_result1_upvr_2:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 189
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 193
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (readonly)
				[2]: Value_upvr_result1_upvr_2 (readonly)
			]]
			Value_upvr_result1_upvr:set(false)
			Value_upvr_result1_upvr_2:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 198
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvr (readonly)
			]]
			local any_get_result1_2 = any_GetValues_result1_upvr.OnClick:get()
			if any_get_result1_2 then
				any_get_result1_2()
			end
		end;
	})
end