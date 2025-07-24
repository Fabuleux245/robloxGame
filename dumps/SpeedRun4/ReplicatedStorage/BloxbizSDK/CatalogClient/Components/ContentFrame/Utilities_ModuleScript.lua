-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:39
-- Luau version 6, Types version 3
-- Time taken: 0.002313 seconds

local module_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
return function(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module_2 = {
		Name = "UtilitiesHolder";
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = -1;
		Position = UDim2.fromScale(0.5, -3.61e-08);
		Size = UDim2.fromScale(1, 0.05);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
	}
	local tbl_3 = {
		Name = "Holder";
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.05);
		Size = UDim2.fromScale(0.997, 0.75);
	}
	local tbl_8 = {}
	local var15 = arg1
	if var15 then
		var15 = arg1.Padding
		if var15 then
			var15 = module_upvr.New("UIListLayout")
			local tbl_5 = {
				Name = "UIListLayout";
				Padding = arg1.Padding;
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
			}
			var15 = var15(tbl_5)
		end
	end
	tbl_5 = not arg1.Padding
	local var17 = tbl_5
	if var17 then
		var17 = module_upvr.New("Frame")
		var17 = var17({
			Name = "Left";
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			[module_upvr.Children] = {module_upvr.New("UIListLayout")({
				Name = "UIListLayout";
				Padding = UDim.new(0, 16);
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
			})};
		})
	end
	tbl_8[1] = var15
	tbl_8[2] = var17
	tbl_3[module_upvr.Children] = tbl_8
	module_2[module_upvr.Children] = module_upvr.New("Frame")(tbl_3)
	return module_upvr.New("Frame")(module_2)
end