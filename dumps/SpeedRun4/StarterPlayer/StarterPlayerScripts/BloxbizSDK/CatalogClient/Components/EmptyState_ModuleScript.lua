-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:00
-- Luau version 6, Types version 3
-- Time taken: 0.005200 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local module_3_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_2_upvr.Value
local Spring_upvr = module_2_upvr.Spring
local Computed_upvr = module_2_upvr.Computed
local New_upvr = module_2_upvr.New
local Children_upvr = module_2_upvr.Children
local Out_upvr = module_2_upvr.Out
local ScaledText_upvr = require(script.Parent.ScaledText)
local OnEvent_upvr = module_2_upvr.OnEvent
return function(arg1) -- Line 20
	--[[ Upvalues[10]:
		[1]: module_3_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: Out_upvr (readonly)
		[9]: ScaledText_upvr (readonly)
		[10]: OnEvent_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_3_upvr.GetValues(arg1, {
		Visible = false;
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		MaxSize = Vector2.new(math.huge, math.huge);
		LayoutOrder = math.huge;
		ZIndex = 10;
		Text = "There's no items to show.";
		ButtonText = "Go Back";
		ButtonEnabled = true;
		Callback = module_3_upvr.Nil;
		Parent = module_3_upvr.Nil;
		CornerRadius = UDim.new(0.065, 0);
		MaxWidth = 0.25;
	})
	local var5_result1_upvr_2 = Value_upvr(false)
	local var5_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr = Value_upvr(Vector2.zero)
	local Value_upvr_result1_upvr_2 = Value_upvr(workspace.Camera.ViewportSize.X)
	local module = {
		Name = "LoadingFrame";
		Image = "rbxasset://textures/ui/GuiImagePlaceholder.png";
		ImageTransparency = 1;
		Active = true;
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = any_GetValues_result1_upvw.BackgroundTransparency;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		ZIndex = any_GetValues_result1_upvw.ZIndex;
		Visible = any_GetValues_result1_upvw.Visible;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		Parent = any_GetValues_result1_upvw.Parent;
	}
	local any_Connect_result1_upvr = workspace.Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 71
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
		]]
		Value_upvr_result1_upvr_2:set(workspace.Camera.ViewportSize.X)
	end)
	module[module_2_upvr.Cleanup] = function() -- Line 91
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end
	module[Children_upvr] = {New_upvr("UISizeConstraint")({
		MaxSize = any_GetValues_result1_upvw.MaxSize;
	}), New_upvr("Frame")({
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = Computed_upvr(function() -- Line 104
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			return UDim2.new(0.8, 0, 0, Value_upvr_result1_upvr:get().X / 1.7777777777777777)
		end);
		[Out_upvr("AbsoluteSize")] = Value_upvr_result1_upvr;
		[Children_upvr] = {New_upvr("UISizeConstraint")({
			MaxSize = Computed_upvr(function() -- Line 115
				--[[ Upvalues[2]:
					[1]: any_GetValues_result1_upvw (read and write)
					[2]: Value_upvr_result1_upvr_2 (readonly)
				]]
				return Vector2.new(any_GetValues_result1_upvw.MaxWidth:get() * Value_upvr_result1_upvr_2:get(), math.huge)
			end);
		}), ScaledText_upvr({
			Text = any_GetValues_result1_upvw.Text;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			AnchorPoint = Vector2.new(0.5, 1);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(1, 0.4);
			[Children_upvr] = New_upvr("UISizeConstraint")({
				MaxSize = Vector2.new(math.huge, 32);
			});
		}), New_upvr("TextButton")({
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0.6);
			Size = UDim2.fromScale(0.6, 0.2);
			Text = "";
			BackgroundColor3 = Spring_upvr(Computed_upvr(function() -- Line 54
				--[[ Upvalues[2]:
					[1]: var5_result1_upvr (readonly)
					[2]: var5_result1_upvr_2 (readonly)
				]]
				if var5_result1_upvr:get() then
					return Color3.fromRGB(45, 45, 45)
				end
				if var5_result1_upvr_2:get() then
					return Color3.fromRGB(143, 143, 143)
				end
				return Color3.fromRGB(255, 255, 255)
			end), 20, 1);
			Name = "Button";
			Visible = any_GetValues_result1_upvw.ButtonEnabled;
			[Children_upvr] = {New_upvr("UICorner")({
				CornerRadius = UDim.new(0.2, 0);
			}), ScaledText_upvr({
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Size = UDim2.fromScale(0.8, 0.5);
				Text = any_GetValues_result1_upvw.ButtonText;
				TextColor3 = Spring_upvr(Computed_upvr(function() -- Line 42
					--[[ Upvalues[1]:
						[1]: var5_result1_upvr (readonly)
					]]
					if var5_result1_upvr:get() then
						return Color3.new(1, 1, 1)
					end
					return Color3.new(0, 0, 0)
				end), 20, 1);
			})};
			[OnEvent_upvr("Activated")] = function() -- Line 157
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				local any_get_result1 = any_GetValues_result1_upvw.Callback:get()
				if any_get_result1 then
					any_get_result1()
				end
			end;
			[OnEvent_upvr("MouseEnter")] = function() -- Line 164
				--[[ Upvalues[1]:
					[1]: var5_result1_upvr_2 (readonly)
				]]
				var5_result1_upvr_2:set(true)
			end;
			[OnEvent_upvr("MouseLeave")] = function() -- Line 167
				--[[ Upvalues[2]:
					[1]: var5_result1_upvr_2 (readonly)
					[2]: var5_result1_upvr (readonly)
				]]
				var5_result1_upvr_2:set(false)
				var5_result1_upvr:set(false)
			end;
			[OnEvent_upvr("MouseButton1Down")] = function() -- Line 171
				--[[ Upvalues[1]:
					[1]: var5_result1_upvr (readonly)
				]]
				var5_result1_upvr:set(true)
			end;
			[OnEvent_upvr("MouseButton1Up")] = function() -- Line 174
				--[[ Upvalues[1]:
					[1]: var5_result1_upvr (readonly)
				]]
				var5_result1_upvr:set(false)
			end;
		})};
	})}
	return New_upvr("ImageLabel")(module)
end