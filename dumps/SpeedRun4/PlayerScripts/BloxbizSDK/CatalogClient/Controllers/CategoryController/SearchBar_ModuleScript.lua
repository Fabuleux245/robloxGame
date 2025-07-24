-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:44
-- Luau version 6, Types version 3
-- Time taken: 0.007489 seconds

local module = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local function _(arg1, arg2, arg3) -- Line 21, Named "ToggleSearchBar"
	arg1.Text = ""
	arg2.Visible = not arg3
end
local Value_upvr = module.Value
local New_upvr = module.New
local Children_upvr = module.Children
local Ref_upvr = module.Ref
local OnEvent_upvr = module.OnEvent
local OnChange_upvr = module.OnChange
return function(arg1) -- Line 26, Named "CategorySearchBar"
	--[[ Upvalues[6]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Ref_upvr (readonly)
		[5]: OnEvent_upvr (readonly)
		[6]: OnChange_upvr (readonly)
	]]
	local Value_upvr_result1_upvr = Value_upvr()
	local var2_result1_upvr_2 = Value_upvr()
	local Value_upvr_result1_upvr_2 = Value_upvr()
	local var2_result1_upvr = Value_upvr()
	return {
		Instance = New_upvr("Frame")({
			Name = "SearchBar";
			BackgroundColor3 = Color3.fromRGB(20, 20, 20);
			BorderSizePixel = 0;
			LayoutOrder = 2;
			Position = UDim2.fromScale(0.262, 0);
			Size = UDim2.fromScale(0.3, 1);
			[Children_upvr] = {New_upvr("ImageLabel")({
				Name = "Icon";
				Image = "rbxassetid://10840634914";
				AnchorPoint = Vector2.new(0, 0.5);
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(0.035, 0.5);
				Size = UDim2.fromScale(0.5, 0.5);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				ZIndex = 2;
			}), New_upvr("UICorner")({
				Name = "UICorner";
				CornerRadius = UDim.new(0.225, 0);
			}), New_upvr("UIStroke")({
				Name = "StandardStroke";
				Color = Color3.fromRGB(79, 84, 95);
				Thickness = 1.5;
			}), New_upvr("TextBox")({
				Name = "SearchBox";
				FontFace = Font.fromEnum(Enum.Font.GothamMedium);
				PlaceholderColor3 = Color3.fromRGB(255, 255, 255);
				Text = "";
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextScaled = true;
				TextSize = 24;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
				AnchorPoint = Vector2.new(0, 0.5);
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(0.15, 0.5);
				Size = UDim2.fromScale(0.6, 0.505);
				[Ref_upvr] = Value_upvr_result1_upvr;
				[OnEvent_upvr("Focused")] = function() -- Line 82
					--[[ Upvalues[1]:
						[1]: Value_upvr_result1_upvr (readonly)
					]]
					Value_upvr_result1_upvr:get().TextSize = Value_upvr_result1_upvr:get().TextBounds.Y
					Value_upvr_result1_upvr:get().TextScaled = false
				end;
				[OnEvent_upvr("FocusLost")] = function(arg1_2) -- Line 87
					--[[ Upvalues[5]:
						[1]: Value_upvr_result1_upvr (readonly)
						[2]: Value_upvr_result1_upvr_2 (readonly)
						[3]: var2_result1_upvr (readonly)
						[4]: var2_result1_upvr_2 (readonly)
						[5]: arg1 (readonly)
					]]
					Value_upvr_result1_upvr:get().TextScaled = true
					if arg1_2 then
						local Text = Value_upvr_result1_upvr:get().Text
						Value_upvr_result1_upvr:get().Text = ""
						Value_upvr_result1_upvr_2:get().Visible = true
						if 0 < string.len(Text:gsub(' ', "")) then
							var2_result1_upvr:get().Visible = true
							Value_upvr_result1_upvr_2:get().Visible = false
							var2_result1_upvr_2:get().Text = string.format("Searching for \"%s\"", Text)
							arg1(Text)
						end
					end
				end;
				[OnChange_upvr("Text")] = function() -- Line 105
					--[[ Upvalues[2]:
						[1]: var2_result1_upvr_2 (readonly)
						[2]: Value_upvr_result1_upvr (readonly)
					]]
					local var23
					if Value_upvr_result1_upvr:get().Text ~= "" then
						var23 = false
					else
						var23 = true
					end
					var2_result1_upvr_2:get().Visible = var23
				end;
				[Children_upvr] = {New_upvr("TextLabel")({
					Name = "Placeholder";
					Text = "Search keyword";
					TextColor3 = Color3.fromRGB(128, 128, 128);
					TextScaled = true;
					TextSize = 14;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					BackgroundTransparency = 1;
					Size = UDim2.fromScale(1, 1);
					[Ref_upvr] = var2_result1_upvr_2;
				})};
			}), New_upvr("TextButton")({
				Name = "SearchButton";
				Text = "";
				TextColor3 = Color3.fromRGB(0, 0, 0);
				TextSize = 14;
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
				Visible = false;
				ZIndex = 2;
				[Ref_upvr] = Value_upvr_result1_upvr_2;
				[OnEvent_upvr("Activated")] = function() -- Line 140
					--[[ Upvalues[2]:
						[1]: Value_upvr_result1_upvr_2 (readonly)
						[2]: Value_upvr_result1_upvr (readonly)
					]]
					Value_upvr_result1_upvr_2:get().Visible = false
					Value_upvr_result1_upvr:get().Text = ""
					Value_upvr_result1_upvr_2:get().Visible = false
					Value_upvr_result1_upvr:get():CaptureFocus()
				end;
			}), New_upvr("TextButton")({
				Name = "CancelButton";
				RichText = true;
				Text = "";
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextScaled = true;
				TextSize = 20;
				TextWrapped = true;
				AnchorPoint = Vector2.new(1, 0);
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(1, 0);
				Size = UDim2.fromScale(0.3, 1);
				Visible = false;
				[Ref_upvr] = var2_result1_upvr;
				[OnEvent_upvr("Activated")] = function() -- Line 164
					--[[ Upvalues[5]:
						[1]: var2_result1_upvr (readonly)
						[2]: var2_result1_upvr_2 (readonly)
						[3]: Value_upvr_result1_upvr_2 (readonly)
						[4]: Value_upvr_result1_upvr (readonly)
						[5]: arg1 (readonly)
					]]
					var2_result1_upvr:get().Visible = false
					var2_result1_upvr_2:get().Text = "Search keyword"
					Value_upvr_result1_upvr_2:get().Visible = true
					Value_upvr_result1_upvr:get().Text = ""
					Value_upvr_result1_upvr_2:get().Visible = true
					arg1()
				end;
				[Children_upvr] = {New_upvr("TextLabel")({
					Name = "TextLabel";
					FontFace = Font.fromEnum(Enum.Font.GothamMedium);
					Text = "Cancel";
					TextColor3 = Color3.fromRGB(255, 255, 255);
					TextScaled = true;
					TextSize = 14;
					TextWrapped = true;
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					BackgroundTransparency = 1;
					Position = UDim2.fromScale(0.5, 0.5);
					Size = UDim2.fromScale(0.55, 0.8);
				})};
			})};
		});
		SearchBox = Value_upvr_result1_upvr:get();
		PlaceHolderText = var2_result1_upvr_2:get();
		SearchButton = Value_upvr_result1_upvr_2:get();
		CancelSearchButton = var2_result1_upvr:get();
		Reset = function() -- Line 198, Named "Reset"
			--[[ Upvalues[4]:
				[1]: var2_result1_upvr (readonly)
				[2]: var2_result1_upvr_2 (readonly)
				[3]: Value_upvr_result1_upvr_2 (readonly)
				[4]: Value_upvr_result1_upvr (readonly)
			]]
			var2_result1_upvr:get().Visible = false
			var2_result1_upvr_2:get().Text = "Search keyword"
			Value_upvr_result1_upvr_2:get().Visible = true
			Value_upvr_result1_upvr:get().Text = ""
			Value_upvr_result1_upvr_2:get().Visible = true
		end;
	}
end