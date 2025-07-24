-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:12
-- Luau version 6, Types version 3
-- Time taken: 0.003604 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module.Value
local RunService_upvr = game:GetService("RunService")
local New_upvr = module.New
local Cleanup_upvr = module.Cleanup
local Children_upvr = module.Children
local Ref_upvr = module.Ref
return function(arg1) -- Line 14
	--[[ Upvalues[7]:
		[1]: module_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: Cleanup_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: Ref_upvr (readonly)
	]]
	local any_GetValues_result1 = module_upvr.GetValues(arg1, {
		Visible = false;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		LayoutOrder = math.huge;
		ZIndex = 10;
		Text = "Loading items...";
		Parent = module_upvr.Nil;
		CornerRadius = UDim.new(0.065, 0);
	})
	local var5_result1_upvr = Value_upvr()
	local module_2 = {
		Name = "LoadingFrame";
		Image = "rbxasset://textures/ui/GuiImagePlaceholder.png";
		ImageTransparency = 1;
		Active = true;
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = any_GetValues_result1.Position;
		Size = any_GetValues_result1.Size;
		ZIndex = any_GetValues_result1.ZIndex;
		Visible = any_GetValues_result1.Visible;
		LayoutOrder = any_GetValues_result1.LayoutOrder;
		Parent = any_GetValues_result1.Parent;
	}
	local any_Connect_result1_upvr = RunService_upvr.RenderStepped:Connect(function() -- Line 27
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr (readonly)
		]]
		local any_get_result1 = var5_result1_upvr:get()
		if any_get_result1 then
			any_get_result1.Rotation += 1
			any_get_result1.Rotation %= 360
		end
	end)
	module_2[Cleanup_upvr] = function() -- Line 52
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end
	module_2[Children_upvr] = {New_upvr("UICorner")({
		CornerRadius = any_GetValues_result1.CornerRadius;
	}), New_upvr("Frame")({
		Name = "LoadingState";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.5, 0.5);
		[Children_upvr] = {New_upvr("UISizeConstraint")({
			MinSize = Vector2.zero;
			MaxSize = Vector2.new(math.huge, 200);
		}), New_upvr("ImageLabel")({
			Name = "Spinner";
			Image = "rbxassetid://11304130802";
			ImageColor3 = Color3.fromRGB(225, 225, 225);
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.1);
			Rotation = 60.9;
			Size = UDim2.fromScale(0.4, 0.4);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			[Ref_upvr] = var5_result1_upvr;
		}), New_upvr("TextLabel")({
			Name = "Info";
			FontFace = Font.fromEnum(Enum.Font.GothamMedium);
			Text = any_GetValues_result1.Text;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			TextScaled = true;
			TextSize = 28;
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
	return New_upvr("ImageLabel")(module_2)
end