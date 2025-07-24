-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:07
-- Luau version 6, Types version 3
-- Time taken: 0.003463 seconds

local module_2 = require(script.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Value_upvr = module_2.Value
local GuiService_upvr = game:GetService("GuiService")
local New_upvr = module_2.New
local Children_upvr = module_2.Children
local Ref_upvr = module_2.Ref
return function() -- Line 13
	--[[ Upvalues[5]:
		[1]: Value_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: Children_upvr (readonly)
		[5]: Ref_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var3_result1_2 = Value_upvr()
	local Value_upvr_result1 = Value_upvr()
	local var3_result1 = Value_upvr()
	local var11
	if 36 >= GuiService_upvr.TopbarInset.Max.Y then
		var11 = false
	else
		var11 = true
	end
	local module = {
		Name = "IngameCatalog";
		DisplayOrder = 11;
		IgnoreGuiInset = true;
		ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}
	local tbl = {}
	local tbl_2 = {
		Name = "Container";
		BackgroundColor3 = Color3.fromRGB(20, 20, 20);
		BorderSizePixel = 0;
	}
	if var11 then
		-- KONSTANTWARNING: GOTO [69] #51
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 50. Error Block 22 start (CF ANALYSIS FAILED)
	tbl_2.Position = UDim2.fromOffset(0, 36)
	if var11 then
	else
	end
	tbl_2.Size = UDim2.new(1, 0, 1, -36)
	tbl_2[Ref_upvr] = var3_result1_2
	tbl_2[Children_upvr] = {New_upvr("Frame")({
		Name = "FrameContainer";
		Active = true;
		BackgroundColor3 = Color3.fromRGB(20, 20, 20);
		BorderSizePixel = 0;
		ClipsDescendants = true;
		Position = UDim2.new(0.012, -2, 0.105, 0);
		Size = UDim2.new(0.668, 2, 0.893, 0);
		[Ref_upvr] = Value_upvr_result1;
	}), New_upvr("Frame")({
		Name = "Gradient";
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		Position = UDim2.fromScale(0.343, 1);
		Size = UDim2.fromScale(0.688, 0.04);
		[Children_upvr] = {New_upvr("UIGradient")({
			Name = "UIGradient";
			Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))});
			Rotation = -90;
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.152, 0.3), NumberSequenceKeypoint.new(0.303, 0.55), NumberSequenceKeypoint.new(0.489, 0.781), NumberSequenceKeypoint.new(0.631, 0.887), NumberSequenceKeypoint.new(0.745, 0.962), NumberSequenceKeypoint.new(1, 1)});
		})};
	})}
	tbl[1] = New_upvr("Frame")(tbl_2)
	tbl[2] = New_upvr("Frame")({
		Name = "Cover";
		BackgroundColor3 = Color3.fromRGB(20, 20, 20);
		BorderSizePixel = 0;
		Size = UDim2.fromScale(4, 4);
		ZIndex = 0;
		[Ref_upvr] = var3_result1;
	})
	module[Children_upvr] = tbl
	do
		return New_upvr("ScreenGui")(module), var3_result1_2:get(), Value_upvr_result1:get(), var3_result1:get()
	end
	-- KONSTANTERROR: [68] 50. Error Block 22 end (CF ANALYSIS FAILED)
end