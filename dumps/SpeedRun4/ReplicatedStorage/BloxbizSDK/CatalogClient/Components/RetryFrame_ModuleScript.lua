-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:17
-- Luau version 6, Types version 3
-- Time taken: 0.003296 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local New_upvr = module.New
local Children_upvr = module.Children
local Button_upvr = require(script.Parent.Generic.Button)
return function(arg1) -- Line 17
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Button_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Visible = false;
		BackgroundTransparency = 0.5;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		MaxSize = Vector2.new(math.huge, math.huge);
		LayoutOrder = math.huge;
		ZIndex = 10;
		Text = "There was an issue loading more items.";
		ButtonText = "Retry";
		ButtonEnabled = true;
		Callback = module_upvr.Nil;
		Parent = module_upvr.Nil;
		CornerRadius = UDim.new(0.065, 0);
	})
	return New_upvr("ImageLabel")({
		Name = "ErrorFrame";
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
		[Children_upvr] = {New_upvr("UICorner")({
			CornerRadius = any_GetValues_result1_upvw.CornerRadius;
		}), New_upvr("UISizeConstraint")({
			MaxSize = any_GetValues_result1_upvw.MaxSize;
		}), New_upvr("TextLabel")({
			Name = "Info";
			FontFace = Font.fromEnum(Enum.Font.GothamMedium);
			Text = any_GetValues_result1_upvw.Text;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 28;
			TextWrapped = true;
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.4);
			Size = UDim2.fromScale(0.8, 0.2);
			[Children_upvr] = New_upvr("UITextSizeConstraint")({
				MaxTextSize = 32;
			});
		}), Button_upvr({
			Position = UDim2.fromScale(0.5, 0.7);
			Size = UDim2.fromScale(0.3, 0.2);
			AnchorPoint = Vector2.new(0.5, 0.5);
			CornerRadius = UDim.new(0.2, 0);
			Text = any_GetValues_result1_upvw.ButtonText;
			Name = "Button";
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
			Callback = function(arg1_2, arg2) -- Line 110, Named "Callback"
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				local any_get_result1 = any_GetValues_result1_upvw.Callback:get()
				if any_get_result1 then
					any_get_result1()
				end
			end;
		})};
	})
end