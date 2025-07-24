-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:24
-- Luau version 6, Types version 3
-- Time taken: 0.006159 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_2_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module_upvr.Children
local Computed_upvr = module_upvr.Computed
local UserInputService_upvr = game:GetService("UserInputService")
local Value_upvr = module_upvr.Value
local Players_upvr = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local New_upvr = module_upvr.New
local Out_upvr = module_upvr.Out
local OnEvent_upvr = module_upvr.OnEvent
local Ref_upvr = module_upvr.Ref
return function(arg1) -- Line 18
	--[[ Upvalues[12]:
		[1]: module_2_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: Value_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: RunService_upvr (readonly)
		[8]: New_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: Out_upvr (readonly)
		[11]: OnEvent_upvr (readonly)
		[12]: Ref_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_2_upvr.GetValues(arg1, {
		Parent = module_2_upvr.Nil;
		Name = "ItemGrid";
		LayoutOrder = 0;
		AnchorPoint = Vector2.zero;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		Visible = true;
		Gap = 5;
		MinItemWidth = 200;
		Columns = module_2_upvr.Nil;
		ItemRatio = 0.8;
		DragScroll = false;
		[Children_upvr] = module_2_upvr.Nil;
	})
	local function _() -- Line 38
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		local any_get_result1 = any_GetValues_result1_upvw.DragScroll:get()
		if any_get_result1 then
			any_get_result1 = not UserInputService_upvr.TouchEnabled
		end
		return any_get_result1
	end
	local var8_result1_upvr_4 = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 44
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr_4 (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		local X = var8_result1_upvr_4:get().X
		local any_get_result1_3 = any_GetValues_result1_upvw.Gap:get()
		local any_get_result1_4 = any_GetValues_result1_upvw.Columns:get()
		if not any_get_result1_4 then
			any_get_result1_4 = math.floor((X + any_get_result1_3) / (any_GetValues_result1_upvw.MinItemWidth:get() + any_get_result1_3))
		end
		return (X - any_get_result1_3 * (any_get_result1_4 - 1)) / any_get_result1_4
	end)
	local var8_result1_upvr_2 = Value_upvr(Vector2.zero)
	local var8_result1_upvr_3 = Value_upvr()
	local Value_upvr_result1_upvr = Value_upvr(false)
	local var8_result1_upvr = Value_upvr(false)
	local tbl_4_upvr = {}
	table.insert(tbl_4_upvr, UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 64
		--[[ Upvalues[3]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: var8_result1_upvr (readonly)
		]]
		if arg1_2.UserInputType == Enum.UserInputType.MouseButton1 and Value_upvr_result1_upvr:get() and any_GetValues_result1_upvw.Visible:get() then
			var8_result1_upvr:set(true)
		end
	end))
	table.insert(tbl_4_upvr, UserInputService_upvr.InputEnded:Connect(function(arg1_3) -- Line 69
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		if arg1_3.UserInputType == Enum.UserInputType.MouseButton1 then
			var8_result1_upvr:set(false)
		end
	end))
	local mouse_upvr = Players_upvr.LocalPlayer:GetMouse()
	local var35_upvw
	local var36_upvw = 0
	table.insert(tbl_4_upvr, RunService_upvr.RenderStepped:Connect(function(arg1_4) -- Line 77
		--[[ Upvalues[5]:
			[1]: var8_result1_upvr_3 (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: mouse_upvr (readonly)
			[4]: var35_upvw (read and write)
			[5]: var36_upvw (read and write)
		]]
		local any_get_result1_2 = var8_result1_upvr_3:get()
		if not any_get_result1_2 then
		else
			if var8_result1_upvr:get() then
				local var38 = mouse_upvr.Y - var35_upvw
				var36_upvw = var38 / arg1_4
				any_get_result1_2.CanvasPosition = Vector2.new(any_get_result1_2.CanvasPosition.X, any_get_result1_2.CanvasPosition.Y - var38)
			elseif var36_upvw ~= 0 then
				var36_upvw = math.sign(var36_upvw) * math.max(0, math.abs(var36_upvw) - 5000 * arg1_4)
				any_get_result1_2.CanvasPosition = Vector2.new(any_get_result1_2.CanvasPosition.X, any_get_result1_2.CanvasPosition.Y - var36_upvw * arg1_4)
			end
			var35_upvw = mouse_upvr.Y
		end
	end))
	local module = {
		Parent = any_GetValues_result1_upvw.Parent;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		Name = any_GetValues_result1_upvw.Name;
		Visible = any_GetValues_result1_upvw.Visible;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		[module_upvr.Cleanup] = function() -- Line 116
			--[[ Upvalues[2]:
				[1]: module_upvr (copied, readonly)
				[2]: tbl_4_upvr (readonly)
			]]
			module_upvr.cleanup(tbl_4_upvr)
		end;
		[Out_upvr("AbsoluteSize")] = var8_result1_upvr_4;
		BackgroundTransparency = 1;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 124
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 127
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (readonly)
				[2]: var8_result1_upvr (readonly)
			]]
			Value_upvr_result1_upvr:set(false)
			var8_result1_upvr:set(false)
		end;
	}
	local tbl_3 = {
		Size = UDim2.fromScale(1, 1);
		CanvasSize = Computed_upvr(function() -- Line 134
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr_2 (readonly)
			]]
			return UDim2.new(1, 0, 0, var8_result1_upvr_2:get().Y)
		end);
		ScrollBarThickness = 0;
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		[Ref_upvr] = var8_result1_upvr_3;
	}
	local tbl_2 = {
		Name = "Content";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
	}
	local tbl_5 = {}
	local tbl = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		CellPadding = Computed_upvr(function() -- Line 155
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return UDim2.fromOffset(any_GetValues_result1_upvw.Gap:get(), any_GetValues_result1_upvw.Gap:get())
		end);
	}
	local var6_result1_upvr = Computed_upvr(function() -- Line 51
		--[[ Upvalues[2]:
			[1]: Computed_upvr_result1_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		return Computed_upvr_result1_upvr:get() / any_GetValues_result1_upvw.ItemRatio:get()
	end)
	tbl.CellSize = Computed_upvr(function() -- Line 158
		--[[ Upvalues[3]:
			[1]: Computed_upvr_result1_upvr (readonly)
			[2]: var8_result1_upvr_4 (readonly)
			[3]: var6_result1_upvr (readonly)
		]]
		return UDim2.new(Computed_upvr_result1_upvr:get() / var8_result1_upvr_4:get().X, 0, 0, var6_result1_upvr:get())
	end)
	tbl[Out_upvr("AbsoluteContentSize")] = var8_result1_upvr_2
	tbl_5[1] = New_upvr("UIGridLayout")(tbl)
	tbl_5[2] = any_GetValues_result1_upvw[Children_upvr]
	tbl_2[Children_upvr] = tbl_5
	tbl_3[Children_upvr] = New_upvr("Frame")(tbl_2)
	module[Children_upvr] = New_upvr("ScrollingFrame")(tbl_3)
	return New_upvr("Frame")(module)
end