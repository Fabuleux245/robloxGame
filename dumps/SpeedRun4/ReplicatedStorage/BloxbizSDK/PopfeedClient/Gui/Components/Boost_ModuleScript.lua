-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:30
-- Luau version 6, Types version 3
-- Time taken: 0.003284 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local Components = Parent.Components
local New_upvr = Fusion.New
local Children_upvr = Fusion.Children
local TextButton_upvr = require(Components.TextButton)
local UICorner_upvr = require(Components.UICorner)
return function(arg1) -- Line 12
	--[[ Upvalues[4]:
		[1]: New_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: TextButton_upvr (readonly)
		[4]: UICorner_upvr (readonly)
	]]
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1.Bold = true
	return New_upvr("Frame")({
		Name = "Boost";
		Size = UDim2.fromScale(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(30, 30, 30);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		ZIndex = 3;
		Visible = false;
		[Children_upvr] = {TextButton_upvr({
			Text = "Buy 100";
			Name = "BoostButton";
			Color = Color3.fromRGB(78, 175, 83);
			TextSize = UDim2.fromScale(0.9, 0.45);
			TextColor = Color3.fromRGB(255, 255, 255);
			AnchorPoint = Vector2.new(0.5, 1);
			Position = UDim2.fromScale(0.5, 0.73);
			Size = UDim2.fromScale(0.9, 0.16);
			ZIndex = 5;
			OnActivated = arg1.OnBoostButtonClicked;
		}), TextButton_upvr({
			Text = "Cancel";
			Name = "CancelButton";
			Color = Color3.fromRGB(255, 255, 255);
			TextSize = UDim2.fromScale(0.9, 0.45);
			TextColor = Color3.fromRGB(0, 0, 0);
			AnchorPoint = Vector2.new(0.5, 1);
			Position = UDim2.fromScale(0.5, 0.945);
			Size = UDim2.fromScale(0.9, 0.16);
			ZIndex = 5;
			OnActivated = function() -- Line 56, Named "OnActivated"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.IsBoosting:set(false)
			end;
		}), New_upvr("ImageLabel")({
			Size = UDim2.fromScale(0.175, 0.175);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0.07);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Image = "rbxassetid://12934370316";
			BackgroundTransparency = 1;
			ZIndex = 5;
		}), New_upvr("TextLabel")({
			Size = UDim2.fromScale(0.83, 0.075);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0.42);
			TextColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Text = "Get this post more visibility.";
			TextScaled = true;
			FontFace = Font.fromEnum(Enum.Font.Arial);
			ZIndex = 5;
		}), New_upvr("TextLabel")({
			Size = UDim2.fromScale(0.8, 0.075);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0.3);
			TextColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Text = "Boost Post";
			TextScaled = true;
			FontFace = Font_fromEnum_result1;
			ZIndex = 5;
		}), New_upvr("TextButton")({
			Name = "Background";
			Size = UDim2.fromScale(10, 10);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			BackgroundTransparency = 0.3;
			AutoButtonColor = false;
			ZIndex = 2;
		}), UICorner_upvr({})};
	})
end