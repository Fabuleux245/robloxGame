-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:28
-- Luau version 6, Types version 3
-- Time taken: 0.008430 seconds

local LocalPlayer = game:GetService("Players").LocalPlayer
local mouse_upvr = LocalPlayer:GetMouse()
local function _(arg1, arg2, arg3) -- Line 41, Named "Lerp"
	return arg1 + (arg2 - arg1) * arg3
end
local function _(arg1) -- Line 45, Named "ValidateInput"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var3 = false
	else
		var3 = true
	end
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
	else
	end
	return var3 or true
end
local PlayerGui_upvr = LocalPlayer:WaitForChild("PlayerGui")
local function HoveringOverMainFrame_upvr(arg1) -- Line 52, Named "HoveringOverMainFrame"
	--[[ Upvalues[2]:
		[1]: PlayerGui_upvr (readonly)
		[2]: mouse_upvr (readonly)
	]]
	for _, v in pairs(PlayerGui_upvr:GetGuiObjectsAtPosition(mouse_upvr.X, mouse_upvr.Y)) do
		if v == arg1:get() then
			return true
		end
	end
	return false
end
local function DragScroll_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 64, Named "DragScroll"
	--[[ Upvalues[1]:
		[1]: mouse_upvr (readonly)
	]]
	if not arg3 or not mouse_upvr.Y then
		local X = mouse_upvr.X
	end
	local any_get_result1 = arg2:get()
	local var12
	if any_get_result1 then
		if arg1 and arg2 then
			var12 = X - (arg5 or X)
		else
			local var13 = var12
			var12 = var13 + (0 - var13) * 0.05
		end
		local zero_vector2 = Vector2.new()
		if arg3 then
			zero_vector2 = Vector2.new(0, math.floor(any_get_result1.CanvasPosition.Y - var12))
		else
			zero_vector2 = Vector2.new(math.floor(any_get_result1.CanvasPosition.X - var12), 0)
		end
		any_get_result1.CanvasPosition = zero_vector2
	end
	return var12, X
end
local function ResizeScrollingFrame_upvr(arg1, arg2, arg3, arg4) -- Line 94, Named "ResizeScrollingFrame"
	local any_get_result1_3 = arg1:get()
	local any_get_result1_2 = arg2:get()
	if any_get_result1_3 and any_get_result1_2 then
		if arg4 then
			any_get_result1_3.CanvasPosition = Vector2.new(0, 0)
		end
		if arg3 then
			any_get_result1_3.CanvasSize = UDim2.new(0, 0, 0, any_get_result1_2.AbsoluteContentSize.Y)
			return
		end
		any_get_result1_3.CanvasSize = UDim2.new(0, any_get_result1_2.AbsoluteContentSize.X, 0, 0)
	end
end
local module_2_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local UserInputService_upvr = game:GetService("UserInputService")
local HttpService_upvr = game:GetService("HttpService")
local RunService_upvr = game:GetService("RunService")
return function(arg1) -- Line 116
	--[[ Upvalues[7]:
		[1]: module_2_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: ResizeScrollingFrame_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: HoveringOverMainFrame_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: DragScroll_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var22_upvw
	local var23_upvw = false
	local any_Value_result1_upvr_2 = module_2_upvr.Value(nil)
	local var25_upvr
	local any_Value_result1_upvr = module_2_upvr.Value(var25_upvr)
	if arg1.ScrollingDirection ~= Enum.ScrollingDirection.Y then
		var25_upvr = false
	else
		var25_upvr = true
	end
	if not var25_upvr or not Enum.AutomaticSize.Y then
	end
	if not var25_upvr or not Enum.SizeConstraint.RelativeXX then
	end
	if not arg1.DragScrollDisabled then
	end
	if not UserInputService_upvr.TouchEnabled and not arg1.DragScrollDisabled then
		local var34_upvw = 0
		RunService_upvr:BindToRenderStep("CategoryButtonScroll"..HttpService_upvr:GenerateGUID(), 1, function() -- Line 157
			--[[ Upvalues[6]:
				[1]: var34_upvw (read and write)
				[2]: var22_upvw (read and write)
				[3]: DragScroll_upvr (copied, readonly)
				[4]: var23_upvw (read and write)
				[5]: any_Value_result1_upvr_2 (readonly)
				[6]: var25_upvr (readonly)
			]]
			local DragScroll_upvr_result1, DragScroll_upvr_result2 = DragScroll_upvr(var23_upvw, any_Value_result1_upvr_2, var25_upvr, var34_upvw, var22_upvw)
			var34_upvw = DragScroll_upvr_result1
			var22_upvw = DragScroll_upvr_result2
		end)
	end
	if arg1.Layout.Type == "UIGridLayout" then
		local tbl = {
			Name = arg1.Layout.Type;
			CellPadding = arg1.Layout.Padding;
			CellSize = arg1.Layout.Size;
			SortOrder = arg1.Layout.SortOrder;
			FillDirection = arg1.Layout.FillDirection;
			FillDirectionMaxCells = arg1.Layout.FillDirectionMaxCells or 5;
		}
		local StartCorner = arg1.Layout.StartCorner
		if not StartCorner then
			StartCorner = Enum.StartCorner.TopLeft
		end
		tbl.StartCorner = StartCorner
		StartCorner = arg1.Layout.HorizontalAlignment
		local var39 = StartCorner
		if not var39 then
			var39 = Enum.HorizontalAlignment.Left
		end
		tbl.HorizontalAlignment = var39
		var39 = arg1.Layout.VerticalAlignment
		local var40 = var39
		if not var40 then
			var40 = Enum.VerticalAlignment.Top
		end
		tbl.VerticalAlignment = var40
		tbl[module_2_upvr.Ref] = any_Value_result1_upvr
		module_2_upvr.New("UIGridLayout")(tbl)
	else
		local tbl_2 = {
			Name = arg1.Layout.Type;
			Padding = arg1.Layout.Padding;
			SortOrder = arg1.Layout.SortOrder;
			FillDirection = arg1.Layout.FillDirection;
		}
		local HorizontalAlignment = arg1.Layout.HorizontalAlignment
		if not HorizontalAlignment then
			HorizontalAlignment = Enum.HorizontalAlignment.Left
		end
		tbl_2.HorizontalAlignment = HorizontalAlignment
		HorizontalAlignment = arg1.Layout.VerticalAlignment
		local var43 = HorizontalAlignment
		if not var43 then
			var43 = Enum.VerticalAlignment.Top
		end
		tbl_2.VerticalAlignment = var43
		tbl_2[module_2_upvr.Ref] = any_Value_result1_upvr
		module_2_upvr.New("UIListLayout")(tbl_2)
	end
	local module = {
		Name = "ScrollingFrame";
		CanvasSize = UDim2.fromScale(0, 0);
		ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0);
		ScrollBarThickness = arg1.ScrollBarThickness or 0;
		AutomaticCanvasSize = Enum.AutomaticSize.X;
		ScrollingDirection = arg1.ScrollingDirection;
	}
	local AnchorPoint = arg1.AnchorPoint
	if not AnchorPoint then
		AnchorPoint = Vector2.new(0.5, 0.5)
	end
	module.AnchorPoint = AnchorPoint
	module.BackgroundTransparency = 1
	module.Position = arg1.Position
	module.Size = arg1.Size
	local var47_upvr = "CategoryButtonScroll"..HttpService_upvr:GenerateGUID()
	local any_Connect_result1_upvr = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function() -- Line 129
		--[[ Upvalues[4]:
			[1]: ResizeScrollingFrame_upvr (copied, readonly)
			[2]: any_Value_result1_upvr_2 (readonly)
			[3]: any_Value_result1_upvr (readonly)
			[4]: var25_upvr (readonly)
		]]
		task.wait()
		ResizeScrollingFrame_upvr(any_Value_result1_upvr_2, any_Value_result1_upvr, var25_upvr, false)
	end)
	local any_Connect_result1_upvw_2 = UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 142
		--[[ Upvalues[3]:
			[1]: HoveringOverMainFrame_upvr (copied, readonly)
			[2]: any_Value_result1_upvr_2 (readonly)
			[3]: var23_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var30
		if arg1_2.UserInputType ~= Enum.UserInputType.Touch then
			var30 = false
		else
			var30 = true
		end
		if arg1_2.UserInputType ~= Enum.UserInputType.MouseButton1 then
		else
		end
		if var30 or true then
			var30 = any_Value_result1_upvr_2
			if HoveringOverMainFrame_upvr(var30) then
				var23_upvw = true
			end
		end
	end)
	local any_Connect_result1_upvw = UserInputService_upvr.InputEnded:Connect(function(arg1_3) -- Line 148
		--[[ Upvalues[2]:
			[1]: var23_upvw (read and write)
			[2]: var22_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var32
		if arg1_3.UserInputType ~= Enum.UserInputType.Touch then
			var32 = false
		else
			var32 = true
		end
		if arg1_3.UserInputType ~= Enum.UserInputType.MouseButton1 then
		else
		end
		if var32 or true then
			var23_upvw = false
			var22_upvw = nil
		end
	end)
	module[module_2_upvr.Cleanup] = function() -- Line 206
		--[[ Upvalues[6]:
			[1]: RunService_upvr (copied, readonly)
			[2]: var47_upvr (readonly)
			[3]: any_Connect_result1_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: any_Connect_result1_upvw_2 (read and write)
			[6]: any_Connect_result1_upvw (read and write)
		]]
		RunService_upvr:UnbindFromRenderStep(var47_upvr)
		any_Connect_result1_upvr:Disconnect()
		if not arg1.DragScrollDisabled then
			if any_Connect_result1_upvw_2 then
				any_Connect_result1_upvw_2:Disconnect()
			end
			if any_Connect_result1_upvw then
				any_Connect_result1_upvw:Disconnect()
			end
		end
	end
	module[module_2_upvr.Ref] = any_Value_result1_upvr_2
	module[module_2_upvr.Children] = {module_2_upvr.New("Frame")({
		Name = "ItemFrame";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		[module_2_upvr.Children] = {any_Value_result1_upvr:get(), arg1[module_2_upvr.Children]};
		[module_2_upvr.OnEvent("ChildAdded")] = function() -- Line 234
			--[[ Upvalues[4]:
				[1]: ResizeScrollingFrame_upvr (copied, readonly)
				[2]: any_Value_result1_upvr_2 (readonly)
				[3]: any_Value_result1_upvr (readonly)
				[4]: var25_upvr (readonly)
			]]
			task.defer(function() -- Line 235
				--[[ Upvalues[4]:
					[1]: ResizeScrollingFrame_upvr (copied, readonly)
					[2]: any_Value_result1_upvr_2 (copied, readonly)
					[3]: any_Value_result1_upvr (copied, readonly)
					[4]: var25_upvr (copied, readonly)
				]]
				ResizeScrollingFrame_upvr(any_Value_result1_upvr_2, any_Value_result1_upvr, var25_upvr, false)
			end)
		end;
	})}
	return module_2_upvr.New("ScrollingFrame")(module)
end