-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:07
-- Luau version 6, Types version 3
-- Time taken: 0.015862 seconds

local Spring_upvr = require(script.Parent.Parent.Generic.Spring)
local function _(arg1, arg2, arg3) -- Line 50, Named "GetValue"
	--[[ Upvalues[1]:
		[1]: Spring_upvr (readonly)
	]]
	if arg2 then
		if typeof(arg2) == "table" and arg2.Default then
			return Spring_upvr(arg1, arg2)
		end
		return arg2
	end
	return arg3
end
local module_2_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
return function(arg1) -- Line 64
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Spring_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var42
	if not arg1.States then
		local tbl_9_upvr = {}
		local var44 = module_2_upvr
		var42 = var44.Value
		if arg1.Enabled ~= nil then
			var44 = arg1.Enabled
		else
			var44 = true
		end
		var42 = var42(var44)
		tbl_9_upvr.Enabled = var42
		var42 = module_2_upvr.Value(false)
		tbl_9_upvr.Hovering = var42
		var42 = module_2_upvr.Value(false)
		tbl_9_upvr.HeldDown = var42
		var42 = module_2_upvr.Value(false)
		tbl_9_upvr.Selected = var42
	end
	var42 = type(arg1.Enabled)
	if var42 == "table" then
		var42 = arg1.Enabled.type
		if var42 == "State" then
			var42 = arg1.Enabled
			tbl_9_upvr.Enabled = var42
		end
	end
	local BackgroundColor3 = arg1.BackgroundColor3
	if BackgroundColor3 then
		if typeof(BackgroundColor3) == "table" and BackgroundColor3.Default then
			var42 = Spring_upvr(tbl_9_upvr, BackgroundColor3)
		else
			var42 = BackgroundColor3
		end
	else
		var42 = Color3.fromRGB(20, 20, 20)
	end
	local BackgroundTransparency = arg1.BackgroundTransparency
	if BackgroundTransparency then
		if typeof(BackgroundTransparency) == "table" and BackgroundTransparency.Default then
		else
		end
		-- KONSTANTWARNING: GOTO [107] #79
	end
	local TextColor3_2 = arg1.TextColor3
	if TextColor3_2 then
		if typeof(TextColor3_2) == "table" and TextColor3_2.Default then
		else
		end
		-- KONSTANTWARNING: GOTO [135] #102
	end
	local TextTransparency_2 = arg1.TextTransparency
	if TextTransparency_2 then
		if typeof(TextTransparency_2) == "table" and TextTransparency_2.Default then
		else
		end
		-- KONSTANTWARNING: GOTO [157] #120
	end
	local ImageColor3 = arg1.ImageColor3
	if ImageColor3 then
		if typeof(ImageColor3) == "table" and ImageColor3.Default then
		else
		end
		-- KONSTANTWARNING: GOTO [185] #143
	end
	local ImageTransparency = arg1.ImageTransparency
	if ImageTransparency then
		if typeof(ImageTransparency) == "table" and ImageTransparency.Default then
		else
		end
		-- KONSTANTWARNING: GOTO [207] #161
	end
	local AnchorPoint = arg1.AnchorPoint
	if AnchorPoint then
		if typeof(AnchorPoint) == "table" and AnchorPoint.Default then
		else
		end
		-- KONSTANTWARNING: GOTO [234] #183
	end
	local Size_2 = arg1.Size
	if Size_2 then
		if typeof(Size_2) == "table" and Size_2.Default then
		else
		end
		-- KONSTANTWARNING: GOTO [261] #205
	end
	local Position = arg1.Position
	if Position then
		if typeof(Position) == "table" and Position.Default then
		else
		end
	else
	end
	Position = arg1.TextScaled
	local var54 = Position
	if var54 == nil then
	end
	local TextWrapped_2 = arg1.TextWrapped
	if TextWrapped_2 == nil then
		TextWrapped_2 = true
	end
	local any_Value_result1_upvr_4 = module_2_upvr.Value()
	local any_Value_result1_upvr_3 = module_2_upvr.Value()
	local Visible_2 = arg1.Visible
	if Visible_2 == nil then
		Visible_2 = true
	end
	local module = {}
	local Name = arg1.Name
	if not Name then
		Name = "GenericButton"..tostring(tick())
	end
	module.Name = Name
	module.Text = ""
	module.AutoButtonColor = false
	module.AnchorPoint = Vector2.new(0.5, 0.5)
	module.BackgroundColor3 = var42
	module.BackgroundTransparency = 0
	module.Position = UDim2.fromScale(0.5, 0.5)
	module.Size = UDim2.fromScale(0.5, 0.5)
	module.BorderSizePixel = 0
	module.Visible = Visible_2
	module[module_2_upvr.Ref] = any_Value_result1_upvr_3
	local tbl_11 = {}
	local tbl_3 = {
		Name = "UICorner";
	}
	local CornerRadius_2 = arg1.CornerRadius
	if not CornerRadius_2 then
		CornerRadius_2 = UDim.new(0.2)
	end
	tbl_3.CornerRadius = CornerRadius_2
	local tbl_10 = {
		Name = "Icon";
	}
	local Image = arg1.Image
	tbl_10.Image = Image
	if arg1.Image == nil then
		Image = false
	else
		Image = true
	end
	tbl_10.Visible = Image
	tbl_10.ImageTransparency = 0
	tbl_10.AnchorPoint = Vector2.new(0, 0.5)
	tbl_10.ImageColor3 = Color3.fromRGB(255, 255, 255)
	tbl_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_10.BackgroundTransparency = 1
	tbl_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tbl_10.BorderSizePixel = 0
	tbl_10.Position = UDim2.fromScale(0.1, 0.5)
	tbl_10.Size = UDim2.fromScale(1, 0.5)
	tbl_10.SizeConstraint = Enum.SizeConstraint.RelativeYY
	tbl_10[module_2_upvr.Children] = {module_2_upvr.New("UIAspectRatioConstraint")({
		Name = "UIAspectRatioConstraint";
	})}
	local tbl_5 = {
		Name = "Label";
		Text = arg1.Text;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextTransparency = 0;
		TextScaled = true;
	}
	if type(arg1.TextSize) ~= "number" or not arg1.TextSize then
	end
	tbl_5.TextSize = 20
	tbl_5.TextWrapped = TextWrapped_2
	if not arg1.Image or not Vector2.new(1, 0.5) then
	end
	tbl_5.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_5.BackgroundTransparency = 1
	tbl_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	tbl_5.BorderSizePixel = 0
	local var74
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var74 = UDim2.fromScale(0.9, 0.5)
		return var74
	end
	if not var74 and (not arg1.Image or not INLINED_2()) then
		var74 = UDim2.fromScale(0.5, 0.5)
	end
	tbl_5.Position = var74
	var74 = arg1.TextSize
	if not var74 then
		var74 = UDim2.fromScale(0.6, 0.8)
	end
	tbl_5.Size = var74
	tbl_5[module_2_upvr.Ref] = any_Value_result1_upvr_4
	tbl_11[1] = module_2_upvr.New("UICorner")(tbl_3)
	tbl_11[2] = module_2_upvr.Computed(function() -- Line 140
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: module_2_upvr (copied, readonly)
		]]
		if arg1.Stroke then
			return module_2_upvr.New("UIStroke")({
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				Color = Color3.fromRGB(79, 84, 95);
				Thickness = 1.5;
			})
		end
	end, module_2_upvr.cleanup)
	tbl_11[3] = module_2_upvr.New("ImageLabel")(tbl_10)
	tbl_11[4] = module_2_upvr.New("TextLabel")(tbl_5)
	module[module_2_upvr.Children] = tbl_11
	module[module_2_upvr.OnChange("AbsoluteSize")] = function() -- Line 97, Named "updateTextSize"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_Value_result1_upvr_4 (readonly)
			[3]: any_Value_result1_upvr_3 (readonly)
		]]
		if arg1.TextSize then
		else
			if not any_Value_result1_upvr_4:get() then return end
			if not any_Value_result1_upvr_3:get() then return end
			local any_get_result1 = any_Value_result1_upvr_4:get()
			any_get_result1.TextSize = any_Value_result1_upvr_3:get().AbsoluteSize.Y / 2
			local X_2 = any_get_result1.TextBounds.X
			local X = any_get_result1.AbsoluteSize.X
			if X < X_2 then
				any_get_result1.TextSize *= X / X_2
			end
		end
	end
	module[module_2_upvr.OnEvent("Activated")] = function() -- Line 194
		--[[ Upvalues[2]:
			[1]: tbl_9_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if not tbl_9_upvr.Enabled:get() then
		else
			arg1.Callback(tbl_9_upvr.Enabled, tbl_9_upvr.Selected)
		end
	end
	module[module_2_upvr.OnEvent("MouseButton1Down")] = function() -- Line 202
		--[[ Upvalues[1]:
			[1]: tbl_9_upvr (readonly)
		]]
		tbl_9_upvr.HeldDown:set(true)
	end
	module[module_2_upvr.OnEvent("MouseButton1Up")] = function() -- Line 206
		--[[ Upvalues[1]:
			[1]: tbl_9_upvr (readonly)
		]]
		tbl_9_upvr.HeldDown:set(false)
	end
	module[module_2_upvr.OnEvent("MouseEnter")] = function() -- Line 210
		--[[ Upvalues[1]:
			[1]: tbl_9_upvr (readonly)
		]]
		tbl_9_upvr.Hovering:set(true)
	end
	module[module_2_upvr.OnEvent("MouseLeave")] = function() -- Line 214
		--[[ Upvalues[1]:
			[1]: tbl_9_upvr (readonly)
		]]
		tbl_9_upvr.Hovering:set(false)
		tbl_9_upvr.HeldDown:set(false)
	end
	return module_2_upvr.New("TextButton")(module)
end