-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:53
-- Luau version 6, Types version 3
-- Time taken: 0.002373 seconds

local module = require(script.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local New_upvr = module.New
local Children_upvr = module.Children
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: New_upvr (readonly)
		[2]: Children_upvr (readonly)
	]]
	return New_upvr("Frame")({
		Name = "ComingSoon";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		[Children_upvr] = {New_upvr("ImageLabel")({
			Name = "MagnifyingGlass";
			Image = "rbxassetid://13975956342";
			ImageColor3 = Color3.fromRGB(140, 140, 140);
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.36);
			Size = UDim2.fromScale(0.5, 0.5);
			[Children_upvr] = {New_upvr("UIAspectRatioConstraint")({
				Name = "UIAspectRatioConstraint";
			})};
		}), New_upvr("TextLabel")({
			Name = "TextLabel";
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json");
			Text = "COMING SOON";
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 21;
			TextWrapped = true;
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.7);
			Size = UDim2.fromScale(0.5, 0.3);
			[Children_upvr] = {New_upvr("UIStroke")({
				Name = "UIStroke";
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				Thickness = 1;
			})};
		})};
	})
end