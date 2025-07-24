-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:39
-- Luau version 6, Types version 3
-- Time taken: 0.003436 seconds

local Fusion = require(script.Parent.Parent.Parent.Parent.Gui.Parent.Parent.Utils.Fusion)
local New_upvr = Fusion.New
local Computed_upvr = Fusion.Computed
local Children_upvr = Fusion.Children
return function(arg1) -- Line 12
	--[[ Upvalues[3]:
		[1]: New_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: Children_upvr (readonly)
	]]
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	local Font_fromEnum_result1_2 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1_2.Bold = true
	return {New_upvr("Frame")({
		Name = "SizingFrame";
		Size = Computed_upvr(function() -- Line 21
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() then
				return UDim2.fromScale(1.4, 0.65)
			end
			return UDim2.fromScale(1, 0.65)
		end);
		AnchorPoint = Computed_upvr(function() -- Line 28
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() then
				return Vector2.new(0.5, 0)
			end
			return Vector2.new()
		end);
		Position = Computed_upvr(function() -- Line 35
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() then
				return UDim2.fromScale(0.5, 0)
			end
			return UDim2.new()
		end);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		LayoutOrder = (-math.huge);
		[Children_upvr] = {New_upvr("UIListLayout")({
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 0);
			SortOrder = Enum.SortOrder.LayoutOrder;
		}), New_upvr("Frame")({
			Name = "Padding";
			ZIndex = 5;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0.025);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			LayoutOrder = 1;
		}), New_upvr("ImageLabel")({
			Name = "ButtonsImage";
			ZIndex = 5;
			Image = "http://www.roblox.com/asset/?id=13001108350";
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(0.5, 0.15);
			Position = UDim2.fromScale(0.5, 0);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			ScaleType = Enum.ScaleType.Fit;
			LayoutOrder = 2;
		}), New_upvr("Frame")({
			Name = "Padding";
			ZIndex = 5;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0.025);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			LayoutOrder = 3;
		}), New_upvr("TextLabel")({
			Text = "Set Up Donate Buttons";
			Name = "TitleLabel";
			ZIndex = 5;
			BackgroundTransparency = 1;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			FontFace = Font_fromEnum_result1_2;
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			Size = UDim2.fromScale(0.7, 0.04);
			TextScaled = true;
			TextWrapped = true;
			LayoutOrder = 4;
		}), New_upvr("Frame")({
			Name = "Padding";
			ZIndex = 5;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0.00625);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			LayoutOrder = 5;
		}), New_upvr("TextLabel")({
			Text = "Start by putting avatar items or gamepasses on-sale in your Roblox account.";
			Name = "DescriptionLabel";
			ZIndex = 5;
			BackgroundTransparency = 1;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			FontFace = Font_fromEnum_result1;
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			Size = UDim2.fromScale(0.7, 0.08);
			TextScaled = true;
			TextWrapped = true;
			LayoutOrder = 6;
		}), New_upvr("Frame")({
			Name = "Padding";
			ZIndex = 5;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0.05);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			LayoutOrder = 7;
		}), New_upvr("TextLabel")({
			Text = "<b>Avatar Item Instructions</b>\n1. Open Roblox\n2. Go to your Create page\n3. Go to Avatar Items\n4. Create an avatar item\n5. Set the item price and put the item to On-Sale\n6. On-Sale Avatar Items become Donate Buttons here";
			Name = "AvatarItemInstructions";
			ZIndex = 5;
			BackgroundTransparency = 1;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			FontFace = Font_fromEnum_result1;
			RichText = true;
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			Size = UDim2.fromScale(0.7, 0.28);
			TextScaled = true;
			TextWrapped = true;
			LayoutOrder = 8;
		}), New_upvr("Frame")({
			Name = "Padding";
			ZIndex = 5;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(0, 0.025);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			LayoutOrder = 9;
		}), New_upvr("TextLabel")({
			Text = "OR";
			Name = "OrLabel";
			ZIndex = 5;
			BackgroundTransparency = 1;
			TextColor3 = Color3.fromRGB(158, 158, 158);
			FontFace = Font_fromEnum_result1_2;
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			Size = UDim2.fromScale(0.7, 0.035);
			TextScaled = true;
			TextWrapped = true;
			LayoutOrder = 10;
		}), New_upvr("Frame")({
			Name = "Padding";
			ZIndex = 5;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0.025);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			LayoutOrder = 11;
		}), New_upvr("TextLabel")({
			Text = "<b>Gamepass Instructions</b>\n1. Open Roblox\n2. Go to your Create page\n3. Select an experience\n4. Go to Associated Items\n5. Go to Passes\n6. Create a pass and put the item On-Sale\n7. On-Sale Passes become Donate Buttons here";
			Name = "GamepassInstructions";
			ZIndex = 5;
			BackgroundTransparency = 1;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			FontFace = Font_fromEnum_result1;
			RichText = true;
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			Size = UDim2.fromScale(0.7, 0.28);
			TextScaled = true;
			TextWrapped = true;
			LayoutOrder = 12;
		}), New_upvr("Frame")({
			Name = "Padding";
			ZIndex = 5;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0.025);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			LayoutOrder = 13;
		})};
	})}
end