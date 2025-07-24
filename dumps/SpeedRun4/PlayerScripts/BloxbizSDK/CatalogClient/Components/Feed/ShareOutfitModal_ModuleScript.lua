-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:32
-- Luau version 6, Types version 3
-- Time taken: 0.005240 seconds

local Generic = script.Parent.Parent.Generic
local module_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local TextBox_upvr = require(Generic.TextBox)
local Button_upvr = require(Generic.Button)
return function(arg1) -- Line 21
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: TextBox_upvr (readonly)
		[3]: Button_upvr (readonly)
	]]
	local any_Value_result1_upvr = module_upvr.Value("")
	local any_Value_result1_upvr_2 = module_upvr.Value(false)
	local var4_result1_upvr = TextBox_upvr({
		Name = "Input";
		PlaceholderText = "Name your outfit";
		BackgroundColor3 = Color3.fromHex("4F545F");
		BackgroundTransparency = 0;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.9, 0.5);
		Text = any_Value_result1_upvr;
	})
	local tbl = {
		Position = UDim2.fromScale(0.62, 0.86);
		Size = UDim2.fromScale(0.2, 0.15);
		AnchorPoint = Vector2.new(0.5, 0.5);
		CornerRadius = UDim.new(0.2, 0);
		Text = "Cancel";
		Name = "Cancel";
		ImageTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.8;
		};
		BackgroundColor3 = Color3.fromHex("4F545F");
		BackgroundTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.8;
		};
		TextTransparency = {
			Default = 0;
			Hover = 0.2;
			MouseDown = 0.5;
			Disabled = 0.8;
		};
	}
	local function Callback(arg1_2, arg2) -- Line 70
		--[[ Upvalues[3]:
			[1]: var4_result1_upvr (readonly)
			[2]: any_Value_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
		]]
		if arg1_2:get() then
			var4_result1_upvr.Text = ""
			any_Value_result1_upvr_2:set(true)
			arg1.CancelCallback()
			any_Value_result1_upvr_2:set(false)
		end
	end
	tbl.Callback = Callback
	return module_upvr.New("TextButton")({
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(2, 2);
		BackgroundTransparency = 0.75;
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		Active = true;
		Selectable = false;
		Text = "";
		Visible = module_upvr.Computed(function() -- Line 156
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.Creating:get()
		end, module_upvr.cleanup);
		[module_upvr.Children] = {module_upvr.New("Frame")({
			Name = "Input";
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(20, 20, 20);
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.2, 0.2);
			[module_upvr.Children] = {module_upvr.New("UIStroke")({
				Name = "UIStroke";
				Color = Color3.fromRGB(255, 255, 255);
				Thickness = 2;
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				Transparency = 0.5;
			}), module_upvr.New("UICorner")({
				Name = "UICorner";
				CornerRadius = UDim.new(0.065, 0);
			}), module_upvr.New("TextLabel")({
				Name = "Title";
				FontFace = Font.fromEnum(Enum.Font.GothamMedium);
				Text = "Share Outfit";
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextScaled = true;
				TextSize = 21;
				TextWrapped = true;
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				BorderColor3 = Color3.fromRGB(0, 0, 0);
				BorderSizePixel = 0;
				Position = UDim2.fromScale(0.05, 0.04);
				Size = UDim2.fromScale(0.45, 0.2);
			}), module_upvr.New("Frame")({
				Name = "InputHolder";
				BackgroundColor3 = Color3.fromHex("4F545F");
				BackgroundTransparency = 0;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.66);
				Size = UDim2.fromScale(0.9, 0.18);
				[module_upvr.Children] = {var4_result1_upvr, module_upvr.New("UICorner")({
					CornerRadius = UDim.new(0.2, 0);
				})};
			}), module_upvr.New("Frame")({
				Name = "Warning";
				BackgroundColor3 = Color3.fromRGB(92, 0, 17);
				BackgroundTransparency = 0;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.4);
				Size = UDim2.fromScale(0.9, 0.27);
				[module_upvr.Children] = {module_upvr.New("UICorner")({
					CornerRadius = UDim.new(0.14, 0);
				}), module_upvr.New("ImageLabel")({
					Image = "rbxassetid://16166071441";
					AnchorPoint = Vector2.new(0, 0.5);
					Position = UDim2.fromScale(0.025, 0.5);
					Size = UDim2.fromScale(0.07, 0.07);
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					BackgroundTransparency = 1;
				}), module_upvr.New("TextLabel")({
					Text = "Help keep Popmall safe for everyone. Posting inappropriate outfits will result in a ban.";
					LineHeight = 1.3;
					TextScaled = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					AnchorPoint = Vector2.new(0, 0.5);
					Position = UDim2.fromScale(0.12, 0.5);
					Size = UDim2.fromScale(0.8, 0.8);
					BackgroundTransparency = 1;
					TextColor3 = Color3.fromRGB(255, 255, 255);
				})};
			}), Button_upvr({
				Position = UDim2.fromScale(0.843, 0.86);
				Size = UDim2.fromScale(0.2, 0.15);
				AnchorPoint = Vector2.new(0.5, 0.5);
				CornerRadius = UDim.new(0.2, 0);
				Text = "Share";
				Name = "Share";
				Enabled = module_upvr.Computed(function() -- Line 92
					--[[ Upvalues[2]:
						[1]: any_Value_result1_upvr_2 (readonly)
						[2]: any_Value_result1_upvr (readonly)
					]]
					if any_Value_result1_upvr_2:get() then
						return false
					end
					if #any_Value_result1_upvr:get() < 4 then
						return false
					end
					return true
				end);
				ImageTransparency = {
					Default = 0;
					Hover = 0.2;
					MouseDown = 0.5;
					Disabled = 0.8;
				};
				BackgroundColor3 = Color3.fromHex("4FAD74");
				BackgroundTransparency = {
					Default = 0;
					Hover = 0.2;
					MouseDown = 0.5;
					Disabled = 0.8;
				};
				TextTransparency = {
					Default = 0;
					Hover = 0.2;
					MouseDown = 0.5;
					Disabled = 0.8;
				};
				Callback = function(arg1_3, arg2) -- Line 128, Named "Callback"
					--[[ Upvalues[3]:
						[1]: any_Value_result1_upvr_2 (readonly)
						[2]: var4_result1_upvr (readonly)
						[3]: arg1 (readonly)
					]]
					if arg1_3:get() then
						any_Value_result1_upvr_2:set(true)
						local var19 = "Untitled Outfit"
						if 0 < string.len(var4_result1_upvr.Text) then
							var19 = var4_result1_upvr.Text
						end
						var4_result1_upvr.Text = ""
						arg1.CreateCallback(var19)
						any_Value_result1_upvr_2:set(false)
					end
				end;
			}), Button_upvr(tbl)};
		})};
	})
end