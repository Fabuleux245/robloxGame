-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:38
-- Luau version 6, Types version 3
-- Time taken: 0.001946 seconds

local module_2 = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Value_upvr = module_2.Value
local RunService_upvr = game:GetService("RunService")
local New_upvr = module_2.New
local Cleanup_upvr = module_2.Cleanup
local Children_upvr = module_2.Children
local Ref_upvr = module_2.Ref
return function() -- Line 13
	--[[ Upvalues[6]:
		[1]: Value_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: Cleanup_upvr (readonly)
		[5]: Children_upvr (readonly)
		[6]: Ref_upvr (readonly)
	]]
	local Value_upvr_result1_upvr = Value_upvr()
	local module = {
		Name = "LoadingFrame";
		Image = "rbxasset://textures/ui/GuiImagePlaceholder.png";
		ImageTransparency = 1;
		Active = true;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 0.5;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0.514, 0.482);
		Size = UDim2.fromScale(1.03, 1.65);
		ZIndex = 10;
	}
	local any_Connect_result1_upvr = RunService_upvr.RenderStepped:Connect(function() -- Line 15
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr (readonly)
		]]
		local any_get_result1 = Value_upvr_result1_upvr:get()
		if any_get_result1 then
			any_get_result1.Rotation += 1
			any_get_result1.Rotation %= 360
		end
	end)
	module[Cleanup_upvr] = function() -- Line 37
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end
	module[Children_upvr] = {New_upvr("Frame")({
		Name = "LoadingState";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.8, 0.45);
		[Children_upvr] = {New_upvr("ImageLabel")({
			Name = "Spinner";
			Image = "rbxassetid://11304130802";
			ImageColor3 = Color3.fromRGB(225, 225, 225);
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.15);
			Rotation = 303;
			Size = UDim2.fromScale(0.3, 0.3);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			[Ref_upvr] = Value_upvr_result1_upvr;
		}), New_upvr("TextLabel")({
			Name = "Info";
			FontFace = Font.fromEnum(Enum.Font.GothamMedium);
			Text = "Loading avatar...";
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 35;
			TextWrapped = true;
			AnchorPoint = Vector2.new(0.5, 1);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.825);
			Size = UDim2.fromScale(0.9, 0.15);
		})};
	})}
	return New_upvr("ImageLabel")(module)
end